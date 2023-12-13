<%-- 
    Document   : registro
    Created on : 23 may 2023, 14:26:27
    Author     : alumno
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registro Chemeia</title>
        <meta charset="UTF-8">
        <link rel="icon" href="assets/img/chemeiaP.png" type="image/png">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="apple-touch-icon" href="assets/img/chemeia.png">
        <link rel="icon" href="assets/img/chemeiaP.png" type="image/png">
        <script >
            var i = 0;
            window.addEventListener("load", function () {
                document.getElementById("altas").addEventListener("submit", function (event) {
                    validar();
                    if (i === 0) {
                        event.preventDefault();
                    } 
                });
            });
            function togglePasswordVisibility(inputId) {
                var passwordInput = document.getElementById(inputId);
                if (passwordInput.type === "password") {
                    passwordInput.type = "text";
                } else {
                    passwordInput.type = "password";
                }
            }

            function validar() {
                var nombre = document.getElementById('nombre').value;
                var nom = document.getElementById('nombre');
                var correo = document.getElementById('correo').value;
                var corr = document.getElementById('correo');
                var pass1 = document.getElementById('pass1').value;
                var passs1 = document.getElementById('pass1');
                var pass2 = document.getElementById('pass2').value;
                var passs2 = document.getElementById('pass2');
                var label = document.getElementById('aviso');
                var btn = document.getElementById('registrar');
                var longitud = nombre.length;
                var correoExp = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                i = 0;

                if (nombre === '') {
                    label.textContent = "Ingresa tu nombre";
                    nom.focus();
                } else if (longitud > 15 || longitud < 5) {
                    label.textContent = "Ingresa un nombre de usuario de entre 5 y 15 caracteres";
                    nom.focus();
                } else if (correo === '') {
                    label.textContent = "Ingresa tu correo electrónico";
                    corr.focus();
                } else if (!correoExp.test(correo)) {
                    label.textContent = "El correo no es válido";
                    corr.focus();
                } else if (pass1 === '') {
                    label.textContent = "Ingresa tu contraseña";
                    corr.focus();
                } else if (pass1.length < 8) {
                    label.textContent = "La contraseña debe tener más de 8 caracteres";
                    passs1.focus();
                } else if (pass2 === '') {
                    label.textContent = "Confirma tu contraseña";
                    passs2.focus();
                } else if (pass2 !== pass1) {
                    label.textContent = "Las contraseñas no coinciden";
                    passs2.value = "";
                    passs2.focus();
                } else {
                    i = 1;
                    label.textContent = "";
                }
            }

            function regresar() {
                window.location.replace('logIn.jsp');
            }


        </script>

        <link rel="stylesheet" href="assets/css/registro.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta charset="utf-8">
        <meta name="keywords" content="RECUPERA TU CONTRASEÑA">
        <meta name="description" content="">
        <link rel="stylesheet" href="assets/css/nicepage.css" media="screen">
        <link rel="stylesheet" href="assets/css/Registro_1.css" media="screen">
        <script class="u-script" type="text/javascript" src="assets/js/jquery.js" defer=""></script>
        <script class="u-script" type="text/javascript" src="assets/js/nicepage.js" defer=""></script>
        <meta name="generator" content="Nicepage 6.0.3, nicepage.com">
        <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
        <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">
        <style> .u-section-1 {
                background-image: url("assets/img/login.jpg");
            }
        </style>




        <script type="application/ld+json">{
            "@context": "http://schema.org",
            "@type": "Organization",
            "name": ""
            }</script>
        <meta name="theme-color" content="#478ac9">
        <meta property="og:title" content="Página 1">
        <meta property="og:type" content="website">
        <meta data-intl-tel-input-cdn-path="intlTelInput/">
    </head>
    <html lang="es"><head>
        </head>
        <body data-path-to-root="./" data-include-products="false" class="u-body u-xl-mode" data-lang="es">
            <section class="u-clearfix u-image u-section-1" id="sec-689a" data-image-width="1920" data-image-height="1200">
                <div class="u-clearfix u-sheet u-sheet-1">
                    <h2 class="u-custom-font u-font-montserrat u-text u-text-palette-2-base u-text-1" data-animation-name="customAnimationIn" data-animation-duration="1000">Registro</h2>
                    <div class="custom-expanded u-border-11 u-border-no-left u-border-no-right u-border-no-top u-border-palette-2-base u-container-style u-custom-border u-grey-15 u-group u-shape-rectangle u-group-1" data-animation-name="customAnimationIn" data-animation-duration="1000">
                        <div class="u-container-layout u-container-layout-1">
                            <div class="login u-form u-login-control u-form-1">
                                <form id="altas" action="altasUsuario.jsp" class="u-clearfix u-form-custom-backend u-form-spacing-10 u-form-vertical u-inner-form" name="form" style="padding: 0px;" method="post">
                                    <div class="u-form-group u-form-name u-label-top">
                                        <label for="username-a30d" class="u-label u-label-1">Nombre de usuario*</label>
                                        <input type="text" placeholder="Introduce tu nombre" id="nombre" name="nombre" autofocus class="u-border-8 u-border-white u-input u-input-rectangle u-radius-50 u-input-1" required="" autofocus="autofocus">
                                    </div>
                                    <div class="u-form-group u-label-top u-form-group-2">
                                        <label for="text-95f9" class="u-label u-label-2">Correo electrónico*</label>
                                        <input type="text" placeholder="Introduce tu correo electrónico"  id="correo" name="correo" class="u-border-8 u-border-white u-input u-input-rectangle u-radius-50 u-input-2">
                                    </div>
                                    <div class="u-form-group u-form-password u-label-top">
                                        <label for="password-a30d" class="u-label u-label-3">Contraseña*</label>
                                        <input type="password" placeholder="Introduce tu contraseña" id="pass1" name="contrasenia" class="u-border-8 u-border-white u-input u-input-rectangle u-radius-50 u-input-3" required="">
                                    </div>
                                    <div class="u-form-group u-label-top u-form-group-4">
                                        <label for="text-9082" class="u-label u-label-4">Confirmar contraseña</label>
                                        <input type="password" placeholder="Confirma tu contraseña" id="pass2" name="confirmarContrasenia" class="u-border-8 u-border-white u-input u-input-rectangle u-radius-50 u-input-4">
                                    </div>
                                    <div class="u-form-checkbox u-form-group u-label-top">
                                        <input type="checkbox" id="checkbox-a30d" name="remember" value="Off" class="u-field-input">
                                        <label for="checkbox-a30d" class="u-field-label" style="font-size: 1rem; letter-spacing: 0px; text-transform: none" required="">No soy un robot</label>
                                    </div>
                                    <div class="u-align-left u-form-group u-form-submit u-label-top">
                                        <input type="submit" value="Registrate" onmouseover="validar()" class="u-form-control-hidden">
                                        <a href="#" onmouseover="validar()" class="u-active-white u-border-none u-btn u-btn-round u-btn-submit u-button-style u-hover-white u-palette-2-base u-radius-50 u-text-active-palette-2-base u-text-hover-palette-2-base u-btn-1">REGISTRAR</a>
                                    </div>
                                    <input type="hidden" value="" name="recaptchaResponse">
                                </form>
                            </div>
                            <div class="custom-expanded u-clearfix u-custom-html u-custom-html-1">
                                <span onclick="togglePasswordVisibility('pass1')">👁</span>
                            </div>
                            <div class="custom-expanded u-clearfix u-custom-html u-custom-html-2">
                                <span onclick="togglePasswordVisibility('pass2')">👁</span>
                            </div>
                            <div class="u-align-left u-clearfix u-custom-html u-custom-html-3">
                                <label style="color: red" id="aviso"></label>
                            </div>
                        </div>
                    </div>
                    <a href="logIn.jsp" class="u-border-none u-btn u-btn-round u-button-style u-hover-palette-2-light-1 u-palette-2-base u-radius u-btn-2" data-animation-name="customAnimationIn" data-animation-duration="1000">Regresar</a>
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

        </body>
        <%
                   String error = request.getParameter("e");
                   if (error != null) {
        %>
        <script>
            function checa() {
                var label1 = document.getElementById('aviso');
                label1.textContent = "Nombre de usuario o correo en uso.";
            }
            window.onload = function () {
                checa();
            };
        </script>

        <%
            }
        %>
    </body>
</html>