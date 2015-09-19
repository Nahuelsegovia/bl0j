<%@ page import="ar.piwaf.Post" %>



<div class="form-group">
	<label for="titulo">
		<g:message code="post.titulo.label" default="Titulo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="titulo" required="" value="${postInstance?.titulo}" class="form-control" />
</div>

<div class="form-group">
	<label for="autor">
		<g:message code="post.autor.label" default="Autor" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="autor" required="" value="${postInstance?.autor}" class="form-control" />
</div>

<div class="form-group">
	<label for="contenido">
		<g:message code="post.contenido.label" default="Contenido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="contenido" maxlength="500" required="" value="${postInstance?.contenido}" class="form-control" />
</div>
