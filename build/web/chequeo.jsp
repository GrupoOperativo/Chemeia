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
        pstmt = conn.prepareStatement("Select admin from usuarios where nomUsuario = ?;");
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