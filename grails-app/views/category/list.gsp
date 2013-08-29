<!DOCTYPE HTML>
<html lang="en">
<head>
	<title>Sneakehead - Category List</title>
</head>
<body>

	<div class="row">
		
		<div class="col-md-12">

			<g:link action="add">
				<button type="button" class="btn btn-primary pull-right">
					<span class="glyphicon glyphicon-plus"></span> Add Category
				</button>
			</g:link>

			<h2>Categories</h2>

			<div class="clear">&nbsp;</div>

			<g:if test="${flash.message}">
				<div class="alert alert-warning">${flash.message}</div>
			</g:if>

			<table class="table table-condensed table-hover">
			<thead>
				<th>Category Name</th>
				<th>Active</th>
				<th>Shoe Count</th>
			</thead>
			<tbody>
				<g:each in="${categories}" var="category">
				<tr>
					<td>${category.name}</td>
					<td><g:formatBoolean boolean="${category.active}" true="Yes" false="No"/></td>
					<td>${category.shoes?.size()}</td>
				</tr>
				</g:each>
			</tbody>
			</table>

		</div>


	</div>

</body>
</html>