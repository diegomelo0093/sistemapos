<?php
require ('../Model/Conexion.php');
require ('Constans.php');
if (!isset($_SESSION)){
    session_start();
}
$usuario = $_GET['usuario'];
$password = $_GET['password'];

$con = new Conexion();
$searchUser = $con->getUser($usuario, $password);

foreach($searchUser as $user){
    $idUsuario = $user['id_usu'];
    $tipo = $user['tipo'];
    $login = $user['login'];
    $nombre = $user['nombre'];
    $password = $user['password']; 
    $foto = $user['foto'];
}
if(empty($searchUser)){
    echo'<script languaje = javascript>
    alert("Usuario o password incorrectos, por favor intente de nuevo")
    self.location = "../index.php"
    </script>';
} 
/* CREACION DE INTERFACES PARA LOS USUARIOS */
else if($tipo == 'VENTAS'){
   
    $urlViews = URL_VIEWS;
    $userLogueado= $nombre;
    $imageUser= $foto;
    $menuMain =  $con->getMenuMainVentas();
    require ('../Views/WellcomeVentas.php');
}
else if($tipo == 'ADMINISTRADOR'){
    $urlViews = URL_VIEWS;
    $userLogueado= $nombre;
    $imageUser= $foto;    
    $menuMain =  $con->getMenuMain();
    require ('../Views/Wellcome.php');
}
/* FIN  DE LA CREACION DE INTERFACES*/
?>