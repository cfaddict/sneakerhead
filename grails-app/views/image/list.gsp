<!DOCTYPE HTML>
<html lang="en">
<head>
	<title>Sneakehead - Image List</title>
</head>
<body>

	<div class="row">
		
		<div class="col-md-12">

			<g:link action="add">
				<button type="button" class="btn btn-primary pull-right">
					<span class="glyphicon glyphicon-plus"></span> Add Image
				</button>
			</g:link>

			<h2>Images</h2>

			<div class="clear">&nbsp;</div>

			<g:if test="${flash.message}">
				<div class="alert alert-warning">${flash.message}</div>
			</g:if>

			<table class="table table-condensed table-hover">
			<thead>

			</thead>
			<tbody>

			</tbody>
			</table>

		</div>


	</div>

</body>
</html>