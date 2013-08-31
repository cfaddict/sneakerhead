<!DOCTYPE HTML>
<html lang="en">
<head>
	<title>Sneakehead - User List</title>
</head>
<body>

	<div class="row">
		
		<div class="col-md-12">

			<h2 class="pull-left">Users</h2>
			<g:link action="add">
				<button type="button" class="btn btn-primary pull-right">
					<span class="glyphicon glyphicon-user"></span> Add User
				</button>
			</g:link>

			<div class="clear">&nbsp;</div>

			<g:if test="${flash.message}">
				<div class="alert alert-${flash.type ?: 'warning'}">${flash.message}</div>
			</g:if>

			<table class="table table-condensed table-hover">
			<thead>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email Address</th>
					<th>Handle</th>
					<th>City</th>
					<th>State</th>
					<th>Active</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				<g:each var="user" in="${users}">
				<tr>
					<td>${user.firstName}</td>
					<td>${user.lastName}</td>
					<td>${user.email}</td>
					<td>@${user.handle}</td>
					<td>${user.city}</td>
					<td>${user.state}</td>
					<td><g:formatBoolean boolean="${user.active}" true="Yes" false="No"/></td>
					<td>
						<a href="${createLink(action:'edit',id:user.id)}">Edit</a> |
						<a href="${createLink(action: 'delete',id:user.id)}" class="delete">Delete</a>
					</td>
				</tr>
				</g:each>
			</tbody>
			</table>

		</div>


	</div>

</body>
</html>