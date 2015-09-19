

<%@ page import="ar.piwaf.Post" %>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="bootstrap">
<g:set var="entityName"
	value="${message(code: 'post.label', default: 'Post')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
	<g:if test="${flash.message}">
		<div class="alert alert-success alert-dismissable">
			<button type="button" class="close" data-dismiss="alert"
				aria-hidden="true">&times;</button>
			${flash.message}
		</div>
	</g:if>
	<div class="panel panel-primary">
		<div class="panel-heading">
			<g:message code="default.list.label" args="[entityName]" />
		</div>
		<div class="panel-body">
			<table class="table table-hover">
				<thead>
					<tr>
						
							<g:sortableColumn property="titulo" title="${message(code: 'post.titulo.label', default: 'Titulo')}" />
						
							<g:sortableColumn property="autor" title="${message(code: 'post.autor.label', default: 'Autor')}" />
						
							<g:sortableColumn property="contenido" title="${message(code: 'post.contenido.label', default: 'Contenido')}" />
						
							<g:sortableColumn property="dateCreated" title="${message(code: 'post.dateCreated.label', default: 'Date Created')}" />
						
						<th>Opciones</th>
					</tr>
				</thead>
				<tbody>
					<g:each in="${postInstanceList}" status="i"
						var="postInstance">
						<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
							
								<td>${fieldValue(bean: postInstance, field: "titulo")}</td>
							
								<td>${fieldValue(bean: postInstance, field: "autor")}</td>
							
								<td>${fieldValue(bean: postInstance, field: "contenido")}</td>
							
								<td><g:formatDate date="${postInstance.dateCreated}" format="dd/MM/yyyy HH:mm" /></td>
							
							<td><g:link action="show" class="btn btn-default" id="${postInstance.id}">VER</g:link></td>
						</tr>
					</g:each>
				</tbody>
			</table>
		</div>
		<div class="panel-footer">
			<a href="${createLink(action:'create')}" class="btn btn-primary"><g:message code="default.new.label" args="[entityName]" /></a>
		</div>
	</div>
</body>
</html>