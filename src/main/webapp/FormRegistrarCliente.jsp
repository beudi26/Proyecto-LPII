<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registrar cliente en la Farmacia</title>
</head>
<body>
<h1 align="center">Registrar Cliente en la Farmacia</h1>
<div class="form-container">
        <form action="ControladorCliente" method="post">
            <table align="center">
                <tr>
                    <td>Nombre del Cliente</td>
                    <td><input type="text" name="nombre" placeholder="Ingrese el nombre del cliente" required></td>
                </tr>
                <tr>
                    <td>Apellido</td>
                    <td><input type="text" name="apellido" placeholder="Ingrese los apellidos del cliente" required></td>
                </tr>
                <tr>
                    <td>Telefono</td>
                    <td><input type="text" name="telefono" placeholder="Ingrese el telefono del cliente" required></td>
                </tr>
				<tr>
                    <td>Dni</td>
                    <td><input type="text" name="dni" placeholder="Ingrese el dni del cliente" required></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="text" name="email" placeholder="Ingrese el email del cliente" required></td>
                </tr>
                <tr>
                    <td>Sexo</td>
                    <td><input type="text" name="sexo" placeholder="Ingrese el sexo del cliente" required></td>
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