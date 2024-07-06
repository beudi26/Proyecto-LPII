<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registrar Empleado en la farmacia</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f9;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background-image: url('imagenes/fondo.png');
        background-size: cover;
        background-repeat: no-repeat;
        background-position: center center;
    }

    .form-container {
        background-color: #ffffff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 100%;
        max-width: 600px;
    }

    h1 {
        text-align: center;
        color: #333333;
    }

    table {
        width: 100%;
        margin: 0 auto;
    }

    table td {
        padding: 10px;
        vertical-align: middle;
    }

    table td:first-child {
        text-align: right;
        color: #555555;
        font-weight: bold;
    }

    input[type="text"] {
        width: 100%;
        padding: 10px;
        border: 1px solid #cccccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    input[type="submit"] {
        width: 100%;
        padding: 12px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
    }

    input[type="submit"]:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
<div class="form-container">
    <h1>Registrar Empleado en la Farmacia</h1>
    <form action="ControladorCliente" method="post">
        <table>
            <tr>
                <td>Nombre del Empleado</td>
                <td><input type="text" name="nombre" placeholder="Ingrese el nombre del empleado" required></td>
            </tr>
            <tr>
                <td>Apellido</td>
                <td><input type="text" name="apellido" placeholder="Ingrese los apellidos del empleado" required></td>
            </tr>
            <tr>
                <td>Telefono</td>
                <td><input type="text" name="telefono" placeholder="Ingrese el telefono del empleado" required></td>
            </tr>
            <tr>
                <td>DNI</td>
                <td><input type="text" name="dni" placeholder="Ingrese el DNI del empleado" required></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><input type="text" name="email" placeholder="Ingrese el email del empleado" required></td>
            </tr>
            <tr>
                <td>Sexo</td>
                <td><input type="text" name="sexo" placeholder="Ingrese el sexo del empleado" required></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="Registrar Cliente">
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>