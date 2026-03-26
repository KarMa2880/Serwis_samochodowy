CREATE TABLE `czesci` (
  `id_czesci` int NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(100) DEFAULT NULL,
  `cena` decimal(10,2) DEFAULT NULL,
  `producent` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_czesci`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
