<%-- 
    Document   : seguro
    Created on : 27 nov 2023, 00:09:35
    Author     : dante
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    HttpSession sesion = request.getSession();
    if(sesion.getAttribute("usuario") == null){
        response.sendRedirect("logIn.jsp?");
    }
    else {
        response.sendRedirect("peerfil.jsp?");
    }
%>
