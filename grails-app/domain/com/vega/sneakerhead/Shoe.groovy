package com.vega.sneakerhead

import groovy.transform.ToString

@ToString(includeNames=true)
class Shoe {

	String title
	String description
	Date dateCreated
	Date lastUpdated 

	static belongsTo = [ user : User, brand : Brand]
	static hasMany 	 = [categories : Category, images:Image]

    static constraints = {
    	title blank:false
    }
}
