DROP DATABASE IF EXISTS validationdb;
DROP USER IF EXISTS `validationadmin`@`%`;
DROP USER IF EXISTS `validationapp`@`%`;
CREATE DATABASE IF NOT EXISTS validationdb CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER IF NOT EXISTS `validationadmin`@`%` IDENTIFIED WITH mysql_native_password BY 'password';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, REFERENCES, INDEX, ALTER, EXECUTE, CREATE VIEW, SHOW VIEW, CREATE ROUTINE, ALTER ROUTINE, EVENT, TRIGGER ON `validationdb`.* TO `validationadmin`@`%`;
CREATE USER IF NOT EXISTS `validationapp`@`%` IDENTIFIED WITH mysql_native_password BY 'password';
GRANT SELECT, INSERT, UPDATE, DELETE, SHOW VIEW ON `validationdb`.* TO `validationapp`@`%`;
FLUSH PRIVILEGES;