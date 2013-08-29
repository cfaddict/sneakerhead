modules = {

    application {
        resource url:'js/application.js'
    }

    core {
    	dependsOn 'jquery'

    	resource url: 'css/bootstrap.min.css'
    	resource url: 'css/bootstrap-theme.min.css'
    	resource url: 'css/main.css'
    	resource url: 'js/bootstrap.min.js'
    }

}