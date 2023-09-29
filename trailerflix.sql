CREATE DATABASE  IF NOT EXISTS `trailerflix` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `trailerflix`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: trailerflix
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `actores`
--

DROP TABLE IF EXISTS `actores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actores` (
  `id_actores` int NOT NULL,
  `nombre` varchar(120) NOT NULL,
  PRIMARY KEY (`id_actores`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actores`
--

LOCK TABLES `actores` WRITE;
/*!40000 ALTER TABLE `actores` DISABLE KEYS */;
INSERT INTO `actores` VALUES (1,'Pedro Pascal'),(2,'Carl Weathers'),(3,'Misty Rosas'),(4,'Chris Bartlett'),(5,'Rio Hackford'),(6,'Giancarlo Esposito'),(7,'Tom Hopper'),(8,'David Castañeda'),(9,'Emmy Raver-Lampman'),(10,'Robert Sheehan'),(11,'Aidan Gallagher'),(12,'Elliot Page'),(13,'Anya Taylor-Joy'),(14,'Thomas Brodie-Sangster'),(15,'Harry Melling'),(16,'Moses Ingram'),(17,'Chloe Pirrie'),(18,'Janina Elkin'),(19,'Lili Reinhart'),(20,'Casey Cott'),(21,'Camila Mendes'),(22,'Marisol Nichols'),(23,'Madelaine Petsch'),(24,'Mädchen Amick'),(25,'Claire Fox'),(26,'Olivia Colman'),(27,'Matt Smith'),(28,'Tobias Menzies'),(29,'Vanesa Kirby'),(30,'Helena Bonham Carter'),(31,'Millie Bobby Brown'),(32,'Henry Cavill'),(33,'Sam Claflin'),(34,'Louis Partridge'),(35,'Adeel Akhtar'),(36,'Joaquin Phoenix'),(37,'Robert De Niro'),(38,'Zazie Beetz'),(39,'Frances Conroy'),(40,'Brett Cullen'),(41,'Shea Whigham'),(42,'Robert Downey Jr.'),(43,'Chris Evans'),(44,'Mark Ruffalo'),(45,'Chris Hemsworth'),(46,'Scarlett Johansson'),(47,'Jeremy Renner'),(48,'Emilia Clarke'),(49,'Lena Headey'),(50,'Sophie Turner'),(51,'Kit Harington'),(52,'Peter Dinklage'),(53,'Nikolaj Coster-Waldau'),(54,'Grant Gustin'),(55,'Carlos Valdes'),(56,'Danielle Panabaker'),(57,'Candice Patton'),(58,'Jesse L. Martin'),(59,'Tom Cavanagh'),(60,'Jim Parsons'),(61,'Johnny Galecki'),(62,'Kaley Cuoco'),(63,'Simon Helberg'),(64,'Kunal Nayyar'),(65,'Melissa Rauch'),(66,'Mayim Bialik'),(67,'Jennifer Aniston'),(68,'Courteney Cox'),(69,'Lisa Kudrow'),(70,'David Schwimmer'),(71,'Matthew Perry'),(72,'Matt LeBlanc'),(73,'Amybeth McNulty'),(74,'Geraldine James'),(75,'R. H. Thomson'),(76,'Corrine Koslo'),(77,'Dalila Bela'),(78,'Lucas Jade Zumann'),(79,'Gillian Anderson'),(80,'David Duchovny'),(81,'Mitch Pileggi'),(82,'Robert Patrick'),(83,'Tom Braidwood'),(84,'Bruce Harwood'),(85,'Jared Harris'),(86,'Stellan Skarsgård'),(87,'Emily Watson'),(88,'Paul Ritter'),(89,'Jessie Buckley'),(90,'Adam Nagaitis'),(91,'Evan Rachel Wood'),(92,'Thandie Newton'),(93,'Jeffrey Wright'),(94,'Tessa Thompson'),(95,'Ed Harris'),(96,'Luke Hemsworth'),(97,'Lee Pace'),(98,'Scoot McNairy'),(99,'Mackenzie Davis'),(100,'Kerry Bishé'),(101,'Toby Huss'),(102,'Alana Cavanaugh'),(103,'Jessica Chastain'),(104,'John Malkovich'),(105,'Colin Farrell'),(106,'Common'),(107,'Geena Davis'),(108,'Ioan Gruffudd'),(109,'Margot Robbie'),(110,'Ewan McGregor'),(111,'Mary Elizabeth Winstead'),(112,'Jurnee Smollett'),(113,'Rosie Perez'),(114,'Chris Messina'),(115,'Stacy Martin'),(116,'Rhona Mitra'),(117,'Theo James'),(118,'Peter Ferdinando'),(119,'Lia Williams'),(120,'Toby Jones'),(121,'Dwayne Johnson'),(122,'Kevin Hart'),(123,'Jack Black'),(124,'Karen Gillan'),(125,'Awkwafina'),(126,'Nick Jonas'),(127,'Miranda Cosgrove'),(128,'Kate Walsh'),(129,'Omar Epps'),(130,'Angus Macfadyen'),(131,'Jorja Fox'),(132,'Enver Gjokaj'),(133,'Bill Skarsgård'),(134,'Bill Hader'),(135,'James McAvoy'),(136,'Isaiah Mustafa'),(137,'Jay Ryan'),(138,'Chadwick Boseman'),(139,'Michael B. Jordan'),(140,'Lupita Nyong\'o'),(141,'Danai Gurira'),(142,'Martin Freeman'),(143,'Daniel Kaluuya'),(144,'Christian Bale'),(145,'Matt Damon'),(146,'Caitriona Balfe'),(147,'Josh Lucas'),(148,'Noah Jupe'),(149,'Jon Bernthal'),(150,'Génesis Rodríguez'),(151,'Vincent Piazza'),(152,'Benjamin Sokolow'),(153,'Emily Bayiokos'),(154,'Amy Manson'),(155,'Luke Allen-Gale'),(156,'Nina Bergman'),(157,'Dominic Mafham'),(158,'James Weber Brown'),(159,'Lorina Kamburova'),(160,'Marion Cotillard'),(161,'Laurence Fishburne'),(162,'Jude Law'),(163,'Kate Winslet'),(164,'Jennifer Ehle'),(165,'Gwyneth Paltrow'),(166,'Florence Pugh'),(167,'David Harbour'),(168,'O.T. Fagbenle'),(169,'Rachel Weisz'),(170,'William Hurt'),(171,'Ray Winstone'),(172,'Kristen Wiig'),(173,'Jeff Daniels'),(174,'Michael Peña'),(175,'Sean Bean'),(176,'Kate Mara'),(177,'Alicia Vikander'),(178,'Domhnall Gleeson'),(179,'Oscar Isaac'),(180,'Sonoya Mizuno'),(181,'Corey Johnson'),(182,'Claire Selby'),(183,'Gana Bayarsaikhan'),(184,'Bryce Dallas Howard'),(185,'Chris Pratt'),(186,'Irrfan Khan'),(187,'Vincent D\'Onofrio'),(188,'Omar Sy'),(189,'Nick Robinson'),(190,'Judy Greer'),(191,'Will Smith'),(192,'Alice Braga'),(193,'Charlie Tahan'),(194,'Dash Mihok'),(195,'Salli Richardson-Whitfield'),(196,'Willow Smith'),(197,'Emma Thompson'),(198,'Ryan Gosling'),(199,'Claire Foy'),(200,'Jason Clarke'),(201,'Kyle Chandler'),(202,'Corey Stoll'),(203,'Patrick Fugit'),(204,'John Boyega'),(205,'Scott Eastwood'),(206,'Cailee Spaeny'),(207,'Jing Tian'),(208,'Rinko Kikuchi'),(209,'Burn Gorman');
/*!40000 ALTER TABLE `actores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `id_categoria` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Películas'),(2,'Series');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contenido`
--

DROP TABLE IF EXISTS `contenido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contenido` (
  `id_contenido` int NOT NULL AUTO_INCREMENT,
  `poster` varchar(250) NOT NULL,
  `título` varchar(250) NOT NULL,
  `categoria` int NOT NULL,
  `resumen` text NOT NULL,
  `temporadas` int DEFAULT NULL,
  `trailer` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_contenido`),
  KEY `fk_contenido_categoria_idx` (`categoria`),
  CONSTRAINT `categoria` FOREIGN KEY (`categoria`) REFERENCES `categoria` (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contenido`
--

LOCK TABLES `contenido` WRITE;
/*!40000 ALTER TABLE `contenido` DISABLE KEYS */;
INSERT INTO `contenido` VALUES (1,'/posters/1.jpg','The Crown',2,'Este drama narra las rivalidades políticas y el romance de la reina Isabel II, así como los sucesos que moldearon la segunda mitad del siglo XX.',4,''),(2,'/posters/2.jpg','Riverdale',2,'El paso a la edad adulta incluye sexo, romance, escuela y familia. Para Archie y sus amigos, también hay misterios oscuros.',5,''),(3,'/posters/3.jpg','The Mandalorian',2,'Ambientada tras la caída del Imperio y antes de la aparición de la Primera Orden, la serie sigue los pasos de un pistolero solitario en las aventuras que protagoniza en los confines de la galaxia, donde no alcanza la autoridad de la Nueva República.',2,'https://www.youtube.com/embed/aOC8E8z_ifw'),(4,'/posters/4.jpg','The Umbrella Academy',2,'La muerte de su padre reúne a unos hermanos distanciados y con extraordinarios poderes que descubren impactantes secretos y una amenaza que se cierne sobre la humanidad.',1,''),(5,'/posters/5.jpg','Gambito de Dama',2,'En los cincuenta, una joven de un orfanato descubre que tiene un increíble don para el ajedrez y recorre el arduo camino a la fama mientras lucha contra las adicciones.',1,''),(6,'/posters/6.jpg','Enola Holmes',1,'La hermana menor de Sherlock, descubre que su madre ha desaparecido y se dispone a encontrarla. En su búsqueda, saca a relucir el sabueso que corre por sus venas y se encuentra con una conspiración que gira en torno a un misterioso lord, demostrando que su ilustre hermano no es el único talento en la familia.',0,''),(7,'/posters/7.jpg','Guasón',1,'Arthur Fleck (Phoenix) es un hombre ignorado por la sociedad, cuya motivación en la vida es hacer reír. Pero una serie de trágicos acontecimientos le llevarán a ver el mundo de otra forma. Película basada en el popular personaje de DC Comics Joker, conocido como archivillano de Batman, pero que en este film tomará un cariz más realista y oscuro.',0,'https://www.youtube.com/embed/zAGVQLHvwOY'),(8,'/posters/8.jpg','Avengers: End Game',1,'Después de los devastadores eventos de los Vengadores: Infinity War (2018), el universo está en ruinas. Con la ayuda de los aliados restantes, los Vengadores se reúnen una vez más para revertir las acciones de Thanos y restaurar el equilibrio del universo.',0,''),(9,'/posters/9.jpg','Juego de tronos',2,'En un mundo fantástico y en un contexto medieval varias familias, relativas a la nobleza, se disputan el poder para dominar el territorio ficticio de Poniente (Westeros) y tomar el control de los Siete Reinos desde el Trono de Hierro, lugar donde el rey ejerce el poder.',8,''),(10,'/posters/10.jpg','The Flash',2,'Sigue las veloces aventuras de Barry Allen, un joven común y corriente con el deseo latente de ayudar a los demás. Cuando una inesperada partícula aceleradora golpea por accidente a Barry, de pronto se encuentra cargado de un increíble poder para moverse a increíbles velocidades. Mientras Barry siempre ha tenido el alma de un héroe, sus nuevos poderes le han dado la capacidad de actuar como tal.',6,''),(11,'/posters/11.jpg','The Big Bang Theory',2,'Leonard y Sheldon son dos físicos que comparten trabajo y apartamento. La serie comienza con la mudanza de Penny, su nueva y atractiva vecina, y hace hincapié en la dificultad de los físicos para relacionarse con personas fuera de su entorno para dar lugar a situaciones cómicas.',12,'https://www.youtube.com/embed/WBb3fojgW0Q'),(12,'/posters/12.jpg','Friends',2,'\'Friends\' narra las aventuras y desventuras de seis jóvenes de Nueva York: Rachel, Monica, Phoebe, Ross, Chandler y Joey. Ellos forman una unida pandilla de amigos que viven en Manhattan y que suelen reunirse en sus apartamentos o en su bar habitual cafetería, el Central Perk. A pesar de los numerosos cambios que se producen en sus vidas, su amistad es inquebrantable en la dura batalla por salir adelante en sus periplos profesionales y personales.',10,''),(13,'/posters/13.jpg','Anne with an \'E\'',2,'Anne Shirley es una niña huérfana que vive en un pequeño pueblo llamado Avonlea que pertenece a la Isla del Príncipe Eduardo, en el año 1890. Después de una infancia difícil, donde fue pasando de orfanato a hogares de acogida, es enviada por error a vivir con una solterona y su hermano. Cuando cumple 13 años, Anne va a conseguir transformar su vida y el pequeño pueblo donde vive gracias a su fuerte personalidad, intelecto e imaginación. Basada en la inolvidable novela.',2,''),(14,'/posters/14.jpg','Expedientes Secretos \'X\'',2,'Fox Mulder y Dana Scully son dos investigadores del FBI que investigan casos sin resolución ni explicación, ya sea por razones paranormales (espíritus, criaturas extrañas, aliens...) ya porque el gobierno se ha encargado de ocultar todo tipo de pruebas. Cuando Mulder tenía doce años, su hermana pequeña fue secuestrada por unos desconocidos, aunque él cree que, en realidad, fue abducida por extraterrestres. Tras acabar sus estudios en la universidad de Oxford, ingresó en la Academia de Quantico, donde se ganó el apodo de \'siniestro\'',11,'https://www.youtube.com/embed/KKziOmsJxzE'),(15,'/posters/15.jpg','Chernobyl',2,'Sigue «la verdadera historia de una de las peores catástrofes provocadas por el hombre y habla de los valientes hombres y mujeres que se sacrificaron para salvar a Europa de un desastre inimaginable. La miniserie se centra en el desgarrador alcance del desastre de la planta nuclear que ocurrió en Ucrania en abril de 1986, revelando cómo y por qué ocurrió, además contando las sorprendentes y notables historias de los héroes que lucharon y cayeron.',1,'https://www.youtube.com/embed/s9APLXM9Ei8'),(16,'/posters/16.jpg','Westworld',2,'\'Westworld\' es una oscura odisea acerca del amanecer de la conciencia artificial y la evolución del pecado. Situada en la intersección del futuro cercano y el pasado reimaginado, explora un mundo donde cada apetito humano, sin importar cuán noble o depravado, puede ser saciado. Está ambientada en un parque temático futurista dirigido por el Dr. Robert Ford (Anthony Hopkins). Las instalaciones cuentan con androides caracterizados del western americano, y gracias a ellos los visitantes pueden introducirse en cualquier tipo de fantasía por muy oscura que sea.',3,'https://www.youtube.com/embed/qLFBcdd6Qw0'),(17,'/posters/17.jpg','Halt and Catch Fire',2,'Situada en los inicios de la década de 1980, un visionario ficticio, un ingeniero electrónico y una prodigiosa ingeniera, se alían a una programadora de software para confrontar con las corporaciones informáticas dominantes de la época. El Personal de la firma y sus socios de negocio, comenzarán una carrera que cambiará la cultura en el Estado de Texas, cuna de las empresas de tecnología, casi de la misma forma que lo es hoy Silicon Valey.\nEsta historia ficticia emula el trabajo realizado, en su momento, por la firma Compaq, cuando clonó el BIOS de las Computadoras Personales IBM, dando vida así al económico mercado de los clones. Mostrando también, a lo largo de sus 4 temporadas, el nacimiento de la arquitectura abierta de hardware, los videojuegos online, las salas de chat y de trueque de productos físicos, los BBS, y las primeras nubes computacionales, hasta la llegada de Internet (sin dejar afuera la guerra de los web browsers).',4,'https://www.youtube.com/embed/pWrioRji60A'),(18,'/posters/18.jpg','Ava',1,'Ava es una mortífera asesina a sueldo que trabaja para una organización de operaciones encubiertas, que viaja por todo el mundo acabando con aquellos objetivos que nadie más puede derribar. Cuando uno de sus encargos sale mal, Ava tendrá que luchar por una vida.',0,''),(19,'/posters/19.jpg','Aves de presa y la fantabulosa emancipación de una Harley Quinn',1,'Después de separarse de Joker, Harley Quinn y otras tres heroínas (Canario Negro, Cazadora y Renée Montoya) unen sus fuerzas para salvar a una niña (Cassandra Cain) del malvado rey del crimen Máscara Negra.',0,''),(20,'/posters/20.jpg','Archivo',1,'2038: George Almore está trabajando en una verdadera IA equivalente a la humana. Su último prototipo está casi listo. Esta fase sensible también es la más arriesgada. Especialmente porque tiene un objetivo que debe ocultarse a toda costa: reunirse con su esposa muerta.',0,'https://www.youtube.com/embed/VHSoCnDioAo'),(21,'/posters/21.jpg','Jumanji - The next level',1,'Las aventuras continúan en el fantástico mundo del video juego Jumanji, donde nada es lo que parece. En esta ocasión, los jugadores vuelven al juego, pero sus personajes se han intercambiado entre sí, lo que ofrece un curioso plantel: los mismos héroes con distinta apariencia y habilidades. Pero, ¿dónde está el resto de la gente?',0,'https://www.youtube.com/embed/rBxcF-r9Ibs'),(22,'/posters/22.jpg','3022',1,'La película está ambientada en una estación espacial en el futuro. La tripulación sufre un estrés traumático y considera abandonar su misión después de observar lo que creen que es la destrucción de la Tierra. La película se muestra como una serie de flashbacks y flash-forward.',0,'https://www.youtube.com/embed/AGQ7OkmIx4Q'),(23,'/posters/23.jpg','IT - Capítulo 2',1,'En este segundo capitulo Han pasado 27 años desde que el \'Club de los Perdedores\', formado por Bill, Berverly, Richie, Ben, Eddie, Mike y Stanley, se enfrentaran al macabro y despiadado Pennywise (Bill Skarsgård). En cuanto tuvieron oportunidad, abandonaron el pueblo de Derry, en el estado de Maine, que tantos problemas les había ocasionado. Sin embargo, ahora, siendo adultos, parece que no pueden escapar de su pasado. Todos deberán enfrentarse de nuevo al temible payaso para descubrir si de verdad están preparados para superar sus traumas de la infancia.',0,'https://www.youtube.com/embed/hZeFeYSmBcg'),(24,'/posters/24.jpg','Pantera Negra',1,'T’Challa (Chadwick Boseman) regresa a su hogar en la apartada nación africana de Wakanda para servir como líder de su país. Tras suceder a su padre en el trono, pasa a convertirse en Pantera Negra, una sigilosa criatura de la noche, con agudos sentidos felinos y otras habilidades como súper fuerza e inteligencia, agilidad, estrategia o maestro del combate sin armas. Es bajo el liderazgo de T’Challa como Wakanda consigue convertirse en una de las naciones más ricas y tecnológicamente avanzadas del planeta.',0,'https://www.youtube.com/embed/BE6inv8Xh4A'),(25,'/posters/25.jpg','Contra lo imposible (Ford versus Ferrari)',1,'Los ganadores del Premio de la Academia® Matt Damon y Christian Bale protagonizan CONTRA LO IMPOSIBLE, basada en la historia real del visionario diseñador americano de automóviles Carroll Shelby (Damon) y el intrépido piloto británico Ken Miles (Bale). Juntos construyen un nuevo coche de carreras para Ford Motor Company y así enfrentar a Enzo Ferrari en las 24 Horas de Le Mans en Francia en 1966.',0,'https://www.youtube.com/embed/SOVb0-2g1Q0'),(26,'/posters/26.jpg','Centígrados',1,'Una joven pareja estadounidense viaja a las montañas árticas de Noruega. Después de detenerse durante una tormenta de nieve, se despiertan atrapados en su SUV, enterrados bajo capas de nieve y hielo.',0,''),(27,'/posters/27.jpg','DOOM: Aniquilación',1,'Doom: Aniquilación sigue a un grupo de marines espaciales que han respondido a una llamada de alerta de una base en la luna marciana, solo para descubrir que ha sido tomada por criaturas demoníacas que amenazan con desatar el infierno en la tierra.',0,'https://www.youtube.com/embed/nat3u3gAVLE'),(28,'/posters/28.jpg','Contagio',1,'De repente, sin saber cuál es su origen, aunque todo hace sospechar que comienza con el viaje de una norteamericana a un casino de Hong Kong, un virus mortal comienza a propagarse por todo el mundo. En pocos días, la enfermedad empieza a diezmar a la población. El contagio se produce por mero contacto entre los seres humanos. Un thriller realista y sin efectos especiales sobre los efectos de una epidemia.',0,'https://www.youtube.com/embed/4sYSyuuLk5g'),(29,'/posters/29.jpg','Viuda Negra',1,'Primera pelicula individual de la Viuda Negra en el universo cinematografico de Marvel, contando su historia desde que se inició como doble agente rusa, su niñez, sus misiones, y su actualidad, después de Avengers.',0,'https://www.youtube.com/embed/BIn8iANwEog'),(30,'/posters/30.jpg','The Martian',1,'Durante una misión a Marte de la nave tripulada Ares III, una fuerte tormenta se desata dando por desaparecido y muerto al astronauta Mark Watney (Matt Damon), sus compañeros toman la decisión de irse pero él ha sobrevivido. Está solo y sin apenas recursos en el planeta. Con muy pocos medios deberá recurrir a sus conocimientos, su sentido del humor y un gran instinto de supervivencia para lograr sobrevivir y comunicar a la Tierra que todavía está vivo esperando que acudan en su rescate.',0,'https://www.youtube.com/embed/XvB58bCVfng'),(31,'/posters/31.jpg','Ex-Machina',1,'Un programador multimillonario selecciona a Caleb, un joven empleado de su empresa, para que pase una semana en un lugar remoto con el objetivo de que participe en un test en el que estará involucrada su última creación: un robot-mujer en el que inteligencia artificial lo es todo.',0,'https://www.youtube.com/embed/XRYL5spvEcI'),(32,'/posters/32.jpg','Jurassic World',1,'Veintidós años después de lo ocurrido en Jurassic Park, la isla Nublar ha sido transformada en un enorme parque temático, Jurassic Wold, con versiones «domesticadas» de algunos de los dinosaurios más conocidos. Cuando todo parece ir sobre ruedas y ser el negocio del siglo, un nuevo dinosaurio de especie desconocida, pues ha sido creado manipulando genéticamente su ADN, y que resulta ser mucho más inteligente de lo que se pensaba, se escapa de su recinto y comienza a causar estragos entre los visitantes del Parque.',0,''),(33,'/posters/33.jpg','Soy leyenda',1,'Años después de que una plaga mate a la mayoría de la humanidad y transforme al resto en monstruos, el único superviviente en la ciudad de Nueva York lucha valientemente para encontrar una cura.',0,'https://www.youtube.com/embed/dtKMEAXyPkg'),(34,'/posters/34.jpg','El primer hombre en la luna',1,'Cuenta la historia de la misión de la NASA que llevó al primer hombre a la luna, centrada en Neil Armstrong (interpretado por Ryan Gosling) y el periodo comprendido entre los años 1961 y 1969. Un relato en primera persona, basado en la novela de James R. Hansen, que explora el sacrificio y el precio que representó, tanto para Armstrong como para Estados Unidos, una de las misiones más peligrosas de la historia.',0,''),(35,'/posters/35.jpg','Titanes del pacífico - La insurrección',1,'Han pasado 10 años tras la primera invasión que sufrió la humanidad, pero la lucha aún no ha terminado. El planeta vuelve a ser asediado por los Kaiju, una raza de alienígenas colosales, que emergen desde un portal interdimensional con el objetivo de destruir a la raza humana. Ante esta nueva amenaza, los Jaegers, robots gigantes de guerra pilotados por dos personas para sobrellevar la inmensa carga neuronal que conlleva manipularlos, ya no están a la altura de lo que se les viene encima. Será entonces cuando los supervivientes de la primera invasión, además de nuevos personajes como el hijo de Pentecost, tendrán que idear la manera de sorprender al enorme enemigo, apostando por nuevas estrategias defensivas y de ataque. Con la Tierra en ruinas e intentando reconstruirse, esta nueva batalla puede ser decisiva para el futuro.',0,'');
/*!40000 ALTER TABLE `contenido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contenido_actores`
--

DROP TABLE IF EXISTS `contenido_actores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contenido_actores` (
  `id_contenido_actores` int NOT NULL AUTO_INCREMENT,
  `actor` int NOT NULL,
  `contenido` int NOT NULL,
  PRIMARY KEY (`id_contenido_actores`),
  KEY `fk_contenido_actores_actores1_idx` (`actor`),
  KEY `fk_contenido_actores_contenido1_idx` (`contenido`),
  CONSTRAINT `fk_contenido_actores_actores1` FOREIGN KEY (`actor`) REFERENCES `actores` (`id_actores`),
  CONSTRAINT `fk_contenido_actores_contenido1` FOREIGN KEY (`contenido`) REFERENCES `contenido` (`id_contenido`)
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contenido_actores`
--

LOCK TABLES `contenido_actores` WRITE;
/*!40000 ALTER TABLE `contenido_actores` DISABLE KEYS */;
INSERT INTO `contenido_actores` VALUES (1,1,3),(2,2,3),(3,3,3),(4,4,3),(5,5,3),(6,6,3),(7,7,4),(8,8,4),(9,9,4),(10,10,4),(11,11,4),(12,12,4),(13,13,5),(14,14,5),(15,15,5),(16,16,5),(17,17,5),(18,18,5),(19,19,2),(20,20,2),(21,21,2),(22,22,2),(23,23,2),(24,24,2),(25,25,1),(26,26,1),(27,27,1),(28,28,1),(29,29,1),(30,30,1),(31,31,6),(32,32,6),(33,33,6),(34,30,6),(35,34,6),(36,35,6),(37,36,7),(38,37,7),(39,38,7),(40,39,7),(41,40,7),(42,41,7),(43,42,8),(44,43,8),(45,44,8),(46,45,8),(47,46,8),(48,47,8),(49,48,9),(50,49,9),(51,50,9),(52,51,9),(53,52,9),(54,53,9),(55,54,10),(56,55,10),(57,56,10),(58,57,10),(59,58,10),(60,59,10),(61,60,11),(62,61,11),(63,62,11),(64,63,11),(65,64,11),(66,65,11),(67,66,11),(68,67,12),(69,68,12),(70,69,12),(71,70,12),(72,71,12),(73,72,12),(74,73,13),(75,74,13),(76,75,13),(77,76,13),(78,77,13),(79,78,13),(80,79,14),(81,80,14),(82,81,14),(83,82,14),(84,83,14),(85,84,14),(86,85,15),(87,86,15),(88,87,15),(89,88,15),(90,89,15),(91,90,15),(92,91,16),(93,92,16),(94,93,16),(95,94,16),(96,95,16),(97,96,16),(98,97,17),(99,98,17),(100,99,17),(101,100,17),(102,101,17),(103,102,17),(104,103,18),(105,104,18),(106,105,18),(107,106,18),(108,107,18),(109,108,18),(110,109,19),(111,110,19),(112,111,19),(113,112,19),(114,113,19),(115,114,19),(116,115,20),(117,116,20),(118,117,20),(119,118,20),(120,119,20),(121,120,20),(122,121,21),(123,122,21),(124,123,21),(125,124,21),(126,125,21),(127,126,21),(128,127,22),(129,128,22),(130,129,22),(131,130,22),(132,131,22),(133,132,22),(134,133,23),(135,103,23),(136,134,23),(137,135,23),(138,136,23),(139,137,23),(140,138,24),(141,139,24),(142,140,24),(143,141,24),(144,142,24),(145,143,24),(146,144,25),(147,145,25),(148,146,25),(149,147,25),(150,148,25),(151,149,25),(152,150,26),(153,151,26),(154,152,26),(155,153,26),(156,154,27),(157,155,27),(158,156,27),(159,157,27),(160,158,27),(161,159,27),(162,160,28),(163,145,28),(164,161,28),(165,162,28),(166,163,28),(167,164,28),(168,165,28),(169,46,29),(170,166,29),(171,167,29),(172,168,29),(173,169,29),(174,170,29),(175,171,29),(176,145,30),(177,103,30),(178,172,30),(179,173,30),(180,174,30),(181,175,30),(182,176,30),(183,177,31),(184,178,31),(185,179,31),(186,180,31),(187,181,31),(188,182,31),(189,183,31),(190,184,32),(191,185,32),(192,186,32),(193,187,32),(194,188,32),(195,189,32),(196,190,32),(197,191,33),(198,192,33),(199,193,33),(200,194,33),(201,195,33),(202,196,33),(203,197,33),(204,198,34),(205,199,34),(206,200,34),(207,201,34),(208,202,34),(209,203,34),(210,204,35),(211,205,35),(212,206,35),(213,207,35),(214,208,35),(215,209,35);
/*!40000 ALTER TABLE `contenido_actores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contenido_genero`
--

DROP TABLE IF EXISTS `contenido_genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contenido_genero` (
  `id_contenido_genero` int NOT NULL AUTO_INCREMENT,
  `contenido` int NOT NULL,
  `genero` int NOT NULL,
  PRIMARY KEY (`id_contenido_genero`),
  KEY `fk_contenido_genero_contenido1_idx` (`contenido`),
  KEY `fk_contenido_genero_genero1_idx` (`genero`),
  CONSTRAINT `fk_contenido_genero_contenido1` FOREIGN KEY (`contenido`) REFERENCES `contenido` (`id_contenido`),
  CONSTRAINT `fk_contenido_genero_genero1` FOREIGN KEY (`genero`) REFERENCES `genero` (`id_genero`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contenido_genero`
--

LOCK TABLES `contenido_genero` WRITE;
/*!40000 ALTER TABLE `contenido_genero` DISABLE KEYS */;
INSERT INTO `contenido_genero` VALUES (1,3,1),(2,3,2),(3,4,1),(4,4,2),(5,5,3),(6,5,4),(7,5,5),(8,2,3),(9,2,6),(10,2,4),(11,1,3),(12,1,7),(13,6,4),(14,6,3),(15,6,6),(16,7,8),(17,7,9),(18,7,3),(19,8,10),(20,8,11),(21,8,12),(22,9,10),(23,9,2),(24,9,3),(25,10,1),(26,10,2),(27,11,13),(28,11,2),(29,11,4),(30,12,13),(31,12,14),(32,12,3),(33,13,3),(34,13,14),(35,13,15),(36,14,3),(37,14,1),(38,15,3),(39,15,7),(40,16,15),(41,16,1),(42,17,4),(43,17,3),(44,17,16),(45,18,12),(46,18,3),(47,18,9),(48,19,12),(49,19,4),(50,19,13),(51,20,12),(52,20,11),(53,20,9),(54,21,13),(55,21,4),(56,21,10),(57,22,1),(58,22,9),(59,23,17),(60,23,9),(61,23,2),(62,24,12),(63,24,10),(64,24,2),(65,25,3),(66,25,18),(67,25,10),(68,26,3),(69,26,9),(70,26,19),(71,27,12),(72,27,11),(73,27,17),(74,28,3),(75,28,9),(76,28,20),(77,29,3),(78,29,12),(79,29,10),(80,30,3),(81,30,11),(82,30,10),(83,31,3),(84,31,11),(85,31,9),(86,32,9),(87,32,10),(88,32,4),(89,33,3),(90,33,17),(91,33,4),(92,34,3),(93,34,21),(94,35,12),(95,35,2),(96,35,11);
/*!40000 ALTER TABLE `contenido_genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `contenido_json`
--

DROP TABLE IF EXISTS `contenido_json`;
/*!50001 DROP VIEW IF EXISTS `contenido_json`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `contenido_json` AS SELECT 
 1 AS `id`,
 1 AS `poster`,
 1 AS `título`,
 1 AS `categoria`,
 1 AS `genero`,
 1 AS `resumen`,
 1 AS `temporadas`,
 1 AS `reparto`,
 1 AS `trailer`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genero` (
  `id_genero` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(120) NOT NULL,
  PRIMARY KEY (`id_genero`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (1,'Ciencia Ficción'),(2,'Fantasía'),(3,'Drama'),(4,'Ficción'),(5,'Sucesos'),(6,'Misterio'),(7,'Hechos verídicos'),(8,'Crimen'),(9,'Suspenso'),(10,'Aventura'),(11,'Sci-Fi'),(12,'Acción'),(13,'Comedia'),(14,'Familia'),(15,'Western'),(16,'Tecnología'),(17,'Terror'),(18,'Historia'),(19,'Intriga'),(20,'¿Ficción?'),(21,'Hechos veríficos');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `contenido_json`
--

/*!50001 DROP VIEW IF EXISTS `contenido_json`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `contenido_json` AS select `contenido`.`id_contenido` AS `id`,concat('https://www.trailerflix.com.ar',`contenido`.`poster`) AS `poster`,`contenido`.`título` AS `título`,`categoria`.`nombre` AS `categoria`,(select group_concat(' ',`genero`.`nombre` separator ',') from (`contenido_genero` join `genero` on((`contenido_genero`.`genero` = `genero`.`id_genero`))) where (`contenido`.`id_contenido` = `contenido_genero`.`contenido`)) AS `genero`,`contenido`.`resumen` AS `resumen`,(case when (`contenido`.`temporadas` = 0) then 'N/A' else `contenido`.`temporadas` end) AS `temporadas`,(select group_concat(' ',`actores`.`nombre` separator ',') from (`contenido_actores` join `actores` on((`contenido_actores`.`actor` = `actores`.`id_actores`))) where (`contenido`.`id_contenido` = `contenido_actores`.`contenido`)) AS `reparto`,`contenido`.`trailer` AS `trailer` from (((`contenido` join `contenido_actores` on((`contenido_actores`.`contenido` = `contenido`.`id_contenido`))) join `actores` on((`contenido_actores`.`actor` = `actores`.`id_actores`))) join `categoria` on((`contenido`.`categoria` = `categoria`.`id_categoria`))) group by `contenido_actores`.`contenido` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-28 21:47:57
