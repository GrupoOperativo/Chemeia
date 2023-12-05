<%-- 
    Document   : logIn
    Created on : 28 mar 2023, 07:16:18
    Author     : alumno
--%>

<!DOCTYPE html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="es"><head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta charset="utf-8">
        <meta name="keywords" content="Login, RECUPERA TU CONTRASEÑA">
        <meta name="description" content="">
        <title>LogIn</title>
        <link rel="apple-touch-icon" href="assets/img/chemeia.png">
        <link rel="icon" href="assets/img/chemeiaP.png" type="image/png">
        <link rel="stylesheet" href="assets/css/nicepage.css" media="screen">
        <link rel="stylesheet" href="assets/css/Login-Template-2.css" media="screen">
        <script class="u-script" type="text/javascript" src="assets/js/jquery.js" defer=""></script>
        <script class="u-script" type="text/javascript" src="assets/js/nicepage.js" defer=""></script>
        <meta name="generator" content="Nicepage 6.0.3, nicepage.com">
        <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
        <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">





        <script type="application/ld+json">{
            "@context": "http://schema.org",
            "@type": "Organization",
            "name": ""
    }</script><script>
            function togglePasswordVisibility(inputId) {
                var passwordInput = document.getElementById(inputId);
                if (passwordInput.type === "password") {
                    passwordInput.type = "text";
                } else {
                    passwordInput.type = "password";
                }
            }
            function Regresar() {
                window.location.replace('index.html');
            }
            
        </script>
    </head>
    
    <meta name="theme-color" content="#478ac9">
        <meta property="og:title" content="Login Template 2">
        <meta property="og:type" content="website">
        <meta data-intl-tel-input-cdn-path="intlTelInput/"></head>
    <body data-path-to-root="./" data-include-products="false" class="u-body u-xl-mode" data-lang="es">
        <section class="u-align-center u-clearfix u-image u-section-1" id="carousel_eaec" data-image-width="1920" data-image-height="1200">
            <div class="u-clearfix u-sheet u-sheet-1">
                <h2 class="u-custom-font u-font-montserrat u-text u-text-default u-text-palette-2-base u-text-1" data-animation-name="customAnimationIn" data-animation-duration="1000" data-animation-direction="">Login</h2>
                <div class="custom-expanded u-align-center u-border-11 u-border-no-left u-border-no-right u-border-no-top u-border-palette-2-base u-container-style u-custom-border u-grey-15 u-group u-shape-rectangle u-group-1" data-animation-name="customAnimationIn" data-animation-duration="1000">
                    <div class="u-container-layout u-container-layout-1">
                        <div class="login u-form u-login-control u-form-1">
                            <form action="validar.jsp"class="u-clearfix u-form-custom-backend u-form-spacing-10 u-form-vertical u-inner-form" source="custom" name="form" style="padding: 0px;" method="post">
                                <div class="u-form-group u-form-name u-label-top">
                                    <label for="username-a30d" class="u-label u-label-1">Nombre de usuario*</label>
                                    <input type="text" placeholder="Introduce tu nombre" autofocus id="username-a30d" name="usuario" class="u-border-8 u-border-white u-input u-input-rectangle u-radius-50 u-input-1" required="" autofocus="autofocus">
                                </div>
                                <div class="u-form-group u-form-password u-label-top">
                                    <label for="password-a30d" class="u-label u-label-2">Contraseña*</label>
                                    <input type="password"  placeholder="Introduce tu contraseña" id="password-a30d" name="contra" class="u-border-8 u-border-white u-input u-input-rectangle u-radius-50 u-input-2" required="">
                                </div>
                                <div class="u-form-checkbox u-form-group u-label-top">
                                    <input type="checkbox" id="checkbox-a30d" name="remember" value="Off" class="u-field-input" required="required">
                                    <label for="checkbox-a30d" class="u-block-fd28-14 u-field-label" style="font-size: 1rem; letter-spacing: 0px; text-transform: none">No soy un robot</label>
                                </div>
                                <div class="u-align-left u-form-group u-form-submit u-label-top">
                                    <input type="submit" value="submit" class="u-form-control-hidden">
                                    <a href="#" class="u-active-white u-border-2 u-border-grey-75 u-btn u-btn-round u-btn-submit u-button-style u-hover-white u-palette-2-base u-radius u-text-active-palette-2-base u-text-hover-palette-2-base u-btn-1">Login</a>
                                </div>
                                <input type="hidden" value="" name="recaptchaResponse">
                            </form>
                        </div>
                        <div class="u-clearfix u-custom-html u-custom-html-1">
                            <style></style>
                             <%
                    String error = request.getParameter("e");
                    String error2 = request.getParameter("err");
                    String error3 = request.getParameter("error");
                    String error4 = request.getParameter("errr");
                    if (error != null) 
                        out.println("<label  style=\'color:red;\'>" + "Usuario o contraseña incorrectos." + "</label>");
                    else if(error2 != null)
                        out.println("<label  style=\'color:red;\'>" + "Falta de autentificación." + "</label>");
                    else if(error3 != null)
                        out.println("<label  style=\'color:red;\'>" + "Sesión cerrada por seguridad." + "</label>");
                    else if(error4 != null)
                        out.println("<label  style=\'color:red;\'>" + "Usuario no encontrado." + "</label>");
                        
                %>
                        </div>
                        <div class="u-clearfix u-custom-html u-hover-feature u-custom-html-2">
                            <span onclick="togglePasswordVisibility('password-a30d')">👁</span>
                        </div>
                        <div class="u-container-style u-expanded-width u-group u-white u-group-2">
                            <div class="u-container-layout u-container-layout-2">
                                <a href="#sec-7b5d" class="u-border-1 u-border-active-palette-2-light-2 u-border-hover-palette-2-light-2 u-border-no-left u-border-no-right u-border-no-top u-btn u-button-style u-dialog-link u-login-control u-login-create-account u-none u-text-active-palette-2-light-2 u-text-hover-palette-2-light-2 u-text-palette-2-base u-btn-2" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">¿Olvidaste tu contraseña?</a>
                                <a href="registro.jsp" class="u-border-1 u-border-active-palette-2-light-2 u-border-hover-palette-2-light-2 u-border-no-left u-border-no-right u-border-no-top u-btn u-button-style u-login-control u-login-create-account u-none u-text-active-palette-2-light-2 u-text-hover-palette-2-light-2 u-text-palette-2-base u-btn-3">¿No tienes cuenta?</a>
                            </div>
                        </div>
                    </div>
                </div>
                <a href="chequeo.jsp" class="u-border-none u-btn u-btn-round u-button-style u-hover-palette-2-light-1 u-palette-2-base u-radius u-btn-4" data-animation-name="customAnimationIn" data-animation-duration="1000">regresar</a>
            </div>

        </section>






        <section class="u-backlink u-clearfix u-grey-80">
            <a class="u-link" href="http://tdalabs.gerdoc.com/" target="_blank">
                <span>TDA Labs</span>
            </a>
            <p class="u-text">
                <span>by</span>
            </p>
                <span>Grupo Operativo</span>
        </section>
                        
                        
        <section class="u-align-center u-black u-clearfix u-container-style u-dialog-block u-opacity u-opacity-70 u-valign-middle u-dialog-section-5" id="sec-7b5d">
            <div class="u-container-style u-dialog u-grey-5 u-dialog-1">
                <div class="u-container-layout u-valign-middle-lg u-valign-middle-md u-valign-middle-sm u-valign-middle-xl u-container-layout-1">
                    <h2 class="u-align-center u-text u-text-default u-text-1">RECUPERA TU CONTRASEÑA</h2>
                    <p class="u-align-center u-text u-text-default u-text-2"> Lamentamos el inconveniente, enviaremos un correo para que pueda recuperar su contraseña lo más pronto posible</p>
                    <div class="u-expanded-width u-form u-form-1">
                            <form action="perdida.jsp" class="u-clearfix u-form-custom-backend u-form-spacing-10 u-form-horizontal u-inner-form" source="custom" name="form" style="padding: 0px;" method="post">
                        <!--<form method="post" action="perdida.jsp" class="u-clearfix u-form-horizontal u-form-spacing-10 u-inner-form" style="padding: 10px" name="form">
                       -->     
                            <div class="u-form-group">
                                <label for="email-8999" class="u-label">Nombre</label>
                                <input  type="text" placeholder="Ingresa tu nombre de usuario" id="email-8999" name="nombre" class="u-input u-input-rectangle" required="required" autofocus="autofocus" autofocus maxlength="15">
                            </div>
                            <div class="u-align-left u-form-group u-form-submit">
                                <a href="#" class="u-black u-border-1 u-border-black u-btn u-btn-submit u-button-style u-btn-1">ENVIAR</a>
                                <input type="submit"  value="enviar" class="u-form-control-hidden">
                            </div>
                        </form>
                    </div>
                </div><button class="u-dialog-close-button u-icon u-text-grey-40 u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 348.333 348.334" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-9711"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 348.333 348.334" x="0px" y="0px" id="svg-9711" style="enable-background:new 0 0 348.333 348.334;"><g><path d="M336.559,68.611L231.016,174.165l105.543,105.549c15.699,15.705,15.699,41.145,0,56.85   c-7.844,7.844-18.128,11.769-28.407,11.769c-10.296,0-20.581-3.919-28.419-11.769L174.167,231.003L68.609,336.563   c-7.843,7.844-18.128,11.769-28.416,11.769c-10.285,0-20.563-3.919-28.413-11.769c-15.699-15.698-15.699-41.139,0-56.85   l105.54-105.549L11.774,68.611c-15.699-15.699-15.699-41.145,0-56.844c15.696-15.687,41.127-15.687,56.829,0l105.563,105.554   L279.721,11.767c15.705-15.687,41.139-15.687,56.832,0C352.258,27.466,352.258,52.912,336.559,68.611z"></path>
                    </g></svg></button>
            </div>
        </section>

        <style>
            .u-section-1 {
                background-image: url("assets/img/login.jpg");
                background-position: 50% 50%;
            }
            .u-dialog-section-5 .u-dialog-1 {
                width: 545px;
                min-height: 317px;
                box-shadow: 0 0 14px 0 rgba(0,0,0,0.3);
                margin: 60px auto;
            }

            .u-dialog-section-5 .u-container-layout-1 {
                padding: 30px;
            }

            .u-dialog-section-5 .u-text-1 {
                font-size: 3rem;
                margin: 0 auto;
            }

            .u-dialog-section-5 .u-text-2 {
                margin: 20px 0 0;
            }

            .u-dialog-section-5 .u-form-1 {
                margin: 30px auto 0;
            }

            .u-dialog-section-5 .u-btn-1 {
                text-transform: uppercase;
                background-image: none;
                border-style: solid;
            }

            .u-dialog-section-5 .u-icon-1 {
                width: 16px;
                height: 16px;
                left: auto;
                top: 17px;
                position: absolute;
                right: 16px;
            }

            @media (max-width: 1199px) {
                .u-dialog-section-5 .u-dialog-1 {
                    height: auto;
                }

                .u-dialog-section-5 .u-form-1 {
                    margin-right: initial;
                    margin-left: initial;
                }
            }

            @media (max-width: 767px) {
                .u-dialog-section-5 .u-dialog-1 {
                    width: 540px;
                }

                .u-dialog-section-5 .u-text-1 {
                    font-size: 2.25rem;
                }
            }

            @media (max-width: 575px) {
                .u-dialog-section-5 .u-dialog-1 {
                    width: 340px;
                    min-height: 329px;
                }

                .u-dialog-section-5 .u-container-layout-1 {
                    padding-left: 20px;
                    padding-right: 20px;
                }

                .u-dialog-section-5 .u-form-1 {
                    margin-top: 3px;
                    margin-right: initial;
                    margin-left: initial;
                }
            }</style>
    </body></html>
    
    
    
    
    
    
    
<!--
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

        <div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="w-100 pt-1 mb-5 text-right">
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="" method="get" class="modal-content modal-body border-0 p-0">
                    <div class="input-group mb-2">
                        <input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="Search ...">
                        <button type="submit" class="input-group-text bg-success text-light">
                            <i class="fa fa-fw fa-search text-white"></i>
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div>



        <div class="formulario">
            <img src="assets/img/chemeia.png" alt="chemeia" style="height: 70px">
            <form method="post" action="validar.jsp">
                <div class="username">
                    <input type="text" required name="usuario" autofocus>
                    <label>Nombre de usuario</label>
                </div>
                <div class="username">
                    <input type="password" required name="contra" id="pass1"> 
                    <label>Contraseña</label>
                    <span class="icono-ojo" onclick="togglePasswordVisibility('pass1')">&#128065;</span>
                </div>

                <div class="recordar" ><a href='javascript:Recuperar()'>¿Olvidó su contraseña?</a></div>
                <input type="submit" name="ingresar" value="INICIAR SESIÓN">
                <div class="registrarse">
                    ¿Eres nuevo en este sitio? <a href="registro.jsp">Regístrate</a>
                </div>    
            </form>
        </div>
        <div class="pie">
            <input type="submit" value="Regresar" onclick="Regresar()" >
        </div>
    </div>
</body>
</html>
-->
               