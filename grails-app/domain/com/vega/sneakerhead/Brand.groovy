package com.vega.sneakerhead

import groovy.transform.ToString

@ToString(includeNames=true)
class Brand {

	String name
	Boolean active = Boolean.TRUE
	Date dateCreated
	Date lastUpdated 


	static hasMany = [shoes:Shoe]

    static constraints = {
    	name blank:false
    }
}
