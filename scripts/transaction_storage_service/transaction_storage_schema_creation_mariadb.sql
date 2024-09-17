DROP DATABASE IF EXISTS transactionstoragedb;
DROP USER IF EXISTS `transactionstorageadmin`@`%`;
DROP USER IF EXISTS `transactionstorageapp`@`%`;
CREATE DATABASE IF NOT EXISTS transactionstoragedb CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER IF NOT EXISTS `transactionstorageadmin`@`%` IDENTIFIED BY 'password';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, REFERENCES, INDEX, ALTER, EXECUTE, CREATE VIEW, SHOW VIEW, CREATE ROUTINE, ALTER ROUTINE, EVENT, TRIGGER ON `transactionstoragedb`.* TO `transactionstorageadmin`@`%`;
CREATE USER IF NOT EXISTS `transactionstorageapp`@`%` IDENTIFIED BY 'password';
GRANT SELECT, INSERT, UPDATE, DELETE, SHOW VIEW ON `transactionstoragedb`.* TO `transactionstorageapp`@`%`;
FLUSH PRIVILEGES;