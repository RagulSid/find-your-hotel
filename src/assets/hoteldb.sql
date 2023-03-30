CREATE DATABASE  IF NOT EXISTS `hoteldb` /*!40100 DEFAULT CHARACTER SET armscii8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hoteldb`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hoteldb
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `hotel_name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `review` varchar(500) DEFAULT NULL,
  `hotel_image` varchar(200) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` VALUES (0,'Arya Bhavan','non Veg hotel with variety dishes','kovilpatti',3.9,'nice food, must try','https://media-cdn.tripadvisor.com/media/photo-s/0a/ba/08/b0/naatu-koli-curry.jpg','https://imgmedia.lbb.in/media/2018/09/5ba7ea3a434e390f01a08419_1537731130830.jpg'),(1,'Hotel garuda','non Veg hotel with variety dishes','kovilpatti',4.0,'nice food, Hygiene Hotel','https://10619-2.s.cdn12.com/rests/original/330_505433379.jpg','https://content.jdmagicbox.com/comp/kovilpatti/j6/9999p4632.4632.170601205126.e9j6/catalogue/garuda-hotel-kovilpatti-ho-kovilpatti-restaurants-3exyofs.jpg'),(2,'Ango Plaza','Veg hotel with variety dishes','kovilpatti',4.7,'nice hotel','https://r1imghtlak.mmtcdn.com/11930ec04b3b11eba5960242ac110004.jpg','https://r2imghtlak.mmtcdn.com/r2-mmt-htl-image/htl-imgs/202101061906421583-3e800f964b3b11eb93c20242ac110004.jpg'),(3,'Ananda','Veg hotel with variety dishes','kovilpatti',4.6,'nice hotel','https://content.jdmagicbox.com/comp/kovilpatti/a2/9999px461.x461.170517195429.e7a2/catalogue/hotel-ananda-pure-veg-restaurants-kovilpatti-1wxbawsjrl.jpg','https://content.jdmagicbox.com/comp/kovilpatti/a2/9999px461.x461.170517195429.e7a2/catalogue/hotel-ananda-pure-veg-restaurants-kovilpatti-1wxbawsjrl.jpg'),(4,'Odupi','non Veg hotel with variety dishes','kovilpatti',4.5,'nice food, must try','https://images.trvl-media.com/lodging/38000000/37650000/37647700/37647671/9818cf02_y.jpg','https://images.trvl-media.com/lodging/38000000/37650000/37647700/37647671/9818cf02_y.jpg'),(5,'Reva plaza','Veg hotel with variety dishes','kovilpatti',4.3,'nice hotel','https://content.jdmagicbox.com/comp/kovilpatti/j6/9999p4632.4632.170601205126.e9j6/catalogue/garuda-hotel-kovilpatti-ho-kovilpatti-restaurants-3exyofs.jpg','https://cdn1.goibibo.com/voy_ing/t_g/087d6e2461fd11ebb4a10242ac110002.jpg');
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel2`
--

DROP TABLE IF EXISTS `hotel2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel2` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `hotel_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `review` varchar(255) DEFAULT NULL,
  `hotel_image` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel2`
--

LOCK TABLES `hotel2` WRITE;
/*!40000 ALTER TABLE `hotel2` DISABLE KEYS */;
INSERT INTO `hotel2` VALUES (0,'Barbeque Nation','non Veg hotel with variety dishes','madurai',4.8,'nice food, must try','https://i.ytimg.com/vi/0I6gQp8D0lk/hqdefault.jpg','https://i.ytimg.com/vi/0I6gQp8D0lk/hqdefault.jpg'),(1,'Cine Suvai','non Veg hotel with cinema themes','madurai',4.6,'must try for all cinema lovers','https://media-cdn.tripadvisor.com/media/photo-s/1a/a7/7a/c9/getlstd-property-photo.jpg','https://media-cdn.tripadvisor.com/media/photo-s/1a/a7/7a/c9/getlstd-property-photo.jpg'),(2,'Mug and beans','Authentic cuisines with fast foods','madurai',4.5,'must try foods','https://10619-2.s.cdn12.com/rests/original/405_503357802.jpg','https://10619-2.s.cdn12.com/rests/original/405_503357802.jpg'),(3,'Thalapakatti','For Biryani Lovers','madurai',4.5,'Nice, price were little high','https://media-cdn.tripadvisor.com/media/photo-s/1a/cf/03/33/dindigul-thalappakatti.jpg','https://media-cdn.tripadvisor.com/media/photo-s/1a/cf/03/33/dindigul-thalappakatti.jpg'),(4,'Yazzh Hotel','Non veg family restaurant','madurai',4.5,'Nice, price were afforable','https://media-cdn.tripadvisor.com/media/photo-s/04/85/23/55/getlstd-property-photo.jpg','https://media-cdn.tripadvisor.com/media/photo-s/04/85/23/55/getlstd-property-photo.jpg'),(5,'Surya veg hotel','Roof top Veg family restaurant ','madurai',4.3,'nice, but place too windy ','https://media-cdn.tripadvisor.com/media/photo-s/0a/e4/cf/a0/roof-top-restaurant-republic.jpg','https://media-cdn.tripadvisor.com/media/photo-s/0a/e4/cf/a0/roof-top-restaurant-republic.jpg');
/*!40000 ALTER TABLE `hotel2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test` (
  `idtest` int NOT NULL,
  PRIMARY KEY (`idtest`)
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-30 10:47:35
