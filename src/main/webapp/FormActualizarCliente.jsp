<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Actualizar Cliente</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f9;
        margin: 0;
        padding: 20px;
    }
    
    h1 {
        text-align: center;
        color: #333333;
    }
    
    form {
        width: 50%;
        margin: 0 auto;
        background-color: #ffffff;
        padding: 20px;
        border: 2px solid #dddddd;
    }
    
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 10px;
    }
    
    table, th, td {
        border: 1px solid #dddddd;
    }
    
    th, td {
        padding: 10px;
        text-align: left;
    }
    
    input[type="text"] {
        width: 100%;
        padding: 8px;
        box-sizing: border-box;
    }
    
    input[type="submit"] {
        background-color: #007bff;
        color: #ffffff;
        border: none;
        padding: 10px 20px;
        cursor: pointer;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        border-radius: 4px;
    }
    
    input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
<h1>Actualizar Cliente</h1>

<form method="post" action="ControladorCliente">
    <table align="center">
        <input type="hidden" name="codigo" value="<%= request.getAttribute("codigo") %>">
        <tr>
            <td>Nombre</td>
            <td><input type="text" name="nombre" value="<%= request.getAttribute("nombre") %>"></td>
        </tr>
        <tr>
            <td>Apellido</td>
            <td><input type="text" name="apellido" value="<%= request.getAttribute("apellido") %>"></td>
        </tr>
        <tr>
            <td>Telefono</td>
            <td><input type="text" name="telefono" value="<%= request.getAttribute("telefono") %>"></td>
        </tr>
        <tr>
            <td>Dni</td>
            <td><input type="text" name="dni" value="<%= request.getAttribute("dni") %>"></td>
        </tr>
        <tr>
            <td>Email</td>
            <td><input type="text" name="email" value="<%= request.getAttribute("email") %>"></td>
        </tr>
        <tr>
            <td>Sexo</td>
            <td><input type="text" name="sexo" value="<%= request.getAttribute("sexo") %>"></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="submit" value="Actualizar Cliente"></td>
        </tr>
    </table>
</form>

</body>
</html>