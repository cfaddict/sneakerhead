package com.vega.sneakerhead

import groovy.transform.ToString

@ToString(includeNames=true)
class Image {

	String name
	String path
	String caption
	Date dateCreated
	Date lastUpdated
	Boolean isMainImage = Boolean.FALSE

	static belongsTo = [ shoe : Shoe ]

    static constraints = {
    	name blank:false 
    	path nullable:false 
    	isMainImage nullable:false 
    }
}
