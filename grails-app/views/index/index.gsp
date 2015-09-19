
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap"/>
		<title>Pwned page</title>
	</head>
	<body>

<g:each in="${postInstanceList}">
Título: ${it?.titulo} </br>

Autor: ${it?.autor} </br>

${it?.contenido} </br>

Fecha: ${it?.dateCreated }



<hr />
</g:each>

	</body>
</html>
