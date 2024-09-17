DROP DATABASE IF EXISTS filemgmtdb;
DROP USER IF EXISTS `filemgmtadmin`@`%`;
DROP USER IF EXISTS `filemgmtapp`@`%`;
CREATE DATABASE IF NOT EXISTS filemgmtdb CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER IF NOT EXISTS `filemgmtadmin`@`%` IDENTIFIED WITH mysql_native_password BY 'password';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, REFERENCES, INDEX, ALTER, EXECUTE, CREATE VIEW, SHOW VIEW, CREATE ROUTINE, ALTER ROUTINE, EVENT, TRIGGER ON `filemgmtdb`.* TO `filemgmtadmin`@`%`;
CREATE USER IF NOT EXISTS `filemgmtapp`@`%` IDENTIFIED WITH mysql_native_password BY 'password';
GRANT SELECT, INSERT, UPDATE, DELETE, SHOW VIEW ON `filemgmtdb`.* TO `filemgmtapp`@`%`;
FLUSH PRIVILEGES;