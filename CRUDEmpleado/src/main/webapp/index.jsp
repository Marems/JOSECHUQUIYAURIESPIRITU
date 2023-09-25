<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "Entidad.Empleado" %>
<%@ page import = "Negocio.BDNegocio" %>    
<%@ page import = "java.util.ArrayList" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
       <title>Registro de Empleados</title>
       <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

</head>
<body>
    <%
      BDNegocio ObjN = new BDNegocio();
      ArrayList<Empleado> Lista = new ArrayList<>();
      Lista = ObjN.ListarEmpleado();
    %>
         <h1>Registro Empleado</h1>
         <table class="table">
         <tr>
            <th>IdCliente</th>
            <th>Apellidos</th>
            <th>Nombres</th>
            <th>Edad</th>
            <th>Sexo</th>
            <th>Salario</th>        
         </tr>
         <% for(Empleado E:Lista){ %>
         <tr>
    	    <td><%= E.getIdEmpleado() %></td>
    	    <td><%= E.getApellidos() %></td>
    	    <td><%= E.getNombres() %></td>
    	    <td><%= E.getEdad() %></td>
    	    <td><%= E.getSexo() %></td>
    	    <td><%= E.getSalario() %></td>
    	 </tr>
    	 
    	 
    	 <%} %>
    	  </table>
          <a href=registrar.jsp>Registrar Empleado </a>
    
    


</body>
</html>