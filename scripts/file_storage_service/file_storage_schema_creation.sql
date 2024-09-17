DROP DATABASE IF EXISTS filestoragedb;
DROP USER IF EXISTS `filestorageadmin`@`%`;
DROP USER IF EXISTS `filestorageapp`@`%`;
CREATE DATABASE IF NOT EXISTS filestoragedb CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER IF NOT EXISTS `filestorageadmin`@`%` IDENTIFIED WITH mysql_native_password BY 'password';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, REFERENCES, INDEX, ALTER, EXECUTE, CREATE VIEW, SHOW VIEW, CREATE ROUTINE, ALTER ROUTINE, EVENT, TRIGGER ON `filestoragedb`.* TO `filestorageadmin`@`%`;
CREATE USER IF NOT EXISTS `filestorageapp`@`%` IDENTIFIED WITH mysql_native_password BY 'password';
GRANT SELECT, INSERT, UPDATE, DELETE, SHOW VIEW ON `filestoragedb`.* TO `filestorageapp`@`%`;
FLUSH PRIVILEGES;