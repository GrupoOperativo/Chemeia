<%-- 
Document   : inciado

    Created on : 6 nov 2023, 21:55:30
    Author     : dante
--%>
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

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    HttpSession sesion = request.getSession();
    if (sesion.getAttribute("usuario") == null) {
        String e = "Favor de autenticarse";
        response.sendRedirect("logIn.jsp?e=" + e + "");
    } else %>
<!DOCTYPE html>
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

        <!-- Load fonts style after rendering the layout styles -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
        <link rel="stylesheet" href="assets/css/fontawesome.min.css">



        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&family=Roboto:wght@500;700;900&display=swap" rel="stylesheet"> 

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/css/style.css" rel="stylesheet">
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
                    Chemeia, <%out.println(sesion.getAttribute("usuario"));%>
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

<<<<<<< HEAD
                        <a class="nav-icon position-relative text-decoration-none" href="logIn.jsp">
=======
                        <a class="nav-icon position-relative text-decoration-none" href="seguro.jsp">
>>>>>>> c9c3dd8b698347f35df3ef37579e3454b04a4c10
                            <i class="fa fa-fw fa-user text-dark mr-3"></i>
                            <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span>
                        </a>
                    </div>
                </div>

            </div>

            <!--Acá empieza el centro-->

<<<<<<< HEAD
        </nav>
        <div class="container-fluid p-0 pb-5">
=======
        </nav><div class="container-fluid p-0 pb-5">
>>>>>>> c9c3dd8b698347f35df3ef37579e3454b04a4c10
            <div class="owl-carousel header-carousel position-relative">
                <div class="owl-carousel-item position-relative">
                    <img class="img-fluid" src="img/quimica2.jpg" alt="">
                    <div class="carousel-inner">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-12 col-lg-8 text-center">
<<<<<<< HEAD
                                    <h1 class="display-3 text-white animated slideInDown mb-4">Cheme-IA</h1>
                                    <p class="fs-5 text-white mb-4 pb-2" style = "text-height: ">Busca proporcionar a estudiantes y profesionales de química inorgánica una herramienta útil y accesible para  desarrollar ecuaciones químicas, conversión de unidades, y otros aspectos fundamentales de la química inorgánica de manera rápida, precisa y eficiente. </p>
=======
                                    <h1 class="display-3 text-white animated slideInDown mb-4">Laboratorio de Tecnología & Desarrollo de Aplicaciones. </h1>
                                    <p class="fs-5 text-white mb-4 pb-2">Desarrollar y proporcionar soluciones tecnológicas innovadoras y eficientes para satisfacer las necesidades de los clientes creando sofware de alta calidad que mejore la productividad y optimice procesos.</p>
>>>>>>> c9c3dd8b698347f35df3ef37579e3454b04a4c10
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="owl-carousel-item position-relative">
                    <img class="img-fluid" src="img/quimica1.jpg" alt="">
                    <div class="carousel-inner">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-12 col-lg-8 text-center">
<<<<<<< HEAD
                                    <h1 class="display-3 text-white animated slideInDown mb-4">TECNOLOGÍA Y DESARROLLO DE APLICACIONES</h1>
                                    <p class="fs-5 text-white mb-4 pb-2">TDA Labs (Empresa desarrolladora de Chemeia) busca generar y proporcionar soluciones tecnológicas innovadoras y eficientes para satisfacer las necesidades de los clientes creando sofware de alta calidad que mejore la productividad y optimice procesos.</p>
=======
                                    <h1 class="display-3 text-white animated slideInDown mb-4">Proyectos de TDA LABS</h1>
                                    <a href="Chemeia/" class="fs-5 text-white mb-4 pb-2">Chemeia: Busca Proporcionar a estudiantes y profesionales de química inorgánica una herramienta útil y accesible para  desarrollar ecuaciones químicas, conversión de unidades, y otros aspectos fundamentales de la química inorgánica de manera rápida, precisa y eficiente. </a>    
>>>>>>> c9c3dd8b698347f35df3ef37579e3454b04a4c10
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
<<<<<<< HEAD
=======
        <!-- Carousel End -->


        <!-- Facts Start -->
>>>>>>> c9c3dd8b698347f35df3ef37579e3454b04a4c10
        <div class="container-xxl py-5">
            <div class="container">
                <div class="row g-4">
                    <div class="col-md-6 col-lg-4 wow fadeIn" data-wow-delay="0.1s">
                        <div class="h-100 bg-dark p-4 p-xl-5">
                            <div class="d-flex align-items-center justify-content-between mb-4">
                                <div class="btn-square rounded-circle" style="width: 64px; height: 64px; background: #000000;">
                                    <img class="img-fluid" src="img/icon/icon-3.png" alt="Icon">
                                </div>
                                <h1 class="display-1 mb-0" style="color: #000000;">01</h1>
                            </div>
                            <h5 class="text-white">Misión</h5>
                            <hr class="w-25"  style="color: #9B9B9B;">
                            <span  class="text-white">Nuestra misión es impulsar la innovación a través de software avanzado, resolviendo desafíos complejos y mejorando la eficiencia empresarial. Nos esforzamos por superar las expectativas, brindando soluciones de alta calidad que impulsen el crecimiento y el éxito de nuestros clientes y equipo.</span>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 wow fadeIn" data-wow-delay="0.3s">
                        <div class="h-100 bg-dark p-4 p-xl-5">
                            <div class="d-flex align-items-center justify-content-between mb-4">
                                <div class="btn-square rounded-circle" style="width: 64px; height: 64px; background: #000000;">
                                    <img class="img-fluid" src="img/icon/icon-4.png" alt="Icon">
                                </div>
                                <h1 class="display-1 mb-0" style="color: #000000;">02</h1>
                            </div>
                            <h5 class="text-white">Visión</h5>
                            <hr class="w-25" style="color: #9B9B9B;">
                            <span class="text-white" >Queremos liderar a nivel global en desarrollo de software, ser el socio preferido para soluciones tecnológicas de alto impacto y dejar una huella duradera en el mundo, impulsando el progreso y mejorando la vida a través de nuestro software de vanguardia.
                            </span>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 wow fadeIn" data-wow-delay="0.5s">
                        <div class="h-100 bg-dark p-4 p-xl-5">
                            <div class="d-flex align-items-center justify-content-between mb-4">
                                <div class="btn-square rounded-circle" style="width: 64px; height: 64px; background: #000000;">
                                    <img class="img-fluid" src="img/icon/icon-1.png" alt="Icon">
                                </div>
                                <h1 class="display-1 mb-0" style="color: #000000;">03</h1>
                            </div>
                            <h5 class="text-white">Filosofia</h5>
                            <hr class="w-25" style="color: #9B9B9B;">
                            <span class="text-white">Nuestra empresa se basa en tres pilares: innovación, enfoque en el usuario y excelencia en la ejecución. Buscamos soluciones únicas que enriquezcan la vida de nuestros usuarios, con un fuerte compromiso hacia la calidad y la entrega puntual, superando expectativas y estableciendo estándares excepcionales.
                            </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Facts Start -->


        <!-- About Start -->
        <div class="container-fluid bg-light overflow-hidden my-5 px-lg-0">
            <div class="container about px-lg-0">
                <div class="row g-0 mx-lg-0">
                    <div class="col-lg-6 ps-lg-0" style="min-height: 400px;">
                        <div class="position-relative h-100">
                            <img class="position-absolute img-fluid w-100 h-100" src="img/quimica4.png" style="object-fit: cover;" alt="">
                        </div>
                    </div>
                    <div class="col-lg-6 about-text py-5 wow fadeIn" data-wow-delay="0.5s">
                        <div class="p-lg-5 pe-lg-0">
                            <div class="bg-primary mb-3" style="width: 60px; height: 2px;"></div>
                            <h1 class="display-5 mb-4">Valores</h1>
                            <pre class="mb-4 pb-2">Respeto:  Reconocer, aceptar, apreciar y valorar las cualidades
del prójimo y sus derechos. 
Honestidad: No mentir, no hacer trampa y no tomar ventaja
injustamente. Así como siempre decirle la verdad a los clientes
Puntualidad: Siempre cumplir con los plazos y fechas de entrega
establecidos, así como ser puntuales a la hora de trabajar
Responsabilidad: Dar cumplimiento a las obligaciones y ser
cuidadoso al tomar decisiones o al realizar algo.</pre>
                            <div class="row g-4 mb-4 pb-3">
                                <div class="col-sm-6 wow fadeIn" data-wow-delay="0.1s">
                                    <div class="d-flex align-items-center">
                                        <div class="btn-square bg-white rounded-circle" style="width: 64px; height: 64px;">
                                            <img class="img-fluid" src="img/icon/icon-1.png" alt="Icon">
                                        </div>
                                        <div class="ms-4">
                                            <h2 class="mb-1" data-toggle="counter-up">5</h2>
                                            <p class="fw-medium text-primary mb-0">Clientes Satisfechos</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 wow fadeIn" data-wow-delay="0.3s">
                                    <div class="d-flex align-items-center">
                                        <div class="btn-square bg-white rounded-circle" style="width: 64px; height: 64px;">
                                            <img class="img-fluid" src="img/icon/icon-5.png" alt="Icon">
                                        </div>
                                        <div class="ms-4">
                                            <h2 class="mb-1" data-toggle="counter-up">0</h2>
                                            <p class="fw-medium text-primary mb-0">Proyectos Realizados</p>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- About End -->


        <!-- Team Start -->
        <div class="container-xxl py-5">
            <div class="containe">
                <div class="text-right wow fadeInUp" data-wow-delay="0.1s">
                    <div class="bg-primary mb-3 mx-auto" style="width: 60px; height: 2px;"></div>
                    <h1 class="display-5 mb-5">Miembros del equipo</h1>
                </div>
                <div class="row g-4">
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="team-item">
                            <div class="overflow-hidden position-relative">
<<<<<<< HEAD
                                <img class="img-fluid" src="img/danin.png" alt="">
=======
                                <img class="img-fluid" src="img/team2.jpg" alt="">
>>>>>>> c9c3dd8b698347f35df3ef37579e3454b04a4c10
                                <div class="team-social">
                                    <a class="btn btn-square btn-dark rounded-circle m-1" href=""><i class="fab fa-facebook-f"></i></a>
                                    <a class="btn btn-square btn-dark rounded-circle m-1" href=""><i class="fab fa-twitter"></i></a>
                                    <a class="btn btn-square btn-dark rounded-circle m-1" href="https://www.instagram.com/_daan_in_/#"><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                            <div class="text-center p-4">

                            </div>
                            <div class="text-center p-4">
                                <h5 class="mb-0">Ibáñez Núñez</h5>
                                <span class="text-primary">Líder / Programador</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="team-item">
                            <div class="overflow-hidden position-relative">
<<<<<<< HEAD
                                <img class="img-fluid" src="img/imgchemeia.png" alt="">
=======
                                <img class="img-fluid" src="img/team2.jpg" alt="">
>>>>>>> c9c3dd8b698347f35df3ef37579e3454b04a4c10
                                <div class="team-social">
                                    <a class="btn btn-square btn-dark rounded-circle m-1" href=""><i class="fab fa-facebook-f"></i></a>
                                    <a class="btn btn-square btn-dark rounded-circle m-1" href=""><i class="fab fa-twitter"></i></a>
                                    <a class="btn btn-square btn-dark rounded-circle m-1" href="https://www.instagram.com/mendoza_tesfaye/?utm_source=ig_web_button_share_sheet&igshid=OGQ5ZDc2ODk2ZA=="><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                            <div class="text-center p-4">

                            </div>
                            <div class="text-center p-4">
                                <h5 class="mb-0">Mendoza Montes de Oca</h5>
                                <span class="text-primary">Analista / Diseñador</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Team End -->


        <!-- Feature Start -->
        <div class="container-fluid bg-light overflow-hidden my-5 px-lg-0">
            <div class="container feature px-lg-0">
                <div class="row g-0 mx-lg-0">
                    <div class="col-lg-6 feature-text py-5 wow fadeIn" data-wow-delay="0.5s">
                        <div class="p-lg-5 ps-lg-0">
                            <div class="bg-primary mb-3" style="width: 60px; height: 2px;"></div>
                            <h1 class="display-5 mb-5">Políticas</h1>
                            <pre class="mb-4 pb-2">1-Política de Propiedad Intelectual: Definición de cómo se gestionará la
propiedad intelectual y los derechos de autor de los productos y soluciones
desarrollados por la empresa y sus empleados.
2-Uso de Recursos Tecnológicos: Definición de cómo se deben utilizar los
recursos tecnológicos de la empresa, como equipos, software y herramientas,
y pautas para mantener la seguridad de los sistemas.
3-Desarrollo Ético y Legal: Enfatización en la creación de soluciones que
cumplan con las leyes, regulaciones y normas éticas relevantes, además de
fomentar la integridad en el desarrollo.</pre>
                            <div class="row g-4">
                                <div class="col-6">
                                    <div class="d-flex align-items-center">
                                        <div class="btn-square bg-white rounded-circle" style="width: 64px; height: 64px;">
                                            <img class="img-fluid" src="img/icon/icon-7.png" alt="Icon">
                                        </div>
                                        <div class="ms-4">
                                            <p class="text-primary mb-2">Trusted</p>
                                            <h5 class="mb-0">Security</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="d-flex align-items-center">
                                        <div class="btn-square bg-white rounded-circle" style="width: 64px; height: 64px;">
                                            <img class="img-fluid" src="img/icon/icon-10.png" alt="Icon">
                                        </div>
                                        <div class="ms-4">
                                            <p class="text-primary mb-2">Quality</p>
                                            <h5 class="mb-0">Services</h5>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 pe-lg-0" style="min-height: 400px;">
                        <div class="position-relative h-100">
<<<<<<< HEAD
                            <img class="position-absoluteimg-fluid w-100 h-100" src="img/abajo2.jpg" style="object-fit: cover;" alt="">
=======
                            <img class="position-absoluteimg-fluid w-100 h-100" src="img/quimica5.png" style="object-fit: cover;" alt="">
>>>>>>> c9c3dd8b698347f35df3ef37579e3454b04a4c10
                        </div>
                    </div>
                </div>
            </div>
        </div>

<<<<<<< HEAD





        <!--Acá acaba el centro-->
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
                            <p class="text-left text-light"><a href="soporteUs.jsp">¿Buscas soporte?</a></p>
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
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="lib/wow/wow.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/waypoints/waypoints.min.js"></script>
        <script src="lib/counterup/counterup.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="lib/isotope/isotope.pkgd.min.js"></script>
        <script src="lib/lightbox/js/lightbox.min.js"></script>
        <script src="assets/js/main.js"></script>
    </body>
=======
>>>>>>> c9c3dd8b698347f35df3ef37579e3454b04a4c10





        <!--Acá acaba el centro-->
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
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="lib/wow/wow.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/waypoints/waypoints.min.js"></script>
        <script src="lib/counterup/counterup.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="lib/isotope/isotope.pkgd.min.js"></script>
        <script src="lib/lightbox/js/lightbox.min.js"></script>
        <script src="assets/js/main.js"></script>
    </body>

</html>
        