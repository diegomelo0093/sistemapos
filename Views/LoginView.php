<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 ">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>- Sistema Pos</title>
    <!-- Bootstrap CSS -->
    <link href="Views/css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="Views/css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="Views/css/elegant-icons-style.css" rel="stylesheet" />
    <link href="Views/css/font-awesome.css" rel="stylesheet" />
    <!-- Custom styles -->
    <link href="Views/css/style.css" rel="stylesheet">
    <link href="Views/css/estilosLogin.css" rel="stylesheet">
    <link href="Views/css/style-responsive.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
    <!--[if lt IE 9]>-->

    <script src="Views/js/html5shiv.js"></script>
    <script src="Views/js/respond.min.js"></script>
    
    <!--[endif]-->
</head>
<!--<body class="login-img3-body">-->

<!--inicio de formulario de ingreso-->
<!--
<div class="container">
    <form class="login-form" action="../sistema_pos/Controller/AccessUsers.php">
        <div class="login-wrap">
            <p class="login-img"><i class="icon_lock_alt"></i></p>
            <div class="input-group">
                <span class="input-group-addon"><i class="icon_profile"></i></span>
                <input type="text" name="usuario" class="form-control" placeholder="Nombre de Usuario" autofocus>
            </div>
            <div class="input-group">
                <span class="input-group-addon"><i class="icon_key_alt"></i></span>
                <input type="password"  name="password" class="form-control" placeholder="Password">
            </div>
            <label class="checkbox">
                <input type="checkbox" value="remember-me"> Recuerdame
                <span class="pull-right"> <a href="#"> Olvidaste tu contraseña?</a></span>
            </label>
            <button class="btn btn-primary btn-lg btn-block" type="submit">Ingreso</button>
            <button class="btn btn-info btn-lg btn-block" type="submit">Registrate</button>
        </div>
    </form>
</div>
-->
<!--final de formulario de ingreso-->

<section>
        <div class="form-container">
            <h1>System-INC</h1>
            <form  action="../sistema_pos/Controller/AccessUsers.php">
                <div class="control">
                 <input type="text" name="usuario" id="name" placeholder="Nombre de Usuario" autofocus>                 
                </div>
                <div class="control">
                    <input type="password" name="password" id="psw" placeholder="Password">
                </div>
                <span><input type="checkbox">Recuerdame</span>
                <div class="control">
                    <input type="submit" value="Ingresar">
                </div>
            </form>
        </div>
    </section>


</body>
</html>