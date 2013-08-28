package com.vega.sneakerhead

import org.springframework.dao.DataIntegrityViolationException

class ShoeController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [shoeInstanceList: Shoe.list(params), shoeInstanceTotal: Shoe.count()]
    }

    def create() {
        [shoeInstance: new Shoe(params)]
    }

    def save() {
        def shoeInstance = new Shoe(params)
        if (!shoeInstance.save(flush: true)) {
            render(view: "create", model: [shoeInstance: shoeInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'shoe.label', default: 'Shoe'), shoeInstance.id])
        redirect(action: "show", id: shoeInstance.id)
    }

    def show(Long id) {
        def shoeInstance = Shoe.get(id)
        if (!shoeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'shoe.label', default: 'Shoe'), id])
            redirect(action: "list")
            return
        }

        [shoeInstance: shoeInstance]
    }

    def edit(Long id) {
        def shoeInstance = Shoe.get(id)
        if (!shoeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'shoe.label', default: 'Shoe'), id])
            redirect(action: "list")
            return
        }

        [shoeInstance: shoeInstance]
    }

    def update(Long id, Long version) {
        def shoeInstance = Shoe.get(id)
        if (!shoeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'shoe.label', default: 'Shoe'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (shoeInstance.version > version) {
                shoeInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'shoe.label', default: 'Shoe')] as Object[],
                          "Another user has updated this Shoe while you were editing")
                render(view: "edit", model: [shoeInstance: shoeInstance])
                return
            }
        }

        shoeInstance.properties = params

        if (!shoeInstance.save(flush: true)) {
            render(view: "edit", model: [shoeInstance: shoeInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'shoe.label', default: 'Shoe'), shoeInstance.id])
        redirect(action: "show", id: shoeInstance.id)
    }

    def delete(Long id) {
        def shoeInstance = Shoe.get(id)
        if (!shoeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'shoe.label', default: 'Shoe'), id])
            redirect(action: "list")
            return
        }

        try {
            shoeInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'shoe.label', default: 'Shoe'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'shoe.label', default: 'Shoe'), id])
            redirect(action: "show", id: id)
        }
    }
}
