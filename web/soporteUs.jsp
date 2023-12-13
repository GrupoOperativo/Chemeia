<%-- 
    Document   : soporteUs
    Created on : 10 dic 2023, 14:51:00
    Author     : dante
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,datos.conexion"%>
<head>
    <%
        HttpSession sesion = request.getSession();
        if (sesion.getAttribute("usuario") == null) {
            String e = "Favor de autenticarse";
            response.sendRedirect("logIn.jsp?e=" + e + "");
        }
        else{
            String nombre = sesion.getAttribute("usuario").toString();
            Connection conn = null;
            ResultSet res = null;
            int administra = 0;
            PreparedStatement pstmt = null;
            conexion conecta = new conexion();
            conn = conecta.conectar();
            pstmt = conn.prepareStatement("select * from usuarios where nomUsuario = ?");
            pstmt.setString(1, nombre);
            res = pstmt.executeQuery();
            if (res.next()) {
                String nom = res.getString("nomUsuario");   
                administra = res.getInt("admin");
        
        
    %>




    <title>Chemeia</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="assets/img/chemeia.png">
    <link rel="icon" href="assets/img/chemeiaP.png" type="image/png">

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/templatemo.css">
    <link rel="stylesheet" href="assets/css/soporte.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="assets/css/fontawesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
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
                Chemeia<%if(administra == 1)out.println(": Admin");%>
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
                        <%if(administra == 1){%>
                        <li class="nav-item">
                            <a class="nav-link" href="mensajes.jsp">Solicitudes</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="soporteAdm.jsp">Mensajes</a>
                        </li><%}else{%>
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
                        </li><%}%>

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


    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <div id="chat-container">
        <div id="chat"></div>
        <div class="clearfix">
            <input type="text" id="messageInput" placeholder="Escribe tu mensaje">
            <button id="sendButton" onclick="sendMessage()">Enviar</button>
        </div>
        <%if(administra == 1){%>
        <div class="text-container">
            <input type="text" id="editableText" value="Responderás a: Todos" readonly>
        </div><%}%>
    </div>

    <script>
        const socket = new WebSocket(`ws://localhost:3000`);
        const nombree = "<%=nom%>";
        const admin = "<%=administra%>";
        var extra;

        <%}}%>
//sesion.getAttribute("usuario")
        socket.onmessage = (event) => {
            const chat = document.getElementById('chat');
            const messageData = String(event.data);
            const partes = messageData.split(':');
            const cont = quitarCaracteresEspeciales(partes[2].trim());
            const partes2 = cont.split(',');
            const contenido = quitarDespuesUltimaComa(cont);
            const admini = quitarCaracteresEspeciales(partes[3]);
            const nomm = (partes[1].trim()).split(',');
            const nombre = quitarCaracteresEspeciales(nomm[0]);
            extra = "";
            var  conta = 0;

            function quitarCaracteresEspeciales(cadena) {
                return cadena.replace(/['"{}]/g, '');
            }
            function quitarDespuesUltimaComa(cadena) {
                var ultimaComa = cadena.lastIndexOf(',');
                if (ultimaComa !== -1) {
                    cadena = cadena.substring(0, ultimaComa);
                }

                return cadena;
            }
            console.log(admini);
            if (admin === "1") {
                const editableText = document.getElementById('editableText');
                editableText.value = "Responder a: " + "Administradores";
                const messageContainer = document.createElement('div');
                if (nombre === nombree)
                    messageContainer.textContent = "Yo: " + contenido;
                else {
                    messageContainer.textContent = nombre + ": " + contenido;
                    const button = document.createElement('button');
                    button.textContent = 'Responder a: ' + nombre;
                    button.classList.add('extractButton');
                    button.onclick = function () {
                        var resp;
                        const botonesExtract = document.getElementsByClassName('extractButton');
                        for (let i = 0; i < botonesExtract.length; i++) {
                            const boton = botonesExtract[i];

                            // Agrega un manejador de clic a cada botón
                            boton.addEventListener('click', function () {
                                // Obtiene el contenido después de ":" del botón actual
                                const contenidoBoton = boton.textContent.split(':')[1].trim();
                                conta ++;
                               
                                // Modifica el valor del input con el contenido obtenido
                                editableText.value = "Responder a: " + contenidoBoton;
                                extra = contenidoBoton.toString();
                                if (conta === 2){
                                    editableText.value = "Responder a: Administradores";
                                    extra = "";
                                    conta = 0;
                                }
                                // Puedes realizar acciones adicionales con el contenido del botón aquí
                                // Por ejemplo, si deseas enviar el contenido a algún otro lugar, llamar a funciones, etc.
                                console.log('Responder a: ', contenidoBoton);
                            });
                        }
                    };
                    chat.appendChild(messageContainer);
                    messageContainer.appendChild(button);
                }
                chat.appendChild(messageContainer);
            } else if (nombre === nombree) {
                extra = "";
                const messageContainer = document.createElement('div');
                messageContainer.textContent = "Yo: " + contenido;
                chat.appendChild(messageContainer);
                console.log("funciona");
            } else if (admini.split('/')[0] === "1" && admini.split('/')[1] === nombree) {
                extra = "";
                const messageContainer = document.createElement('div');

                messageContainer.textContent = "ADMIN: " + contenido;
                chat.appendChild(messageContainer);
                console.log("funciona");
            }


        };
        function sendMessage() {
            const input = document.getElementById('messageInput');
            const message = input.value.trim();
            if (message !== '') {
                const messageData = {
                    nombre: nombree,
                    contenido: message,
                    admin: admin + "/" + extra
                };
                socket.send(JSON.stringify(messageData));
                input.value = '';
            }
        }



        document.getElementById('messageInput').addEventListener('keyup', function (event) {
            if (event.key === 'Enter') {
                sendMessage();
            }
        });
    </script>

    <style>
        button.extractButton {
            padding: 8px;
            background-color: #59ab6e;
            color: #ffffff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button.extractButton:hover {
            background-color: #4c8d5c;
        }
    </style>



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
