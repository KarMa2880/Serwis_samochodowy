CREATE TABLE `klienci` (
  `id_klienta` int NOT NULL AUTO_INCREMENT,
  `imie` varchar(50) DEFAULT NULL,
  `nazwisko` varchar(50) DEFAULT NULL,
  `telefon` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `marka_samochodu` varchar(50) DEFAULT NULL,
  `model_samochodu` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_klienta`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
