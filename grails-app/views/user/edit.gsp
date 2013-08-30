<!DOCTYPE HTML>
<html lang="en">
<head>
	<title>Sneakehead Users - Add/Edit User</title>
</head>
<body>

	<div class="row">
		
		<div class="col-md-12">

			<h3>Add/Edit User</h3>

			<g:if test="${user.errors.errorCount > 0}">
				<div class="alert alert-danger">
				<g:eachError bean="${user}">
				    <li><g:message error="${it}" /></li>
				</g:eachError>
				</div>
			</g:if>

            <g:form action="save" name="frmSaveUser" class="form-horizontal">
				<input type="hidden" name="id" value="${user.id}"/>

				  <div class="form-group">
				    <label for="firstName" class="col-lg-2 control-label">First Name</label>
				    <div class="col-lg-4">
				    	<g:textField name="firstName" value="${user.firstName}" class="form-control"/>
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="lastName" class="col-lg-2 control-label">Last Name</label>
				    <div class="col-lg-4">
						<g:textField name="lastName" value="${user.lastName}" class="form-control"/>
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="email" class="col-lg-2 control-label">Email Address</label>
				    <div class="col-lg-4">
						<g:textField name="email" value="${user.email}" class="form-control"/>
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="handle" class="col-lg-2 control-label">Handle</label>
				    <div class="col-lg-4">
						<g:textField name="handle" value="${user.handle}" class="form-control"/>
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="City" class="col-lg-2 control-label">City</label>
				    <div class="col-lg-4">
						<g:textField name="city" value="${user.city}" class="form-control"/>
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="state" class="col-lg-2 control-label">State</label>
				    <div class="col-lg-4">
						<g:textField name="state" value="${user.state}" class="form-control"/>
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="shoeSize" class="col-lg-2 control-label">Shoe Size</label>
				    <div class="col-lg-4">
						<g:textField name="shoeSize" value="${user.shoeSize}" class="form-control"/>
				    </div>
				  </div>				  				  
				  <div class="form-group">
				    <div class="col-lg-offset-2 col-lg-4">
				      <div class="checkbox">
				        <label>
				          Active <g:checkBox name="active" value="${user.active}" />
				        </label>
				      </div>
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="bio" class="col-lg-2 control-label">Bio</label>
				    <div class="col-lg-4">
						<textarea id="bio" name="bio" class="form-control" rows="5">${user.bio}</textarea>
				    </div>
				  </div>
				  <div class="form-group">
				    <div class="col-lg-offset-5 col-lg-4">
				      <button type="submit" class="btn btn-default">Save User</button>
				    </div>
				  </div>

            </g:form>

			<br/><br/><br/><br/>
	
		</div>


	</div>

</body>
</html>