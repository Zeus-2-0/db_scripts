DROP DATABASE IF EXISTS accountprocessordb;
DROP USER IF EXISTS `accountprocessoradmin`@`%`;
DROP USER IF EXISTS `accountprocessorapp`@`%`;
CREATE DATABASE IF NOT EXISTS accountprocessordb CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER IF NOT EXISTS `accountprocessoradmin`@`%` IDENTIFIED WITH mysql_native_password BY 'password';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, REFERENCES, INDEX, ALTER, EXECUTE, CREATE VIEW, SHOW VIEW, CREATE ROUTINE, ALTER ROUTINE, EVENT, TRIGGER ON `accountprocessordb`.* TO `accountprocessoradmin`@`%`;
CREATE USER IF NOT EXISTS `accountprocessorapp`@`%` IDENTIFIED WITH mysql_native_password BY 'password';
GRANT SELECT, INSERT, UPDATE, DELETE, SHOW VIEW ON `accountprocessordb`.* TO `accountprocessorapp`@`%`;
FLUSH PRIVILEGES;