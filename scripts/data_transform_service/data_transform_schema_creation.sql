DROP DATABASE IF EXISTS datatransformdb;
DROP USER IF EXISTS `datatransformadmin`@`%`;
DROP USER IF EXISTS `datatransformapp`@`%`;
CREATE DATABASE IF NOT EXISTS datatransformdb CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER IF NOT EXISTS `datatransformadmin`@`%` IDENTIFIED WITH mysql_native_password BY 'password';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, REFERENCES, INDEX, ALTER, EXECUTE, CREATE VIEW, SHOW VIEW, CREATE ROUTINE, ALTER ROUTINE, EVENT, TRIGGER ON `datatransformdb`.* TO `datatransformadmin`@`%`;
CREATE USER IF NOT EXISTS `datatransformapp`@`%` IDENTIFIED WITH mysql_native_password BY 'password';
GRANT SELECT, INSERT, UPDATE, DELETE, SHOW VIEW ON `datatransformdb`.* TO `datatransformapp`@`%`;
FLUSH PRIVILEGES;