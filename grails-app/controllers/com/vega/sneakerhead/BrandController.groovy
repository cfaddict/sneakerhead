package com.vega.sneakerhead

class BrandController {

    def index() {
        redirect action:'list'
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        
        [ brands: Brand.list(params), brandCount: Brand.count()]
    }

}
