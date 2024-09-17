DROP DATABASE IF EXISTS plancatalogdb;
DROP USER IF EXISTS `plancatalogadmin`@`%`;
DROP USER IF EXISTS `plancatalogapp`@`%`;
CREATE DATABASE IF NOT EXISTS plancatalogdb CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER IF NOT EXISTS `plancatalogadmin`@`%` IDENTIFIED WITH mysql_native_password BY 'password';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, REFERENCES, INDEX, ALTER, EXECUTE, CREATE VIEW, SHOW VIEW, CREATE ROUTINE, ALTER ROUTINE, EVENT, TRIGGER ON `plancatalogdb`.* TO `plancatalogadmin`@`%`;
CREATE USER IF NOT EXISTS `plancatalogapp`@`%` IDENTIFIED WITH mysql_native_password BY 'password';
GRANT SELECT, INSERT, UPDATE, DELETE, SHOW VIEW ON `plancatalogdb`.* TO `plancatalogapp`@`%`;
FLUSH PRIVILEGES;