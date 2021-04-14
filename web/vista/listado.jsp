<%@page import="com.emergentes.modelo.Vacuna"%>
<%@page import="com.emergentes.modelo.VacunaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1">
            <td>PRIMER PARCIAL TEM-742<br>
                Nombre: Jhonny Limberg Tarqui Suntura<br>
                Carnet: 8433482<br>
            </td>
        </table>
        <%
            VacunaDAO lista = (VacunaDAO) session.getAttribute("gestor");
        %>
        <h1>Registro de vacunas</h1>
        <p><a href="../Principal?op=nuevo">Nuevo</a></p>
        <%
            if(lista.getVac().size() > 0){
        %>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Nombre</th>
                <th>Peso</th>
                <th>Talla</th>
                <th>Vacuna</th>
                <th></th>
                <th></th>
            </tr>
        <%
            for(Vacuna item : lista.getVac()){
        %>
            <tr>
                <td><%= item.getId() %></td>
                <td><%= item.getNombre() %></td>
                <td><%= item.getPeso() %></td>
                <td><%= item.getTalla() %></td>
                <td><%= item.getVacuna() %></td>
                <td><a href="../Principal?op=editar&id=<%=item.getId()%>">Editar</a></td>
                <td><a href="../Principal?op=eliminar&id=<%=item.getId()%>">Eliminar</a></td>
            </tr>
        <%
            }
        %>    
        </table>
        <%
        }
            else{
                out.println("<p>No existen registros");;
            }
        %>    
    </body>
</html>
