-- Migration 003: Add indexes

CREATE INDEX idx_wizyty_klient ON wizyty(id_klienta);
CREATE INDEX idx_wizyty_usluga ON wizyty(id_uslugi);
CREATE INDEX idx_wizyty_czesc ON wizyty(id_czesci);