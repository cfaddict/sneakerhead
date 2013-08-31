package com.vega.sneakerhead

import org.springframework.dao.DataIntegrityViolationException

class BrandController {

    def index() {
        redirect action:'list'
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        
        [ brands: Brand.list(params), brandCount: Brand.count()]
    }

    def add() {
    	def brand = new Brand();
    	render(view: "edit", model: [brand:brand])
    }

    def edit(Long id) {
    	def brand = Brand.get(id)

    	if( !brand ) {
    		flash.message = "Brand with id ${params.id} not found."
    		redirect(action: "list")
    	}

    	[brand: brand]
    }

    def save(Long id, Long version) {
    	def brand = (params.id) ? Brand.get(params.id) : new Brand()

    	if( !brand ) {
    		flash.message = "We could not find a brand with the id of ${brand.id}"
    		redirect(action: "list")
    	} else {
    		// we have a valid domain object, attempt to save
    		brand.properties = params

    		if( brand.validate() ){
    			brand.save()
    			flash.message = "Brand Saved!"
    			flash.type = "success"
    			redirect(action:"list")
			} else {
				render(view: "edit", model: [brand:brand])				
			}
    	}
    } 

    def delete(Long id) {
        def brand = Brand.get(id)
        if (!brand ) {
            flash.message = message( code: 'default.not.found.message', args: [message(code: 'brand.label', default: 'Brand'), id] )
            redirect(action: "list")
            return
        }

        try {
            brand.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'brand.label', default: 'Brand'), id])
            flash.type = "success"
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'brand.label', default: 'Brand'), id])
            redirect(action: "edit", id: id)
        }    	
    }

}
