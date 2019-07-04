<?php

require_once '../models/Usuario.php';

class UsuarioController {

    public function registro() {
        require_once '../views/includes/cabecera.php';
        require_once '../views/paginas/registro.php';
        require_once '../views/includes/pie.php';
    }

    public function login() {
        require_once '../views/includes/cabecera.php';
        require_once '../views/paginas/login.php';
        require_once '../views/includes/pie.php';
        
    }

    public function guardarUsuario($datos){
        
        $errores = '';

        if(!isset($datos['email'])) {
            $errores = "<p>Falta el nombre</p>";
        }

        $usuario = new Usuario();
        $usuario->guardarUsuario($datos);

        session_destroy();

    }

    public function accesoUsuario($datos) {
        #Iniciamos una sesión, creamos o instanciamos el objeto usuario
        echo "<br><br>Acceso Usuario Controller 1<br>";
        var_dump($datos);
        session_start();

        $usuario = new Usuario();
        $respuesta = $usuario->accesoUsuario($datos['apodo'], $datos['password']);
        echo "<br>Acceso Usuario Controller 2<br>";
        var_dump($respuesta);
        if($respuesta != false) {

            foreach($respuesta as $rol) {

                $_SESSION['id_usuario'] = $rol['id'];
                $_SESSION['id_rol'] = $rol['id_rol'];

            }

            if($_SESSION['id_rol'] == 1) {
                
                header('Location: index.php?page=dashboard'); 
                die();

            } else {

                header('Location: index.php?page=blog'); 
                die();

            }

        } echo "<br>Acceso Usuario Controller final<br>";

    
    }
    

}


?>