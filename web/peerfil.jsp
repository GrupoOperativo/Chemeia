<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, datos.conexion" %>
<%@page import="datos.cifrar"%>
<%! 
    public String encodeImage(byte[] imageData) {
        return java.util.Base64.getEncoder().encodeToString(imageData);
    }
%>
<%
    cifrar cifra = new cifrar();
    HttpSession sesion = request.getSession();
    if(sesion.getAttribute("usuario") == null){
        String e = "Favor de autenticarse";
        response.sendRedirect("logIn.jsp?e="+e+"");
    }
    else {
        String nombre = sesion.getAttribute("usuario").toString();
        Connection conn = null;
        ResultSet res = null;
        PreparedStatement pstmt = null;
        conexion conecta = new conexion();
        conn = conecta.conectar();
        pstmt = conn.prepareStatement("select * from usuarios where nomUsuario = ?");
        pstmt.setString(1, nombre);
        res = pstmt.executeQuery();
        if (res.next()) {
            String nom = res.getString("nomUsuario");
            String correo = cifra.descifrado(res.getString("correoUsuario"));

%>
<script>
    function togglePasswordVisibility(inputId) {
        var passwordInput = document.getElementById(inputId);
        if (passwordInput.type === "password") {
            passwordInput.type = "text";
        } else {
            passwordInput.type = "password";
        }
    }
    function enviarFormulario() {
        document.getElementById('formu').submit();
    }

</script>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="es"><head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta charset="utf-8">
        <meta name="keywords" content="RECUPERA TU CONTRASEÑA">
        <meta name="description" content="">
        <title>Perfil</title>
        <link rel="apple-touch-icon" href="assets/img/chemeia.png">
        <link rel="icon" href="assets/img/chemeiaP.png" type="image/png">
        <link rel="stylesheet" href="assets/css/nicepage.css" media="screen">
        <link rel="stylesheet" href="assets/css/perfil_1.css" media="screen">
        <script class="u-script" type="text/javascript" src="assets/js/jquery.js" defer=""></script>
        <script class="u-script" type="text/javascript" src="assets/js/nicepage.js" defer=""></script>
        <meta name="generator" content="Nicepage 6.0.3, nicepage.com">
        <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
        <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">

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
        <section class="u-clearfix u-image u-section-1" id="sec-689a" data-image-width="1920" data-image-height="1200">
            <div class="u-clearfix u-sheet u-sheet-1">
                <h2 class="u-align-center u-custom-font u-font-montserrat u-text u-text-palette-2-base u-text-1" data-animation-name="customAnimationIn" data-animation-duration="1000">Perfil</h2>
                <div class="custom-expanded u-align-center u-border-11 u-border-no-left u-border-no-right u-border-no-top u-border-palette-2-base u-container-style u-custom-border u-grey-15 u-group u-shape-rectangle u-group-1" data-animation-name="customAnimationIn" data-animation-duration="1000">
                    <div class="u-container-layout u-container-layout-1">
                        <div class="login u-form u-login-control u-form-1">
                            <form action="configurar.jsp" class="u-clearfix u-form-custom-backend u-form-spacing-10 u-form-vertical u-inner-form" source="custom" name="form" style="padding: 0px;" method="post">
                                <div class="u-form-group u-form-name u-label-top">
                                    <label for="username-a30d" class="u-label u-label-1">Nombre de usuario*</label>
                                    <input type="text" id="username-a30d" value="<%out.println(nom);%>" name="usuario" class="u-border-8 u-border-white u-input u-input-rectangle u-radius-50 u-input-1">
                                </div>
                                <div class="u-form-group u-label-top u-form-group-2">
                                    <label for="text-ac67" class="u-label u-label-2">Correo electrónico*</label>
                                    <input type="text" id="text-ac67" value="<%out.println(correo);%>" name="text" class="u-border-8 u-border-white u-input u-input-rectangle u-radius-50 u-input-2">
                                </div>
                                <div class="u-form-group u-form-password u-label-top">
                                    <label for="password-a30d" class="u-label u-label-3">Contraseña actual*</label>
                                    <input type="password" placeholder="Introduce tu nueva contraseña actual para modificar" id="password-a30d" name="password" class="u-border-8 u-border-white u-input u-input-rectangle u-radius-50 u-input-3" required="">
                                </div>
                                <div class="u-form-checkbox u-form-group u-label-top">
                                    <input type="checkbox" id="checkbox-a30d" name="remember" value="Off" class="u-field-input" required="required">
                                    <label for="checkbox-a30d" class="u-field-label" style="font-size: 1rem; letter-spacing: 0px; text-transform: none">No soy un robot</label>
                                </div>
                                <div class="u-align-left u-form-group u-form-submit u-label-top">
                                    <input type="submit" value="submit" class="u-form-control-hidden">
                                    <a href="#" class="u-active-white u-btn u-btn-round u-btn-submit u-button-style u-hover-white u-palette-2-base u-radius u-text-active-palette-2-base u-text-hover-palette-2-base u-btn-1" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">CONFIGURAR PERFIL</a>
                                </div>
                                <input type="hidden" value="" name="recaptchaResponse">
                            </form>
                        </div>
                        <a href="logOut.jsp" class="u-border-none u-btn u-btn-round u-button-style u-hover-white u-palette-2-base u-radius u-text-active-palette-2-base u-text-body-alt-color u-text-hover-palette-2-base u-btn-2">CERRAR SESIÓN</a>
                        <div class="custom-expanded u-clearfix u-custom-html u-hover-feature u-custom-html-1">
                            <style></style>
                            <span onclick="togglePasswordVisibility('password-a30d')">👁</span>
                        </div>
                        <div class="u-align-left u-clearfix u-custom-html u-custom-html-2">



                            <%
                    String error = request.getParameter("e");
                    String error2 = request.getParameter("err");
                    if (error != null) 
                        out.println("<label  style=\'color:red;\'>" + "Usuario o contraseña incorrectos." + "</label>");
                    else if(error2 != null)
                        out.println("<label  style=\'color:red;\'>" + "Falta de autentificación." + "</label>");
                        
                            %>
                        </div>
                    </div>
                </div>
                <a href="chequeo.jsp" class="u-border-none u-btn u-btn-round u-button-style u-hover-palette-2-light-1 u-palette-2-base u-radius u-btn-3" data-animation-name="customAnimationIn" data-animation-duration="1000">Regresar</a>
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

    </body></html>




<style>
    .u-section-1 {
        background-image: url("assets/img/login.jpg");
    }

</style>


<%
    }}
    
%>



