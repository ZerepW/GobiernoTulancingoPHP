CREATE DATABASE TRANSPARENCIA;
USE TRANSPARENCIA;

CREATE TABLE usuario(
	idUsuario int NOT NULL AUTO_INCREMENT,
	nombreUsuario varchar(30),
	passwordUsuario varchar(30),
	PRIMARY KEY(idUsuario)
);

CREATE TABLE fraccion(
	idFraccion int NOT NULL AUTO_INCREMENT,
	articulo int,
	fraccion int,
	indice varchar(1) DEFAULT 'A',
	descripcion text,
	PRIMARY KEY(idFraccion)
);

CREATE TABLE tabla(
	idTabla int NOT NULL AUTO_INCREMENT,
	idFraccion int,
	actualizacion datetime,
	enlaceWeb varchar(255),
	enlaceDescarga varchar(255),
	PRIMARY KEY(idTabla),
	FOREIGN KEY(idFraccion) REFERENCES fraccion(idFraccion) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('1', '69', '1', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('2', '69', '2', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('3', '69', '3', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('4', '69', '4', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('5', '69', '5', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('6', '69', '6', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('7', '69', '7', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('8', '69', '8', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('9', '69', '9', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('10', '69', '9', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('11', '69', '10', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('12', '69', '10', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('13', '69', '11', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('14', '69', '12', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('15', '69', '13', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('16', '69', '14', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('17', '69', '14', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('18', '69', '15', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('19', '69', '15', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('20', '69', '16', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('21', '69', '16', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('22', '69', '17', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('23', '69', '18', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('24', '69', '19', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('25', '69', '20', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('26', '69', '21', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('27', '69', '21', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('28', '69', '21', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('29', '69', '22', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('30', '69', '23', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('31', '69', '23', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('32', '69', '23', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('33', '69', '24', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('34', '69', '25', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('35', '69', '26', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('36', '69', '27', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('37', '69', '28', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('38', '69', '28', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('39', '69', '29', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('40', '69', '30', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('41', '69', '31', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('42', '69', '32', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('43', '69', '33', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('44', '69', '34', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('45', '69', '34', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('46', '69', '34', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('47', '69', '34', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('48', '69', '34', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('49', '69', '34', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('50', '69', '34', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('51', '69', '35', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('52', '69', '35', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('53', '69', '35', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('54', '69', '36', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('55', '69', '37', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('56', '69', '38', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('57', '69', '38', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('58', '69', '39', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('59', '69', '39', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('60', '69', '39', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('61', '69', '39', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('62', '69', '40', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('63', '69', '40', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('64', '69', '41', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('65', '69', '41', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('66', '69', '41', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('67', '69', '41', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('68', '69', '42', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('69', '69', '42', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('70', '69', '43', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('71', '69', '43', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('72', '69', '44', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('73', '69', '44', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('74', '69', '45', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('75', '69', '46', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('76', '69', '46', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('77', '69', '47', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('78', '69', '48', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('79', '69', '48', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('80', '69', '48', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('81', '69', '48', '');

INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('82', '70', '1', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('83', '70', '2', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('84', '70', '2', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('85', '70', '3', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('86', '70', '4', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('87', '70', '4', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('88', '70', '5', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('89', '70', '5', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('90', '70', '5', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('91', '70', '6', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('92', '70', '6', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('93', '70', '6', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('94', '70', '6', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('95', '70', '6', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('96', '70', '6', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('97', '70', '7', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('98', '71', '1', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('99', '71', '2', '');
INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `descripcion`) VALUES ('100', '71', '2', '');





INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '1', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '2', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '3', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '4', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '5', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '6', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '7', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '8', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '9', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '10', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '11', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '12', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '13', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '14', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '15', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '16', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '17', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '18', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '19', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '20', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '21', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '22', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '23', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '24', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '25', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '26', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '27', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '28', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '29', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '30', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '31', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '32', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '33', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '34', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '35', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '36', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '37', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '38', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '39', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '40', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '41', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '42', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '43', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '44', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '45', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '46', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '47', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '48', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '49', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '50', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '51', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '52', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '53', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '54', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '55', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '56', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '57', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '58', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '59', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '60', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '61', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '62', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '63', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '64', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '65', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '66', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '67', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '68', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '69', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '70', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '71', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '72', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '73', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '74', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '75', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '76', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '77', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '78', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '79', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '80', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '81', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '82', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '83', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '84', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '85', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '86', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '87', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '88', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '89', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '90', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '91', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '92', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '93', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '94', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '95', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '96', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '97', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '98', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '99', '2017-11-27 00:00:00', NULL, NULL);
INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES (NULL, '100', '2017-11-27 00:00:00', NULL, NULL);
