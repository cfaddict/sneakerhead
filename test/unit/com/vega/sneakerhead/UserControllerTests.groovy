package com.vega.sneakerhead

import grails.test.mixin.*
import org.junit.*

@TestFor(UserController)
class UserControllerTests {

    void testIndexRedirectedToList(){
    	controller.index()
    	assert response.redirectedUrl == '/user/list'
    }

}
