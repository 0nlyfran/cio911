-- Reiniciar base de datos para nuevos registros
USE cio911;

SET FOREIGN_KEY_CHECKS = 0;

TRUNCATE TABLE incidents;
TRUNCATE TABLE incidents_status;
TRUNCATE TABLE delegations;
TRUNCATE TABLE delegation_news;

ALTER TABLE incidents AUTO_INCREMENT = 1;
ALTER TABLE incidents_status AUTO_INCREMENT = 1;
ALTER TABLE delegations AUTO_INCREMENT = 1;
ALTER TABLE delegation_news AUTO_INCREMENT = 1;

SET FOREIGN_KEY_CHECKS = 1;