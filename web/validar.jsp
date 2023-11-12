Document   : validar
Created on : 30 abr 2023, 18:37:29
Author     : dante
--%>
<!DOCTYPE html>
<%@page import="java.sql.*" %>
<%
    Connection con = null;
    ResultSet registros = null;
    Statement stmt = null;
    String user = request.getParameter("usuario");
    String pass = request.getParameter("contra");
    String label = request.getParameter("lab");
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/chemeia?autoReconnect=true&useSSL=false", "root", "n0m3l0");
        stmt = con.createStatement();
        registros = stmt.executeQuery("Select * from usuarios where nomUsuario = '"+user+"' and contUsuario = '"+pass+"';");

        if(registros.next()){
                HttpSession sesion = request.getSession();
                sesion.setAttribute("usuario", user);
                response.sendRedirect("validar_2.jsp");
        }
        else{
            String error = "Usuario o contrasenia incorrectos. ";
            response.sendRedirect("logIn.jsp?e='"+error+"'");
        }
        }
     catch (SQLException | ClassNotFoundException error) {
        out.print(error.toString());
    }
    
%>

