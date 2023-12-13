<%-- 
    Document   : altasUsuario
    Created on : 22 mar 2023, 13:57:57
    Author     : alumno
--%>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@page import="datos.cifrar"%>
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
 <%@page import="datos.cifrar"%>
 <%@page import="java.sql.*"%>
       
        <%
    cifrar cifra = new cifrar();
    String nombre = request.getParameter("nombre"); 
    String correo = cifra.cifrado(request.getParameter("correo"));
    String contra = cifra.cifrado(request.getParameter("contrasenia"));
    Connection con = null;
    Statement sta = null;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/chemeia?autoReconnect=true&useSSL=false", "root", "1234");

        sta = con.createStatement();
        String selectQuery = "SELECT * FROM usuarios WHERE correoUsuario = '" + correo + "' OR nomUsuario = '" + nombre + "'";
        ResultSet resultSet = sta.executeQuery(selectQuery);
        if (resultSet.next()) {
            String error = "Nombre de usuario o correo en uso.";
            response.sendRedirect("registro.jsp?e='" + error + "'");
            
        } else {    
            String insertQuery = "INSERT INTO usuarios(nomUsuario, contUsuario, correoUsuario) VALUES ('" + nombre + "','" + contra + "','" + correo + "')";
            sta.executeUpdate(insertQuery);
            out.print("<script> mensaje();</script>");
             HttpSession sesion = request.getSession();
            sesion.setAttribute("usuario", nombre);
            response.sendRedirect("validar_2.jsp");
        }

        con.close();
        sta.close();
    } catch (SQLException | ClassNotFoundException error) {
        out.print(error.toString());
    }
    %>
    </body>
</html>
