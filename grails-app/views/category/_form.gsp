<%@ page import="com.vega.sneakerhead.Category" %>



<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="category.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${categoryInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'active', 'error')} ">
	<label for="active">
		<g:message code="category.active.label" default="Active" />
		
	</label>
	<g:checkBox name="active" value="${categoryInstance?.active}" />
</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'shoes', 'error')} ">
	<label for="shoes">
		<g:message code="category.shoes.label" default="Shoes" />
		
	</label>
	
</div>

