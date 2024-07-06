<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registrar usuario</title>
<style>
    body {
        background-image: url('imagenes/fondo.png'); /* Ruta de la imagen de fondo */
        background-size: cover;
        background-position: center;
        font-family: Arial, sans-serif;
    }
    .form-container {
        width: 300px;
        margin: 0 auto;
        background-color: rgba(255, 255, 255, 0.8);
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    }
    h1 {
        text-align: center;
        color: #333;
    }
    table {
        width: 100%;
    }
    input[type="text"], input[type="password"] {
        width: calc(100% - 20px);
        padding: 8px;
        margin: 5px 0;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }
    input[type="submit"] {
        width: 100%;
        background-color: #4CAF50;
        color: white;
        padding: 10px 0;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
<h1>Registrar Usuario</h1>

<div class="form-container">
        <form action="ControladorUsuario" method="post">
        <input type="hidden" name="action" value="register">
            <table>
                <tr>
                    <td>Nombre de Usuario</td>
                    <td><input type="text" name="usuario" placeholder="Ingrese el nombre de usuario" required></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="text" name="password" placeholder="Ingrese la contraseña de usuario" required></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Registrar Usuario">
                    </td>
                </tr>
            </table>
        </form>
    </div>

</body>
</html>