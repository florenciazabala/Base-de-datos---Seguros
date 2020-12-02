/******************************DESAFÍO 4 - BASE DE DATOS SEGUROS*********************************/
CREATE DATABASE seguros;
USE seguros;

##ESTRUCTURA
CREATE TABLE contratos (
   idContrato INT NOT NULL,
   fechaAlta DATE NOT NULL,
   cuotaMensual DOUBLE UNSIGNED NOT NULL,  /*Unsigned para no permitir por error un monto negativo*/
   limiteCobertura DOUBLE UNSIGNED NOT NULL,
   tipoSeguro ENUM('VIDA', 'AUTO', 'HOGAR', 'BOLSO') NOT NULL,
   PRIMARY KEY (idContrato));
   
  CREATE TABLE usuarios (
   idUser INT NOT NULL AUTO_INCREMENT,
   nombre VARCHAR(45) NOT NULL,
   apellido VARCHAR(45) NOT NULL,
   cuit INT(11) UNSIGNED NOT NULL,
   direccion VARCHAR(45),
   telefono INT,
  PRIMARY KEY (idUser));
  
  CREATE TABLE asociado (
  contratos INT NOT NULL,
  usuarios INT NOT NULL,
  FOREIGN KEY (contratos) REFERENCES contratos(idContrato),
  FOREIGN KEY (usuarios) REFERENCES usuarios(idUser)
  );

DESCRIBE contratos;
DESCRIBE usuarios;
DESCRIBE asociado;

##CARGA DE REGISTROS
/*Seguros*/
INSERT INTO contratos (idContrato,fechaAlta,cuotaMensual,limiteCobertura,tipoSeguro) VALUES (0001,'2018/02/04',1700,150000,'VIDA');
INSERT INTO contratos (idContrato,fechaAlta,cuotaMensual,limiteCobertura,tipoSeguro) VALUES (0002,'2018/04/12',1500,100000,'VIDA');
INSERT INTO contratos (idContrato,fechaAlta,cuotaMensual,limiteCobertura,tipoSeguro) VALUES (0003,'2019/05/28',2100,174000,'VIDA');
INSERT INTO contratos (idContrato,fechaAlta,cuotaMensual,limiteCobertura,tipoSeguro) VALUES (0004,'2020/10/31',1900,165000,'VIDA');

INSERT INTO contratos (idContrato,fechaAlta,cuotaMensual,limiteCobertura,tipoSeguro) VALUES (0010,'2018/09/16',6595,877000,'AUTO');
INSERT INTO contratos (idContrato,fechaAlta,cuotaMensual,limiteCobertura,tipoSeguro) VALUES (0011,'2018/12/11',5840,763200,'AUTO');
INSERT INTO contratos (idContrato,fechaAlta,cuotaMensual,limiteCobertura,tipoSeguro) VALUES (0012,'2019/03/25',7821,912000,'AUTO');
INSERT INTO contratos (idContrato,fechaAlta,cuotaMensual,limiteCobertura,tipoSeguro) VALUES (0013,'2019/04/08',6263,823100,'AUTO');
INSERT INTO contratos (idContrato,fechaAlta,cuotaMensual,limiteCobertura,tipoSeguro) VALUES (0014,'2019/07/21',7030,903200,'AUTO');
INSERT INTO contratos (idContrato,fechaAlta,cuotaMensual,limiteCobertura,tipoSeguro) VALUES (0015,'2019/11/13',6050,782000,'AUTO');
INSERT INTO contratos (idContrato,fechaAlta,cuotaMensual,limiteCobertura,tipoSeguro) VALUES (0016,'2020/02/10',8300,964800,'AUTO');

INSERT INTO contratos (idContrato,fechaAlta,cuotaMensual,limiteCobertura,tipoSeguro) VALUES (0020,'2018/03/20',7000,750000,'HOGAR');
INSERT INTO contratos (idContrato,fechaAlta,cuotaMensual,limiteCobertura,tipoSeguro) VALUES (0021,'2018/07/07',7500,762000,'HOGAR');
INSERT INTO contratos (idContrato,fechaAlta,cuotaMensual,limiteCobertura,tipoSeguro) VALUES (0022,'2019/12/19',8620,812000,'HOGAR');
INSERT INTO contratos (idContrato,fechaAlta,cuotaMensual,limiteCobertura,tipoSeguro) VALUES (0023,'2020/01/30',7942,795000,'HOGAR');
INSERT INTO contratos (idContrato,fechaAlta,cuotaMensual,limiteCobertura,tipoSeguro) VALUES (0024,'2020/02/26',8135,804300,'HOGAR');

INSERT INTO contratos (idContrato,fechaAlta,cuotaMensual,limiteCobertura,tipoSeguro) VALUES (0030,'2018/01/17',300,20300,'BOLSO');
INSERT INTO contratos (idContrato,fechaAlta,cuotaMensual,limiteCobertura,tipoSeguro) VALUES (0031,'2018/03/09',630,45800,'BOLSO');
INSERT INTO contratos (idContrato,fechaAlta,cuotaMensual,limiteCobertura,tipoSeguro) VALUES (0032,'2019/10/05',420,24700,'BOLSO');
INSERT INTO contratos (idContrato,fechaAlta,cuotaMensual,limiteCobertura,tipoSeguro) VALUES (0033,'2019/12/15',900,652000,'BOLSO');
INSERT INTO contratos (idContrato,fechaAlta,cuotaMensual,limiteCobertura,tipoSeguro) VALUES (0034,'2020/06/22',560,40500,'BOLSO');
INSERT INTO contratos (idContrato,fechaAlta,cuotaMensual,limiteCobertura,tipoSeguro) VALUES (0035,'2020/08/16',840,52000,'BOLSO');

/*Usuarios*/
INSERT INTO usuarios(nombre,apellido,cuit,direccion,telefono)VALUES('Juan','Perez',2012456893,'Arenales 760',21339251);
INSERT INTO usuarios(nombre,apellido,cuit,direccion,telefono)VALUES('Marta','García',2714566254,'Uriburu 1300',1568369861);
INSERT INTO usuarios(nombre,apellido,cuit,direccion,telefono)VALUES('Adriana','Ojeda',2723489125,'Corrientes 350',1575827454);
INSERT INTO usuarios(nombre,apellido,cuit,direccion,telefono)VALUES('Martin','Rodriguez',2040976294,'Larrea 1120',null);
INSERT INTO usuarios(nombre,apellido,cuit,direccion,telefono)VALUES('Leandro','Guzmán',2031485972,'Juncal 830',47386798);
INSERT INTO usuarios(nombre,apellido,cuit,direccion,telefono)VALUES('Camila','Martinez',2726945296,'Independencia 1630',1523619583);
INSERT INTO usuarios(nombre,apellido,cuit,direccion,telefono)VALUES('Osvaldo','Bazan',2033769212,'Av. del Libertador 2160',1195836532);
INSERT INTO usuarios(nombre,apellido,cuit,direccion,telefono)VALUES('Carlos','Gutierrez',2013769858,'Riobamba 950',1534984752);
INSERT INTO usuarios(nombre,apellido,cuit,direccion,telefono)VALUES('Veronica','Fernández',2716736654,null,1525348596);
INSERT INTO usuarios(nombre,apellido,cuit,direccion,telefono)VALUES('Catalina','Gonzalez',2722745623,'Azcuénaga 3658',1585938572);
INSERT INTO usuarios(nombre,apellido,cuit,direccion,telefono)VALUES('Santiago','Ferreyra',2034796186,null,1585937724);

/*asociado*/
INSERT INTO asociado (contratos,usuarios) VALUES (0001,2);
INSERT INTO asociado (contratos,usuarios) VALUES (0002,3);
INSERT INTO asociado (contratos,usuarios) VALUES (0003,7);
INSERT INTO asociado (contratos,usuarios) VALUES (0004,9);

INSERT INTO asociado (contratos,usuarios) VALUES (0010,1);
INSERT INTO asociado (contratos,usuarios) VALUES (0011,2);
INSERT INTO asociado (contratos,usuarios) VALUES (0012,3);
INSERT INTO asociado (contratos,usuarios) VALUES (0013,5);
INSERT INTO asociado (contratos,usuarios) VALUES (0014,6);
INSERT INTO asociado (contratos,usuarios) VALUES (0015,8);
INSERT INTO asociado (contratos,usuarios) VALUES (0016,10);

INSERT INTO asociado (contratos,usuarios) VALUES (0020,1);
INSERT INTO asociado (contratos,usuarios) VALUES (0021,3);
INSERT INTO asociado (contratos,usuarios) VALUES (0022,5);
INSERT INTO asociado (contratos,usuarios) VALUES (0023,8);
INSERT INTO asociado (contratos,usuarios) VALUES (0024,10);

INSERT INTO asociado (contratos,usuarios) VALUES (0030,4);
INSERT INTO asociado (contratos,usuarios) VALUES (0031,2);
INSERT INTO asociado (contratos,usuarios) VALUES (0032,6);
INSERT INTO asociado (contratos,usuarios) VALUES (0033,8);
INSERT INTO asociado (contratos,usuarios) VALUES (0034,9);
INSERT INTO asociado (contratos,usuarios) VALUES (0035,11);

##SELECTS 
/*GENERAL: Todos los registros insertados en cada tabla*/
SELECT * FROM contratos;
SELECT * FROM usuarios;
SELECT * FROM asociado;

/*INNER JOIN*/
SELECT c.idContrato AS 'N°', c.fechaAlta AS 'ALTA', c.cuotaMensual as 'CUOTA', c.limiteCobertura AS 'COBERTURA', c.tipoSeguro AS 'SEGURO', 
u.nombre, u.apellido, u.cuit 
FROM contratos c
INNER JOIN asociado a
ON c.idContrato=a.contratos

INNER JOIN usuarios u
ON u.idUser=a.usuarios;

/*Calcular promedio de precio de cuotas por mes y cobertura según tipo de seguro*/
SELECT ROUND(AVG(cuotaMensual),2) AS 'PROMEDIO CUOTAS', ROUND(AVG(limiteCobertura),2) AS 'PROMEDIO COBERTURA', tipoSeguro AS 'SEGURO'
FROM contratos
GROUP BY tipoSeguro;