<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Actualizar Empleado</title>
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
        width: calc(100% - 20px); /* Ajustar el ancho para el borde */
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
<h1 align="center">Actualizar Empleado</h1>

<form  method="post" action="ControladorEmpleado">


<%
 String cod=request.getAttribute("codigo").toString();
 String nom=(request.getAttribute("nombre")!=null)?request.getAttribute("nombre").toString():"";
 String apellido=(request.getAttribute("apellido")!=null)?request.getAttribute("apellido").toString():"";
 String telefono=(request.getAttribute("telefono")!=null)?request.getAttribute("telefono").toString():"";
 String dni=(request.getAttribute("dni")!=null)?request.getAttribute("dni").toString():"";
 String fechaing=(request.getAttribute("fechaing")!=null)?request.getAttribute("fechaing").toString():"";
 String email=(request.getAttribute("email")!=null)?request.getAttribute("email").toString():"";  
 String sexo=(request.getAttribute("sexo")!=null)?request.getAttribute("sexo").toString():"";
 String nacionalidad=(request.getAttribute("nacionalidad")!=null)?request.getAttribute("nacionalidad").toString():"";
%>

<table align="center"  border="2">
<input type="hidden" name="codigo"  value="<%=cod%>">
<tr>
<td>Nombre</td>
<td>
<input type="text" name="nombre" value="<%=nom%>">
</td>
</tr>
<tr>
<td>Apellido</td>
<td><input type="text" name="apellido" value="<%=apellido%>"></td>
</tr>
<tr>
<td>Telefono</td>
<td><input type="text" name="telefono" value="<%=telefono%>"></td>
</tr>
<tr>
<td>Dni</td>
<td><input type="text" name="dni" value="<%=dni%>"></td>
</tr>
<tr>
<td>Fecha de Ingreso</td>
<td><input type="text" name="fechaing" value="<%=fechaing%>"></td>
</tr>
<tr>
<td>Email</td>
<td><input type="text" name="email" value="<%=email%>"></td>
</tr>
<tr>
<td>Sexo</td>
<td><input type="text" name="sexo" value="<%=sexo%>"></td>
</tr>
<tr>
<td>Nacionalidad</td>
<td><input type="text" name="nacionalidad" value="<%=nacionalidad%>"></td>
</tr>

<tr>
<td colspan="2" align="center"><input type="submit" value="Actualizar Empleado"></td>
</tr>

</table>
</form>
</body>
</html>