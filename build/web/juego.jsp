<%-- 
    Document   : juego
    Created on : 17 nov. 2023, 09:16:52
    Author     : Alumno
--%>

<%-- 
Document   : inciado

    Created on : 6 nov 2023, 21:55:30
    Author     : dante
--%>

<%@page import="java.util.List" %>
<%@page import="java.util.Arrays" %>
<%@page import="java.util.Collections" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    HttpSession sesion = request.getSession();
    if (sesion.getAttribute("usuario") == null) {
        String err = "Favor de autenticarse";
        response.sendRedirect("logIn.jsp?err=" + err + "");
    } else %>
<%
    
 Connection con = null;
 ResultSet registros = null;
 Statement stmt = null;
 String idP = "1";
 String pregunta="";
 String resp1 ="";String resp2 ="";String resCorrecta ="";
 String expli ="";
 String formulita = "";
 String contC = "";
 ResultSet resultadito = null;
    
    
 try {
     Class.forName("com.mysql.cj.jdbc.Driver");
     con = DriverManager.getConnection("jdbc:mysql://localhost:3306/chemeia?autoReconnect=true&useSSL=false", "root", "n0m3l0");
     stmt = con.createStatement();
     resultadito = stmt.executeQuery("SELECT * FROM juego ORDER BY RAND() LIMIT 1;");
     if (resultadito.next()) {
             pregunta = resultadito.getString("pregunta");
             resp1 = resultadito.getString("opc1");
             resp2 = resultadito.getString("opc2");
             resCorrecta = resultadito.getString("opcCorrecta");
             expli = resultadito.getString("explicacion");
             formulita = resultadito.getString("formula");
}
     } catch (Exception e) {
         e.printStackTrace();
     } finally {
         // Cerrar la conexión y liberar recursos
         try {
             if (resultadito != null) resultadito.close();
             if (stmt != null) stmt.close();
             if (con != null) con.close();
         } catch (SQLException e) {
             e.printStackTrace();
         }
     }
      
%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <style>
            .radio-align-center {
                text-align: center;
            }
        </style>

        <title>Chemeia</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="apple-touch-icon" href="assets/img/chemeia.png">
        <link rel="icon" href="assets/img/chemeiaP.png" type="image/png">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/templatemo.css">
        <link rel="stylesheet" href="assets/css/custom.css">

        <!-- Load fonts style after rendering the layout styles -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
        <link rel="stylesheet" href="assets/css/fontawesome.min.css">
    </head>

    <body>
        <!-- Start Top Nav -->
        <nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
            <div class="container text-light">
                <div class="w-100 d-flex justify-content-between">
                    <div>
                        <i class="fa fa-envelope mx-2"></i>
                        <a class="navbar-sm-brand text-light text-decoration-none" href="mailto:info@company.com">tdagrupooperativo@gmail.com</a>
                        <i class="fa fa-phone mx-2"></i>
                        <a class="navbar-sm-brand text-light text-decoration-none" href="tel:5616599212">5616599212</a>
                    </div>
                    <div>
                        <a class="text-light" href="https://www.instagram.com/tda_labs/?utm_source=ig_web_button_share_sheet&igshid=OGQ5ZDc2ODk2ZA==" target="_blank"><i class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
                    </div>
                </div>
            </div>
        </nav>
        <!-- Close Top Nav -->


        <!-- Header -->
        <nav class="navbar navbar-expand-lg navbar-light shadow">
            <div class="container d-flex justify-content-between align-items-center">

                <a class="navbar-brand text-success logo h1 align-self-center" href="index.html">
                    Chemeia
                </a>

                <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                    <div class="flex-fill">
                        <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="chequeo.jsp">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="calculadora.jsp">Calculadora</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="info.html">Información</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="juego.jsp">Juego</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="chatbot.html">ChatBot</a>
                            </li>
                        </ul>
                    </div>
                    <div class="navbar align-self-center d-flex">

                        <a class="nav-icon position-relative text-decoration-none" href="logIn.jsp">
                            <i class="fa fa-fw fa-user text-dark mr-3"></i>
                            <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span>
                        </a>
                    </div>
                </div>

            </div>
        </nav>
        <br><br>
        <br><br>
        <div class="container">
            <div class="row">
                <div class="col-12 text-center">
                    <%out.println("<h2> "+ pregunta + " </h2>");%>
                </div>
            </div>
        </div>


        <br><br>
        <div class="row">
            <div class="col-12 text-center">
                <div class="radio-container custom-radio">
                    <form action="" method="post">
                        <%
                    String[] respuestas = {resp1, resp2, resCorrecta};
                    // Mezclar las respuestas de forma aleatoria
                    List<String> opciones = Arrays.asList(respuestas);
                    Collections.shuffle(opciones);

                    for (int i = 0; i < opciones.size(); i++) {
                        %>
                        <label class="form-check-label" for="opcion<%= i + 1 %>">
                            <input class="form-check-input" type="radio" name="opcion" id="opcion<%= i + 1 %>" value="<%= respuestas[i] %>"> <%= respuestas[i] %>
                        </label>
                        <br>
                        <%
                            }
                        %>
                        <br><br>
                        <input type="hidden" name="respuestaCorrecta" value="<%= resCorrecta %>">

                        <button type="submit" class="btn btn-primary">Enviar respuesta</button>            </form>
                </div>

                <%
                Integer contadorRespuestasCorrectas = (Integer) application.getAttribute("contadorRespuestasCorrectas");
                if (contadorRespuestasCorrectas == null) {
                contadorRespuestasCorrectas = 0;
                }
            
                if ("POST".equals(request.getMethod())) {
                    String respuestaSeleccionada = request.getParameter("opcion");
                    String respuestaCorrecta = request.getParameter("respuestaCorrecta");

                    // Realizar la lógica para verificar si la respuesta es correcta
                    if (respuestaSeleccionada.equals(respuestaCorrecta)) {
                    contadorRespuestasCorrectas ++;
                    application.setAttribute("contadorRespuestasCorrectas", contadorRespuestasCorrectas);

                %>
                <p>¡Respuesta correcta!</p>
                <%
                    } else {
                %>
                <p>Respuesta incorrecta. La respuesta correcta es: <%= respuestaCorrecta %></p>
                <%
                    }
                }
                %>
            </div>
        </div>
        <div class="row">
            <div class="col-12 text-left">
                <p>Respuestas Correctas: <%= contadorRespuestasCorrectas %></p>
            </div>
        </div>
    </div>   
    <br>
    <footer class="bg-dark" id="tempaltemo_footer">
        <div class="container">
            <div class="row">

                <div class="col-md-4 pt-5">
                    <h2 class="h2 text-success border-bottom pb-3 border-light logo">Chemeia</h2>
                    <ul class="list-unstyled text-light footer-link-list">
                        <li>
                            <i class="fas fa-map-marker-alt fa-fw"></i>
                            CECyT 9 JDB
                        </li>
                        <li>
                            <i class="fa fa-phone fa-fw"></i>
                            <a class="text-decoration-none">561 6599 212</a>
                        </li>
                        <li>
                            <i class="fa fa-envelope fa-fw"></i>
                            <a class="text-decoration-none" href="mailto:tdagrupooperativo@gmail.com">tdagrupooperativo@gmail.com</a>
                        </li>
                    </ul>
                </div>



            </div>

            <div class="row text-light mb-4">
                <div class="col-12 mb-3">
                    <div class="w-100 my-3 border-top border-light"></div>
                </div>
                <div class="col-auto me-auto">
                    <ul class="list-inline text-left footer-icons">
                        <li class="list-inline-item border border-light rounded-circle text-center">
                            <a class="text-light text-decoration-none" target="_blank" href="https://www.instagram.com/tda_labs/?utm_source=ig_web_button_share_sheet&igshid=OGQ5ZDc2ODk2ZA=="><i class="fab fa-instagram fa-lg fa-fw"></i></a>
                        </li>
                    </ul>
                </div>


            </div>
        </div>

        <div class="w-100 bg-black py-3">
            <div class="container">
                <div class="row pt-2">
                    <div class="col-12">
                        <p class="text-left text-light">
                            Copyright &copy; 2023 TDA Labs
                            | Diseñado por <a rel="sponsored" href="http://tdalabs.gerdoc.com/" target="_blank">Grupo Operativo</a>
                        </p>
                    </div>
                </div>
            </div>



    </footer>
    <script src="assets/js/jquery-1.11.0.min.js"></script>
    <script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/templatemo.js"></script>
    <script src="assets/js/custom.js"></script>
</body>

</html>
