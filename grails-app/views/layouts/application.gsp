<!DOCTYPE HTML>
<html>
<head>
	<title><g:layoutTitle default="Sneakerhead"/></title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href='http://fonts.googleapis.com/css?family=Cabin+Condensed' rel='stylesheet' type='text/css'>
    <r:require module="core"/>
    <r:layoutResources/>	
	<g:layoutHead />
</head>
<body>

	<div class="container">

		<div class="clear">&nbsp;</div>

	    <!-- navigation -->
		<div class="navbar navbar-default">
			<div class="navbar-header">
				<a class="navbar-brand" href="/">Sneakerhead</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="/">Home</a></li>
					<li><a href="${createLink(controller:'user')}">Users</a></li>
					<li><a href="${createLink(controller:'shoe')}">Shoes</a></li>
					<li><a href="${createLink(controller:'brand')}">Brands</a></li>
					<li><a href="${createLink(controller:'category')}">Categories</a></li>
					<li><a href="${createLink(controller:'image')}">Images</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="/blog">Blog Posts</a></li>
					<li><a href="/contact">Contact Me</a></li>
				</ul>						
			</div>	
		</div>

		<g:layoutBody />

	</div>

	<r:layoutResources/>
</body>
</html>