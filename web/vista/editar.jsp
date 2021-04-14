<%@page import="com.emergentes.modelo.Vacuna"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Vacuna item = (Vacuna) request.getAttribute("item");
        %>
        <h1>Editar registro</h1>
        <form action="Principal?op=guardar" method="post">
            Id: <input type="text" name="id" value="<%= item.getId() %>" size="2" pattern="[1-9]{1}[0-9]*"/>
            <input type="hidden" name="tipo" value="<%= item.getId() %>" required/>
            <br>
            Nombre: <input type="text" name="nombre" value="<%= item.getNombre() %>" required/>
            <br>
            Peso: <input type="number" name="peso" value="<%= item.getPeso() %>" />
            <br>
            Talla: <input type="text" name="talla" value="<%= item.getTalla() %>" />
            <br>
            Vacuna: 
            <select name="vacuna" id="">
		<option value="Si">Si</option>
		<option value="No">No</option>
            </select>
            <br>
            <input type="submit" value="Enviar"/>
        </form>
    </body>
</html>
