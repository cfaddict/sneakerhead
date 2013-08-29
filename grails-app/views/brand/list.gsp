<!DOCTYPE HTML>
<html lang="en">
<head>
	<title>Sneakehead - Brand List</title>
</head>
<body>

	<div class="row">
		
		<div class="col-md-12">

			<g:link action="add">
				<button type="button" class="btn btn-primary pull-right">
					<span class="glyphicon glyphicon-plus"></span> Add Brand
				</button>
			</g:link>

			<h2>Brands</h2>

			<div class="clear">&nbsp;</div>

			<g:if test="${flash.message}">
				<div class="alert alert-warning">${flash.message}</div>
			</g:if>

			<table class="table table-condensed table-hover">
			<thead>
				<th>Brand Name</th>
				<th>Active</th>
				<th>Shoe Count</th>
			</thead>
			<tbody>
				<g:each in="${brands}" var="brand">
				<tr>
					<td>${brand.name}</td>
					<td><g:formatBoolean boolean="${brand.active}" true="Yes" false="No"/></td>
					<td>${brand.shoes?.size()}</td>
				</tr>
				</g:each>
			</tbody>
			</table>

		</div>


	</div>

</body>
</html>