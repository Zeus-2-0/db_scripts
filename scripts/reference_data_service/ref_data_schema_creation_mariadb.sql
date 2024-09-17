DROP DATABASE IF EXISTS zeusrefdatadb;
DROP USER IF EXISTS `zeusrefdataadmin`@`%`;
DROP USER IF EXISTS `zeusrefdataapp`@`%`;
CREATE DATABASE IF NOT EXISTS zeusrefdatadb CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER IF NOT EXISTS `zeusrefdataadmin`@`%` IDENTIFIED BY 'password';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, REFERENCES, INDEX, ALTER, EXECUTE, CREATE VIEW, SHOW VIEW, CREATE ROUTINE, ALTER ROUTINE, EVENT, TRIGGER ON `zeusrefdatadb`.* TO `zeusrefdataadmin`@`%`;
CREATE USER IF NOT EXISTS `zeusrefdataapp`@`%` IDENTIFIED BY 'password';
GRANT SELECT, INSERT, UPDATE, DELETE, SHOW VIEW ON `zeusrefdatadb`.* TO `zeusrefdataapp`@`%`;
FLUSH PRIVILEGES;