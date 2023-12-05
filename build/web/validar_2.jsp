<%-- 
    Document   : index_2
    Created on : 30 abr 2023, 19:12:52
    Author     : dante
--%>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession sesion = request.getSession();
    if(sesion.getAttribute("usuario") == null){
        String e = "Favor de autenticarse";
        response.sendRedirect("logIn.jsp?e="+e+"");
    }
    else {
        String msg = "Bienvenido " + sesion.getAttribute("usuario") + "!!";
        response.sendRedirect("chequeo.jsp?e="+msg+"");
    }
%>
