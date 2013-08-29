<!DOCTYPE HTML>
<html lang="en">
<head>
	<title>Welcome to Sneakehead</title>

	<script type="text/javascript">
		$(function(){
			console.log("index.gsp");
		});
	</script>
</head>
<body>

	<!-- this puts me after the navigation bar but still inside of the container -->


	<div class="row">
		<div class="col-md-8">
			<h2>Welcome to Sneakerhead</h2>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
			tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
			quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
			consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
			cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
			proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
			tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
			quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
			consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
			cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
			proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

			<hr/>

			<h3>Available Controllers:</h2>
			<ul>
				<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
					<li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
				</g:each>
			</ul>

			<h3>Domain Classes:</h2>
			<ul>
				<g:each var="c" in="${grailsApplication.domainClasses.sort { it.fullName } }">
					<li class="controller">${c.fullName}</li>
				</g:each>
			</ul>


		</div>
		<div class="col-md-4">
			
			<!-- plugins list -->
			<div class="well">
			<h3>Installed Plugins</h3>
			<ul>
				<g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">
					<li>${plugin.name} - ${plugin.version}</li>
				</g:each>
			</ul>
			</div>

		</div>
	</div>

</body>
</html>