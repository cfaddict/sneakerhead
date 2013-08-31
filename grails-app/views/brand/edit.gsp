<!DOCTYPE HTML>
<html lang="en">
<head>
  <title>Add/Edit Brand</title>
</head>
<body>

	<div class="row">
		
		<div class="col-md-12">

			<h3>Add/Edit User</h3>

			<g:hasErrors bean="${user}">
				<div class="alert alert-danger">
				<g:eachError bean="${user}">
				    <li><g:message error="${it}" /></li>
				</g:eachError>
				</div>
			</g:hasErrors>			

			<g:form action="save" class="form-horizontal">
				<g:hiddenField name="id" value="${brand.id}"/>

				<f:field bean="brand" property="name" input-class="form-control"/>
				<f:field bean="brand" property="active"/>
				<g:if test="${brand.id}">
					<f:display bean="brand" property="dateCreated"/>
					<f:display bean="brand" property="lastUpdated"/>
				</g:if>

				<div class="form-group">
					<div class="col-lg-offset-2">
					  <button type="submit" class="btn btn-default">Save Brand</button>
					</div>
				</div>

			</g:form>

		</div>

	</div>

</body>
</html>