<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="java.util.*" %>
  	<%@page import="model.TblEmpleado" %>
    
  	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  	<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listado Empleado</title>
</head>
<body>
<h1 align="center">Listado de Empleados</h1>

<h2 align="center">
<a href="FormRegistrarEmpleado.jsp">Registrar Empleado</a>
</h2>

<table border="2" align="center">

<tr>
<td align="center">Codigo</td>
<td align="center">Nombre</td>
<td align="center">Apellido</td>
<td align="center">Telefono</td>
<td align="center">Dni</td>
<td align="center">Fecha de Ingreso</td>
<td align="center">Email</td>
<td align="center">Sexo</td>
<td align="center">Nacionalidad</td>
<td colspan="2" align="center">Acciones</td>
</tr>

<%
List<TblEmpleado> listadoempleado = (List<TblEmpleado>)request.getAttribute("listadoempleados");
if(listadoempleado !=null){
	for(TblEmpleado pro:listadoempleado){
		%>
		<tr>
		<td><%=pro.getIdempleado() %></td>
		<td><%=pro.getNombre() %></td>
		<td><%=pro.getApellido() %></td>
		<td><%=pro.getTelf() %></td>
		<td><%=pro.getDni() %></td>
		<td><%=pro.getFechaing() %></td>
		<td><%=pro.getEmail() %></td>
		<td><%=pro.getSexo() %></td>
		<td><%=pro.getNacionalidad() %></td>
		<td><a href="ControladorEmpleado?accion=Eliminar&cod=<%=pro.getIdempleado() %>">Eliminar</a></td>
	    <td><a href="ControladorEmpleado?accion=Modificar&cod=<%=pro.getIdempleado()%>">Actualizar</a></td>
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