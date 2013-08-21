import grails.util.Environment

import com.vega.sneakerhead.User 
import com.vega.sneakerhead.Brand 
import com.vega.sneakerhead.Category
import com.vega.sneakerhead.Shoe

class BootStrap {

    def init = { servletContext ->

        // i don't want to load this data during anything that is development
        switch(Environment.current){

            case "development" : 

                // create a couple of brands
                def nike = new Brand(name:'Nike').save()
                def reebok = new Brand(name:'Reebok').save()
                def adidas = new Brand(name:'Adidas').save()

                // create a couple categories
                def running = new Category(name:'Running').save()
                def basketball = new Category(name:'Basketball').save()

                // create a shoe
                def shoe = new Shoe(title:'Nike Air Pegasus 83/30',description:'Bright Colors, looks great!',brand:nike)
                    shoe.addToCategories(running)
                    shoe.save()

                // create a user
                def user = new User(firstName:'Dan',lastName:'Vega',email:'dvega@sneakerhead.dev',handle:'cfaddict')
                    // add a shoe to this user
                    user.addToShoes(shoe)
                    user.save()

            break

            // other environments
        }


    }

    def destroy = {
    
    }
}
