
<%@ page import="com.vega.sneakerhead.Shoe" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'shoe.label', default: 'Shoe')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-shoe" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-shoe" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list shoe">
			
				<g:if test="${shoeInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="shoe.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${shoeInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${shoeInstance?.active}">
				<li class="fieldcontain">
					<span id="active-label" class="property-label"><g:message code="shoe.active.label" default="Active" /></span>
					
						<span class="property-value" aria-labelledby="active-label"><g:formatBoolean boolean="${shoeInstance?.active}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${shoeInstance?.brand}">
				<li class="fieldcontain">
					<span id="brand-label" class="property-label"><g:message code="shoe.brand.label" default="Brand" /></span>
					
						<span class="property-value" aria-labelledby="brand-label"><g:link controller="brand" action="show" id="${shoeInstance?.brand?.id}">${shoeInstance?.brand?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${shoeInstance?.categories}">
				<li class="fieldcontain">
					<span id="categories-label" class="property-label"><g:message code="shoe.categories.label" default="Categories" /></span>
					
						<g:each in="${shoeInstance.categories}" var="c">
						<span class="property-value" aria-labelledby="categories-label"><g:link controller="category" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${shoeInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="shoe.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${shoeInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${shoeInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="shoe.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${shoeInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${shoeInstance?.images}">
				<li class="fieldcontain">
					<span id="images-label" class="property-label"><g:message code="shoe.images.label" default="Images" /></span>
					
						<g:each in="${shoeInstance.images}" var="i">
						<span class="property-value" aria-labelledby="images-label"><g:link controller="image" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${shoeInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="shoe.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${shoeInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${shoeInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="shoe.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${shoeInstance?.user?.id}">${shoeInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${shoeInstance?.id}" />
					<g:link class="edit" action="edit" id="${shoeInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
