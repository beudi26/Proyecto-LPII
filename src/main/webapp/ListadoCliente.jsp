<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="java.util.*" %>
  	<%@page import="model.TblCliente" %>
    
  	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  	<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listado de Clientes</title>
</head>
<body>
<h1 align="center">Listado de Clientes</h1>

<h2 align="center">
<a href="FormRegistrarCliente.jsp">Registrar Cliente</a>
</h2>

<table border="2" align="center">

<tr>
<td align="center">Codigo</td>
<td align="center">Nombre</td>
<td align="center">Apellido</td>
<td align="center">Telefono</td>
<td align="center">Dni</td>
<td align="center">Email</td>
<td align="center">Sexo</td>
<td colspan="2" align="center">Acciones</td>
</tr>

<%
List<TblCliente> listadocliente = (List<TblCliente>)request.getAttribute("listadoclientes");
if(listadocliente !=null){
	for(TblCliente pro:listadocliente){
		%>
		<tr>
		<td><%=pro.getIdcliente() %></td>
		<td><%=pro.getNombre() %></td>
		<td><%=pro.getApellido() %></td>
		<td><%=pro.getTelf() %></td>
		<td><%=pro.getDni() %></td>
		<td><%=pro.getEmail() %></td>
		<td><%=pro.getSexo() %></td>
		<td><a href="ControladorCliente?accion=Eliminar&cod=<%=pro.getIdcliente() %>">Eliminar</a></td>
	    <td><a href="ControladorCliente?accion=Modificar&cod=<%=pro.getIdcliente()%>">Actualizar</a></td>
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