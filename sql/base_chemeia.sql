CREATE DATABASE IF NOT EXISTS chemeia
DEFAULT CHARACTER SET 'utf8mb4'
COLLATE 'utf8mb4_spanish_ci';

CREATE TABLE IF NOT EXISTS `chemeia`.`usuarios` (
  idUsuario INT NOT NULL AUTO_INCREMENT,
  nomUsuario VARCHAR(15) NOT NULL,
  contUsuario VARCHAR(20) NOT NULL,
  correoUsuario VARCHAR(50) NOT NULL,
  admini INT(1),
  PRIMARY KEY (idUsuario),
  UNIQUE INDEX nomUsuario_UNIQUE (nomUsuario ASC) VISIBLE);