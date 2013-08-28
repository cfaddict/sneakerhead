
<%@ page import="com.vega.sneakerhead.Image" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'image.label', default: 'Image')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-image" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-image" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list image">
			
				<g:if test="${imageInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="image.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${imageInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${imageInstance?.path}">
				<li class="fieldcontain">
					<span id="path-label" class="property-label"><g:message code="image.path.label" default="Path" /></span>
					
						<span class="property-value" aria-labelledby="path-label"><g:fieldValue bean="${imageInstance}" field="path"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${imageInstance?.caption}">
				<li class="fieldcontain">
					<span id="caption-label" class="property-label"><g:message code="image.caption.label" default="Caption" /></span>
					
						<span class="property-value" aria-labelledby="caption-label"><g:fieldValue bean="${imageInstance}" field="caption"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${imageInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="image.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${imageInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${imageInstance?.isMainImage}">
				<li class="fieldcontain">
					<span id="isMainImage-label" class="property-label"><g:message code="image.isMainImage.label" default="Is Main Image" /></span>
					
						<span class="property-value" aria-labelledby="isMainImage-label"><g:formatBoolean boolean="${imageInstance?.isMainImage}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${imageInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="image.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${imageInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${imageInstance?.shoe}">
				<li class="fieldcontain">
					<span id="shoe-label" class="property-label"><g:message code="image.shoe.label" default="Shoe" /></span>
					
						<span class="property-value" aria-labelledby="shoe-label"><g:link controller="shoe" action="show" id="${imageInstance?.shoe?.id}">${imageInstance?.shoe?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${imageInstance?.id}" />
					<g:link class="edit" action="edit" id="${imageInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
