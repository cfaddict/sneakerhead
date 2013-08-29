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
        render( view: 'edit', model: [ user: user, title: 'Add User' ] )
    }

    def edit(Integer id){
        def user = User.get(id);

        if( !user ) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
        } else {
            [ user: user, title: "${user.toString()}"]    
        }
        
    }

}
