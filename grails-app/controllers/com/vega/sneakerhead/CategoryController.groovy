package com.vega.sneakerhead

class CategoryController {

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        
        [ categories: Category.list(params), categoryCount: Category.count()]
    }

}
