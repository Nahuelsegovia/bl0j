<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Blog by d0t</title>

    <!-- CSS Y JS DEL THEME -->
    <asset:stylesheet src="application.css"/>
	<asset:javascript src="application.js"/>
	<g:layoutHead/>

  

</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" >d0t blog's</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <g:link controller="index">Inicio</g:link>
                    </li>
                    
                    <sec:ifNotLoggedIn>
                    <li>
                        <g:link controller="login">Login</g:link>
                    </li>
                    </sec:ifNotLoggedIn>
                    
                    <sec:ifAnyGranted roles="ROLE_ADMIN">
                    <li>
                        <g:link controller="post" action="create">Nuevo Post</g:link>
                    </li>
                    <li>
                        <g:link controller="logout">Logout</g:link>
                    </li>
                    </sec:ifAnyGranted>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
    <div class="container">

        <div class="row">

            <!-- Blog Post Content Column -->
            <div class="col-lg-8">

                <!-- Blog Post -->

                <!-- Title -->
                <h1>bl0j with Grails</h1>

                <!-- Author -->
                <p class="lead">
                    by <a href="#">d0t</a>
                </p>

                <hr>

                <!-- Date/Time -->
                <p></p>

                <hr>


                <hr>

                <!-- Post Content -->
               <g:layoutBody/>
			
        
		
                <hr>

                <!-- Blog Comments -->

       
             

                <!-- Posted Comments -->

                <!-- Comment -->
                <div class="media">
                    <a class="pull-left" href="#">
                     
                    </a>
                    
                </div>

                <!-- Comment -->
                <div class="media">
                    <a class="pull-left" href="#">
                        
                    </a>
                    <div class="media-body">
                        <h4 class="media-heading">
                        <div class="media">
                            <a class="pull-left" href="#">
                                
                            </a>
                            
                        </div>
                        <!-- End Nested Comment -->
                    </div>
                </div>

            </div>

            <!-- Blog Sidebar Widgets Column -->
            <div class="col-md-4">

                <!-- Blog Search Well -->
                <div class="well">
                    <h4>Blog Search</h4>
                    <div class="input-group">
                        <input type="text" class="form-control">
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button">
                                <span class="glyphicon glyphicon-search"></span>
                        </button>
                        </span>
                    </div>
                    <!-- /.input-group -->
                </div>

                <!-- Blog Categories Well -->
                <div class="well">
                    <h4>Blog Categories</h4>
                    <div class="row">
                        <div class="col-lg-6">
                            <ul class="list-unstyled">
                                <li><a href="#">Category Name</a>
                                </li>
                                <li><a href="#">Category Name</a>
                                </li>
                                <li><a href="#">Category Name</a>
                                </li>
                                <li><a href="#">Category Name</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-lg-6">
                            <ul class="list-unstyled">
                                <li><a href="#">Category Name</a>
                                </li>
                                <li><a href="#">Category Name</a>
                                </li>
                                <li><a href="#">Category Name</a>
                                </li>
                                <li><a href="#">Category Name</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- /.row -->
                </div>

                <!-- Side Widget Well -->
                <div class="well">
                    <h4>Información sobre el la aplicación.</h4>
                    <p>Blog hecho con Grails y Bootstrap</p>
                </div>

            </div>

        </div>
        <!-- /.row -->

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Bl0j</p>
                </div>
            </div>
            <!-- /.row -->
        </footer>

    </div>
    <!-- /.container -->

  

</body>

</html>
