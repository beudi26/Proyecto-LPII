<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Actualizar Producto</title>
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