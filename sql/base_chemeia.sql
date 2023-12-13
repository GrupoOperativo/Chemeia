CREATE DATABASE IF NOT EXISTS chemeia
DEFAULT CHARACTER SET 'utf8mb4'
COLLATE 'utf8mb4_spanish_ci';

CREATE TABLE IF NOT EXISTS `chemeia`.`usuarios` (
  idUsuario INT NOT NULL AUTO_INCREMENT,
  nomUsuario VARCHAR(40) NOT NULL,
  contUsuario VARCHAR(200) NOT NULL,
  correoUsuario VARCHAR(200) NOT NULL,
  admini INT(1),
  PRIMARY KEY (idUsuario),
  UNIQUE INDEX nomUsuario_UNIQUE (nomUsuario ASC) );
  USE chemeia;	
  select * from usuarios;
  CREATE TABLE IF NOT EXISTS `chemeia`.`mensajes` (
		idMensaje INT NOT NULL AUTO_INCREMENT,
		idUsuario INT NOT NULL,
		nomUsuario VARCHAR(15) NOT NULL,
		correoUsuario VARCHAR(50) NOT NULL,
		contUsuario VARCHAR(20),
        detalleMensaje VARCHAR(50),
		fechaMensaje datetime,
		primary key(idMensaje));
  CREATE TABLE IF NOT EXISTS `chemeia`.`juego` (
  idPregunta INT NOT NULL AUTO_INCREMENT,
  opc1 VARCHAR(50) ,
  opc2 VARCHAR(50) ,
  opcCorrecta VARCHAR(50) ,
  explicacion VARCHAR(200),
  pregunta VARCHAR(90),
  idUsuario INT,
  PRIMARY KEY (idPregunta),
  foreign key (idUsuario) references usuarios(idUsuario));
 
  INSERT INTO chemeia.juego (opc1, opc2, opcCorrecta, explicacion, pregunta)
  VALUES ('Hidruro de Cloro','Cloruro de Hidrógeno','Acido Clorihidrico','La fórmula HCl corresponde al 
  compuesto conocido como ácido clorhídrico, donde el hidrógeno (H) actúa como ion positivo 
  (catión) y el cloro (Cl) como ion negativo (anión).', 'Dada la fórmula semidesarrollada HCl, ¿cuál es el 
  nombre correcto de este compuesto?');
  INSERT INTO chemeia.juego (opc1, opc2, opcCorrecta, explicacion, pregunta)
  VALUES('Ácido Carbónico','Carbonato de Oxígeno','Dióxido de Carbono','La fórmula CO₂ corresponde al 
  compuesto conocido como dióxido de carbono. En esta fórmula, el carbono (C) actúa como catión y el oxígeno (O₂) 
  como anión.','Dada la fórmula semidesarrollada CO₂, ¿cuál es el nombre correcto de este compuesto?');
  INSERT INTO chemeia.juego (opc1, opc2, opcCorrecta, explicacion, pregunta)
  VALUES('Hidruro de Sodio','Oxihidrógeno de Sodio','Hidróxido de Sodio','La fórmula NaOH corresponde al compuesto 
  conocido como sodio hidróxido, donde el sodio (Na) actúa como catión y el hidróxido (OH) como anión.','Dada la 
  fórmula semidesarrollada NaOH, ¿cuál es el nombre correcto de este compuesto?');
  INSERT INTO chemeia.juego (opc1, opc2, opcCorrecta, explicacion, pregunta)
  VALUES('Sulfuro de oxígeno','Óxido de azufre (IV)','Trióxido de azufre','La fórmula SO₃ corresponde al 
  compuesto conocido como trióxido de azufre. En esta fórmula, el azufre (S) actúa como catión y el oxígeno (O₃) 
  como anión.','Dada la fórmula semidesarrollada SO₃, ¿cuál es el nombre correcto de este compuesto?');
  INSERT INTO chemeia.juego (opc1, opc2, opcCorrecta, explicacion, pregunta)
  VALUES('Magnesio dicloruro','Cloruro magnésico','Cloruro de magnesio','La fórmula MgCl₂ corresponde al compuesto 
  conocido como cloruro de magnesio, donde el magnesio (Mg) actúa como catión y el cloro (Cl₂) como anión.','Dada 
  la fórmula semidesarrollada MgCl₂, ¿cuál es el nombre correcto de este compuesto?');
  INSERT INTO chemeia.juego (opc1, opc2, opcCorrecta, explicacion, pregunta)
  VALUES('Hierro óxido','Óxido férrico','Óxido de hierro (II)','La fórmula FeO corresponde al compuesto conocido como 
  óxido de hierro (II). En esta fórmula, el hierro (Fe) actúa como catión y el oxígeno (O) como anión.','Dada la 
  fórmula semidesarrollada FeO, ¿cuál es el nombre correcto de este compuesto?');
  INSERT INTO chemeia.juego (opc1, opc2, opcCorrecta, explicacion, pregunta)
  VALUES('Carbonato de nitrógeno','Nitrito de calcio','Nitrato de calcio','La fórmula Ca(NO₃)₂ corresponde al 
  compuesto conocido como nitrato de calcio. En esta fórmula, el calcio (Ca) actúa como catión y el nitrato (NO₃) 
  como anión.','Dada la fórmula semidesarrollada Ca(NO₃)₂, ¿cuál es el nombre correcto de este compuesto?');
  INSERT INTO chemeia.juego (opc1, opc2, opcCorrecta, explicacion, pregunta)
  VALUES('Ácido sulfúrico','Sulfito de hidrógeno','Ácido sulfuroso','La fórmula H₂SO₃ corresponde al compuesto 
  conocido como ácido sulfuroso. En esta fórmula, el azufre (S) actúa como catión y el oxígeno (O₃) como 
  anión.', 'Dada la fórmula semidesarrollada H₂SO₃, ¿cuál es el nombre correcto de este compuesto?');
  INSERT INTO chemeia.juego (opc1, opc2, opcCorrecta, explicacion, pregunta)
  VALUES('Amoniuro de cloro',' Amoniuro clorhídrico',' Cloruro de amonio','La fórmula NH₄Cl corresponde al compuesto 
  conocido como cloruro de amonio. En esta fórmula, el amonio (NH₄) actúa como catión y el cloro (Cl) como 
  anión.','Dada la fórmula semidesarrollada NH₄Cl, ¿cuál es el nombre correcto de este compuesto?');
  INSERT INTO chemeia.juego (opc1, opc2, opcCorrecta, explicacion, pregunta)
  VALUES('Oxihidrógeno de calcio','Hidruro de oxígeno','Hidróxido de calcio','La fórmula Ca(OH)₂ corresponde al 
  compuesto conocido como hidróxido de calcio. En esta fórmula, el calcio (Ca) actúa como catión y el hidroxilo 
  (OH) como anión.','Dada la fórmula semidesarrollada Ca(OH)₂, ¿cuál es el nombre correcto de este compuesto?');
  INSERT INTO chemeia.juego (opc1, opc2, opcCorrecta, explicacion, pregunta)
  VALUES('Fosfuro de hidrógeno','Fosfito de hidrógeno','Ácido fosfórico','La fórmula H₃PO₄ corresponde al compuesto 
  conocido como ácido fosfórico. En esta fórmula, el fósforo (P) actúa como catión y el oxígeno (O₄) como 
  anión.','Dada la fórmula semidesarrollada H₃PO₄, ¿cuál es el nombre correcto de este compuesto?');
  INSERT INTO chemeia.juego (opc1, opc2, opcCorrecta, explicacion, pregunta)
  VALUES('Dicarbonato de potasio','Carbonato dicálcico','Carbonato de potasio', 'La fórmula K₂CO₃ corresponde 
  al compuesto conocido como carbonato de potasio. En esta fórmula, el potasio (K) actúa como catión y el carbonato 
  (CO₃) como anión.','Dada la fórmula semidesarrollada K₂CO₃, ¿cuál es el nombre correcto de este compuesto?');
  
  CREATE TABLE IF NOT EXISTS `chemeia`.`historial` (
  idConsulta INT NOT NULL AUTO_INCREMENT,
  formula VARCHAR(10),
  nombreCompuesto VARCHAR(50) ,
  fecha_y_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  idUsr INT,
  PRIMARY KEY (idConsulta),
  foreign key (idUsr) references usuarios(idUsuario));
  
  CREATE TABLE IF NOT EXISTS `chemeia`.`puntaje` (
  idPuntaje INT NOT NULL AUTO_INCREMENT,
  idUsuario INT,
  nomUsuario VARCHAR(40),
  respuestaCorrecta BOOLEAN,
  fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (idPuntaje),
  FOREIGN KEY (idUsuario) REFERENCES usuarios(idUsuario),
  FOREIGN KEY (nomUsuario) REFERENCES usuarios(nomUsuario)
);

INSERT INTO usuarios values(
	null, 
    "Dante",
    "111351135113511340|17",
    "10226524343425730069359339931090|919",
    1);
use chemeia;
select * from usuarios;	