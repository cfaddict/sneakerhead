Sneakerhead
===================================================================================

A small groovy and grails applicaiton to manage my shoe collection. This is just a small app I decided to write to help me learn Groovy and Grails. Think of this as a community based website where users can show off their sneaker collection.

Here are some random features this applicaiton will have. 

Public 
 + Bootstrap UI
 + Home page will just be a list of users that have profiles in our system
 + View list of shoes for a particular user. Allow sorting paging and searching.
 + Switch to grid view to show thumbnails instead of list.
 + View details shows pictures and allows for comments. Use https://disqus.com
 + details page will have some social integration with facebook + twitter. 

Admin
 + Secure admin area to manage profile data + collection information
 + manage only data that belongs to this user

Future Features

- I think the 1st revision of this will only be for me but a future version can take a user profile approach where each
user can show off their collection. 
- REST API 
- The idea of following another user to have a facebook type wall on your home page listing new shoes added by friends.
- find users by location
- some kind of cool view that is just a wall of photos and you can click through to view details
- mogodb integration
- storing images somewhere else such as amazon s3

Please send any ideas you have for this little ficticious application to danvega at gmail dot com.


Setup
===================================================================================

This application is currently using 

	grails --version 2.2.2

I have this application running off of the domain name http://sneakerhead.dev. Setup dns for this domain name as well as a virtual host.
I am using apaache and my host looks something like this. If you're using apache make sure to enable mod_proxy.

	#sneakerhead.dev
	<VirtualHost *:80>
	    ServerName sneakerhead.dev
	    ServerAlias sneakerhead.dev
	    DocumentRoot "C:\www\sneakerhead"

	    ProxyPass / http://127.0.0.1:8080/
	    ProxyPassReverse / http://127.0.0.1:8080/

	    ErrorLog "logs/sneakerhead-error.log"
	    CustomLog "logs/sneakerhead-access.log" common
	</VirtualHost>

Setup a mysql schema named sneakerhead and create the following user

	user: sneakerhead
	pass: sn3k3rh3ad

You can easily go back to an in memory h2 database. Just know that if you choose to go this route you will have to update this
every time you update from git. 1st in buildConfig.groovy you will want to comment out the following line. 

	runtime 'mysql:mysql-connector-java:5.1.22'

Next update the the datasource closure under development in DataSource.groovy to something like this

	dataSource {
	    dbCreate = "create-drop"
	    url = "jdbc:h2:mem:sneakerhead;MVCC=TRUE;LOCK_TIMEOUT=10000"
	}

That is all there is to it, you should be able to run the app (grails run-app) and point your browser to

	http://sneakerhead.dev