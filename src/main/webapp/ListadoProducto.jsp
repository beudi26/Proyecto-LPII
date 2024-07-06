<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="java.util.*" %>
  	<%@page import="model.TblProducto" %>
    
  	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  	<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">Listado de Productos</h1>

<h2 align="center">
<a href="FormRegistrarProducto.jsp">Registrar Producto</a>
</h2>

<table border="2" align="center">

<tr>
<td align="center">Codigo</td>
<td align="center">Nombre</td>
<td align="center">Precio Venta</td>
<td align="center">Precio Compra</td>
<td align="center">Estado</td>
<td align="center">Categoria</td>
<td align="center">Dosificacion</td>
<td align="center">Fecha de Caducidad</td>
<td align="center">Fabricante</td>
<td align="center">Descripcion</td>
<td colspan="2" align="center">Acciones</td>
</tr>

<%
List<TblProducto> listadoproducto = (List<TblProducto>)request.getAttribute("listadoproductos");
if(listadoproducto !=null){
	for(TblProducto pro:listadoproducto){
		%>
		<tr>
		<td><%=pro.getIdproducto() %></td>
		<td><%=pro.getNombre() %></td>
		<td><%=pro.getPrecioventa() %></td>
		<td><%=pro.getPreciocompra() %></td>
		<td><%=pro.getEstado() ? "Disponible" : "No Disponible" %></td>
		<td><%=pro.getCategoria() %></td>
		<td><%=pro.getDosificacion() %></td>
		<td><%=pro.getFechacad() %></td>
		<td><%=pro.getFabricante() %></td>
		<td><%=pro.getDescrip() %></td>
		<td><a href="ControladorProducto?accion=Eliminar&cod=<%=pro.getIdproducto() %>">Eliminar</a></td>
	    <td><a href="ControladorProducto?accion=Modificar&cod=<%=pro.getIdproducto()%>">Actualizar</a></td>
		</tr>
		
		<% 
	}//fin del for
	%>
	<%
}//fin de la condicion
%>

</table>

</body>
</html>