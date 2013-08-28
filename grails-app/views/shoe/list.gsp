
<%@ page import="com.vega.sneakerhead.Shoe" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'shoe.label', default: 'Shoe')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-shoe" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-shoe" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="title" title="${message(code: 'shoe.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="active" title="${message(code: 'shoe.active.label', default: 'Active')}" />
					
						<th><g:message code="shoe.brand.label" default="Brand" /></th>
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'shoe.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'shoe.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'shoe.lastUpdated.label', default: 'Last Updated')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${shoeInstanceList}" status="i" var="shoeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${shoeInstance.id}">${fieldValue(bean: shoeInstance, field: "title")}</g:link></td>
					
						<td><g:formatBoolean boolean="${shoeInstance.active}" /></td>
					
						<td>${fieldValue(bean: shoeInstance, field: "brand")}</td>
					
						<td><g:formatDate date="${shoeInstance.dateCreated}" /></td>
					
						<td>${fieldValue(bean: shoeInstance, field: "description")}</td>
					
						<td><g:formatDate date="${shoeInstance.lastUpdated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${shoeInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
