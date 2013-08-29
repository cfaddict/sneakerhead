import grails.util.Environment

import com.vega.sneakerhead.User 
import com.vega.sneakerhead.Brand 
import com.vega.sneakerhead.Category
import com.vega.sneakerhead.Shoe

class BootStrap {

    def init = { servletContext ->

        // i don't want to load this data during anything that is development
        switch(Environment.current){

            case Environment.DEVELOPMENT : 

                // create a couple of brands
                def nike = new Brand(name:'Nike').save()
                def reebok = new Brand(name:'Reebok').save()
                def adidas = new Brand(name:'Adidas').save()
                def asics = new Brand(name:'Asics').save()
                def converse = new Brand(name:'Converse').save()
                def newbalance = new Brand(name:'New Balance').save()

                // create a couple categories
                def running = new Category(name:'Running').save()
                def basketball = new Category(name:'Basketball').save()
                def training = new Category(name:'Training').save()
                def tennis = new Category(name:'Tennis').save()
                def football = new Category(name:'Football').save()
                def baseball = new Category(name:'Baseball').save()

                // create a shoe, add some categories to it and save it
                def shoe = new Shoe(title:'Nike Air Pegasus 83/30',description:'Bright Colors, looks great!',brand:nike)
                    shoe.addToCategories(running)
                    shoe.save()

                // create a bunch of users and add our shoe to the last user
                def joe = new User(firstName:'Joe',lastName:'Blow',email:'jblow@sneakerhead.dev',handle:'joeblow',city:'Erie',state:'PA').save()
                def john = new User(firstName:'John',lastName:'Smith',email:'jsmith@sneakerhead.dev',handle:'jonny',city:'Miami',state:'FL').save()
                def mark = new User(firstName:'Mark',lastName:'Adams',email:'madams@sneakerhead.dev',handle:'markymark',city:'Akron',state:'OH').save()
                def angelo = new User(firstName:'Angelo',lastName:'Jobs',email:'ajobs@sneakerhead.dev',handle:'angelo',city:'Miami',state:'FL').save()
                def user = new User(firstName:'Dan',lastName:'Vega',email:'dvega@sneakerhead.dev',handle:'cfaddict',city:'Cleveland',state:'OH')
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
