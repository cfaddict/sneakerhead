<%@ page defaultCodec="html" %>
<div class="form-group ${invalid ? 'error' : ''}">
	<label for="${property}" class="col-lg-2 control-label">${label}</label>
	<div class="col-lg-4">
		<%= widget %>
		<g:if test="${invalid}"><span class="help-inline">${errors.join('<br>')}</span></g:if>
	</div>
</div>