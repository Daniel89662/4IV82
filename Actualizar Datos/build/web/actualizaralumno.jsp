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
                    String a = "";
                    bol = Integer.parseInt(request.getParameter("bol"));
                    nom = request.getParameter("nombre2");
                    appat = request.getParameter("appat2");
                    apmat = request.getParameter("apmat2");
                    tel = request.getParameter("telefono2");
                    set = con.createStatement();
                    
                    String q = "Update alumnobatiz set nombre='"+nom+"', appat='"+appat+"', apmat='"+apmat+"', telefono="+tel+" where boleta = "+bol;
                    set = con.createStatement();
                    
                   int actualizar = set.executeUpdate(q);
                    %>
                    <h1>Alumno Actualizado</h1>
                    <a href="consultaralumno.jsp">Consultar tabla de alumnos</a>
                    <br>
                    <%
                    
                }catch(SQLException es){
                    System.out.println("Error al registrar en la tabla");
                    System.out.println(es.getMessage());
                    %>
                    <h1>No se pudo actualizar </h1> 
                    <%

                }
                
            }catch(Exception e){
            System.out.println("Error ak conectar la base de datos");
            System.out.println(e.getMessage());
            %>
            <h1>Error al actualizar </h1>
            <%
            
            
            }





        %>
        <a href="index.html">Regresar a principal</a>
       
    </body>
</html>
