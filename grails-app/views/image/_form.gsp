<%@ page import="com.vega.sneakerhead.Image" %>



<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="image.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${imageInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'path', 'error')} ">
	<label for="path">
		<g:message code="image.path.label" default="Path" />
		
	</label>
	<g:textField name="path" value="${imageInstance?.path}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'caption', 'error')} ">
	<label for="caption">
		<g:message code="image.caption.label" default="Caption" />
		
	</label>
	<g:textField name="caption" value="${imageInstance?.caption}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'isMainImage', 'error')} ">
	<label for="isMainImage">
		<g:message code="image.isMainImage.label" default="Is Main Image" />
		
	</label>
	<g:checkBox name="isMainImage" value="${imageInstance?.isMainImage}" />
</div>

<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'shoe', 'error')} required">
	<label for="shoe">
		<g:message code="image.shoe.label" default="Shoe" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="shoe" name="shoe.id" from="${com.vega.sneakerhead.Shoe.list()}" optionKey="id" required="" value="${imageInstance?.shoe?.id}" class="many-to-one"/>
</div>

