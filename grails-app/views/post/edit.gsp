<%@ page import="ar.piwaf.Post" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<g:form url="[resource:postInstance, action:'update']" method="PUT" >
			<g:hiddenField name="version" value="${postInstance?.version}" />
			<div class="panel panel-primary">
				<div class="panel-heading">
					<g:message code="default.edit.label" args="[entityName]" />
				</div>
				<div class="panel-body">
					<g:if test="${flash.message}">
						<div class="alert alert-success alert-dismissable">
							<button type="button" class="close" data-dismiss="alert"
								aria-hidden="true">&times;</button>
							${flash.message}
						</div>
					</g:if>
					<g:hasErrors bean="${postInstance}">
					<ul class="errors" role="alert">
						<g:eachError bean="${postInstance}" var="error">
						<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
						</g:eachError>
					</ul>
					</g:hasErrors>
					<g:render template="form"/>
				</div>
				<div class="panel-footer">
					<g:actionSubmit class="btn btn-primary" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</div>
			</div>
		</g:form>
	</body>
</html>