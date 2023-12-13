<%-- 
    Document   : eliminarCuenta
    Created on : 23 may 2023, 02:38:00
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
            Connection conn = null;
            PreparedStatement pstmt = null;
            conexion conecta = new conexion();
            conn = conecta.conectar();
            String cod = request.getParameter("cod");
            if (cod != null){
                pstmt = conn.prepareStatement("delete from usuarios where idUsuario = ?;");
                pstmt.setString(1, cod);
                pstmt.executeUpdate();
                request.getRequestDispatcher("consulta.jsp").forward(request, response);
                pstmt.close();
                conn.close();
            }
            else{
                HttpSession sesion = request.getSession();
                String nombree = sesion.getAttribute("usuario").toString();
                pstmt = conn.prepareStatement("delete from usuarios where nomUsuario = ?;");
                pstmt.setString(1, nombree);
                pstmt.executeUpdate();
                request.getRequestDispatcher("logIn.jsp").forward(request, response);
                sesion.setAttribute("usuario", null);
                pstmt.close();
                conn.close();
            }
        %>
    </body>
</html>