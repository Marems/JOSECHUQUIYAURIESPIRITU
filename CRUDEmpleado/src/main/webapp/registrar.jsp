<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
          <meta charset="UTF-8">
          <title>Registrar Empleado</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">     
</head>
<body>
    <h1>Registrar Empleado</h1>
    <form action="grabar">
       <input type="hidden" name="op" value="3" />
       <table class="table">
        <tr>
            <td>IdEmpleado</td><td><input name="txtid" /></td>
        </tr>
        <tr>
            <td>Apellidos</td><td><input name="txtape" /></td>
        </tr>
        <tr>
            <td>Nombres</td><td><input name="txtnom" /></td>
        </tr>
        <tr>
            <td>Edad</td><td><input name="txtedad" /></td>
        </tr>
        <tr>
            <td>Sexo</td><td><input name="txtsexo" /></td>
        </tr>
        <tr>
            <td>Salario</td><td><input name="txtsal" /></td>
        </tr>
         <tr>
            <td colspan="2"><input type="submit" value="confirmar" /></td>
        </tr>
       </table>     
    </form>
    
    <a href=index.jsp>Regresar al Registro</a>
</body>
</html>