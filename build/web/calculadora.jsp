<%-- 
    Document   : calculadora
    Created on : 23 nov 2023, 18:26:30
    Author     : dante
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script>
    function addElement(element) {
        var textBox = document.getElementById('prompt');
        textBox.value += element;
        textBox.focus();
    }
</script>
<head>
    <title>Calculadora</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="assets/css/calculadora.css">
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
                        <li class="nav-item">
                            <a class="nav-link" href="chatbot.html">ChatBot</a>
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
    <image 
        <br><br>
    <img src="assets/img/chemeia.png" alt="Chemeia">
    <br>

    <div class="contenedor">
        <input  placeholder="Introduce un compuesto" type="text" id="prompt"  autofocus="autofocus" maxlength="30">
        <br><br>
        <button id="generate">Calcular</button>

        <p id="output"></p>
        
        <div class="periodic-table">

            <div class="columna">
                <button class="element-button" onclick="addElement('H')">H</button>
                <button class="element-button right-align" onclick="addElement('He')">He</button>
            </div>
            <div class="columna">
                <button class="element-button" onclick="addElement('Li')">Li</button>
                <button class="element-button" onclick="addElement('Be')">Be</button>

                <button class="element-button right-align" onclick="addElement('B')">B</button>
                <button class="element-button" onclick="addElement('C')">C</button>
                <button class="element-button" onclick="addElement('N')">N</button>
                <button class="element-button" onclick="addElement('O')">O</button>
                <button class="element-button" onclick="addElement('F')">F</button>
                <button class="element-button" onclick="addElement('Ne')">Ne</button>
            </div>
            <div class="columna">
                <button class="element-button" onclick="addElement('Na')">Na</button>
                <button class="element-button" onclick="addElement('Mg')">Mg</button>

                <button class="element-button right-align" onclick="addElement('Al')">Al</button>
                <button class="element-button" onclick="addElement('Si')">Si</button>
                <button class="element-button" onclick="addElement('P')">P</button>
                <button class="element-button" onclick="addElement('S')">S</button>
                <button class="element-button" onclick="addElement('Cl')">Cl</button>
            </div>
            <div class="columna">
                <button class="element-button" onclick="addElement('K')">K</button>
                <button class="element-button" onclick="addElement('Ca')">Ca</button>
                <button class="element-button" onclick="addElement('Sc')">Sc</button>
                <button class="element-button" onclick="addElement('Ti')">Ti</button>
                <button class="element-button" onclick="addElement('V')">V</button>
                <button class="element-button" onclick="addElement('Cr')">Cr</button>
                <button class="element-button" onclick="addElement('Mn')">Mn</button>
                <button class="element-button" onclick="addElement('Fe')">Fe</button>
                <button class="element-button" onclick="addElement('Co')">Co</button>
                <button class="element-button" onclick="addElement('Ni')">Ni</button>
                <button class="element-button" onclick="addElement('Cu')">Cu</button>
                <button class="element-button" onclick="addElement('Zn')">Zn</button>
                <button class="element-button" onclick="addElement('Ga')">Ga</button>
                <button class="element-button" onclick="addElement('Ge')">Ge</button>
                <button class="element-button" onclick="addElement('As')">As</button>
                <button class="element-button" onclick="addElement('Se')">Se</button>
                <button class="element-button" onclick="addElement('Br')">Br</button>
                <button class="element-button" onclick="addElement('Kr')">Kr</button>
            </div>
            <div class="columna">
                <button class="element-button" onclick="addElement('Rb')">Rb</button>
                <button class="element-button" onclick="addElement('Sr')">Sr</button>
                <button class="element-button" onclick="addElement('Y')">Y</button>
                <button class="element-button" onclick="addElement('Zr')">Zr</button>
                <button class="element-button" onclick="addElement('Nb')">Nb</button>
                <button class="element-button" onclick="addElement('Mo')">Mo</button>
                <button class="element-button" onclick="addElement('Tc')">Tc</button>
                <button class="element-button" onclick="addElement('Ru')">Ru</button>
                <button class="element-button" onclick="addElement('Rh')">Rh</button>
                <button class="element-button" onclick="addElement('Pd')">Pd</button>
                <button class="element-button" onclick="addElement('Ag')">Ag</button>
                <button class="element-button" onclick="addElement('Cd')">Cd</button>
                <button class="element-button" onclick="addElement('In')">In</button>
                <button class="element-button" onclick="addElement('Sn')">Sn</button>
                <button class="element-button" onclick="addElement('Sb')">Sb</button>
                <button class="element-button" onclick="addElement('Te')">Te</button>
                <button class="element-button" onclick="addElement('I')">I</button>
                <button class="element-button" onclick="addElement('Xe')">Xe</button>
            </div>
            <div class="columna">
                <button class="element-button" onclick="addElement('Cs')">Cs</button>
                <button class="element-button" onclick="addElement('Ba')">Ba</button>
                <button class="element-button" onclick="addElement('La')">La</button>
                <button class="element-button" onclick="addElement('Hf')">Hf</button>
                <button class="element-button" onclick="addElement('Ta')">Ta</button>
                <button class="element-button" onclick="addElement('W')">W</button>
                <button class="element-button" onclick="addElement('Re')">Re</button>
                <button class="element-button" onclick="addElement('Os')">Os</button>
                <button class="element-button" onclick="addElement('Ir')">Ir</button>
                <button class="element-button" onclick="addElement('Pt')">Pt</button>
                <button class="element-button" onclick="addElement('Au')">Ag</button>
                <button class="element-button" onclick="addElement('Hg')">Hg</button>
                <button class="element-button" onclick="addElement('Tl')">Tl</button>
                <button class="element-button" onclick="addElement('Pb')">Pb</button>
                <button class="element-button" onclick="addElement('Bi')">Bi</button>
                <button class="element-button" onclick="addElement('Po')">Po</button>
                <button class="element-button" onclick="addElement('At')">At</button>
                <button class="element-button" onclick="addElement('Rn')">Rn</button>
            </div>
            <div class="columna">
                <button class="element-button" onclick="addElement('Fr')">Fr</button>
                <button class="element-button" onclick="addElement('Ra')">Ra</button>
                <button class="element-button" onclick="addElement('Ac')">Ac</button>
                <button class="element-button" onclick="addElement('Rf')">Rf</button>
                <button class="element-button" onclick="addElement('Db')">Db</button>
                <button class="element-button" onclick="addElement('Sg')">Sg</button>
                <button class="element-button" onclick="addElement('Bh')">Bh</button>
                <button class="element-button" onclick="addElement('Hs')">Hs</button>
                <button class="element-button" onclick="addElement('Mt')">Mt</button>
                <button class="element-button" onclick="addElement('Ds')">Ds</button>
                <button class="element-button" onclick="addElement('Rg')">Rg</button>
                <button class="element-button" onclick="addElement('Cn')">Cn</button>
                <button class="element-button" onclick="addElement('Nh')">Nh</button>
                <button class="element-button" onclick="addElement('Fl')">Fl</button>
                <button class="element-button" onclick="addElement('Mc')">Mc</button>
                <button class="element-button" onclick="addElement('Lv')">Lv</button>
                <button class="element-button" onclick="addElement('Ts')">Ts</button>
                <button class="element-button" onclick="addElement('Og')">Og</button>
            </div>

        </div>
    </div>

    <br><br><br><br><br>

    <footer class="bg-dark" id="tempaltemo_footer">
        <div class="container">
            <div class="row">

                <div class="col-md-4 pt-5">
                    <h2 class="h2 text-success border-bottom pb-3 border-light logo">Chemeia</h2>
                    <ul class="list-unstyled text-light footer-link-list">
                        <li>
                            <i class="fas fa-map-marker-alt fa-fw"></i>
                            CECyT 9 JDB
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
                            | Diseñado por <a rel="sponsored" href="index.html" target="_blank">Grupo Operativo</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>

    </footer>
    <script src="assets/js/API_Calculadora.js"></script>
    <script src="assets/js/jquery-1.11.0.min.js"></script>
    <script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/templatemo.js"></script>
    <script src="assets/js/custom.js"></script>
</body>

</html>