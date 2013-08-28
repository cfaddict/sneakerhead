package com.vega.sneakerhead

import org.junit.*


@Mock(User)
class UserTests {

    void setUp() {

    }

    void tearDown() {

    }

    void testValidationFails() {
    	def user = new User()

    	assertFalse user.validate()
    }

    void testValidationPasses() {
        def params = [:]
        params.firstName = 'Joe'
        params.lastName = 'Smith'
        params.email = 'jsmith@gmail.com'
        params.handle = 'joeblow'

        def user = new User(params);

        assert user.validate()
    }

}
