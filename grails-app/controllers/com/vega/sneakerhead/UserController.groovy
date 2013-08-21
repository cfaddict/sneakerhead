package com.vega.sneakerhead

class UserController {

    def index() {
    	redirect action : 'list'
    }

    def list() {
    	render "list"
    }

}
