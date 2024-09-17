DROP DATABASE IF EXISTS transactionmanagerdb;
DROP USER IF EXISTS `transactionmanageradmin`@`%`;
DROP USER IF EXISTS `transactionmanagerapp`@`%`;
CREATE DATABASE IF NOT EXISTS transactionmanagerdb CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER IF NOT EXISTS `transactionmanageradmin`@`%` IDENTIFIED WITH mysql_native_password BY 'password';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, REFERENCES, INDEX, ALTER, EXECUTE, CREATE VIEW, SHOW VIEW, CREATE ROUTINE, ALTER ROUTINE, EVENT, TRIGGER ON `transactionmanagerdb`.* TO `transactionmanageradmin`@`%`;
CREATE USER IF NOT EXISTS `transactionmanagerapp`@`%` IDENTIFIED WITH mysql_native_password BY 'password';
GRANT SELECT, INSERT, UPDATE, DELETE, SHOW VIEW ON `transactionmanagerdb`.* TO `transactionmanagerapp`@`%`;
FLUSH PRIVILEGES;