    <%-- 
    Document   : cambios
    Created on : 21 may 2023, 19:07:37
    Author     : dante
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, datos.conexion, java.io.FileInputStream, java.io.InputStream"%>
<%@page import="datos.cifrar"%>
<%
cifrar cifra = new cifrar();
HttpSession sesion = request.getSession();

if (sesion.getAttribute("usuario") == null) {
    String e = "Favor de autenticarse";
    response.sendRedirect("logIn.jsp?e=" + e);
} else {
    Connection conn = null;
    Statement stmt = null;
    PreparedStatement pstmt = null;

    try {
        String nom = sesion.getAttribute("usuario").toString();
        String nom2 = request.getParameter("nombre");
        String correo2 = cifra.cifrado(request.getParameter("correo"));
        String contra2 = cifra.cifrado(request.getParameter("contra"));

        conn = new conexion().conectar();

        // Verificar si el correo o nombre ya están en uso
        String selectQuery = "SELECT * FROM usuarios WHERE correoUsuario = ? OR nomUsuario = ?";
        pstmt = conn.prepareStatement(selectQuery);
        pstmt.setString(1, correo2);
        pstmt.setString(2, nom2);
        ResultSet resultSet = pstmt.executeQuery();

        // Obtener el correo original del usuario
        stmt = conn.createStatement();
        String selectQuery1 = "SELECT * FROM usuarios WHERE nomUsuario = '" + nom + "'";
        ResultSet resultSett = stmt.executeQuery(selectQuery1);
        resultSett.next();
        String correoO = resultSett.getString("correoUsuario");

        if (resultSet.next() && !correoO.equals(correo2) && !nom.equals(nom2)) {
            String error = "Nombre de usuario o correo en uso.";
            response.sendRedirect("configurar.jsp?e=" + error);
        } else {
            // Actualizar la información del usuario
            pstmt = conn.prepareStatement("UPDATE usuarios SET nomUsuario = ?, correoUsuario = ?, contUsuario = ? WHERE nomUsuario = ?");
            pstmt.setString(1, nom2);
            pstmt.setString(2, correo2);
            pstmt.setString(3, contra2);
            pstmt.setString(4, nom);
            pstmt.executeUpdate();

            // Actualizar la sesión con el nuevo nombre de usuario
            sesion.setAttribute("usuario", nom2);

            // Redirigir con un mensaje de éxito
            response.sendRedirect("configurar.jsp?msg=Configuración exitosa");
        }
    } catch (Exception e) {
        // Manejar la excepción adecuadamente
        e.printStackTrace();
        // Puedes redirigir a una página de error o realizar otra acción según sea necesario
        response.sendRedirect("configurar.jsp?e=Hubo un error en la configuración");
    } finally {
        // Cerrar recursos
        try {
            if (stmt != null) stmt.close();
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
%>
