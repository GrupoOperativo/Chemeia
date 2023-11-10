    Document   : validar
    Created on : 30 abr 2023, 18:37:29
    Author     : dante
--%>
<!DOCTYPE html>
<%@page import="java.sql.*, datos.conexion" %>
<%
    Connection conn = null;
    ResultSet registros = null;
    Statement stmt = null;
    String user = request.getParameter("usuario");
    String pass = request.getParameter("contra");
    String label = request.getParameter("lab");
    conexion conecta = new conexion();  
    conn = conecta.conectar();
    stmt = conn.createStatement();
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
        
%>

