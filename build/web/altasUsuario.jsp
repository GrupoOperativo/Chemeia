<%-- 
    Document   : altasUsuario
    Created on : 22 mar 2023, 13:57:57
    Author     : alumno
--%>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            funcion mensaje(){
                alert("Usuario " + nombre + " creado");
            }
        </script>
    </head>
    <body>
 <%@page import="java.sql.*"%>
       
        <%
    String nombre = request.getParameter("nombre");
    String correo = request.getParameter("correo");
    String contra = request.getParameter("contrasenia");
    Connection con = null;
    Statement sta = null;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/chemeia?autoReconnect=true&useSSL=false", "root", "n0m3l0");

        sta = con.createStatement();
        String selectQuery = "SELECT * FROM usuarios WHERE correoUsuario = '" + correo + "' OR nomUsuario = '" + nombre + "'";
        ResultSet resultSet = sta.executeQuery(selectQuery);
        if (resultSet.next()) {
            out.print("<script> alert('El correo o usuario ya está en uso.');</script>");
            out.print("<script> window.location.href = 'registro.html'; </script>");

             
        } else {
            String insertQuery = "INSERT INTO usuarios(nomUsuario, contUsuario, correoUsuario) VALUES ('" + nombre + "','" + contra + "','" + correo + "')";
            sta.executeUpdate(insertQuery);
            out.print("<script> mensaje();</script>");
            response.sendRedirect("logIn.jsp?");
        }

        con.close();
        sta.close();
    } catch (SQLException | ClassNotFoundException error) {
        out.print(error.toString());
    }
    %>
    </body>
</html>
