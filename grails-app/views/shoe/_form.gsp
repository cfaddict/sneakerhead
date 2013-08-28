<%@ page import="com.vega.sneakerhead.Shoe" %>



<div class="fieldcontain ${hasErrors(bean: shoeInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="shoe.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${shoeInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shoeInstance, field: 'active', 'error')} ">
	<label for="active">
		<g:message code="shoe.active.label" default="Active" />
		
	</label>
	<g:checkBox name="active" value="${shoeInstance?.active}" />
</div>

<div class="fieldcontain ${hasErrors(bean: shoeInstance, field: 'brand', 'error')} required">
	<label for="brand">
		<g:message code="shoe.brand.label" default="Brand" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="brand" name="brand.id" from="${com.vega.sneakerhead.Brand.list()}" optionKey="id" required="" value="${shoeInstance?.brand?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shoeInstance, field: 'categories', 'error')} ">
	<label for="categories">
		<g:message code="shoe.categories.label" default="Categories" />
		
	</label>
	<g:select name="categories" from="${com.vega.sneakerhead.Category.list()}" multiple="multiple" optionKey="id" size="5" value="${shoeInstance?.categories*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shoeInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="shoe.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${shoeInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shoeInstance, field: 'images', 'error')} ">
	<label for="images">
		<g:message code="shoe.images.label" default="Images" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${shoeInstance?.images?}" var="i">
    <li><g:link controller="image" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="image" action="create" params="['shoe.id': shoeInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'image.label', default: 'Image')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: shoeInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="shoe.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${com.vega.sneakerhead.User.list()}" optionKey="id" required="" value="${shoeInstance?.user?.id}" class="many-to-one"/>
</div>

