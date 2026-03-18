-- Migration 004: Add foreign keys

ALTER TABLE wizyty
    ADD CONSTRAINT fk_wizyty_klient
        FOREIGN KEY (id_klienta) REFERENCES klienci(id);

ALTER TABLE wizyty
    ADD CONSTRAINT fk_wizyty_usluga
        FOREIGN KEY (id_uslugi) REFERENCES uslugi(id);

ALTER TABLE wizyty
    ADD CONSTRAINT fk_wizyty_czesc
        FOREIGN KEY (id_czesci) REFERENCES czesci(id);