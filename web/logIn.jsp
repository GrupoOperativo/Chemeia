<%-- 
    Document   : logIn
    Created on : 28 mar 2023, 07:16:18
    Author     : alumno
--%>

<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN</title>
        <link rel="apple-touch-icon" href="assets/img/chemeia.png">
    <link rel="icon" href="assets/img/chemeiaP.png" type="image/png">
    
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/templatemo.css">
    <link rel="stylesheet" href="assets/css/custom.css">
    <link rel="stylesheet" href="assets/css/inicio.css">
    
    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="assets/css/fontawesome.min.css">
        
        <script>
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
            function Recuperar(){
                window.open("perdida.html", "Ventana emergente", "width=400,height=300");
            }
            var la1=document.getElementById("lab1");
            var la2=document.getElementById("text");
            la2.textContent=la1;
        </script>
    </head>
    <body>
        
<nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
        <div class="container text-light">
            <div class="w-100 d-flex justify-content-between">
                <div>
                    <i class="fa fa-envelope mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="mailto:info@company.com">tdagrupooperativo@gmail.com</a>
                    <i class="fa fa-phone mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="tel:010-020-0340">010-020-0340</a>
                </div>
                <div>
                    <a class="text-light" href="https://fb.com/templatemo" target="_blank" rel="sponsored"><i class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://www.instagram.com/" target="_blank"><i class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://twitter.com/" target="_blank"><i class="fab fa-twitter fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://www.linkedin.com/" target="_blank"><i class="fab fa-linkedin fa-sm fa-fw"></i></a>
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
                            <a class="nav-link" href="index.html">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about.html">About us</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="shop.html">Shop</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contact.html">Contact</a>
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
    <!-- Close Header -->

    <!-- Modal -->
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
    <br><br><br><br><br><br><br><br>
        <div class="cabecera">
            <h1>Iniciar sesión</h1>
        </div>
    
        <div class="formulario">
            <img src="assets/img/chemeia.png" alt="chemeia" style="height: 70px">
            <form method="post" action="validar.jsp">
                <div class="username">
                    <input type="text" required name="usuario" autofocus>
                    <label>Nombre de usuario</label>
                </div>
                <div class="username">
                    <input type="password" required name="contra" id="pass1"> <!-- Agrega el atributo "id" -->
                    <label>Contraseña</label>
                    <span class="icono-ojo" onclick="togglePasswordVisibility('pass1')">&#128065;</span>
                </div>
                
                <%
                        String error = request.getParameter("e");
                        if(error != null){
                            out.println("<div class='la'>");
                            out.println("<label  style=\'color:red;\'>" + error + "</label>");
                            out.println("</div>");}
                            
                %>
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
    </body>
</html>
