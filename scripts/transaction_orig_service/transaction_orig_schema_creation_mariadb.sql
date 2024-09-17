DROP DATABASE IF EXISTS transactionorigdb;
DROP USER IF EXISTS `transactionorigadmin`@`%`;
DROP USER IF EXISTS `transactionorigapp`@`%`;
CREATE DATABASE IF NOT EXISTS transactionorigdb CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER IF NOT EXISTS `transactionorigadmin`@`%` IDENTIFIED BY 'password';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, REFERENCES, INDEX, ALTER, EXECUTE, CREATE VIEW, SHOW VIEW, CREATE ROUTINE, ALTER ROUTINE, EVENT, TRIGGER ON `transactionorigdb`.* TO `transactionorigadmin`@`%`;
CREATE USER IF NOT EXISTS `transactionorigapp`@`%` IDENTIFIED BY 'password';
GRANT SELECT, INSERT, UPDATE, DELETE, SHOW VIEW ON `transactionorigdb`.* TO `transactionorigapp`@`%`;
FLUSH PRIVILEGES;