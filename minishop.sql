/*
SQLyog Community v11.26 (64 bit)
MySQL - 5.6.12-log : Database - minishop
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`minishop` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `minishop`;

/*Table structure for table `shop_item` */

DROP TABLE IF EXISTS `shop_item`;

CREATE TABLE `shop_item` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` float DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `shop_item` */

insert  into `shop_item`(`id`,`title`,`price`,`description`) values (1,'Samsung 43 Inch Plasma TV',2999,'Crystal Clear Image Panel\r\n\r\nUsing its new filter and panel structure, the Samsung Plasma 1 TV produces clear visuals from almost every angle by eliminating layered images. It also eliminates the production of dual images and blurring that is typically found with glass.\r\n\r\nEnjoy a better viewing experience with auto noise removal\r\n\r\nThe Samsung 43 Inch Plasma TV features Clean View which gives you a crystal clear programming experience. The digital and analog noise of the screen is removed by Clean View’s auto noise removal technology. Visual noise from both air and cable sources is deleted by the Analog Noise Filter, thus enhancing the quality of picture. The Samsung 43 Inch Plasma TV allows you to watch pictures with best quality & clarity.'),(2,'Sony Xperia Z1',321,'\r\n\r\nThe Sony Xperia Z1 is a brilliant smartphone that ships with a boatload of features which make life on the go much easier for you. It sports a snazzy white finish that lends it an aura of class and elegance. Running on the Android 4.2 (Jelly Bean) operating system, this smartphone enables a seamless user experience. It provides all the main functions of the phone at your fingertips. A powerful Quad Core processor drives the performance of the Xperia Z1. It efficiently handles all the tasks and applications that are running in tandem with each other, allowing for an improved multitasking experience. The 2GB of RAM helps process your tasks even faster. Boasting a 5inch Full HD TRILUMINOS display, the Xperia Z1 will completely overhaul your multimedia and gaming experience. By incorporating the X Reality picture engine and BRAVIA technologies, this smartphone delivers realistic and razor sharp images. You can capture the memorable moments of your life and cherish them forever with the advanced 20.7MP camera. This Sony smartphone provides you with a storage capacity of 16GB for saving all your multimedia files, applications, and other miscellaneous data. With 4G LTE connectivity, you can stay in touch with everyone from wherever you are.\r\n'),(3,'Casio Analog Digital Watch',100,'LED light Afterglow;\r\n30 Telememo pages;\r\nCurrent time in 30 cities (29 time zones), daylight saving on/off;\r\n1/100-second stopwatch;\r\nCountdown timer, Input range:1 minute to 24 hours;\r\n3 independent daily alarms (2 one-time alarms and 1 snooze alarm);\r\nHourly time signal;\r\n50 meter water resistant;\r\nAuto-calendar (to year 2099);\r\n12/24-hour format;\r\nRegular timekeeping , Analog: 2 hands (Hour, minute);\r\nDigital: Hour, minutes, seconds, am/pm, month, date, day;\r\nAccuracy: -/ 30 seconds per month;\r\nApprox. battery life: 10 years on CR2025'),(4,'Ray-Ban Wayfarer Unisex Sunglasses',150,'- Plastic Black Frame Color\r\n- Green Lens Color\r\n- 100% UV Protection '),(5,'Nikon D7000',2000,'\r\nNikon D7000 18-105mm Lens Kit (16.2 Megapixel, DSLR Camera, Black)\r\n\r\nThe Nikon D7000 is a hit with both professionals and beginner who have much to say about it. The D7000 features a 16.2 MP DX-format CMOS sensor, 6 fps continuous shooting and breathtaking Full 1080p HD movies with full time autofocus at a price you cannot ignore. Use the Nikon D7000 to take great photos of the most beautiful memories of your life. You can easily carry it with you anywhere you go in any environment; having confidence that your D7000 will resist most difficult surrounding circumstances of weather fluctuations and dust and so on!\r\n\r\nFeatures:\r\n\r\n    High Resolution 16.2 MP DX-format CMOS sensor for large prints and tight cropping.\r\n    High Speed 6 frames per second continuous shooting up to 100 shots captures the most fleeting action.\r\n    Twin SD Card Slots with SD, SDHC, and SDXC memory card compatibility gives you options to keep on shooting or separate your NEF (RAW), JPEG and movie files.\r\n    Breathtaking Full 1080p HD Movies with Full Time Autofocus and external stereo microphone jack to record cinematic-quality movies up to 20 minutes.\r\n    Dynamic ISO range from 100 to 6400 expandable to 25,600 (Hi2) lets you shoot in near darkness.\r\n    Customizable 39 point AF System includes nine center cross-type sensors that operate with every AF NIKKOR lens so you can focus on making great images.\r\n    Compact but durable with magnesium-alloy top and rear covers, superior weather and dust seals and a 150,000 cycle-rated shutter system providing reliable operation.\r\n    3 Inch, 921,000-dot Super-Density LCD Monitor with 170 degree viewing delivers bright, crisp image playback, and precise Live View and Movie shooting.\r\n    Versatile Scene Modes lets you choose from Portrait, Landscape, Child, Sports, Close-up or Night Portrait for stunning results in otherwise challenging conditions.\r\n\r\n\r\nNikon AF Nikkor 50mm f/1.8D for Nikon DSLR Cameras\r\n\r\nThis compact and fast, f/1.8 lens is versatile and perfect for travel and portrait pictures as well as general photography.\r\n\r\nAffordable, fast f/1.8 prime lens with manual aperture control.\r\n\r\nOffering natural image rendering and exceptional sharpness, the AF NIKKOR 50mm f/1.8D is a versatile, affordable prime lens. Extremely compact and lightweight—it weighs approximately 5.5 oz (155 g)— making it a convenient carry-around lens for nearly any shooting opportunity. Its aperture control ring enables smooth manual adjustments during Live View shooting, making it a great video partner, too. '),(6,'Davidoff Cool Water Into The Ocean',50,'Women\'s edition Davidoff Cool Water Into The Ocean for Women highlights a floral-fruity blend refreshed with herbal notes. The very opening provides fresh mint combined with fruity drops of melon and pineapple. The heart introduces floral notes of aquatic vi9olets softened with powdery veil of iris from the base. Cool Water Into The Ocean for Women was launched in 2013.');

/*Table structure for table `shop_item_image` */

DROP TABLE IF EXISTS `shop_item_image`;

CREATE TABLE `shop_item_image` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `shop_item_image` */

insert  into `shop_item_image`(`id`,`item_id`,`path`) values (1,1,'item_L_5193614_1985881.jpg'),(2,1,'clear_image_panel.jpg'),(3,2,'item_L_5820982_3065994.jpg'),(4,2,'xperia_z1_dimensions_white.jpg'),(5,3,'item_L_4538709_3141493.jpg'),(6,3,'unit_L_4538709_33873800490_1489617.jpg'),(7,4,'item_L_6067662_3182088.jpg'),(8,5,'item_L_6499408_4003390.jpg'),(9,6,'item_L_5204297_2007925.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
