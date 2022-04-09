<%-- 
    Document   : registroalumno
    Created on : 4/04/2022, 07:30:01 PM
    Author     : Alumno
--%>

<%@page contentType="text/html" language="java"
        import="java.sql.*, java.util.*,java.text.*"
        pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <body>
        <%
             int id = Integer.parseInt(request.getParameter("id"));
            %>
                  
                <form method="post" name="editar" action="actualizaralumno.jsp?id=<%=id%>">
                <label>Boleta:</label>
                <br>
                <input type="number" readonly="readonly" name="bol" required="required" value="<%=id%>">
                <br>
                <label>Actualizar Nombre:</label>
                <br>
                <input type="text" name="nombre2" value="">
                <br>
                <label>Actualizar Apellido paterno</label>
                <br>
                <input type="text" name="appat2" value="">
                <br>
                <label>Actualizar Apellido materno</label>
                <br>
                <input type="text" name="apmat2" value="">
                <br>
                <label>Actualizar Telefono</label>
                <br>
                <input type="number" name="telefono2" value="">
                <br>
                <input type="submit" value="ACTUALIZAR DATOS">
                <br>
                <input type="reset" value="Borrar">
                <input type="hidden" value="" name="bol">
            </form>
                
         
    </body>
</html>

