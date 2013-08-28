package com.vega.sneakerhead

class Category {

	String name
	boolean active = true
	Date dateCreated
	Date lastUpdated 

	static hasMany = [shoes:Shoe]
	static belongsTo = Shoe 


    static constraints = {
    	name blank:false
    	active nullable:false
    }

    String toString() {
    	"${name}"
    }
}
