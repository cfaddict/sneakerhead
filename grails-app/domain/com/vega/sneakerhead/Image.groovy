package com.vega.sneakerhead

class Image {

	String name
	String path
	String caption
	Date dateCreated
	Date lastUpdated
	boolean isMainImage = true

	static belongsTo = [ shoe : Shoe ]

    static constraints = {
    	name blank:false 
    	path nullable:false 
    }

    String toString() {
    	"${name}"
    }
}
