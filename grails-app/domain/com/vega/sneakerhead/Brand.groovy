package com.vega.sneakerhead

class Brand {

	String name
	boolean active = true
	Date dateCreated
	Date lastUpdated 


	static hasMany = [shoes:Shoe]

    static constraints = {
    	name blank:false
    }

    String toString() {
    	"${name}"
    }
}
