package com.vega.sneakerhead

import groovy.transform.ToString

@ToString(includeNames=true)
class User {

	String firstName
	String lastName
	String handle
	String email
	String city
	String state
	double shoeSize
	String bio
	Date dateCreated
	Date lastUpdated

    static constraints = {
    	firstName blank:false
    	lastName blank:false
    	handle blank:false, unique:true 
    	email blank:false, email:true
    }

    static mapping = {
    	bio type:'text'
    }
}
