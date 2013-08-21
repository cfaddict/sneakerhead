package com.vega.sneakerhead

import groovy.transform.ToString

@ToString(includeNames=true)
class Category {

	String name
	boolean active = Boolean.TRUE
	Date dateCreated
	Date lastUpdated 

	static hasMany = [shoes:Shoe]
	static belongsTo = Shoe 


    static constraints = {
    	name blank:false
    	active nullable:false
    }
}
