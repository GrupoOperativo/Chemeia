
<%@page import="java.sql.*,datos.conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    HttpSession sesion = request.getSession();
    if (sesion.getAttribute("usuario") == null) {
        String e = "Favor de autenticarse";
        response.sendRedirect("logIn.jsp?e=" + e + "");
    } else %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Chemeia</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="apple-touch-icon" href="assets/img/chemeia.png">
        <link rel="icon" href="assets/img/chemeiaP.png" type="image/png">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/templatemo.css">
        <link rel="stylesheet" href="assets/css/custom.css">
        <link rel="stylesheet" href="assets/css/perdida.css" type="text/css" media="screen"/>
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
                                <a class="nav-link" href="mensajes.jsp">Solicitudes</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="soporteUs.jsp">Mensajes</a>
                            </li>
                            
                        </ul>
                    </div>
                    <div class="navbar align-self-center d-flex">

                        <a class="nav-icon position-relative text-decoration-none" href="seguro.jsp">
                            <i class="fa fa-fw fa-user text-dark mr-3"></i>
                            <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span>
                        </a>
                    </div>
                </div>

            </div>
        </nav>
        <br><br>


    </body>
   


    <h1>Solicitudes de Usuario</h1>
    <br>
    <!DOCTYPE html>
<!DOCTYPE html>
    <style>
        /* Estilos generales para la tabla y el contenedor */
        .table-container {
            width: 80%; /* Ajusta según sea necesario */
            margin: auto;
            overflow-x: auto;
            margin-top: 20px;
        }

        .custom-table {
            width: 100%;
            border-collapse: collapse;
            background-color: #fff;
            border-radius: 10px;
            color: black;
        }

        /* Estilos para las celdas del encabezado */
        .custom-table th {
            background-color: #59ab6e; /* Cambiado a color #59ab6e */
            color: #ffffff;
            padding: 10px;
            text-align: left;
            border: 2px solid #fff; /* Agregado un borde más grueso */
        }

        /* Estilos alternados para las filas (cambia el color de fondo de filas pares) */
        .custom-table tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        /* Estilos para las celdas de datos */
        .custom-table td {
            padding: 10px;
            border: 1px solid #ddd;
        }

        /* Estilos al pasar el ratón sobre las filas */
        .custom-table tr:hover {
            background-color: #e0e0e0;
        }

        /* Estilos para el texto dentro de las celdas */
        .custom-table td {
            color: #333333;
        }

        /* Estilos para la clase 'button' */
        .btn {
            background-color: #59ab6e; /* Cambiado a color #59ab6e */
            color: #ffffff;
            padding: 10px;
            text-decoration: none;
            border-radius: 5px;
            display: inline-block;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #3c7251; /* Cambiado a un tono más oscuro al pasar el ratón */
        }
    </style>
</head>
    <div align="center">
        <div class="table-container">
            <table border="1" class="custom-table">
                <tr bgcolor="#59ab6e"> <!-- Cambiado a color #59ab6e -->
                    <th>id</th>
                    <th>Nombre</th>
                    <th>Correo</th>
                    <th>Contraseña</th>
                    <th>Solicitud</th>
                    <th>Fecha</th>
                    <th colspan="2">Acciones</th>
                </tr>
                <% 
                    Connection conn = null;
                    PreparedStatement pstmt = null;
                    ResultSet res = null;
                    conexion conecta = new conexion();
                    conn = conecta.conectar();
                    pstmt = conn.prepareStatement("select * from mensajes;");
                    res = pstmt.executeQuery();

                    while (res.next()) { 
                %>
                <tr>
                    <td><%=res.getString(2)%></td>
                    <td style="font-weight: bold;"><%=res.getString(3)%></td> <!-- Añadido un margen grueso a los nombres de las columnas -->
                    <td><%=res.getString(4)%></td>
                    <td><%=res.getString(5)%></td>
                    <td><%=res.getString(6)%></td>
                    <td><%=res.getString(7)%></td>
                    <td>
                        <a href="mailto:<%=res.getString(4)%>" class="btn" target="_blank">Enviar Correo</a>
                    </td>
                    <td>
                        <a href="eliminaMensajes.jsp?cod=<%=res.getString(1)%>" class="btn">ELIMINAR</a>
                    </td>
                </tr>
                <%
                    }
                    pstmt.close();
                    conn.close();
                    res.close();
                %>
            </table>
        </div>
    </div>



    <br><br><br>                
    <footer class="bg-dark" id="tempaltemo_footer">
        <div class="container">
            <div class="row">

                <div class="col-md-4 pt-5">
                    <h2 class="h2 text-success border-bottom pb-3 border-light logo">Chemeia</h2>
                    <ul class="list-unstyled text-light footer-link-list">
                        <li>
                            <i class="fas fa-map-marker-alt fa-fw"></i>
                            Mar Mediterráneo 236-230, Nextitla, Miguel Hidalgo, 11420 Ciudad de México, CDMX
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
            </div>

    </footer>
    <script src="assets/js/jquery-1.11.0.min.js"></script>
    <script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/templatemo.js"></script>
    <script src="assets/js/custom.js"></script>
</body>

</html>