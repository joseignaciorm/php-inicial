<?php
require_once 'ModeloBase.php';

class Usuario extends ModeloBase {
	public $nombre;
	public $apodo;
	public $email;
	public $password;

	public function __construct() {
		parent::__construct();
	}

	function getNombre() {
		return $this->nombre;
	}

	function getEmail() {
		return $this->email;
	}

	function getPassword() {
		return $this->password;
	}

	function setNombre($nombre) {
		$this->nombre = $nombre;
	}

	function setEmail($email) {
		$this->email = $email;
	}

	function setPassword($password) {
		$this->password = $password;
	}

	
	public function guardarUsuario($datos) {
		
		$db = new ModeloBase();
		$datos['id_rol'] = 1;
		$insertar = $db->insertar('usuarios', $datos);
		if ($insertar == true) {
			$_SESSION['mensaje'] = 'Registro exitoso';
		} else {
			$_SESSION['mensaje'] = 'Mensaje no enviado';;
		}
	}

	public function accesoUsuario($apodo, $password) {
		echo "<br>Acceso Usuario 1<br>";
		echo $apodo."<br>";
		echo $password."<br>";
		$db = new ModeloBase();
		$query = "SELECT * FROM usuarios WHERE apodo = '".$apodo. "' AND password = '".$password . "'";
		return $respuesta = $db->consultarRegistro($query);
		
	}


}
