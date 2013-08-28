
<%@ page import="com.vega.sneakerhead.Brand" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'brand.label', default: 'Brand')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-brand" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-brand" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'brand.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="active" title="${message(code: 'brand.active.label', default: 'Active')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'brand.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'brand.lastUpdated.label', default: 'Last Updated')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${brandInstanceList}" status="i" var="brandInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${brandInstance.id}">${fieldValue(bean: brandInstance, field: "name")}</g:link></td>
					
						<td><g:formatBoolean boolean="${brandInstance.active}" /></td>
					
						<td><g:formatDate date="${brandInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${brandInstance.lastUpdated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${brandInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
