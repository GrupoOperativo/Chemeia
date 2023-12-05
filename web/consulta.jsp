<%-- 
    Document   : consulta
    Created on : 19 may 2023, 19:04:51
    Author     : dante
--%>


<%@page import="java.sql.*,datos.conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mensajes</title>
        <link rel="stylesheet" href="CSS/perdida.css" type="text/css" media="screen"/>
    </head>
    <body align="center">
        <br>
        <h1>Usuarios registrados</h1>
        <br>
        <table border="1" width="600" align="center" style="background-color: #fff;color: #000000; border-radius: 10px ">
            <th colspan="3">Información de usuarios</th>
            <tr bgcolor="skyblue">
                <th>id</th>
                <th>Nombre</th>
                <th>Acción</th>
            </tr>
            <%
                HttpSession sesion = request.getSession();
                int color = 0;
                String nombre = sesion.getAttribute("usuario").toString();
                Connection conn = null;
                PreparedStatement pstmt = null;
                ResultSet res = null;
                conexion conecta = new conexion();
                conn = conecta.conectar();
                pstmt = conn.prepareStatement("select * from usuarios;");
                res = pstmt.executeQuery();
                String nombree = "";
                while (res.next()) {
                String nombreee = res.getString(2).toString();
                for (int i = 0; i < 6; i++) {
                    char c = nombreee.charAt(i);
                    if(c != ' ')
                        nombree += nombreee.charAt(i);
                }
                color += 1;
                if(nombree != nombre){
                if(color == 1){
                    out.println("<tr>");
                    color -= 2;}
                else
                    out.println("<tr bgcolor='skyblue'>");
                    
            %>
            
                <td><%=res.getString(1)%></td>
                <td><%=res.getString(2)%></td>
                <td>
                    <a href="eliminarCuenta.jsp?cod=<%=res.getString(1)%>" >
                        ELIMINAR
                    </a>
                </td>
            </tr>
            <%
                }}
                pstmt.close();
                conn.close();
                res.close();
            %>
        </table>
    </body>
</html>