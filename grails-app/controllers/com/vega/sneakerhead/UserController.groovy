package com.vega.sneakerhead

import org.springframework.dao.DataIntegrityViolationException

class UserController {

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        params.sort = "lastName"
        
        [users: User.list(params), userCount: User.count()]
    }

    def add() {
        def user = new User()
        render( view: 'edit', model: [ user: user] )
    }

    def edit(Long id){
        def user = User.get(id);

        if( !user ) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            flash.type = "danger"
            redirect(action: "list")
        } else {
            [ user: user]    
        }
        
    }

    // TODO: still need to do something for optimistic locking
    def save() {
        def user

        if( params.id ){
            user = User.get(params.id)
            user.properties = params
        } else {
            user = new User(params)
        }

        if( !user ) {
            flash.message = "Unable to edit user with an id of ${params.id}"
            redirect(action: "list")
        } else {
            // we have a valid user object
            if( user.validate() ){
                user.save()
                flash.message = "User Saved!"
                flash.type = "success"
                redirect(action: "list")
            } else {
                render(view: "edit", model: [user: user])
            }
        }

    }

    // TODO DataIntegrityViolationException excepton
    def delete(Long id) {
        def user = User.get(id)

        if( !user ){
            flash.message = "Unable to edit user with an id of ${params.id}"
            redirect(action: "list")            
        } else {
            user.delete()
            flash.message = "User ${user.toString()} was deleted."
            redirect(action: "list")
        }

    }

}
