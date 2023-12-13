<%-- 
    Document   : perdida
    Created on : 19 may 2023, 20:21:43
    Author     : dante
--%>
<html>
    <head>
        <script>
            function cerrar() {
                window.close();
            }
        </script>
    </head>

    <body>
        <%@page import="java.sql.*, datos.conexion" %>
        <%@page import="datos.cifrar"%>
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <!DOCTYPE html>
        <%
            cifrar cifra = new cifrar();
            Connection conn = null;
                ResultSet res = null;
                PreparedStatement pstmt = null;
                PreparedStatement pstmt2 = null;
                conexion conecta = new conexion();  
                conn = conecta.conectar();
                String nom = request.getParameter("nombre");
                pstmt = conn.prepareStatement("Select * from usuarios where nomUsuario = ?;");
                pstmt.setString(1, nom);
                res = pstmt.executeQuery();
                if (res.next()){    
                    int id = res.getInt("idUsuario");
                    String nombre = res.getString("nomUsuario");
                    String correo = cifra.descifrado(res.getString("correoUsuario"));
                    String contra = cifra.descifrado(res.getString("contUsuario"));
            
            
        
        
                pstmt2 = conn.prepareStatement("insert into mensajes(idUsuario, nomUsuario, correoUsuario, contUsuario, detalleMensaje, fechaMensaje)VALUES (?, ?, ?, ?, ?, NOW());");
                    pstmt2.setInt(1, id);
                    pstmt2.setString(2, nombre);
                    pstmt2.setString(3, correo);
                    pstmt2.setString(4, contra);
                    pstmt2.setString(5, "Recuperar contraseña");
                    pstmt2.executeUpdate();
        %>
    <!DOCTYPE html>
    <html style="font-size: 16px;" lang="es"><head>
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta charset="utf-8">
            <meta name="keywords" content="RECUPERA TU CONTRASEÑA">
            <meta name="description" content="">
            <title>Página 1</title>
            <link rel="apple-touch-icon" href="assets/img/chemeia.png">
            <link rel="icon" href="assets/img/chemeiaP.png" type="image/png">
            <link rel="stylesheet" href="assets/css/nicepage.css" media="screen">
            <link rel="stylesheet" href="assets/css/Login-Template-2.css" media="screen">
            <script class="u-script" type="text/javascript" src="assets/js/jquery.js" defer=""></script>
            <script class="u-script" type="text/javascript" src="assets/js/nicepage.js" defer=""></script>
            <meta name="generator" content="Nicepage 6.0.3, nicepage.com">
            <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
            <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">
            <script>
            document.addEventListener('DOMContentLoaded', function () {
                // Selecciona la ventana emergente por su ID y muestra el diálogo
                var dialog = document.getElementById('sec-46d9');
                dialog.style.display = 'block';
            });
            </script>
            <script>
                document.addEventListener('DOMContentLoaded', function () {
                    var closeButton = document.querySelector('.u-dialog-close-button');

                    // Agrega un evento de clic al botón de salida
                    closeButton.addEventListener('click', function () {
                        // Redirige al usuario al índice (o la URL que desees)
                        window.location.href = 'logIn.jsp';
                    });
                });
            </script>






            <script type="application/ld+json">{
                "@context": "http://schema.org",
                "@type": "Organization",
                "name": "Site1"
                }</script>
            <meta name="theme-color" content="#478ac9">
            <meta property="og:title" content="Página 1">
            <meta property="og:description" content="">
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
                <a class="u-link" href="https://nicepage.com/website-templates" target="_blank">
                    <span>Website Templates</span>
                </a>
                <p class="u-text">
                    <span>created with</span>
                </p>
                <a class="u-link" href="" target="_blank">
                    <span>Website Builder Software</span>
                </a>. 
            </section>
            <section class="u-align-center u-black u-clearfix u-container-style u-dialog-block u-opacity u-opacity-50 u-valign-middle u-dialog-section-8" id="sec-46d9">
                <div class="u-align-center u-container-style u-dialog u-radius-13 u-shape-round u-white u-dialog-1">
                    <div class="u-container-layout u-container-layout-1"><span class="u-file-icon u-icon u-icon-1" data-animation-name="customAnimationIn" data-animation-duration="1750" data-animation-direction=""><img src="assets/img/929900.png" alt=""></span>
                        <h2 class="u-align-center u-text u-text-default u-text-1">SOLICITUD ENVIADA</h2>
                        <p class="u-align-center u-text u-text-default u-text-2">&nbsp;En un lapso de 12hrs algún administrador le hará llegar su contraseña por via correo electrónico</p>
                    </div><button class="u-dialog-close-button u-icon u-text-grey-50 u-icon-2"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 413.348 413.348" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-5801"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 413.348 413.348" id="svg-5801"><path d="m413.348 24.354-24.354-24.354-182.32 182.32-182.32-182.32-24.354 24.354 182.32 182.32-182.32 182.32 24.354 24.354 182.32-182.32 182.32 182.32 24.354-24.354-182.32-182.32z"></path></svg></button>
                </div>
            </section><style>.u-dialog-section-8 .u-dialog-1 {
                    width: 566px;
                    min-height: 316px;
                    height: auto;
                    box-shadow: 5px 5px 20px 0 rgba(0,0,0,0.4);
                    margin: 60px auto;
                }

                .u-dialog-section-8 .u-container-layout-1 {
                    padding: 40px 30px;
                }

                .u-dialog-section-8 .u-icon-1 {
                    height: 64px;
                    width: 64px;
                    --animation-custom_in-translate_x: -200px;
                    --animation-custom_in-translate_y: 0px;
                    --animation-custom_in-opacity: 0;
                    --animation-custom_in-rotate: 148deg;
                    --animation-custom_in-scale: 1;
                    margin: 6px auto 0;
                }

                .u-dialog-section-8 .u-text-1 {
                    font-size: 2.5rem;
                    text-transform: uppercase;
                    letter-spacing: 2px;
                    margin: 20px auto 0;
                }

                .u-dialog-section-8 .u-text-2 {
                    margin: 20px 0 0;
                }

                .u-dialog-section-8 .u-icon-2 {
                    width: 15px;
                    height: 15px;
                    left: auto;
                    top: 17px;
                    position: absolute;
                    right: 16px;
                }

                @media (max-width: 991px) {
                    .u-dialog-section-8 .u-container-layout-1 {
                        padding-top: 30px;
                        padding-bottom: 30px;
                    }
                }

                @media (max-width: 767px) {
                    .u-dialog-section-8 .u-dialog-1 {
                        width: 540px;
                    }

                    .u-dialog-section-8 .u-container-layout-1 {
                        padding-top: 45px;
                    }
                }

                @media (max-width: 575px) {
                    .u-dialog-section-8 .u-dialog-1 {
                        width: 340px;
                        min-height: 404px;
                    }

                    .u-dialog-section-8 .u-container-layout-1 {
                        padding-top: 40px;
                        padding-left: 25px;
                        padding-right: 25px;
                    }

                    .u-dialog-section-8 .u-text-1 {
                        font-size: 1.875rem;
                        margin-top: 29px;
                    }
                }</style>
        </body></html>

    <%
    }
else{
    out.println("<script>cerrar();</script>");
    String error = "No se encuentra";
    response.sendRedirect("logIn.jsp?errr='"+error+"'");}
        
    %>

</body>
</html>