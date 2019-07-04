<?php

    require_once '../controllers/UsuarioController.php';

    $usuario = new UsuarioController();
    $usuario->registro();

    session_start();
    #SESIONES: Forma de almacenar datos de manera individual utilizando un identificador.
    # Función nativa: session_start();

    #Para asignar una variable a una sesión: $_SESSION['dato'] = 'valor';
        # $_SESSION['rol'] = 'admin';

    # Para destruir una sesión: session_destroy(;)


    # $_GET['variable]; $_GET['variable];

    #CSRF

    if(empty($_SESSION['key'])) {
        # Cadena de encriptación segura. Métodos de encriptación =>
        # bin2hex(); Devuelve una cadena de tipo ascii de un string
        # random_bytes(tamaño); Genera un string de bites aleatorio
        $_SESSION['key'] = bin2hex( random_bytes(32) );
        
    }

    //echo $_SESSION['key'];


    #Creamos un CSRF token dinámico que debe ser exactamente igual al de la cadena de encriptación
    $csrf = hash_hmac('sha256', 'registro.php', $_SESSION['key']); //Este token hay que pasarlo a través del formulario


    if(isset($_POST['registrar'])) {

        if (hash_equals($csrf, $_POST['csrf'])) {

            $datos = array(
                'nombre' => $_POST['nombre'],
                'apodo' => $_POST['apodo'],
                'email' => $_POST['email'],
                'password' => md5($_POST['password'])
            );
    
            //var_dump($datos);    
            $usuario->guardarUsuario($datos);

        } else {

            header("Location: error.php");
            die();

        }

    }

?>

<div class="container-fluid register-login">
        <div class="row wrapper">
            <div class="col-lg padding-none bg-image-container">
                <div class="container__image">
                    <div class="image--points"></div>
                </div>
            </div>
<?php //phpinfo()?>
        
<!-- Start Form -->
            <div class="col-lg form-center d-flex justify-content-center align-items-center">
                <div class="container-form">
                    <h1 class="register-login-h1">Registro</h1>
                    <p class="register-login-p">Por favor ingrese sus datos para crear su cuenta.</p>
                    <!-- Action la página a la cuál irá la información del formulario -->
                    <!-- Method indica cómo enviaremos la información por el método HTTP -->
                    <!-- enctype multipart/form-data permite agregar archivos -->
                    <?php
                        if(isset($_SESSION['mensaje'])) {

                            echo "<div class='alert alert-primary' role='alert'>".$_SESSION['mensaje']."</div>";
                        }
                    ?>
                    <form action="index.php?page=registro" method="POST" name="registroForm" id="registroForm">

                        <input type="hidden" name="csrf" id="csrf" value="<?php echo $csrf?>">

                        <div class="row">
                            <div class="col-lg">
                                <div class="form-group">
                                    <input type="text" id="nombre" name="nombre" class="form-control" required>
                                    <label for="nombre" class="form-label">Nombre</label>
                                </div>
                            </div>

                            <div class="col-lg">
                                <div class="form-group">
                                    <input type="text" id="apodo" name="apodo" class="form-control" required>
                                    <label for="apodo" class="form-label">Apodo</label>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <input type="text" id="email" name="email" class="form-control" required>
                            <label for="email" class="form-label">E-mail</label>
                        </div>

                        <div class="form-group">
                            <input type="password" id="password" name="password" class="form-control" required>
                            <label for="password" class="form-label">Contraseña</label>
                        </div>

                        <div class="form-group">
                            <input type="password" id="confirmarpassword" name="confirmarpassword" class="form-control" required>
                            <label for="confirmarpassword" class="form-label">Confirmar contraseña</label>
                        </div>

                        <div class="d-flex justify-content-between">
                            <div class="d-flex align-items-center">
                                <div class="d-flex align-items-center">
                                <input class="form-check-input checked--form--input" type="checkbox" id="acepto" name="acepto" value="" required>
                                <label class="form-check-label order-2" for="remember">Acepto los términos y condiciones</label>
                                <label class="label--ckecked order-1" for="acepto"></label>
                            </div>
                            </div>
                        </div>
                        
                        <div class="d-flex justify-content-lg-center">
                            <button type="submit" id="registrar" name="registrar" class="btn btn-signup--register align-self-center">Aceptar</button>
                        </div>
                        <a href="#" class="register-link--haveaccount">¿Ya tiene una contraseña? Entrar</a>
                    </form>
                </div>
            </div>
        </div> <!-- End Start Form -->

    </div>
</div>


    

