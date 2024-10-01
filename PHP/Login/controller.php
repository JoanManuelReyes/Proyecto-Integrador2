<?php
require '..\Conexión\conexion.php';

//Capturamos la acción
$action = $_REQUEST['action'];

//Logueo
if ($action === 'login') {
    $dni = $_POST['username'];
    $contrasenia = $_POST['password'];

    $pass = hash('sha256', $contrasenia);

    $sqlLogin="SELECT dni,contrasenia from Usuario WHERE dni='$dni' AND contrasenia='$pass'";
    $consulta=mysqli_query($conn,$sqlLogin);

    $array=mysqli_fetch_array($consulta);

    if ($consulta && mysqli_num_rows($consulta) > 0) {
        header("Location: ..\Inventario\dash.php");
        exit();
    } else {
        header("Location: ..\..\index.html?error=usuario_no_encontrado");
        exit();
    }
}

/*
//Registro
if ($action === 'register') {
    $correo = $_POST['email'];
    $contrasenia = $_POST['password'];
    $telefono = $_POST['phone'];

    $pass = hash('sha256', $contrasenia);

    $sqlRegister="INSERT INTO Usuario (correo,contrasenia,telefono) VALUES ('$correo', '$pass','$telefono')";
    mysqli_query($conn, $sqlRegister);

    header("Location: index.html");
    exit();
}


//Eliminar
if ($action === 'delete') {
    session_start();
    $id=$_SESSION['id'];

    $sqlDelete="DELETE FROM usuario WHERE id_usuario='$id'";
    mysqli_query($conn, $sqlDelete);

    header("Location: index.html");
    exit();
}

$conn->close();*/
?>

