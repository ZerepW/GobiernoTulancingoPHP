-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-11-2017 a las 14:18:50
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `transparencia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fraccion`
--

CREATE TABLE `fraccion` (
  `idFraccion` int(11) NOT NULL,
  `articulo` int(11) DEFAULT NULL,
  `fraccion` int(11) DEFAULT NULL,
  `indice` varchar(1) NOT NULL DEFAULT 'A',
  `descripcion` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `fraccion`
--

INSERT INTO `fraccion` (`idFraccion`, `articulo`, `fraccion`, `indice`, `descripcion`) VALUES
(1, 69, 1, 'A', 'I. El marco normativo aplicable al sujeto obligado, en el que deberá incluirse leyes, códigos, reglamentos, decretos de creación, manuales administrativos, reglas de operación, criterios, políticas, entre otros;'),
(2, 69, 2, 'A', 'II. Su estructura orgánica completa, en un formato que permita vincular cada parte de la estructura, las atribuciones y responsabilidades que le corresponden a cada servidor público, prestador de servicios profesionales o miembro de los sujetos obligados, de conformidad con las disposiciones aplicables;'),
(3, 69, 3, 'A', 'III. Las facultades y atribuciones de cada área;'),
(4, 69, 4, 'A', 'IV. Las metas y objetivos de las áreas, de conformidad con sus programas operativos;'),
(5, 69, 5, 'A', 'V. Los indicadores relacionados con temas de interés público o trascendencia social que conforme a sus funciones, deban establecer;'),
(6, 69, 6, 'A', 'VI. Los indicadores que permitan rendir cuenta de sus objetivos y resultados;'),
(7, 69, 7, 'A', 'VII. El directorio de todos los servidores públicos, a partir del nivel de jefe de departamento o su equivalente, o de menor nivel, cuando se brinde atención al público; manejen o apliquen recursos públicos; realicen actos de autoridad o presten servicios profesionales bajo el régimen de confianza u honorarios y personal de base.'),
(8, 69, 8, 'A', 'VIII. La remuneración bruta y neta de todos los servidores públicos de base o de confianza, de todas las percepciones, incluyendo sueldos, prestaciones, gratificaciones, primas, comisiones, dietas, bonos, estímulos, ingresos y sistemas de compensación, señalando la periodicidad de dicha remuneración;'),
(9, 69, 9, 'A', 'IXa. Los gastos de representación y viáticos, así como el objeto e informe de comisión correspondiente; <b>Gastos de viáticos.</b>'),
(10, 69, 9, 'B', 'IXb. Los gastos de representación y viáticos, así como el objeto e informe de comisión correspondiente; <b>Gastos de representación.</b>'),
(11, 69, 10, 'A', 'Xa. El número total de las plazas y del personal de base y confianza, especificando el total de las vacantes, por nivel de puesto, para cada unidad administrativa. <b>Plazas vacantes del personal de base y confianza.</b>'),
(12, 69, 10, 'B', 'Xb. El número total de las plazas y del personal de base y confianza, especificando el total de las vacantes, por nivel de puesto, para cada unidad administrativa. <b>Total de plazas vacantes y ocupadas del personal de base y confianza.</b>'),
(13, 69, 11, 'A', 'XI. Las contrataciones de servicios profesionales por honorarios, señalando los nombres de los prestadores de servicios, los servicios contratados, el monto de los honorarios y el periodo de contratación.'),
(14, 69, 12, 'A', 'XII. La información en versión pública de las declaraciones patrimoniales de los Servidores Públicos que así lo determinen, en los sistemas habilitados para ello, de acuerdo a la normatividad aplicable;'),
(15, 69, 13, 'A', 'XIII. El domicilio de la Unidad de Transparencia, además de la dirección electrónica donde podrán recibirse las solicitudes para obtener la información;'),
(16, 69, 14, 'A', 'XIVa. Las convocatorias a concursos para ocupar cargos públicos y los resultados de los mismos; <b>Convocatorias a concursos para ocupar cargos publicos.</b>'),
(17, 69, 14, 'B', 'XIVb. Las convocatorias a concursos para ocupar cargos públicos y los resultados de los mismos; <b>Denominación del sistema electrónico de convocatorias y/o concursos.</b>'),
(18, 69, 15, 'A', 'XVa. La información de los programas de subsidios, estímulos y apoyos, en el que se deberá informar respecto de los programas de transferencia, de servicios, de infraestructura social y de subsidio. <b>Programas sociales desarrollados.</b>'),
(19, 69, 15, 'B', 'XVb. La información de los programas de subsidios, estímulos y apoyos, en el que se deberá informar respecto de los programas de transferencia, de servicios, de infraestructura social y de subsidio. <b>Padrón de beneficiarios.</b>'),
(20, 69, 16, 'A', 'XVIa. Las condiciones generales de trabajo, contratos o convenios que regulen las relaciones laborales del personal de base o de confianza, así como los recursos públicos económicos, en especie o donativos, que sean entregados a los sindicatos y ejerzan como recursos públicos;  <b>Regulación de relaciones laborales.</b>'),
(21, 69, 16, 'B', 'XVIb. Las condiciones generales de trabajo, contratos o convenios que regulen las relaciones laborales del personal de base o de confianza, así como los recursos públicos económicos, en especie o donativos, que sean entregados a los sindicatos y ejerzan como recursos públicos; <b>Recursos públicos entregados a sindicatos.</b>'),
(22, 69, 17, 'A', 'XVII. La información curricular, desde el nivel de jefe de departamento o equivalente, hasta el titular del sujeto obligado, así como, en su caso, las sanciones administrativas de que haya sido objeto;'),
(23, 69, 18, 'A', 'XVIII. El listado de servidores públicos con sanciones administrativas definitivas, especificando la causa de sanción y la disposición;'),
(24, 69, 19, 'A', 'XIX. Los servicios que ofrecen señalando los requisitos para acceder a ellos;'),
(25, 69, 20, 'A', 'XX. Los trámites, requisitos y formatos que ofrecen;'),
(26, 69, 21, 'A', 'XXIa. La información financiera sobre el presupuesto asignado, así como los informes del ejercicio trimestral del gasto, en términos de la Ley General de Contabilidad Gubernamental y demás normatividad aplicable; <b>Información del presupuesto anual asignado.</b>'),
(27, 69, 21, 'B', 'XXIb. La información financiera sobre el presupuesto asignado, así como los informes del ejercicio trimestral del gasto, en términos de la Ley General de Contabilidad Gubernamental y demás normatividad aplicable; <b>Información financiera trimestral de gasto.</b>'),
(28, 69, 21, 'C', 'XXIc. La información financiera sobre el presupuesto asignado, así como los informes del ejercicio trimestral del gasto, en términos de la Ley General de Contabilidad Gubernamental y demás normatividad aplicable; <b>Información financiera de la Cuenta Pública.</b>'),
(29, 69, 22, 'A', 'XXII. La información relativa a la deuda pública, en términos de la normatividad aplicable;'),
(30, 69, 23, 'A', 'XXIIIa. Los montos destinados a gastos relativos a comunicación social y publicidad oficial desglosada por tipo de medio, proveedores, número de contrato y concepto o campaña; <b>Gastos de Comunicación Social o equivalente.</b>'),
(31, 69, 23, 'B', 'XXIIIb. Los montos destinados a gastos relativos a comunicación social y publicidad oficial desglosada por tipo de medio, proveedores, número de contrato y concepto o campaña; <b>Erogación de recursos por contratación de servicios de impresión, difusión y publicación.</b>'),
(32, 69, 23, 'C', 'XXIIIc. Los montos destinados a gastos relativos a comunicación social y publicidad oficial desglosada por tipo de medio, proveedores, número de contrato y concepto o campaña; <b>Utilización de los Tiempos Oficiales: tiempo de Estado y tiempo fiscal.</b>'),
(33, 69, 24, 'A', 'XXIV. Los informes de resultados de las auditorías al ejercicio presupuestal de cada sujeto obligado que se realicen y, en su caso, las aclaraciones que correspondan;'),
(34, 69, 25, 'A', 'XXV. El resultado de la dictaminación de los estados financieros;'),
(35, 69, 26, 'A', 'XXVI. Los montos, criterios, convocatorias y listado de personas físicas o morales a quienes, por cualquier motivo, se les asigne o permita usar recursos públicos o, en los términos de las disposiciones aplicables, realicen actos de autoridad. Asimismo, los informes que dichas personas les entreguen sobre el uso y destino de dichos recursos;'),
(36, 69, 27, 'A', 'XXVII. Las concesiones, contratos, convenios, permisos, licencias o autorizaciones otorgados, especificando los titulares de aquéllos, debiendo publicarse su objeto, nombre o razón social del titular, vigencia, tipo, términos, condiciones, monto y modificaciones, así como si el procedimiento involucra el aprovechamiento de bienes, servicios y/o recursos públicos;'),
(37, 69, 28, 'A', 'XXVIIIa. La información sobre los resultados sobre procedimientos de adjudicación directa, invitación restringida y licitación de cualquier naturaleza, incluyendo la versión pública del expediente respectivo y de los contratos celebrados.  <b>Resultados de procedimientos de licitación pública e invitación restringida.</b>'),
(38, 69, 28, 'B', 'XXVIIIb. La información sobre los resultados sobre procedimientos de adjudicación directa, invitación restringida y licitación de cualquier naturaleza, incluyendo la versión pública del expediente respectivo y de los contratos celebrados. <b>Resultados de procedimientos de adjudicación directa.</b>'),
(39, 69, 29, 'A', 'XXIX. Los informes que por disposición legal generen los sujetos obligados;'),
(40, 69, 30, 'A', 'XXX. Las estadísticas que generen en cumplimiento de sus facultades, competencias o funciones con la mayor desagregación posible;'),
(41, 69, 31, 'A', 'XXXI. Informe de avances programáticos o presupuestales, balances generales y su estado financiero;'),
(42, 69, 32, 'A', 'XXXII. Padrón de proveedores y contratistas;'),
(43, 69, 33, 'A', 'XXXIII. Los convenios de coordinación de concertación con los sectores social y privado;'),
(44, 69, 34, 'A', 'XXXIVa. El inventario de bienes muebles e inmuebles en posesión y propiedad; <b>Inventario de bienes muebles.</b>'),
(45, 69, 34, 'B', 'XXXIVb. El inventario de bienes muebles e inmuebles en posesión y propiedad; <b>Inventario de altas practicadas a bienes muebles.</b>'),
(46, 69, 34, 'C', 'XXXIVc. El inventario de bienes muebles e inmuebles en posesión y propiedad; <b>Inventario de bajas practicadas a bienes muebles.</b>'),
(47, 69, 34, 'D', 'XXXIVd. El inventario de bienes muebles e inmuebles en posesión y propiedad; <b> Inventario de bienes inmuebles.</b>'),
(48, 69, 34, 'E', 'XXXIVe. El inventario de bienes muebles e inmuebles en posesión y propiedad; <b>Inventario de altas practicadas a bienes inmuebles.</b>'),
(49, 69, 34, 'F', 'XXXIVf. El inventario de bienes muebles e inmuebles en posesión y propiedad; <b>Inventario de bajas practicadas a bienes inmuebles.</b>'),
(50, 69, 34, 'H', 'XXXIVh. El inventario de bienes muebles e inmuebles en posesión y propiedad; <b>Inventario de bienes muebles e inmuebles donados.</b>'),
(51, 69, 35, 'A', 'XXXVa. Las recomendaciones emitidas por los órganos públicos del Estado mexicano u organismos internacionales garantes de los derechos humanos, así como las acciones que han llevado a cabo para su atención; <b>Recomendaciones emitidas por la Comisión Nacional de Derechos Humanos u organismo.</b>'),
(52, 69, 35, 'B', 'XXXVb. Las recomendaciones emitidas por los órganos públicos del Estado mexicano u organismos internacionales garantes de los derechos humanos, así como las acciones que han llevado a cabo para su atención; <b>Casos especiales emitidos por la CNDH u otros organismos de protección de derechos.</b>'),
(53, 69, 35, 'C', 'XXXVc. Las recomendaciones emitidas por los órganos públicos del Estado mexicano u organismos internacionales garantes de los derechos humanos, así como las acciones que han llevado a cabo para su atención; <b>Recomendaciones emitidas por Organismos Internacionales.</b>'),
(54, 69, 36, 'A', 'XXXVI. Las resoluciones y laudos que se emitan en procesos o procedimientos seguidos en forma de juicio;'),
(55, 69, 37, 'A', 'XXXVII. Los mecanismos de participación ciudadana;'),
(56, 69, 38, 'A', 'XXXVIIIa. Los programas que ofrecen, incluyendo información sobre la población, objetivo y destino, así como los trámites, tiempos de respuesta, requisitos y formatos para acceder a los mismos; <b>Programas institucionales.</b>'),
(57, 69, 38, 'B', 'XXXVIIIb. Los programas que ofrecen, incluyendo información sobre la población, objetivo y destino, así como los trámites, tiempos de respuesta, requisitos y formatos para acceder a los mismos; <b>Trámites, tiempos de respuesta, requisitos y formatos para acceder a los mismos.</b>'),
(58, 69, 39, 'A', 'XXXIXa. Las actas y resoluciones del Comité de Transparencia de los sujetos obligados; <b>Informe de sesiones del Comité de Transparencia.</b>'),
(59, 69, 39, 'B', 'XXXIXb. Las actas y resoluciones del Comité de Transparencia de los sujetos obligados; <b>Informe de resoluciones del Comité de Transparencia.</b>'),
(60, 69, 39, 'C', 'XXXIXc. Las actas y resoluciones del Comité de Transparencia de los sujetos obligados; <b>Integrantes del Comité de Transparencia.</b>'),
(61, 69, 39, 'D', 'XXXIXd. Las actas y resoluciones del Comité de Transparencia de los sujetos obligados; <b>Calendario de sesiones ordinarias del Comité de Transparencia.</b>'),
(62, 69, 40, 'A', 'XLa. Todas las evaluaciones y encuestas que hagan los sujetos obligados a programas financiados con recursos públicos;  <b>Evaluaciones de programas institucionales.</b>'),
(63, 69, 40, 'B', 'XLb. Todas las evaluaciones y encuestas que hagan los sujetos obligados a programas financiados con recursos públicos; <b> Encuestas a programas financiados con recursos públicos.</b>'),
(64, 69, 41, 'A', 'XLIa. Los estudios financiados con recursos públicos;  Estudios realizados con la colaboración de Instituciones u Organismos Públicos. <b>Estudios realizados con la colaboración de Instituciones u Organismos Públicos.</b>'),
(65, 69, 41, 'B', 'XLIb. Los estudios financiados con recursos públicos; <b>Estudios elaborados en colaboración con organizaciones de los sectores social y priv.</b>'),
(66, 69, 41, 'C', 'XLIc. Los estudios financiados con recursos públicos; <b>Estudios para cuya elaboración el sujeto obligado haya contratado a organizaciones.</b>'),
(67, 69, 41, 'D', 'XLId. Los estudios financiados con recursos públicos;'),
(68, 69, 42, 'A', 'XLIIa. El listado de jubilados y pensionados y el monto que reciben; <b>Jubilados y pensionados de los Sujetos Obligados.</b>'),
(69, 69, 42, 'B', 'XLIIb. El listado de jubilados y pensionados y el monto que reciben; <b>Jubilados y pensionados reportados por los Institutos de Seguridad Social.</b>'),
(70, 69, 43, 'A', 'XLIIIa. Los ingresos recibidos por cualquier concepto señalando el nombre de los responsables de recibirlos, administrarlos y ejercerlos, así como su origen, indicando el destino final de cada uno de ellos; <b>Ingresos recibidos por cualquier concepto.</b>'),
(71, 69, 43, 'B', 'XLIIIb. Los ingresos recibidos por cualquier concepto señalando el nombre de los responsables de recibirlos, administrarlos y ejercerlos, así como su origen, indicando el destino final de cada uno de ellos; <b>Responsables de recibir, administrar y ejercer los ingresos.</b>'),
(72, 69, 44, 'A', 'XLIVa. Donaciones hechas a terceros en dinero o en especie; <b>Donaciones en dinero.</b>'),
(73, 69, 44, 'B', 'XLIVb. Donaciones hechas a terceros en dinero o en especie; <b>Donaciones en especie.</b>'),
(74, 69, 45, 'A', 'XLV. El catálogo de disposición y guía de archivo documental;'),
(75, 69, 46, 'A', 'XLVIa. Las actas de sesiones ordinarias y extraordinarias, así como las opiniones y recomendaciones que emitan, en su caso, los consejos consultivos; <b>Actas del Consejo Consultivo.</b>'),
(76, 69, 46, 'B', 'XLVIb. Las actas de sesiones ordinarias y extraordinarias, así como las opiniones y recomendaciones que emitan, en su caso, los consejos consultivos; <b>Opiniones y recomendaciones del Consejo Consultivo.</b>'),
(77, 69, 47, 'A', 'XLVII. Para efectos estadísticos, el listado de solicitudes a las empresas concesionarias de telecomunicaciones y proveedores de servicios o aplicaciones de Internet para la intervención de comunicaciones privadas, el acceso al registro de comunicaciones y la localización geográfica en tiempo real de equipos de comunicación, que contenga exclusivamente el objeto, el alcance temporal y los fundamentos legales del requerimiento, así como, en su caso, la mención de que cuenta con la autorización judicial correspondiente; y'),
(78, 69, 48, 'A', 'XLVIIIa. Cualquier otra información que sea de utilidad o se considere relevante, además de la que, con base en la información estadística, responda a las preguntas hechas con más frecuencia por el público. Los sujetos obligados deberán informar al Instituto y verificar que se publiquen en la Plataforma Nacional, cuáles son los rubros que son aplicables a sus páginas de Internet, con el objeto de que éste verifique y apruebe, de forma fundada y motivada, la relación de fracciones aplicables a cada sujeto obligado. <b>Tipo de información.</b>'),
(79, 69, 48, 'B', 'XLVIIIb. Cualquier otra información que sea de utilidad o se considere relevante, además de la que, con base en la información estadística, responda a las preguntas hechas con más frecuencia por el público. Los sujetos obligados deberán informar al Instituto y verificar que se publiquen en la Plataforma Nacional, cuáles son los rubros que son aplicables a sus páginas de Internet, con el objeto de que éste verifique y apruebe, de forma fundada y motivada, la relación de fracciones aplicables a cada sujeto obligado. <b>Información de interés público.</b>'),
(80, 69, 48, 'C', 'XLVIIIc. Cualquier otra información que sea de utilidad o se considere relevante, además de la que, con base en la información estadística, responda a las preguntas hechas con más frecuencia por el público. Los sujetos obligados deberán informar al Instituto y verificar que se publiquen en la Plataforma Nacional, cuáles son los rubros que son aplicables a sus páginas de Internet, con el objeto de que éste verifique y apruebe, de forma fundada y motivada, la relación de fracciones aplicables a cada sujeto obligado. <b>Preguntas frecuentes.</b>'),
(81, 69, 48, 'D', 'XLVIIId. Cualquier otra información que sea de utilidad o se considere relevante, además de la que, con base en la información estadística, responda a las preguntas hechas con más frecuencia por el público. Los sujetos obligados deberán informar al Instituto y verificar que se publiquen en la Plataforma Nacional, cuáles son los rubros que son aplicables a sus páginas de Internet, con el objeto de que éste verifique y apruebe, de forma fundada y motivada, la relación de fracciones aplicables a cada sujeto obligado. <b>Transparencia proactiva.</b>'),
(82, 70, 1, 'A', 'a. El Plan Estatal de Desarrollo, Planes Municipales de desarrollo, en su caso;'),
(83, 70, 2, 'A', 'b1. El presupuesto de egresos y las fórmulas de distribución de los recursos otorgados; <b>Publicación y actualización del presupuesto de egresos.</b>'),
(84, 70, 2, 'B', 'b2. El presupuesto de egresos y las fórmulas de distribución de los recursos otorgados; <b>Presupuesto de egresos y las fórmulas de distribución de los recursos otorgados.</b>'),
(85, 70, 3, 'A', 'c. El listado de expropiaciones decretadas y ejecutadas que incluya, cuando menos, la fecha de expropiación, el domicilio y la causa de utilidad pública y las ocupaciones superficiales;'),
(86, 70, 4, 'A', 'd1. El nombre, denominación o razón social y clave del registro federal de los contribuyentes a los que se les hubiera cancelado o condonado algún crédito fiscal, así como los montos respectivos. Asimismo, la información estadística sobre las exenciones previstas en las disposiciones fiscales; <b>Contribuyentes que recibieron cancelación o condonación de créditos fiscales.</b>'),
(87, 70, 4, 'B', 'd2. El nombre, denominación o razón social y clave del registro federal de los contribuyentes a los que se les hubiera cancelado o condonado algún crédito fiscal, así como los montos respectivos. Asimismo, la información estadística sobre las exenciones previstas en las disposiciones fiscales;  <b>Estadísticas sobre exenciones.</b>'),
(88, 70, 5, 'A', 'e1. Los nombres de las personas a quienes se les habilitó patente para ejercer como notarios públicos, así como sus datos de contacto, la información relacionada con el proceso de otorgamiento de la patente y las sanciones que se les hubieran aplicado; <b>Habilitados como corredores y notarios públicos.</b>'),
(89, 70, 5, 'B', 'e2. Los nombres de las personas a quienes se les habilitó patente para ejercer como notarios públicos, así como sus datos de contacto, la información relacionada con el proceso de otorgamiento de la patente y las sanciones que se les hubieran aplicado; <b>Corredores y notarios públicos.</b>'),
(90, 70, 5, 'C', 'e3. Los nombres de las personas a quienes se les habilitó patente para ejercer como notarios públicos, así como sus datos de contacto, la información relacionada con el proceso de otorgamiento de la patente y las sanciones que se les hubieran aplicado; <b>Sanciones aplicadas.</b>'),
(91, 70, 6, 'A', 'f1. La información detallada que contengan los planes de desarrollo urbano, ordenamiento territorial y ecológico, los tipos y usos de suelo, licencias de uso y construcción otorgadas por los gobiernos municipales; <b>Planes de desarrollo urbano.</b>'),
(92, 70, 6, 'B', 'f2. La información detallada que contengan los planes de desarrollo urbano, ordenamiento territorial y ecológico, los tipos y usos de suelo, licencias de uso y construcción otorgadas por los gobiernos municipales; <b>Planes y programas de ordenamiento territorial.</b>'),
(93, 70, 6, 'C', 'f3. La información detallada que contengan los planes de desarrollo urbano, ordenamiento territorial y ecológico, los tipos y usos de suelo, licencias de uso y construcción otorgadas por los gobiernos municipales; <b>Planes y programas de ordenamiento ecológico.</b>'),
(94, 70, 6, 'D', 'f4. La información detallada que contengan los planes de desarrollo urbano, ordenamiento territorial y ecológico, los tipos y usos de suelo, licencias de uso y construcción otorgadas por los gobiernos municipales; <b>Información detallada de Tipos de uso de suelo.</b>'),
(95, 70, 6, 'F', 'f5. La información detallada que contengan los planes de desarrollo urbano, ordenamiento territorial y ecológico, los tipos y usos de suelo, licencias de uso y construcción otorgadas por los gobiernos municipales; <b>Información detallada de Licencias de uso de suelo.</b>'),
(96, 70, 6, 'G', 'f6. La información detallada que contengan los planes de desarrollo urbano, ordenamiento territorial y ecológico, los tipos y usos de suelo, licencias de uso y construcción otorgadas por los gobiernos municipales; <b>Información de Licencias de construcción.</b>'),
(97, 70, 7, 'A', 'g. Las disposiciones administrativas, directamente o a través de la autoridad competente, con el plazo de anticipación que prevean las disposiciones aplicables al sujeto obligado de que se trate, salvo que su difusión pueda comprometer los efectos que se pretenden lograr con la disposición o se trate de situaciones de emergencia, de conformidad con dichas disposiciones.'),
(98, 71, 1, 'A', 'a. El contenido de las gacetas municipales, las cuales deberán comprender los resolutivos y acuerdos aprobados por los ayuntamientos; y'),
(99, 71, 2, 'A', 'b1. Las actas de sesiones de cabildo, los controles de asistencia de los integrantes del Ayuntamiento a las sesiones; <b>Calendario de sesiones de Cabildo.</b>'),
(100, 71, 2, 'B', 'b2. Las actas de sesiones de cabildo, los controles de asistencia de los integrantes del Ayuntamiento a las sesiones; <b>Sesiones de Cabildo.</b>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla`
--

CREATE TABLE `tabla` (
  `idTabla` int(11) NOT NULL,
  `idFraccion` int(11) DEFAULT NULL,
  `actualizacion` datetime DEFAULT NULL,
  `enlaceWeb` varchar(255) DEFAULT NULL,
  `enlaceDescarga` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tabla`
--

INSERT INTO `tabla` (`idTabla`, `idFraccion`, `actualizacion`, `enlaceWeb`, `enlaceDescarga`) VALUES
(1, 1, '2017-11-27 21:43:17', 'https://docs.google.com/spreadsheets/d/e/2PACX-1vQl6cmnPM1soHtu1m2AmoCiISdpc9pjugnl0WrYInfPTalUz7KmBoczIs76dRKkclbwBGdQd_3HDDe0/pubhtml', 'https://docs.google.com/spreadsheets/d/e/2PACX-1vQl6cmnPM1soHtu1m2AmoCiISdpc9pjugnl0WrYInfPTalUz7KmBoczIs76dRKkclbwBGdQd_3HDDe0/pub?output=xlsx'),
(2, 2, '2017-11-27 00:00:00', NULL, NULL),
(3, 3, '2017-11-27 00:00:00', NULL, NULL),
(4, 4, '2017-11-27 00:00:00', NULL, NULL),
(5, 5, '2017-11-27 00:00:00', NULL, NULL),
(6, 6, '2017-11-27 00:00:00', NULL, NULL),
(7, 7, '2017-11-27 00:00:00', NULL, NULL),
(8, 8, '2017-11-27 00:00:00', NULL, NULL),
(9, 9, '2017-11-27 00:00:00', NULL, NULL),
(10, 10, '2017-11-27 00:00:00', NULL, NULL),
(11, 11, '2017-11-27 00:00:00', NULL, NULL),
(12, 12, '2017-11-27 00:00:00', NULL, NULL),
(13, 13, '2017-11-27 00:00:00', NULL, NULL),
(14, 14, '2017-11-27 00:00:00', NULL, NULL),
(15, 15, '2017-11-27 00:00:00', NULL, NULL),
(16, 16, '2017-11-27 00:00:00', NULL, NULL),
(17, 17, '2017-11-27 00:00:00', NULL, NULL),
(18, 18, '2017-11-27 00:00:00', NULL, NULL),
(19, 19, '2017-11-27 00:00:00', NULL, NULL),
(20, 20, '2017-11-27 00:00:00', NULL, NULL),
(21, 21, '2017-11-27 00:00:00', NULL, NULL),
(22, 22, '2017-11-27 00:00:00', NULL, NULL),
(23, 23, '2017-11-27 00:00:00', NULL, NULL),
(24, 24, '2017-11-27 00:00:00', NULL, NULL),
(25, 25, '2017-11-27 00:00:00', NULL, NULL),
(26, 26, '2017-11-27 00:00:00', NULL, NULL),
(27, 27, '2017-11-27 00:00:00', NULL, NULL),
(28, 28, '2017-11-27 00:00:00', NULL, NULL),
(29, 29, '2017-11-27 00:00:00', NULL, NULL),
(30, 30, '2017-11-27 00:00:00', NULL, NULL),
(31, 31, '2017-11-27 00:00:00', NULL, NULL),
(32, 32, '2017-11-27 00:00:00', NULL, NULL),
(33, 33, '2017-11-27 00:00:00', NULL, NULL),
(34, 34, '2017-11-27 00:00:00', NULL, NULL),
(35, 35, '2017-11-27 00:00:00', NULL, NULL),
(36, 36, '2017-11-27 00:00:00', NULL, NULL),
(37, 37, '2017-11-27 00:00:00', NULL, NULL),
(38, 38, '2017-11-27 00:00:00', NULL, NULL),
(39, 39, '2017-11-27 00:00:00', NULL, NULL),
(40, 40, '2017-11-27 00:00:00', NULL, NULL),
(41, 41, '2017-11-27 00:00:00', NULL, NULL),
(42, 42, '2017-11-27 00:00:00', NULL, NULL),
(43, 43, '2017-11-27 00:00:00', NULL, NULL),
(44, 44, '2017-11-27 00:00:00', NULL, NULL),
(45, 45, '2017-11-27 00:00:00', NULL, NULL),
(46, 46, '2017-11-27 00:00:00', NULL, NULL),
(47, 47, '2017-11-27 00:00:00', NULL, NULL),
(48, 48, '2017-11-27 00:00:00', NULL, NULL),
(49, 49, '2017-11-27 00:00:00', NULL, NULL),
(50, 50, '2017-11-27 00:00:00', NULL, NULL),
(51, 51, '2017-11-27 00:00:00', NULL, NULL),
(52, 52, '2017-11-27 00:00:00', NULL, NULL),
(53, 53, '2017-11-27 00:00:00', NULL, NULL),
(54, 54, '2017-11-27 00:00:00', NULL, NULL),
(55, 55, '2017-11-27 00:00:00', NULL, NULL),
(56, 56, '2017-11-27 00:00:00', NULL, NULL),
(57, 57, '2017-11-27 00:00:00', NULL, NULL),
(58, 58, '2017-11-27 00:00:00', NULL, NULL),
(59, 59, '2017-11-27 00:00:00', NULL, NULL),
(60, 60, '2017-11-27 00:00:00', NULL, NULL),
(61, 61, '2017-11-27 00:00:00', NULL, NULL),
(62, 62, '2017-11-27 00:00:00', NULL, NULL),
(63, 63, '2017-11-27 00:00:00', NULL, NULL),
(64, 64, '2017-11-27 00:00:00', NULL, NULL),
(65, 65, '2017-11-27 00:00:00', NULL, NULL),
(66, 66, '2017-11-27 00:00:00', NULL, NULL),
(67, 67, '2017-11-27 00:00:00', NULL, NULL),
(68, 68, '2017-11-27 00:00:00', NULL, NULL),
(69, 69, '2017-11-27 00:00:00', NULL, NULL),
(70, 70, '2017-11-27 00:00:00', NULL, NULL),
(71, 71, '2017-11-27 00:00:00', NULL, NULL),
(72, 72, '2017-11-27 00:00:00', NULL, NULL),
(73, 73, '2017-11-27 00:00:00', NULL, NULL),
(74, 74, '2017-11-27 00:00:00', NULL, NULL),
(75, 75, '2017-11-27 00:00:00', NULL, NULL),
(76, 76, '2017-11-27 00:00:00', NULL, NULL),
(77, 77, '2017-11-27 00:00:00', NULL, NULL),
(78, 78, '2017-11-27 00:00:00', NULL, NULL),
(79, 79, '2017-11-27 00:00:00', NULL, NULL),
(80, 80, '2017-11-27 00:00:00', NULL, NULL),
(81, 81, '2017-11-27 00:00:00', NULL, NULL),
(82, 82, '2017-11-27 00:00:00', NULL, NULL),
(83, 83, '2017-11-27 00:00:00', NULL, NULL),
(84, 84, '2017-11-27 00:00:00', NULL, NULL),
(85, 85, '2017-11-27 00:00:00', NULL, NULL),
(86, 86, '2017-11-27 00:00:00', NULL, NULL),
(87, 87, '2017-11-27 00:00:00', NULL, NULL),
(88, 88, '2017-11-27 00:00:00', NULL, NULL),
(89, 89, '2017-11-27 00:00:00', NULL, NULL),
(90, 90, '2017-11-27 00:00:00', NULL, NULL),
(91, 91, '2017-11-27 00:00:00', NULL, NULL),
(92, 92, '2017-11-27 00:00:00', NULL, NULL),
(93, 93, '2017-11-27 00:00:00', NULL, NULL),
(94, 94, '2017-11-27 00:00:00', NULL, NULL),
(95, 95, '2017-11-27 00:00:00', NULL, NULL),
(96, 96, '2017-11-27 00:00:00', NULL, NULL),
(97, 97, '2017-11-27 00:00:00', NULL, NULL),
(98, 98, '2017-11-27 00:00:00', NULL, NULL),
(99, 99, '2017-11-27 00:00:00', NULL, NULL),
(100, 100, '2017-11-27 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `nombreUsuario` varchar(30) DEFAULT NULL,
  `passwordUsuario` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `nombreUsuario`, `passwordUsuario`) VALUES
(1, 'luis', '1234'),
(2, 'Alonso', 'Transparencia2017');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `fraccion`
--
ALTER TABLE `fraccion`
  ADD PRIMARY KEY (`idFraccion`);

--
-- Indices de la tabla `tabla`
--
ALTER TABLE `tabla`
  ADD PRIMARY KEY (`idTabla`),
  ADD KEY `idFraccion` (`idFraccion`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `fraccion`
--
ALTER TABLE `fraccion`
  MODIFY `idFraccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT de la tabla `tabla`
--
ALTER TABLE `tabla`
  MODIFY `idTabla` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tabla`
--
ALTER TABLE `tabla`
  ADD CONSTRAINT `tabla_ibfk_1` FOREIGN KEY (`idFraccion`) REFERENCES `fraccion` (`idFraccion`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
