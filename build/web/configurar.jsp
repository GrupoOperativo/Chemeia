<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@page import="java.sql.*, datos.conexion"%>
<%@page import="datos.cifrar"%>
<script>
    var contra = document.getElementById('contra').value;
    function togglePasswordVisibility(inputId) {
        var passwordInput = document.getElementById(inputId);
        if (passwordInput.type === "password") {
            passwordInput.type = "text";
        } else {
            passwordInput.type = "password";
        }
    }
</script>


<%
    cifrar cifra = new cifrar();
    HttpSession sesion = request.getSession();
    if(sesion.getAttribute("usuario") == null){
        String e = "Favor de autenticarse";
        response.sendRedirect("logIn.jsp?e="+e+"");
    }
    else{
        String nom = request.getParameter("usuario"); 
        /*if(nom == null){
            sesion.invalidate();
            String error = "Sesion cerrada";
            response.sendRedirect("logIn.jsp?error='"+error+"'");}
        else{*/
            Connection conn = null;
            ResultSet registros = null;
            PreparedStatement pstmt = null;
            conexion conecta = new conexion();  
            conn = conecta.conectar();
            pstmt = conn.prepareStatement("Select * from usuarios where nomUsuario = ? ;");
            pstmt.setString(1, nom);
            registros = pstmt.executeQuery();
            registros.next();
            String nombre = registros.getString("nomUsuario");
            String correo = cifra.descifrado(registros.getString("correoUsuario"));
            String pass = cifra.descifrado(registros.getString("contUsuario"));
    
    
    
%>
<!doctype html>




<html>
    <head>
        <meta charset="utf-8">
        <title>editorP</title>
        <link  rel="stylesheet" href="assets/css/configurar.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta charset="utf-8">
        <meta name="keywords" content="RECUPERA TU CONTRASEÑA">
        <meta name="description" content="">
        <link rel="stylesheet" href="assets/css/nicepage.css" media="screen">
        <link rel="stylesheet" href="assets/css/configurar_1.css" media="screen">
        <script class="u-script" type="text/javascript" src="assets/js/jquery.js" defer=""></script>
        <script class="u-script" type="text/javascript" src="assets/js/nicepage.js" defer=""></script>
        <meta name="generator" content="Nicepage 6.0.3, nicepage.com">
        <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
        <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">





        <script type="application/ld+json">{
            "@context": "http://schema.org",
            "@type": "Organization",
            "name": ""
            }</script>
        <meta name="theme-color" content="#478ac9">
        <meta property="og:title" content="Página 1">
        <meta property="og:type" content="website">
        <meta data-intl-tel-input-cdn-path="intlTelInput/">
        <link rel="apple-touch-icon" href="assets/img/chemeia.png">
        <link rel="icon" href="assets/img/chemeiaP.png" type="image/png">
    </head>

    <body data-path-to-root="./" data-include-products="false" class="u-body u-xl-mode" data-lang="es">
        <section class="u-clearfix u-image u-section-1" id="sec-689a" data-image-width="1920" data-image-height="1200">
            <div class="u-clearfix u-sheet u-sheet-1">
                <h2 class="u-align-center u-custom-font u-font-montserrat u-text u-text-palette-2-base u-text-1" data-animation-name="customAnimationIn" data-animation-duration="1000">Configurar Perfil</h2>
                <div class="custom-expanded u-align-center u-border-11 u-border-no-left u-border-no-right u-border-no-top u-border-palette-2-base u-container-style u-custom-border u-grey-15 u-group u-shape-rectangle u-group-1">
                    <div class="u-container-layout u-container-layout-1">
                        <div class="login u-form u-login-control u-form-1">
                            <form id="config" action="cambios.jsp" class="u-clearfix u-form-custom-backend u-form-spacing-10 u-form-vertical u-inner-form" name="form" style="padding: 0px;" method="post">

                                <div class="u-form-group u-form-name u-label-top">
                                    <label for="username-a30d" class="u-label u-label-1">Nombre de usuario*</label>
                                    <input type="text" placeholder="Introduce tu nuevo nombre" name="nombre" id="nombre" class="u-border-8 u-border-white u-input u-input-rectangle u-radius-50 u-input-1" required="" autofocus="autofocus" value= <% out.println("'"+nombre+"'");%>>
                                </div>
                                <div class="u-form-group u-label-top u-form-group-2">
                                    <label for="text-ac67" class="u-label u-label-2">Correo electrónico*</label>
                                    <input type="text" placeholder="Introduce tu nuevo correo electrónico" name='correo' id="correo" class="u-border-8 u-border-white u-input u-input-rectangle u-radius-50 u-input-2" value= <% out.println("'"+correo+"'");%>>
                                </div>
                                <div class="u-form-group u-form-password u-label-top">
                                    <label for="password-a30d" class="u-label u-label-3">Contraseña*</label>
                                    <input type="password" placeholder="Introduce tu nueva contraseña" name='contra' id="contra"  class="u-border-8 u-border-white u-input u-input-rectangle u-radius-50 u-input-3" required="" value= <% out.println("'"+pass+"'");%>>
                                </div>
                                <div class="u-form-checkbox u-form-group u-label-top">
                                    <input type="checkbox" id="checkbox-a30d" name="remember" value="Off" class="u-field-input">
                                    <label for="checkbox-a30d" class="u-field-label" style="font-size: 1rem; letter-spacing: 0px; text-transform: none">No soy un robot</label>
                                </div>
                                <div class="u-align-left u-form-group u-form-submit u-label-top">
                                    <input type="submit" value="submit" class="u-form-control-hidden">
                                    <a href="#" class="u-active-white u-btn u-btn-round u-btn-submit u-button-style u-hover-white u-palette-2-base u-radius u-text-active-palette-2-base u-text-hover-palette-2-base u-btn-1" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="" onmouseover="validar()">Guardar cambios</a>
                                </div>
                                <input type="hidden" value="" name="recaptchaResponse">
                            </form>
                        </div>
                        <a href="#sec-65af" class="u-border-none u-btn u-btn-round u-button-style u-dialog-link u-hover-white u-palette-2-base u-radius u-text-active-palette-2-base u-text-body-alt-color u-text-hover-palette-2-base u-btn-2">ELIMINAR CUENTA</a>
                        <div class="custom-expanded u-clearfix u-custom-html u-hover-feature u-custom-html-1">
                            <style>                            
                            .config{
                                padding: 0px;
                            }
</style>
                            <span onclick="togglePasswordVisibility('contra')">👁</span>
                        </div>
                        <div class="u-align-left u-clearfix u-custom-html u-custom-html-2">
                            <script >
                                var i = 0;
                                window.addEventListener("load", function () {
                                    document.getElementById("config").addEventListener("submit", function (event) {
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
                                    var pass1 = document.getElementById('contra').value;
                                    var passs1 = document.getElementById('contra');
                                    var label = document.getElementById('aviso');
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
                                    } else {
                                        i = 1;
                                        if(label.value.toString() !== "Cambios guardados con éxito." || label.value.toString() !== "Nombre de usuario o correo en uso." )
                                            label.textContent = "";
                                    }
                                }



                            </script>
                            <label style="color: red" id="aviso" ></label>
                            <%
                   String error = request.getParameter("e");
                   if (error != null) {
                            %>
                            <script>
                                function checa() {
                                    var label1 = document.getElementById('aviso');
                                    label1.textContent = "Nombre de usuario o correo en uso.";
                                    label1.style.color = "red";
                                }
                                window.onload = function () {
                                    checa();
                                };
                            </script>

                            <%
                                }//}
                            %>
                            <%
                   String erro = request.getParameter("msg");
                   if (error != null) {
                            %>
                            <script>
                                function checa() {
                                    var label1 = document.getElementById('aviso');
                                    label1.textContent = "Cambios guardados con éxito.";
                                    label1.style.color = "green";
                                }
                                window.onload = function () {
                                    checa();
                                };
                            </script>

                            <%
                                }}
                            %>
                        </div>
                    </div>
                </div>
                <a href="peerfil.jsp" class="u-border-none u-btn u-btn-round u-button-style u-hover-palette-2-light-1 u-palette-2-base u-radius u-btn-3" data-animation-name="customAnimationIn" data-animation-duration="1000">Regresar</a>
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
    <section class="u-align-center u-black u-clearfix u-container-style u-dialog-block u-opacity u-opacity-70 u-dialog-section-7" id="sec-65af">
        <div class="u-container-style u-dialog u-radius-13 u-shape-round u-white u-dialog-1">
            <div class="u-container-layout u-valign-middle u-container-layout-1"><span class="infinite u-align-center u-file-icon u-icon u-icon-1" data-animation-name="pulse" data-animation-duration="1000" data-animation-direction=""><img src="assets/img/1500374.png" alt=""></span>
                <h2 class="u-align-center u-text u-text-default u-text-1" data-animation-name="shake" data-animation-duration="1750" data-animation-direction="">ADVERTENCIA</h2>
                <p class="u-align-center u-text u-text-default u-text-2">¿Estás segur@ de querer borrar tu cuenta?</p>
                <a href="eliminarCuenta.jsp" class="u-border-none u-btn u-btn-round u-button-style u-hover-palette-4-base u-palette-4-base u-radius-50 u-text-body-alt-color u-text-hover-white u-btn-1" data-animation-name="customAnimationIn" data-animation-duration="1000" data-animation-delay="750">Sí</a>
                <a href="configurar.jsp" class="u-border-none u-btn u-btn-round u-button-style u-hover-palette-2-base u-palette-2-base u-radius-50 u-text-body-alt-color u-text-hover-white u-btn-2" data-animation-name="customAnimationIn" data-animation-duration="1000" data-animation-delay="750">No</a>
                <p class="u-align-center u-text u-text-default u-text-3">Gracias por ser parte de Grupo Operativo</p>
            </div><button class="u-dialog-close-button u-icon u-text-grey-50 u-icon-2"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 413.348 413.348" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-5801"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 413.348 413.348" id="svg-5801"><path d="m413.348 24.354-24.354-24.354-182.32 182.32-182.32-182.32-24.354 24.354 182.32 182.32-182.32 182.32 24.354 24.354 182.32-182.32 182.32 182.32 24.354-24.354-182.32-182.32z"></path></svg></button>
        </div>
    </section><style>
        .u-section-1 {
            background-image: url("assets/img/login.jpg");
            background-position: 50% 50%;
        }
        .u-dialog-section-7 .u-dialog-1 {
            width: 566px;
            min-height: 382px;
            height: auto;
            box-shadow: 5px 5px 20px 0 rgba(0,0,0,0.4);
            margin: 151px auto 60px;
        }

        .u-dialog-section-7 .u-container-layout-1 {
            padding: 40px 30px;
        }

        .u-dialog-section-7 .u-icon-1 {
            width: 80px;
            height: 80px;
            margin: 0 auto;
        }

        .u-dialog-section-7 .u-text-1 {
            font-size: 2.5rem;
            text-transform: uppercase;
            letter-spacing: 2px;
            margin: 20px auto 0;
        }

        .u-dialog-section-7 .u-text-2 {
            margin: 20px auto 0;
        }

        .u-dialog-section-7 .u-btn-1 {
            border-style: none;
            font-size: 1rem;
            background-image: none;
            font-weight: 700;
            --animation-custom_in-translate_x: 0px;
            --animation-custom_in-translate_y: 300px;
            --animation-custom_in-opacity: 0;
            --animation-custom_in-rotate: 0deg;
            --animation-custom_in-scale: 1;
            margin: 20px auto 0 124px;
            padding: 9px 47px 10px 46px;
        }

        .u-dialog-section-7 .u-btn-2 {
            border-style: none;
            font-size: 1rem;
            background-image: none;
            font-weight: 700;
            --animation-custom_in-translate_x: 0px;
            --animation-custom_in-translate_y: 300px;
            --animation-custom_in-opacity: 0;
            --animation-custom_in-rotate: 0deg;
            --animation-custom_in-scale: 1;
            margin: -45px auto 0 280px;
            padding: 9px 42px;
        }

        .u-dialog-section-7 .u-text-3 {
            font-size: 0.75rem;
            margin: 20px auto 0;
        }

        .u-dialog-section-7 .u-icon-2 {
            width: 29px;
            height: 29px;
            left: auto;
            top: 17px;
            position: absolute;
            right: 16px;
        }

        @media (max-width: 1199px) {
            .u-dialog-section-7 .u-btn-1 {
                margin-left: 124px;
            }

            .u-dialog-section-7 .u-btn-2 {
                margin-top: -45px;
                margin-left: 280px;
            }
        }

        @media (max-width: 991px) {
            .u-dialog-section-7 .u-container-layout-1 {
                padding-top: 30px;
                padding-bottom: 30px;
            }
        }

        @media (max-width: 767px) {
            .u-dialog-section-7 .u-dialog-1 {
                width: 540px;
            }

            .u-dialog-section-7 .u-container-layout-1 {
                padding-top: 45px;
            }
        }

        @media (max-width: 575px) {
            .u-dialog-section-7 .u-dialog-1 {
                width: 340px;
            }

            .u-dialog-section-7 .u-container-layout-1 {
                padding-top: 40px;
                padding-left: 25px;
                padding-right: 25px;
            }

            .u-dialog-section-7 .u-icon-1 {
                margin-top: 45px;
            }

            .u-dialog-section-7 .u-text-1 {
                font-size: 1.875rem;
                margin-top: -11px;
            }

            .u-dialog-section-7 .u-btn-1 {
                margin-left: 0;
            }

            .u-dialog-section-7 .u-btn-2 {
                margin-left: 80px;
            }
        }</style>
</body></html>
