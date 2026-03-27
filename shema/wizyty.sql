
CREATE TABLE `wizyty` (
  `id_wizyty` int NOT NULL AUTO_INCREMENT,
  `id_klienta` int DEFAULT NULL,
  `data_wizyty` date DEFAULT NULL,
  `opis` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_wizyty`),
  KEY `id_klienta` (`id_klienta`),
  CONSTRAINT `wizyty_ibfk_1` FOREIGN KEY (`id_klienta`) REFERENCES `klienci` (`id_klienta`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;