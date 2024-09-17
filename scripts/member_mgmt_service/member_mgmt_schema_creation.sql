DROP DATABASE IF EXISTS membermgmtdb;
DROP USER IF EXISTS `membermgmtadmin`@`%`;
DROP USER IF EXISTS `membermgmtapp`@`%`;
CREATE DATABASE IF NOT EXISTS membermgmtdb CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER IF NOT EXISTS `membermgmtadmin`@`%` IDENTIFIED WITH mysql_native_password BY 'password';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, REFERENCES, INDEX, ALTER, EXECUTE, CREATE VIEW, SHOW VIEW, CREATE ROUTINE, ALTER ROUTINE, EVENT, TRIGGER ON `membermgmtdb`.* TO `membermgmtadmin`@`%`;
CREATE USER IF NOT EXISTS `membermgmtapp`@`%` IDENTIFIED WITH mysql_native_password BY 'password';
GRANT SELECT, INSERT, UPDATE, DELETE, SHOW VIEW ON `membermgmtdb`.* TO `membermgmtapp`@`%`;
FLUSH PRIVILEGES;