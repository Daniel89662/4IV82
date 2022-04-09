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
            <table border="2">
            <tr>
                <tr>Boleta</tr>
                <tr>Nombre</tr>
                <tr>Apellido Paterno</tr>
                <tr>Apellido Materno</tr>
                <tr>Telefono</tr>
                <tr>Editar</tr>
                <tr>Borrar</tr>
            </tr>
         
            
        
        <%
            //aqui ya puedo incorporar java 
            Connection con = null;
            Statement set = null;
            ResultSet rs = null;
            
            String username="";
            String url;
            String password;
            String driver;
            
            
            url ="jdbc:mysql://localhost/alumnos";
            username = "root";
            password = "n0m3l0";
            driver = "com.mysql.jdbc.Driver";
            
            try{
                //conectar
                Class.forName(driver);
                con = DriverManager.getConnection(url, username, password);
                try{
                    String q = "select * from alumnobatiz order by boleta asc";
                    set = con.createStatement();
                    rs = set.executeQuery(q);
                    
                    while(rs.next()){
                    
                    %>
        <tbody>
        <tr>
            <td><%=rs.getInt("boleta")%></td>
            <td><%=rs.getString("nombre")%></td>
            <td><%=rs.getString("appat")%></td>
            <td><%=rs.getString("apmat")%></td>
            <td><%=rs.getString("telefono")%></td>
            <td><a href="editaralumno.jsp?id=<%=rs.getInt("boleta")%>">Editar</a></td>
            <td><a href="borraralumno.jsp?id=<%=rs.getInt("boleta")%>">Borrar</a></td>
        </tr>
        
                    <%
                        }
                }catch(SQLException es){
                    System.out.println("Error al registrar en la tabla");
                    System.out.println(es.getMessage());
                    %>
                    <h1>No se pudo conectar a la tabla</h1> 
                    <%
                        
                }
                
            }catch(Exception e){
            System.out.println("Error ak conectar la base de datos");
            System.out.println(e.getMessage());
            %>
            <h1>No se pudo conectar a la BD</h1>
            <%
                }
        %>
        
        </tbody>
        </table>
        <a href="index.html">Regresar a principal</a>
    </body>
</html>
