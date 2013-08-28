package com.vega.sneakerhead

class Shoe {

	String title
	String description
	boolean active = true
	Date dateCreated
	Date lastUpdated 

	static belongsTo = [ user : User, brand : Brand]
	static hasMany 	 = [categories : Category, images:Image]

    static constraints = {
    	title blank:false
    }

    String toString() {
    	"${title}"
    }
}
