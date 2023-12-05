<%-- 
    Document   : eliminaMensajes
    Created on : 23 may 2023, 00:19:04
    Author     : dante
--%>

<%@page import="java.sql.*,datos.conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String cod = request.getParameter("cod");
            Connection conn = null;
            PreparedStatement pstmt = null;
            conexion conecta = new conexion();
            conn = conecta.conectar();
            pstmt = conn.prepareStatement("delete from mensajes where idMensaje = ?;");
            pstmt.setString(1, cod);
            pstmt.executeUpdate();
            request.getRequestDispatcher("mensajes.jsp").forward(request, response);
            pstmt.close();
            conn.close();
        %>
    </body>
</html>