<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Actualizar Producto</title>
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
        width: 60%;
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
    
    input[type="text"], select {
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
<h1 align="center">Actualizar Producto</h1>
<form  method="post" action="ControladorProducto">


<%
 String cod=request.getAttribute("codigo").toString();
 String nom=(request.getAttribute("nombre")!=null)?request.getAttribute("nombre").toString():"";
 String precioventa=(request.getAttribute("precioventa")!=null)?request.getAttribute("precioventa").toString():"";
 String preciocompra=(request.getAttribute("preciocompra")!=null)?request.getAttribute("preciocompra").toString():"";
 String estado=(request.getAttribute("estado")!=null)?request.getAttribute("estado").toString():"";
 String categoria=(request.getAttribute("categoria")!=null)?request.getAttribute("categoria").toString():"";  
 String dosificacion=(request.getAttribute("dosificacion")!=null)?request.getAttribute("dosificacion").toString():"";
 String fechacad=(request.getAttribute("fechacad")!=null)?request.getAttribute("fechacad").toString():"";
 String fabricante=(request.getAttribute("fabricante")!=null)?request.getAttribute("fabricante").toString():"";
 String descripcion=(request.getAttribute("descripcion")!=null)?request.getAttribute("descripcion").toString():"";
 boolean isDisponible = "true".equalsIgnoreCase(estado);
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
<td>Precio de Venta</td>
<td><input type="text" name="precioventa" value="<%=precioventa%>"></td>
</tr>
<tr>
<td>Precio de Compra</td>
<td><input type="text" name="preciocompra" value="<%=preciocompra%>"></td>
</tr>

<tr>
    <td>Estado</td>
    <td>
        <select name="estado">
            <option value="true" <%= isDisponible ? "selected" : "" %>>Disponible</option>
            <option value="false" <%= !isDisponible ? "selected" : "" %>>No Disponible</option>
        </select>
    </td>
</tr>

<tr>
<td>Categoria</td>
<td><input type="text" name="categoria" value="<%=categoria%>"></td>
</tr>
<tr>
<td>Dosificacion</td>
<td><input type="text" name="dosificacion" value="<%=dosificacion%>"></td>
</tr>
<tr>
<td>Fecha de Caducidad</td>
<td><input type="text" name="fechacad" value="<%=fechacad%>"></td>
</tr>
<tr>
<td>Fabricante</td>
<td><input type="text" name="fabricante" value="<%=fabricante%>"></td>
</tr>
<tr>
<td>Descripcion</td>
<td><input type="text" name="descripcion" value="<%=descripcion%>"></td>
</tr>

<tr>
<td colspan="2" align="center"><input type="submit" value="Actualizar Producto"></td>
</tr>

</table>



</form>

</body>
</html>