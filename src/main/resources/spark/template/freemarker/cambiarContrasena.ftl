
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ayax</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap -->
    <link href="css/animate.css" rel="stylesheet">

    <!-- Google Font Lato -->
    <link href='https://fonts.googleapis.com/css?family=Lato:400,700,900,400italic,700italic,900italic' rel='stylesheet'
          type='text/css'>
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!-- Plugin Styles -->
    <link href="css/datepicker.css" rel="stylesheet">


    <!-- Main Styles -->
    <link href="css/styles.css" rel="stylesheet">
	<link href="css/recuperarContrasena.css" rel="stylesheet">
    <!-- Available main styles: styles-red.css, styles-green.css -->


    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <link href="css/ie8fix.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Lato:400' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Lato:700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Lato:900' rel='stylesheet' type='text/css'>
    <![endif]-->


    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="img/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="img/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="img/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="img/ico/apple-touch-icon-57-precomposed.png">
    <link rel="shortcut icon" href="img/ico/ayax.ico">

</head>
<body id="top" data-spy="scroll" data-target=".navbar" data-offset="260">


<!-- Header start -->
<header data-spy="affix" data-offset-top="39" data-offset-bottom="0" class="large">

    <div class="row container box">
        <div class="col-md-5">
            <!-- Logo start -->
            <div class="brand">
                <h1><a class="scroll-to" href="index.html#top"><img class="img-responsive" src="img/logo.png" alt="Ayax"></a></h1>
            </div>
            <!-- Logo end -->
        </div>

        <div class="col-md-7">
            <div class="pull-right">
                <div class="header-info pull-right">
                    <div class="contact pull-left">CONTACTO: (301) 485-7108</div>
                    <!-- Language Switch start -->
                </div>
            </div>

            <div class="clearfix"></div>

            <!-- start navigation -->
            <nav class="navbar navbar-default" role="navigation">
                <div class="container-fluid">
                    <!-- Toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand scroll-to" href="index.html#top"><img class="img-responsive"  src="img/logo.png" alt="Ayax"></a>
                    </div>
                    <!-- Collect the nav links, for toggling -->
                   <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <!-- Nav-Links start -->
                        <ul class="nav navbar-nav navbar-right">
							<li class="active"><a href="index.html" class="scroll-to">Necesito un Servicio</a></li>
							<li><a href="login.html" class="scroll-to">Soy Transportador</a></li>
                        </ul>
                        <!-- Nav-Links end -->
                    </div>
                </div>
            </nav>
            <!-- end navigation -->
        </div>
    </div>

</header>
<!-- Header end -->


<!-- Teaser start -->
<section id="teaser-blog">
    <div class="container">
        <div class="row">

            <div class="col-md-6">
                <h2 class="title">Cambio de contraseña</h2>
            </div>
        </div>
    </div>
</section>
<!-- Teaser end -->

<section class="blog-posts error-page">
    <div class="container">
        <div class="row">
            <div class="col-md-5 col-md-offset-1 error-search">
                <h3>Cambio de contraseña<br/>
                    <span>Ingresa tu nueva contraseña:</span></h3>
                <form method="get" class="recuperarContrasenaForm" action="post" id="cambiar-contrasena">
                    <div class="input-group">
                        <input type="password" name="contrasena" class="form-control" id="contrasena" placeholder="Contraseña nueva">
						<br/>
					</div>
					<label class="checkbox">
						<input type="checkbox" id="mostrarContrasena" name="mostrarContrasena"> Mostrar Contraseña
					</label>
					<div id="mensajeError" style="visibility:hidden;color:red;"></div> 
					<br/>
					<input type="submit" class="recuperarContrasena" value="Cambiar Contraseña">
					<br/>
                </form>
            </div>
        </div>
    </div>
</section>

<!-- Footer start -->
<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <ul class="footer-nav">
                    <li class="active"><a href="index.html" class="scroll-to">Necesito un Servicio</a></li>
                    <li><a href="login.html" class="scroll-to">Soy Transportador</a></li>
                </ul>
                <div class="clearfix"></div>
                <p class="copyright">©2016 Ayax, All Rights Reserved.</p>
            </div>
        </div>
    </div>
</footer>
<!-- Footer end -->


<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-1.11.0.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->

<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.autocomplete.min.js"></script>
<script src="js/jquery.placeholder.js"></script>
<script src="js/locations-autocomplete.js"></script>
<script src="js/bootstrap-datepicker.js"></script>
<script src="http://maps.google.com/maps/api/js?sensor=false&amp;language=en"></script>
<script src="js/gmap3.min.js"></script>
<script src="js/recuperarContrasena.js"></script>
<!--[if !(gte IE 8)]><!-->
<script src="js/wow.min.js"></script>
<script src="js/general.js"></script>
<script>
    // Initialize WOW
    //-------------------------------------------------------------
    new WOW({mobile: false}).init();
</script>
<!--<![endif]-->

<script src="js/custom.js"></script>


</body>
</html>