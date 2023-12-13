
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
                                <a class="nav-link" href="soporteAdm.jsp">Mensajes</a>
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
<body>
    <div id="chat-container">
        <div id="chat"></div>
        <div class="clearfix">
            <input type="text" id="messageInput" placeholder="Escribe tu mensaje">
            <button id="sendButton" onclick="sendMessage()">Enviar</button>
        </div>
    </div>

    <script>
        const socket = new WebSocket(`ws://localhost:3000`);

        socket.onmessage = (event) => {
            const chat = document.getElementById('chat');
            const messageData = JSON.parse(event.data);

            const messageContainer = document.createElement('div');
            messageContainer.classList.add('message-container');

            const userInfo = document.createElement('span');
            userInfo.classList.add('user-info');
            userInfo.textContent = `${messageData.nom}: `;
            messageContainer.appendChild(userInfo);

            const messageContent = document.createElement('span');
            messageContent.classList.add('message-content');
            messageContent.textContent = messageData.message;
            messageContainer.appendChild(messageContent);

            const replyButton = document.createElement('button');
            replyButton.classList.add('reply-button');
            replyButton.innerHTML = '<i class="fas fa-reply"></i> Responder';
            replyButton.onclick = () => replyToMessage(messageData.id);
            messageContainer.appendChild(replyButton);

            chat.appendChild(messageContainer);
        };

        function sendMessage() {
            const input = document.getElementById('messageInput');
            const message = input.value;
            if (message.trim() !== '') {
                socket.send(JSON.stringify({ message: message, nom: 'NombreUsuario' }));
                input.value = '';
            }
        }

        function replyToMessage(messageId) {
            // Lógica para manejar la respuesta al mensaje con el ID messageId
            alert(`Responder al mensaje con ID ${messageId}`);
        }

        // Manejar el evento de presionar "Enter" para enviar el mensaje
        document.getElementById('messageInput').addEventListener('keyup', function (event) {
            if (event.key === 'Enter') {
                sendMessage();
            }
        });
    </script>
</body>
</html>



<style>
    /* Estilos del chat */
#chat-container {
    font-family: 'Arial', sans-serif;
    background-color: #f4f4f4;
    padding: 20px;
    margin: 0 auto; /* Centra el contenedor en el eje horizontal */
    max-width: 60%; /* Limita el ancho al 60% de la ventana */
}

#chat {
    border: 1px solid #ccc;
    padding: 10px;
    max-height: 300px;
    overflow-y: scroll;
    background-color: #fff;
    margin-bottom: 10px;
}

#chat p {
    margin-bottom: 5px;
    padding: 5px;
    background-color: #e0e0e0;
    border-radius: 5px;
}

/* Estilos del formulario de mensajes */
#messageInput {
    padding: 5px;
    margin-right: 5px;
}

#sendButton {
    padding: 10px 16px;
    background-color: #59ab6e; /* Color principal del botón */
    color: #fff;
    border: none;
    cursor: pointer;
    border-radius: 3px;
    transition: background-color 0.3s ease; /* Agrega una transición al color de fondo */
}

#sendButton:hover {
    background-color: #4c975c; /* Color hover (puedes ajustar este valor según tus preferencias) */
}

/* Clearfix para manejar elementos flotantes dentro de #chat-container */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
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