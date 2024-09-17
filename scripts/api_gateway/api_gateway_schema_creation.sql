DROP DATABASE IF EXISTS apigatewaydb;
DROP USER IF EXISTS `apigatewayadmin`@`%`;
DROP USER IF EXISTS `apigatewayapp`@`%`;
CREATE DATABASE IF NOT EXISTS apigatewaydb CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER IF NOT EXISTS `apigatewayadmin`@`%` IDENTIFIED WITH mysql_native_password BY 'password';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, REFERENCES, INDEX, ALTER, EXECUTE, CREATE VIEW, SHOW VIEW, CREATE ROUTINE, ALTER ROUTINE, EVENT, TRIGGER ON `apigatewaydb`.* TO `apigatewayadmin`@`%`;
CREATE USER IF NOT EXISTS `apigatewayapp`@`%` IDENTIFIED WITH mysql_native_password BY 'password';
GRANT SELECT, INSERT, UPDATE, DELETE, SHOW VIEW ON `apigatewaydb`.* TO `apigatewayapp`@`%`;
FLUSH PRIVILEGES;