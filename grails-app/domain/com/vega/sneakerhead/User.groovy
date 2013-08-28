package com.vega.sneakerhead

class User {

    String firstName
    String lastName
    String handle
    String email
    String city
    String state
    Double shoeSize
    String bio
    boolean active = true
    Date dateCreated
    Date lastUpdated

    static hasMany = [shoes: Shoe]

    static constraints = {
        firstName blank:false
        lastName blank:false
        email blank:false, email:true
        handle blank:false, unique:true
        shoeSize nullable: true
        bio nullable:true 
        city nullable:true
        state nullable:true
    }

    static mapping = {
        bio type:'text'
    }

    String toString() {
        "${firstName} ${lastName}"
    }
}
