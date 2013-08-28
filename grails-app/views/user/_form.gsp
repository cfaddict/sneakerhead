<%@ page import="com.vega.sneakerhead.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="user.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${userInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="user.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${userInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="user.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${userInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'handle', 'error')} required">
	<label for="handle">
		<g:message code="user.handle.label" default="Handle" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="handle" required="" value="${userInstance?.handle}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'shoeSize', 'error')} ">
	<label for="shoeSize">
		<g:message code="user.shoeSize.label" default="Shoe Size" />
		
	</label>
	<g:field name="shoeSize" value="${fieldValue(bean: userInstance, field: 'shoeSize')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'bio', 'error')} ">
	<label for="bio">
		<g:message code="user.bio.label" default="Bio" />
		
	</label>
	<g:textField name="bio" value="${userInstance?.bio}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'city', 'error')} ">
	<label for="city">
		<g:message code="user.city.label" default="City" />
		
	</label>
	<g:textField name="city" value="${userInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'state', 'error')} ">
	<label for="state">
		<g:message code="user.state.label" default="State" />
		
	</label>
	<g:textField name="state" value="${userInstance?.state}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'active', 'error')} ">
	<label for="active">
		<g:message code="user.active.label" default="Active" />
		
	</label>
	<g:checkBox name="active" value="${userInstance?.active}" />
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'shoes', 'error')} ">
	<label for="shoes">
		<g:message code="user.shoes.label" default="Shoes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userInstance?.shoes?}" var="s">
    <li><g:link controller="shoe" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="shoe" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'shoe.label', default: 'Shoe')])}</g:link>
</li>
</ul>

</div>

