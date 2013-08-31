<!DOCTYPE HTML>
<html lang="en">
<head>
	<title>Sneakehead - Brand List</title>
</head>
<body>

	<div class="row">
		
		<div class="col-md-12">

			<h2 class="pull-left">Brands</h2>

			<g:link action="add">
				<button type="button" class="btn btn-primary pull-right">
					<span class="glyphicon glyphicon-plus"></span> Add Brand
				</button>
			</g:link>

		</div>

	</div>

	<div class="row">
		
		<div class="col-md-12">

			<g:if test="${flash.message}">
				<div class="alert alert-${flash.type ?: 'warning'}">${flash.message}</div>
			</g:if>

			<table class="table table-condensed table-hover">
			<thead>
				<th>Brand Name</th>
				<th>Active</th>
				<th>Shoe Count</th>
				<th>Actions</th>
			</thead>
			<tbody>
				<g:each in="${brands}" var="brand">
				<tr>
					<td>${brand.name}</td>
					<td><g:formatBoolean boolean="${brand.active}" true="Yes" false="No"/></td>
					<td>${brand.shoes?.size()}</td>
					<td>
						<a href="${createLink(action: 'edit',id:brand.id)}">Edit</a> | 
						<a href="${createLink(action: 'delete',id:brand.id)}" class="delete">Delete</a>
					</td>
				</tr>
				</g:each>
			</tbody>
			</table>

		</div>


	</div>

</body>
</html>