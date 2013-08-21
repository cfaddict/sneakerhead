package com.vega.sneakerhead



import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.web.ControllerUnitTestMixin} for usage instructions
 */
@TestFor(UserController)
class UserControllerTests {

	/** 
	 * Test to make sure that the index action is redirecting to the list action 
	 */
    void testIndexRedirectedToList(){
    	controller.index()

    	assert response.redirectedUrl == '/user/list'
    }

    void testList() {
    	fail "do something"
    }

    void testSave() {
    	fail "do something"
    }

    void testDelete() {
    	fail "do something"
    }


}
