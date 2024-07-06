<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registrar usuario</title>
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