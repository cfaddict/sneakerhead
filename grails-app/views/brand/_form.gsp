<%@ page import="com.vega.sneakerhead.Brand" %>



<div class="fieldcontain ${hasErrors(bean: brandInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="brand.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${brandInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: brandInstance, field: 'active', 'error')} ">
	<label for="active">
		<g:message code="brand.active.label" default="Active" />
		
	</label>
	<g:checkBox name="active" value="${brandInstance?.active}" />
</div>

<div class="fieldcontain ${hasErrors(bean: brandInstance, field: 'shoes', 'error')} ">
	<label for="shoes">
		<g:message code="brand.shoes.label" default="Shoes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${brandInstance?.shoes?}" var="s">
    <li><g:link controller="shoe" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="shoe" action="create" params="['brand.id': brandInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'shoe.label', default: 'Shoe')])}</g:link>
</li>
</ul>

</div>

