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
                    String nom, appat, apmat, tel;
                    int bol;
                    nom = request.getParameter("nombre");
                    appat = request.getParameter("appat");
                    apmat = request.getParameter("apmat");
                    tel = request.getParameter("telefono");
                    bol = Integer.parseInt(request.getParameter("bol"));
                    set = con.createStatement();
                    
                    String q = "insert into alumnobatiz (boleta, nombre, appat, apmat, telefono) "
                            + "VALUES ("+bol+", '"+nom+"', '"+appat+"', '"+apmat+"', "+tel+")";
                    
                    
                    int registro = set.executeUpdate(q);
                    
                    %>
                    <h1>Registro Exitoso</h1>
                     <a href="index.html">Regresar a principal</a>
                    <%
                    
                }catch(SQLException es){
                    System.out.println("Error al registrar en la tabla");
                    System.out.println(es.getMessage());
                    %>
                    <h1>No se pudo registrar en la tabla</h1> 
                    <%

                }
                
            }catch(Exception e){
            System.out.println("Error al conectar la base de datos");
            System.out.println(e.getMessage());
            %>
            <h1>Error al conectar la base de datos</h1>
            <%
            
            
            }





        %>

    </body>
</html>
