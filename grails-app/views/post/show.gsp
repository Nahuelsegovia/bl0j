
<%@ page import="ar.piwaf.Post" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="panel panel-primary">
			<div class="panel-heading">
				<g:message code="default.show.label" args="[entityName]" />
			</div>
			<div class="panel-body">
				<g:if test="${flash.message}">
					<div class="alert alert-success alert-dismissable">
						<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">&times;</button>
						${flash.message}
					</div>
				</g:if>
				
					<g:if test="${postInstance?.titulo}">
					<div class="row" style="padding-left: 15px;">
						<span style="font-weight: bold;"><g:message code="post.titulo.label" default="Título" /></span>: 
						
							<span class="property-value" aria-labelledby="titulo-label"><g:fieldValue bean="${postInstance}" field="titulo"/></span>
						
					</div>
					</g:if>
				
					<g:if test="${postInstance?.autor}">
					<div class="row" style="padding-left: 15px;">
						<span style="font-weight: bold;"><g:message code="post.autor.label" default="Autor" /></span>: 
						
							<span class="property-value" aria-labelledby="autor-label"><g:fieldValue bean="${postInstance}" field="autor"/></span>
						
					</div>
					</g:if>
				
					<g:if test="${postInstance?.contenido}">
					<div class="row" style="padding-left: 15px;">
						<span style="font-weight: bold;"><g:message code="post.contenido.label" default="Contenido" /></span>: 
						
							<span class="property-value" aria-labelledby="contenido-label"><g:fieldValue bean="${postInstance}" field="contenido"/></span>
						
					</div>
					</g:if>
				
					<g:if test="${postInstance?.dateCreated}">
					<div class="row" style="padding-left: 15px;">
						<span style="font-weight: bold;"><g:message code="post.dateCreated.label" default="Creación" /></span>: 
						
							<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${postInstance?.dateCreated}" format="dd/MM/yyyy HH:mm" /></span>
						
					</div>
					</g:if>
				
			</div>
			<div class="panel-footer">
				<g:form url="[resource:postInstance, action:'delete']" method="DELETE">
					<g:link class="btn btn-default" action="edit" resource="${postInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</g:form>
			</div>
		</div>
	</body>
</html>