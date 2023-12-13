<%-- 
    Document   : menu_2
    Created on : 1 may 2023, 19:27:44
    Author     : dante
--%>
<!DOCTYPE html>
<%@page import="java.sql.*, datos.conexion" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession sesion = request.getSession();
    if(sesion.getAttribute("usuario") == null)
        response.sendRedirect("index.html?");
    else{ 
        Connection conn = null;
        ResultSet res = null;
        PreparedStatement pstmt = null;
        String nom = sesion.getAttribute("usuario").toString();
        conexion conecta = new conexion();  
        conn = conecta.conectar();
<<<<<<< HEAD
        pstmt = conn.prepareStatement("Select admin from usuarios where nomUsuario = ?;");
=======
        pstmt = conn.prepareStatement("Select admini from usuarios where nomUsuario = ?;");
>>>>>>> c9c3dd8b698347f35df3ef37579e3454b04a4c10
        pstmt.setString(1, nom);
        res = pstmt.executeQuery();
        if (res.next()){    
            if(res.getInt(1) == 1)
                response.sendRedirect("iniciadoADM.jsp?");
            else
                response.sendRedirect("iniciado.jsp?");
        }
    }
%>