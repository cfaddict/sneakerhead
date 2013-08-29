<!DOCTYPE HTML>
<html lang="en">
<head>
	<title>Welcome to Sneakehead</title>
</head>
<body>

	<!-- this puts me after the navigation bar but still inside of the container -->


	<div class="row">
		
		<div class="col-md-12">

			${baseURL}

			<br/><br/>

			<g:each in="${posts}" var="post">
				${post.title} - ${post.link}<br/>
			</g:each>			

		</div>


	</div>

</body>
</html>