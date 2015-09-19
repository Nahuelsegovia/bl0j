<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap"/>
		
	</head>
	<body>
	<div class="login-container">
    <div class="row">
        <div class="col-md-12">
            <div class="text-center m-b-md">
                <h3>Por favor inicie sesión</h3>
               
            </div>
            <div class="hpanel">
                <div class="panel-body">
                        <g:form controller="j_spring_security_check">
                            <div class="form-group">
                                <label class="control-label" for="username">Usuario</label>
                                 <g:field class="form-control" placeholder="E-mail" name="j_username" type="email" required="true" />
                                <span class="help-block small">Su nombre de usuario único en la aplicación</span>
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="password">Contraseña</label>
                               <g:field class="form-control" placeholder="Password" name="j_password" type="password" required="true" minlength="6" maxlength="100"/>
                                <span class="help-block small">Su contraseña segura</span>
                            </div>
                            <div class="checkbox">
                               <g:field name="remember" class="i-checks" type="checkbox" value="Remember Me"/> <g:message code="portal.login.recordar" default="Recordar"/>
                               <p class="help-block small">(Si se trata de un equipo privado)</p>
                            </div>
                            <g:field name="boton" class="btn btn-lg btn-success btn-block" type="submit" value="Ingresar" />
                        </g:form>
                </div>
            </div>
        </div>
    </div>
   </div>