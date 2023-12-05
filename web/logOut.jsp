<%-- 
    Document   : logOut
    Created on : 2 may 2023, 21:06:26
    Author     : dante
--%>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%
    HttpSession sesion = request.getSession();
    sesion.invalidate();
    String error = "Sesion cerrada";
    response.sendRedirect("index.html?e='"+error+"'");
%>
        
