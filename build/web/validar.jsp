Document   : validar
Created on : 30 abr 2023, 18:37:29
Author     : dante
--%>
<!DOCTYPE html>

<%@page import="datos.cifrar"%>
<%@page import="java.sql.*" %>
<%
    cifrar cifra = new cifrar();
    Connection con = null;
    ResultSet registros = null;
    Statement stmt = null;
    String user = request.getParameter("usuario");
    String pass = request.getParameter("contra");
    String label = request.getParameter("lab");
    String contC = "";

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");  
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/chemeia?autoReconnect=true&useSSL=false", "root", "1234");
        stmt = con.createStatement();
        registros = stmt.executeQuery("Select * from usuarios where nomUsuario = '" + user + "';");
        if (registros.next()) {
            contC = cifra.descifrado(registros.getString("contUsuario"));
            if (contC.equals(pass)) {
                HttpSession sesion = request.getSession();
                sesion.setAttribute("usuario", user);
                response.sendRedirect("validar_2.jsp");
            } else {
                String error = "error";
                response.sendRedirect("logIn.jsp?e='" + error + "'");
            }

        } else {
            String error = "Usuario o contrasenia incorrectos. ";
            response.sendRedirect("logIn.jsp?e='" + error + "'");
        }
    } catch (SQLException | ClassNotFoundException error) {
        out.print(error.toString());
    }

%>


