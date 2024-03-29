-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: hospitaldb
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `hospitals`
--

DROP TABLE IF EXISTS `hospitals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospitals` (
  `hospital_id` int NOT NULL AUTO_INCREMENT,
  `hospital_name` varchar(100) NOT NULL,
  PRIMARY KEY (`hospital_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospitals`
--

LOCK TABLES `hospitals` WRITE;
/*!40000 ALTER TABLE `hospitals` DISABLE KEYS */;
INSERT INTO `hospitals` VALUES (1,'Apollo Hospitals'),(2,'Jawaharlal Nehru Medical College and Hospital'),(3,'Indira Gandhi Institute of Medical Sciences (IGIMS)'),(4,'AIIMS - All India Institute Of Medical Science');
/*!40000 ALTER TABLE `hospitals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `patient_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL,
  `patient_photo` varchar(255) NOT NULL,
  `psychiatrists_id` int DEFAULT NULL,
  PRIMARY KEY (`patient_id`),
  KEY `psychiatrists_id` (`psychiatrists_id`),
  CONSTRAINT `patients_ibfk_1` FOREIGN KEY (`psychiatrists_id`) REFERENCES `psychiatrists` (`psychiatrists_id`),
  CONSTRAINT `patients_chk_1` CHECK ((length(`address`) >= 10)),
  CONSTRAINT `patients_chk_2` CHECK (regexp_like(`email`,_utf8mb4'^[a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,4}$')),
  CONSTRAINT `patients_chk_3` CHECK (regexp_like(`password`,_utf8mb4'^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d).{8,15}$'))
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,'Omkar','Thane, Maharashtra','omkar@gmail.com','+91 8473384583','Omkar456','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705311127/patientImg/ymuqyifgvyuehxmzv3t9.jpg',6),(2,'Shubham L.','Baner, Pune','shubham123@gmail.com','+91 8373627384','Shubham@8','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705311343/patientImg/pkdxxepx5lp3ezs3fszm.jpg',2),(3,'Rohit Singh','Surat, Gujrat','roohiiit77@gmail.com','+91 9983745629','Roohiiit77','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705311444/patientImg/gzjpeidjvh9fkwa37vyn.jpg',10),(4,'Amit Choudhary','Delhi, NCR','Iamit@gmail.com','+91 7463537897','AmiittC1','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705311593/patientImg/wuwz4upqaq2d9twstrih.jpg',5),(5,'Kanishka Gujrathi','Ahmedabad, Gujrat','kanishkaa@gmail.com','+91 9762889764','KanishK@1','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705311716/patientImg/rayvaqtqbmvd57dyw395.jpg',2),(6,'Abhishek Upadhya','Patna, Bihar','abhii778@gmail.com','+91 7746367890','abhII123','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705311875/patientImg/dad2rflsg48ijnkpnieo.jpg',14),(7,'Ashish Subramanyam','Indira Nagar','ashiish2001@gmail.com','+91 7837378900','Ashiish@0','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705312014/patientImg/skulzddgvnf5rmrysnsu.jpg',21),(8,'Trisha Mirza','Koramangala','trishaam@gmail.com','+91 9008543789','TriSha@90','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705312130/patientImg/gx1jhdjz09zkx3yeqm6h.jpg',4),(9,'Anuraj Jaiswal','Vapi, Gujrat','anuuraag66@gmail.com','+91 9876005428','Anu@Rag001','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705312246/patientImg/layubenpsqtnvr7430ym.jpg',10),(10,'Aditya Roy','Nand Nagri, Delhi','adiiroy0@gmail.com','+91 8976599031','Adii123@','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705312399/patientImg/nmx8gqtrhpmu8urdcqvd.jpg',11),(11,'Kirti Mehara','Andheri, Mumbai','kiirtii7@gmail.com','+91 9842289330','Kirtii123','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705312702/patientImg/emvujclcgnwbbwnhlkcc.jpg',8),(12,'Pravin Patil','Kalyan, Mumbai','prawiin647@gmail.com','+91 7484789221','Pravin88@','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705312962/patientImg/tby5w91obccg1rklnbeq.jpg',10),(13,'Thomas James','Banglore City','james223@gmail.com','+91 8487228003','thomaaS848','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705313146/patientImg/m0p9rsudx7cfovgv0meu.jpg',19),(14,' Saurabh Kapoor','Andheri West','saurabh100@gmail.com','+91 8473636112','100raabK','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705313397/patientImg/ouzg5ukkgw4l7t50vzxa.jpg',1),(15,'Meenal Patel','Srinagar, Jammu','meenalp@gmail.com','+91 9983838123','Meenal900','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705313492/patientImg/ijpnlsftn4mxudhau1em.jpg',8),(16,'Omkar','Thane, Maharashtra','omkar@gmail.com','+91 8473384583','Omkar456','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705313556/patientImg/ichgee3nl6vvpzaoinrc.jpg',9),(17,'Karan Randhawa','Harayana City','kaaranr@gmail.com','+91 9844337890','KaraanR1','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705314021/patientImg/vuudimozgs031d0n8brn.jpg',6),(18,'Shivam Kumar','Jharkhand city','shivaamk@gmail.com','+91 9775003421','Shivaam9','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705314243/patientImg/gnyd6fqqpwjxvujvxswi.jpg',17),(19,'Manoj Sharma','Delhi NCR CITY','mannusharma@gmail.com','+91 7788990054','Manuu556@','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705314355/patientImg/qjl6xyml4hmgwis8eztt.jpg',1),(20,'Shriniwas Patil','Ahmednagar, Maharashtra','shriipatil@gmail.com','+91 8989783730','PatilShri@7','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705314467/patientImg/a3d3njeljvgp5j3d4uu7.jpg',4),(21,'Arjun Shriwastav','Hyderabad City','rjune6@gmail.com','+91 7888023412','Rjune@06','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705314862/patientImg/hcj3o4fgpfqhvluluels.jpg',12),(22,'Ronit Roy','Vadodara, Gujrat','rooniiit007@gmail.com','+91 9121906651','ronIiit@007','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705314971/patientImg/s9ijl5igmtf5b61pe2dn.jpg',11),(23,'Harshal Vikhe','Nashik, Maharashtra','harshuu001@gmail.com','+91 7888655665','Harshuu@001','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705315283/patientImg/ytbhqljksjw7irqzlhjd.jpg',25),(24,'Aishwarya Kolhi','Delhi City ','ishwarya@gmail.com','+91 8905643217','Aishuu@999','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705315582/patientImg/zmr3edwzhm57zyrdem1p.jpg',25),(25,'Rohit Singh','Pune, Maharashtra','roohiiit1@gmail.com','+91 9875432210','Roohiiit@999','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705317004/patientImg/axqadazkn3sm7icvh6tt.jpg',3),(26,'Shubham Patil','Andheri Eash','shubhaam123@gmail.com','+91 8999765432','Shbuham@9','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705317300/patientImg/fopi581jypdll7ygw0m6.jpg',5),(27,'Vidhit Sheth','Valsad, Gujrat','vidhits00@gmail.com','+91 8996500980','Vidhiiit@7','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705317550/patientImg/gdtztyeogefdlzz9ygui.jpg',2),(28,'Nayan Shukla','Ranchi, Jharkhand','shuklanayan100@gmail.com','+91 9987483380','NayaN@100','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705318731/patientImg/ucickmfu28m05nuw3hy5.jpg',13),(29,'Richa Desouza','Kolkata City','desouzaricha1@gmail.com','+91 7855431009','1RicheRicha','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705319214/patientImg/fzyrpvxlok07sokirlrj.jpg',17),(30,'Venkatesh Iyer','Indore, Madhya Pradesh','vyenktiyer@gmail.com','+91 9111290086','IyerVyenky1','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705319614/patientImg/gw9jp8wrilw2rnixqtr7.jpg',9),(31,'Rahul Singh','Dharavi city','singhrahuul9@gmail.com','+91 9033421890','Rahul@134','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705319842/patientImg/ht57ptjbiumis6drygfl.jpg',10),(32,'Aarav Sharma','Andheri, Mumbai','aaravsharma@gmail.com','+91 8493848393','AaeavSharma990','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705320417/patientImg/msyh98nciq07nvyygaab.jpg',7),(33,'Ananya Patel ','Surat, Gujarat','patelaananya@gmail.com','+91 7897889782','AnanyaPatel@987','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705320484/patientImg/mlcpsjhapqasuidoxsob.jpg',1),(34,'Arjun Yadav ','Banjara Hills, Hyderabad','yadavarjuun78@gmail.com','+91 8938388932','ArjunY@89','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705320614/patientImg/j6hp4v33uu2faygighzx.jpg',7),(35,'Nisha Gupta','Vaishali Nagar, Jaipur','nishaaguptaa197@gmail.com','+91 7784533210','GuptaaN0@','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705320690/patientImg/psdhqeag8k0qhoryawq8.jpg',9),(36,'Rajeev Agarwal','Salt Lake City, Kolkata','agarwalraj@gmail.com','+91 8066541009','RajivAg9','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705320830/patientImg/tvprbk9nmvc8ar0o09gb.jpg',3),(37,'Priya Verma','Adyar, Chennai','vermapriya@gmail.com','+91 7844211890','priyaVerma@111','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705320905/patientImg/rjg30elnkyneo44srt4t.jpg',3),(38,'Rohit Kapoor','Koramangala, Bangalore','kapoorrohiit@gmail.com','+91 7844211992','RoohiiitK89','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705321270/patientImg/kj0jtxaoxbgnxvglsisj.jpg',29),(39,'Shreya Joshi','Satellite, Ahmedabad','shreyaaj@gmail.com','+91 9125629084','Shreyaaa@34','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705321374/patientImg/azigxynuqdcvnjp9qy4z.jpg',33),(40,'Vikram Malhotra ','Sector 17, Chandigarh','vikraamm@gmail.com','+91 9125388210','VikramM@771','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705321442/patientImg/g7gmqjk1bbcholxijgvu.jpg',33),(41,'Pooja Khanna','Kothrud, Pune','poojak990@gmail.com','+91 7823088210','poojaK110','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705321528/patientImg/fitky1gprf0ppkwem5y0.jpg',29),(42,'Arvind Gupta','Paldi, Ahmedabad','guptaarvind@gmail.com','+91 8802308110','Guptaarvind1','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705321980/patientImg/as6rjzyrb8rdigfugfvc.jpg',4),(43,'Neha Sharma','Gachibowli, Hyderabad','nehaasharma@gmail.com','+91 9563219002','Nehaa@0000','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705322072/patientImg/piwapqjmenv3mxibvhft.jpg',5),(44,'Rahul Verma','Anna Nagar, Chennai','vermarahul899@gmail.com','+91 8392839101','RahulVerma@9','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705322138/patientImg/wevml9u2kjlnlgpvphzd.jpg',6),(45,'Sneha Patel','Adajan, Surat','patelsnehaa@gmail.com','+91 7453627283','Snehaa7283','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705322214/patientImg/ledxmrfhbe2fg0m3layu.jpg',14),(46,'Kartik Malhotra','Sector 45, Chandigarh','malhotrakartik@gmail.com','+91 9811205643','KartiikM@643','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705322313/patientImg/odb5wwou7gzsolltdhuc.jpg',21),(47,'Meera Reddy','BTM Layout, Bangalore','reddymeera@gmail.com','+91 7788251002','MeeraaR@1002','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705322657/patientImg/azhkyyefdfdwjkebdgkw.jpg',22),(48,'Rajat Kapoor','Salt Lake, Kolkata','kapoorraajat3@gmail.com','+91 8943211903','KapoorR@1903','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705322793/patientImg/gszzcy54hin1p0an8i0z.jpg',26),(49,'Aisha Khan','Bandra West, Mumbai','khanaishaa@gmail.com','+91 9032178904','KhanAisha@8904','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705322854/patientImg/zqisxk1wvefipakuwmxj.jpg',30),(50,'Varun Yadav','Civil Lines, Jaipur','yadavarun@gmail.com','+91 9112904322','YadavV@4322','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705322913/patientImg/hy0cdzhvjydabhdetgup.jpg',26),(51,'Deepak Kapoor','Jubilee Hills, Hyderabad','kapooryadav2@gmail.com','+91 9012312345','KapoorY@2345','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705323180/patientImg/nrmlrikoruewiewlt4us.jpg',18),(52,'Harsha Singh','Thaltej, Ahmedabad','singhharshaa@gmail.com','+91 9023665213','HarshaS@5213','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705323235/patientImg/ksk19ayo3scjldo1p7ns.jpg',18),(53,'Ishaan Sharma','Shivaji Nagar, Pune','sharmaaishan90@gmail.com','+91 8903665321','IshanSharma@45','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705323298/patientImg/pjww58bnyevy7jpwqgtg.jpg',26),(54,'Kavita Reddy','Koramangala, Bangalore','reddykavita31@gmail.com','+91 9123421890','ReddyK@1890','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705323376/patientImg/ki1uivzfc1u3rrxijeid.jpg',18),(55,'Naina Malhotra','Bodakdev, Ahmedabad','malhotranaina@gmail.com','+91 8932178992','MalhotraN@8992','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705324232/patientImg/jkpdlpmmnfyingzos9kl.jpg',15),(56,'Rahul Patel','Katargam, Surat','patelrahul@gmail.com','+91 9821738289','RahulP@8289','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705324342/patientImg/m0rbzakt9wx2bvthwrfs.jpg',19),(57,'Simran Kapoor','Velachery, Chennai','kapoors@gmail.com','+91 8930044129','KapoorS@4129','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705324405/patientImg/epmcrnpj7kh3634gczoe.jpg',23),(58,'Vinita Yadav','Mansarovar, Jaipur','vinitayadav@gmail.com','+91 8927372790','YadavV@2790','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705324477/patientImg/iwjcyurqhpawjdm1hfqm.jpg',15),(59,'Aditya Mehta','Borivali West, Mumbai','mehtaditya@gmail.com','+91 9902134567','MehtaA@4567','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705324980/patientImg/jmeopdrbywycamcicvim.jpg',27),(60,'Ananya Desai','Sabarmati, Ahmedabad','desaiananya9@gmail.com','+91 8903844290','DesaiA@4290','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705325036/patientImg/hovh4fpwgknw062hjzxc.jpg',31),(61,'Karthik Iyer','Kukatpally, Hyderabad','iyerkartik@gmail.com','+91 7890214839','IyerK@4839','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705325139/patientImg/cy39zbmpnfpua7b6dibt.jpg',27),(62,'Ritu Choudhary','T Nagar, Chenna','rituritu@gmail.com','+91 8832177543','RituC@7543','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705325561/patientImg/dlydbx7u6vmogxejuren.jpg',16),(63,'Siddharth Patel','Varachha, Surat','siddharthp@gmail.com','+91 9321442316','SiddP@2316','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705325618/patientImg/rashish9yzo3oko5ws4j.jpg',20),(64,'Priyanka Nair','Whitefield, Bangalore','priyankanair@gmail.com','+91 7822134578','NairP@4578','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705325703/patientImg/qeydrecpegft88yfzhu9.jpg',10),(65,'Sameer Agnihotri',' Park Street, Kolkata','sameera@gmail.com','+91 9302153218','SameerA@3218','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705325796/patientImg/ro37bjkowz5sfqbitoof.jpg',20),(66,'Virat Malhotra','Vaishali Nagar, Jaipur','malhotravirat@gmail.com','+91 8859243211','ViratM@3211','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705325853/patientImg/lwozlkukrjpdncpcvx3u.jpg',16),(67,'Arjun Das','Juhu, Mumbai','arjundas@gmail.com','+91 9737789023','ArjunD@9023','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705326202/patientImg/jfek402husp4cqqfeuvo.jpg',32),(68,'Rakesh Verma','Kondapur, Hyderabad','arjundas@gmail.com','+91 9734456324','RakeshV@6324','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705326279/patientImg/xdj4qvrwru4yfoyhue5k.jpg',28),(69,'Shruti Kapoor','Velachery, Chennai','kapoorshruti@gmail.com','+91 9467223567','ShrutiK@6324','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705326358/patientImg/hyxdi2mznpczm6s85rkx.jpg',24),(70,'Sanjay Reddy','Palanpur, Surat','sanjayr@gmail.com','+91 9456783456','SanjayR@3456','https://res.cloudinary.com/dyr3thlt0/image/upload/v1705326526/patientImg/smhqohiowdyoiaja7b3z.jpg',28);
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psychiatrists`
--

DROP TABLE IF EXISTS `psychiatrists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `psychiatrists` (
  `psychiatrists_id` int NOT NULL AUTO_INCREMENT,
  `psychiatrists_name` varchar(100) NOT NULL,
  `hospital_id` int DEFAULT NULL,
  PRIMARY KEY (`psychiatrists_id`),
  KEY `hospital_id` (`hospital_id`),
  CONSTRAINT `psychiatrists_ibfk_1` FOREIGN KEY (`hospital_id`) REFERENCES `hospitals` (`hospital_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psychiatrists`
--

LOCK TABLES `psychiatrists` WRITE;
/*!40000 ALTER TABLE `psychiatrists` DISABLE KEYS */;
INSERT INTO `psychiatrists` VALUES (1,'Dr. Kapoor',1),(2,'Dr. Patel',2),(3,'Dr. Sharma',3),(4,'Dr. Verma',4),(5,'Dr. Reddy',1),(6,'Dr. Singh',2),(7,'Dr. Gupta',3),(8,'Dr. Malhotra',4),(9,'Dr. Kumar',1),(10,'Dr. Chatterjee',2),(11,'Dr. Desai',3),(12,'Dr. Iyer',4),(13,'Dr. Saha',1),(14,'Dr. Joshi',2),(15,'Dr. Mishra',3),(16,'Dr. Saxena',4),(17,'Dr. Das',1),(18,'Dr. Roy',2),(19,'Dr. Nair',3),(20,'Dr. Menon',4),(21,'Dr. Khan',1),(22,'Dr. Ahmed',2),(23,'Dr. Dubey',3),(24,'Dr. Thakur',4),(25,'Dr. Bansal',1),(26,'Dr. Agarwal',2),(27,'Dr. Khanna',3),(28,'Dr. Rao',4),(29,'Dr. Shukla',1),(30,'Dr. Sundaram',2),(31,'Dr. Iyengar',3),(32,'Dr. Sinha',4),(33,'Dr. Rajput',1);
/*!40000 ALTER TABLE `psychiatrists` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-15 20:48:35
