CREATE DATABASE  IF NOT EXISTS `test_schema` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `test_schema`;
-- MySQL dump 10.13  Distrib 8.0.28, for macos11 (x86_64)
--
-- Host: localhost    Database: test_schema
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `amazon_products_data`
--

DROP TABLE IF EXISTS `amazon_products_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amazon_products_data` (
  `Product Name` text,
  `Product Image` text,
  `Product Price` text,
  `Product Details` json DEFAULT NULL,
  `Product Id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amazon_products_data`
--

LOCK TABLES `amazon_products_data` WRITE;
/*!40000 ALTER TABLE `amazon_products_data` DISABLE KEYS */;
INSERT INTO `amazon_products_data` VALUES ('        Old Spice Rasur Creme - 70 G (original) - Packung Von 2       ','https://images-eu.ssl-images-amazon.com/images/I/41xHbjdSXJL._SY300_SX300_QL70_ML2_.jpg','8,00€','{\"Duft\": \"Rasur\", \"Marke\": \"Old Spice\", \"Artikelgewicht\": \"0.15 Pfund\"}',2),(' Short Story: Violoncello und Klavier. (Cello-Bibliothek) ','','16,00€','{}',16),(' Short story (dushkin/hegyi) violon ','','\n          (0%)\n        ','{}',17),(' Concerto grosso g-Moll: Weihnachtskonzert. op. 6/8. 2 Violinen, Violoncello, Streichorchester und Cembalo. Partitur. (Concertino) ','','\n          (0%)\n        ','{}',20),(' Concerto grosso 8 g opus 6 partitu ','','\n          (0%)\n        ','{}',21),(' Concertino B-Dur: Violine und Orchester. Klavierauszug mit Solostimme. (Edition Schott) ','','\n          (0%)\n        ','{}',52),(' Concertino bes violon ','','\n          (0%)\n        ','{}',53),(' Concerto in E flat \"Dumbarton Oaks\": für Kammerorchester. Kammerorchester. Studienpartitur. (Musik unserer Zeit) ','','18,00 €','{}',66),(' Concert es kammerorchester parti musique d\'ensemble ','','27,08 €','{}',67),(' Musik für Kinder: Im Fünftonraum. Vol. 1. Singstimme, Blockflöte und Schlagzeug. Sing- und Spielpartitur. (Orff-Schulwerk) ','','\n          0% (0%)\n        ','{}',70),(' Schulwerk vol. 1 (ted.) (orff/keetman) ','','\n          0% (0%)\n        ','{}',71),(' 5 antike Oden: nach Gedichten von Sappho. op. 57. mittlere Frauenstimme, Viola und Klavier. mittel. Stimmensatz. (Edition Schott) ','','32,00 €','{}',76),(' Funf antike oden op. 57 -ensemble de partitions ','','\n          (0%)\n        ','{}',77),(' Etuden 1 & 2 orgue ','','31,19 €','{}',113),(' Etuden 1 & 2 orgue ','','31,19 €','{}',114),(' Etuden 1 & 2 orgue: Orgel. ','','31,19 €','{}',115),(' Sämtliche Lieder mit Klavierbegleitung: mit Anhang: Frühe Lieder und Fragmente. Band 2. Singstimme und Klavier. (Edition Schott, Band 2) ','','\n          (0%)\n        ','{}',120),(' Complete songs with piano accompaniment band 2 chant ','','\n          (0%)\n        ','{}',121),('','','','{}',130),('','','','{}',136),('','','','{}',137),('','','','{}',142),('','','','{}',143),('','','','{}',145),('','','','{}',147),('','','','{}',152),('','','','{}',157),('','','','{}',159),('','','','{}',161),('','','','{}',163),('','','','{}',164),('','','','{}',165),(' Spielbuch orchestre ','','\n          0% (0%)\n        ','{}',166),(' Spielbuch orchestre ','','40,80 €','{}',167),('','','','{}',168),('','','','{}',170),(' Wir horen und spielen band 3 piano ','','\n          0% (0%)\n        ','{}',171),('','','','{}',172),(' Arien(2) (grand macabre) 2e akte ','','\n          (0%)\n        ','{}',173),('','','','{}',174),('','','','{}',176),('','','','{}',177),('','','','{}',178),(' Fantasie c piano ','','9,03 €','{}',196),(' Fantasie c piano ','','9,03 €','{}',197),(' Le Coucou: Rondeau. Klavier. (Edition Schott Einzelausgabe) ','','\n          0% (0%)\n        ','{}',198),(' Coucou piano ','','\n          0% (0%)\n        ','{}',199),(' Adelaide: op. 46. mittlere Singstimme und Klavier. (Edition Schott Einzelausgabe) ','','6,50 €','{}',200),(' Adelaide op.46 ','','13,20 €','{}',201),(' Cavatine: op. 85/3. Violine (Violoncello) und Klavier. (Edition Schott Einzelausgabe) ','','\n          (0%)\n        ','{}',218),(' Cavatine opus 85/3 violon ','','\n          (0%)\n        ','{}',219),(' Gnomenreigen: Konzert-Etüde. Klavier. (Edition Schott Einzelausgabe) ','','5,50€','{}',222),(' Gnomenreigen piano ','','9,03 €','{}',223),(' Moto perpetuo: op. 11. Violine und Klavier. (Edition Schott Einzelausgabe) ','','6,50 €','{}',246),(' Moto perpetuo violon ','','10,60 €','{}',247),(' Happy Birthday: Humoristische Variationen über ein Geburtstagslied. Klavier 4-händig. (Edition Schott Einzelausgabe) ','','6,50 €','{}',254),(' Happy birthday piano ','','\n          0% (0%)\n        ','{}',255),(' 6 Duos: op. 1. 2 Flöten. Spielpartitur. (Edition Schott) ','','24,50€','{}',262),(' Duos(6) opus 1 flute traversiere ','','33,14 €','{}',263),(' Csárdás-Kompositionen: Klarinette und Klavier. (Edition Schott) ','','16,00 €','{}',284),(' Csardas-kompositionen clarinette ','','26,26 €','{}',285),(' Sérénade espagnole: Violine und Klavier. (Edition Schott, Nr. 26) ','','9,00 €','{}',326),(' Serenata spagnola (kreisler) violon ','','14,77 €','{}',327),(' Eingedunkelt: Neun Gedichte nach Paul Celan. Alt-Solo. Alt. ','','\n          (0%)\n        ','{}',339),(' Eingedunkelt ','','\n          (0%)\n        ','{}',340),(' Viola Spaces: Contemporary Viola Studies. Band 1. Viola. (Essential Exercises, Band 1) ','','28,00 €','{}',422),(' Viola spaces vol. 1 alto ','','43,02 €','{}',423),(' Klaviertrio G-Dur Hob XV:15 (EB 1131) ','','13,90€','{}',478),(' Klavier-trio g-dur hob xv: 15 ','','\n          (0%)\n        ','{}',479),(' VIOLINKONZERT 2 D-DUR KV 211 ','','\n          (0%)\n        ','{}',492),(' Violinkonzert 2 d-dur kv 211 ','','25,02€','{}',493),(' 2 divertimenti kv 252, kv 240 ','','22,37 €','{}',510),(' 2 leichte Divertimenti für Violine (Oboe), Cello (Fagott) und Klavier - Es-dur KV 252 (240a) und B-dur KV 240 - Bearbeitung (EB 3810) ','','22,37 €','{}',511),(' Il Re pastore KV 208 - L\'amerò, sarò costante - Arie der Aminta - Ausgabe für Sorpan, Violine und Klavier (EB 5473) ','','7,90 €','{}',545),(' L\'amero/dein bin ich kv 208 ','','10,55 €','{}',546),(' Sonate op. 41 - Ausgabe für Fagott und Klavier (EB 5567) ','','35,90 €','{}',547),(' Sonate op. 41 basson ','','47,69 €','{}',548),(' Quintett B-dur op. 34 - Breitkopf Urtext - Stimmensatz (EB 5830) ','','25,90€','{}',559),(' Quintett b-dur op. 34 clarinette ','','36,44 €','{}',560),(' Sonate B-dur für Flöte und Klavier (EB 5879) ','','15,90€','{}',561),(' Sonate bes flute traversiere ','','20,96 €','{}',562),(' Chaconne d-moll aus bwv 1004 ','','13,93 €','{}',579),(' Chaconne aus der Partita II d-moll BWV 1004 Bearbeitung für Cembalo (EB 6594) ','','13,93 €','{}',580),(' LITANIAE DE VENERABILI KV 243 ','','12,65€','{}',599),(' Litaniae de venerabili kv 243 ','','12,26 €','{}',600),(' Kantate 2 Ach Gott, Vom ','','8,16 €','{}',617),(' Kantate 2 ach gott, vom ','','5,81 €','{}',618),(' Kantate 19 Es Erhub Sich Ein ','','11,26 €','{}',631),(' Kantate 19 es erhub sich ein ','','7,42 €','{}',632),(' Kantate 52 Falsche Welt, Dir ','','7,39 €','{}',645),(' Kantate 52 falsche welt, dir ','','6,21 €','{}',646),(' KANTATE 083 ERFREUTE ZEIT IM ','','6,50 €','{}',661),(' Kantate 083 erfreute zeit im ','','\n          (0%)\n        ','{}',662),(' Kantate 86 Wahrlich, Wahrlich ','','6,50 €','{}',665),(' Kantate 86 wahrlich, wahrlich ','','\n          (0%)\n        ','{}',666),('','','','{}',684),(' Kantate 114 Ach Lieben ','','8,50 €','{}',689),(' Kantate 114 ach lieben ','','\n          (0%)\n        ','{}',690),('','','','{}',691),('','','','{}',692),(' Kantate 117 Sie Lob Und Ehr ','','9,15 €','{}',695),('','','','{}',696),('','','','{}',698),(' Bach, Kantate 164, Ihr, die ihr euch von Christo nennet ','','7,39 €','{}',725),(' Kantate 164 ihr die ihr euch ','','\n          (0%)\n        ','{}',726),(' Kantate 181 Leichtgesinnte ','','6,50 €','{}',743),(' Kantate 181 leichtgesinnte ','','\n          (0%)\n        ','{}',744),('','','','{}',804),('','','','{}',816),('','','','{}',818),('','','','{}',829),('','','','{}',831),(' Fantasie über den Choral \'Ein feste Burg ist unser Gott\' op. 27 für Orgel - Breitkopf Urtext (EB 8512) ','','11,90 €','{}',834),(' L\'ARLESIENNE-SUITE NR. 2 ORCHESTRE ','','\n          (0%)\n        ','{}',894),(' L\'arlesienne-suite nr. 2 orchestre ','','\n          (0%)\n        ','{}',895),(' EIN DEUTSCHES REQUIEM 2 KLAV ','','92,00 €','{}',910),(' Ein deutsches requiem 2 klav ','','\n          (0%)\n        ','{}',911);
/*!40000 ALTER TABLE `amazon_products_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-08 20:34:26
