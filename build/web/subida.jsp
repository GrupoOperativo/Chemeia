<%-- 
    Document   : subida
    Created on : 12 dic 2023, 14:49:37
    Author     : dante
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="javax.servlet.http.*"%>
<%@page import="java.sql.*, datos.conexion"%>

<%
    int tipo = Integer.parseInt(request.getParameter("tipo"));
    int nomE = Integer.parseInt(request.getParameter("nomE"));     
    String nomR = request.getParameter("nomR");
    String cont = request.getParameter("cont");
    
    Integer idR = null;

    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet res = null;
    Statement sta = null;

    try {
        conexion conecta = new conexion();
        conn = conecta.conectar();

        // Buscar el ID del receptor
        if(nomR != null){
        pstmt = conn.prepareStatement("SELECT idUsuario FROM usuarios WHERE nomUsuario = ?");
        pstmt.setString(1, nomR);
        res = pstmt.executeQuery();
        
        if (res.next()) {
            idR = res.getInt("idUsuario");
        }
        else
            idR = null;
        }
        else
            idR = null;
        
        

        // Realizar la inserción
        sta = conn.createStatement();
        String insertQuery = "INSERT INTO soporte(tipoSoli, idEmisor, idReceptor, solicitud) VALUES (?, ?, ?, ?)";
        PreparedStatement insertStatement = conn.prepareStatement(insertQuery);
        insertStatement.setInt(1, tipo);
        insertStatement.setInt(2, nomE);
        
        if (idR != null) {
           insertStatement.setInt(3, idR);
       } else {
           insertStatement.setNull(3, Types.INTEGER);
       }
        
        insertStatement.setString(4, cont);
        insertStatement.executeUpdate();
    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        // Cerrar recursos (ResultSet, Statement y Connection) en un bloque finally
        try {
            if (res != null) {
                res.close();
            }
            if (pstmt != null) {
                pstmt.close();
            }
            if (sta != null) {
                sta.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>