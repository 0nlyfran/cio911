-- Aquí van todas las migraciones necesarias 

-- Se deshabilitan la relación entre tablas
SET FOREIGN_KEY_CHECKS=0;

-- codes
INSERT INTO cio911.codes (`order`,name,hex,created_at,updated_at,deleted_at) VALUES
	 (0,'ROJO','#FF8B8B',NULL,NULL,NULL),
	 (2,'CELESTE','#9FD1FF',NULL,NULL,NULL),
	 (3,'VERDE','#AAFFA2',NULL,NULL,NULL),
	 (1,'AMARILLO','#F5FFA2',NULL,NULL,NULL);

-- executing_entity
INSERT INTO cio911.executing_entity (name,color,entity_type_id,address_id,department_id,deleted_at,created_at,updated_at) VALUES
	 ('10ma UR-X',NULL,6,NULL,NULL,NULL,NULL,NULL),
	 ('11ra UR-X',NULL,6,NULL,NULL,NULL,NULL,NULL),
	 ('12da UR-I',NULL,6,NULL,NULL,NULL,NULL,NULL),
	 ('13ra UR-I',NULL,6,NULL,NULL,NULL,NULL,NULL),
	 ('14ta UR-X',NULL,6,NULL,NULL,NULL,NULL,NULL),
	 ('15ta UR-X',NULL,6,NULL,NULL,NULL,NULL,NULL),
	 ('16ta UR-I',NULL,6,NULL,NULL,NULL,NULL,NULL),
	 ('17ma UR-I',NULL,6,NULL,NULL,NULL,NULL,NULL),
	 ('18va UR-X',NULL,6,NULL,NULL,NULL,NULL,NULL),
	 ('19na UR-I',NULL,6,NULL,NULL,NULL,NULL,NULL);
INSERT INTO cio911.executing_entity (name,color,entity_type_id,address_id,department_id,deleted_at,created_at,updated_at) VALUES
	 ('1ra UR-I',NULL,6,NULL,NULL,NULL,NULL,NULL),
	 ('20ma UR-X',NULL,6,NULL,NULL,NULL,NULL,NULL),
	 ('2da UR-I',NULL,6,NULL,NULL,NULL,NULL,NULL),
	 ('3ra UR-I',NULL,6,NULL,NULL,NULL,NULL,NULL),
	 ('4ta UR-I',NULL,6,NULL,NULL,NULL,NULL,NULL),
	 ('5ta UR-X',NULL,6,NULL,NULL,NULL,NULL,NULL),
	 ('6ta UR-I',NULL,6,NULL,NULL,NULL,NULL,NULL),
	 ('7ma UR-I',NULL,6,NULL,NULL,NULL,NULL,NULL),
	 ('8va UR-X',NULL,6,NULL,NULL,NULL,NULL,NULL),
	 ('9na UR-X',NULL,6,NULL,NULL,NULL,NULL,NULL);
INSERT INTO cio911.executing_entity (name,color,entity_type_id,address_id,department_id,deleted_at,created_at,updated_at) VALUES
	 ('Agrupación Motorizada',NULL,12,NULL,NULL,NULL,NULL,NULL),
	 ('Ambulancia',NULL,21,NULL,NULL,NULL,NULL,NULL),
	 ('Brigada de Investigaciones UR-I',NULL,9,NULL,NULL,NULL,NULL,NULL),
	 ('Brigada de Investigaciones UR-X',NULL,9,NULL,NULL,NULL,NULL,NULL),
	 ('Candelaria',NULL,6,NULL,NULL,NULL,NULL,NULL),
	 ('Comando Candelaria UR-X',NULL,5,NULL,NULL,NULL,NULL,'2022-10-13 23:43:35'),
	 ('DEPARTAMENTO SUPERVISION OPERACIONAL',NULL,14,NULL,NULL,NULL,NULL,'2023-12-31 14:56:36'),
	 ('CECOMUR UR-X',NULL,14,NULL,NULL,'2023-12-31 08:40:30',NULL,'2023-12-31 08:40:30'),
	 ('Comando Santa Clara UR-X',NULL,5,NULL,NULL,NULL,NULL,NULL),
	 ('Defensa Civil',NULL,14,NULL,NULL,NULL,NULL,NULL);
INSERT INTO cio911.executing_entity (name,color,entity_type_id,address_id,department_id,deleted_at,created_at,updated_at) VALUES
	 ('De la Mujer Itaembe Mini',NULL,6,NULL,NULL,NULL,NULL,NULL),
	 ('De la Mujer Oeste',NULL,6,NULL,NULL,NULL,NULL,NULL),
	 ('De la Mujer URI',NULL,6,NULL,NULL,NULL,NULL,NULL),
	 ('De la Mujer URX',NULL,6,NULL,NULL,NULL,NULL,NULL),
	 ('Dependiente Municipalidad',NULL,14,NULL,NULL,NULL,NULL,NULL),
	 ('Direccion Centro Integral de Operaciones',NULL,8,NULL,NULL,NULL,NULL,NULL),
	 ('Dir. Gral. Vial y Turismo',NULL,8,NULL,NULL,NULL,NULL,NULL),
	 ('Drogas Peligrosas',NULL,8,NULL,NULL,NULL,NULL,NULL),
	 ('Emergencia Médica',NULL,20,NULL,NULL,NULL,NULL,NULL),
	 ('EMSA SA',NULL,14,NULL,NULL,NULL,NULL,NULL);
INSERT INTO cio911.executing_entity (name,color,entity_type_id,address_id,department_id,deleted_at,created_at,updated_at) VALUES
	 ('Garupa',NULL,1,NULL,NULL,NULL,NULL,NULL),
	 ('Garupa UR-X',NULL,6,NULL,NULL,NULL,NULL,NULL),
	 ('Grupo de Intervención Rápida',NULL,12,NULL,NULL,NULL,NULL,NULL),
	 ('Hospital',NULL,21,NULL,NULL,NULL,NULL,NULL),
	 ('IMUSA',NULL,14,NULL,NULL,NULL,NULL,NULL),
	 ('Infantería UR-I',NULL,12,NULL,NULL,NULL,NULL,NULL),
	 ('Investigaciones Complejas',NULL,8,NULL,NULL,NULL,NULL,NULL),
	 ('Itaembe Guazu',NULL,6,NULL,NULL,NULL,NULL,NULL),
	 ('Ministerio de salud',NULL,17,NULL,NULL,NULL,NULL,NULL),
	 ('Otros',NULL,14,NULL,NULL,NULL,NULL,NULL);
INSERT INTO cio911.executing_entity (name,color,entity_type_id,address_id,department_id,deleted_at,created_at,updated_at) VALUES
	 ('Pol Científica UR-I',NULL,8,NULL,NULL,NULL,NULL,NULL),
	 ('Pol Científica UR-X',NULL,8,NULL,NULL,NULL,NULL,NULL),
	 ('Policía Federal POSADAS',NULL,10,NULL,NULL,NULL,NULL,NULL),
	 ('Prevención de Delitos',NULL,12,NULL,NULL,NULL,NULL,NULL),
	 ('SAMSA',NULL,14,NULL,NULL,NULL,NULL,NULL),
	 ('Sanidad Policial',NULL,9,NULL,NULL,NULL,NULL,NULL),
	 ('San Isidro',NULL,1,NULL,NULL,'2022-10-13 23:46:37',NULL,'2022-10-13 23:46:37'),
	 ('Comando San Isidro UR-X',NULL,5,NULL,NULL,NULL,NULL,'2022-10-13 23:43:01'),
	 ('Seguridad Costanera',NULL,7,NULL,NULL,NULL,NULL,NULL),
	 ('Transito Municipal',NULL,8,NULL,NULL,NULL,NULL,NULL);
INSERT INTO cio911.executing_entity (name,color,entity_type_id,address_id,department_id,deleted_at,created_at,updated_at) VALUES
	 ('(UCT)',NULL,21,NULL,NULL,NULL,NULL,NULL),
	 ('UR-I',NULL,5,NULL,NULL,NULL,NULL,NULL),
	 ('UR-X',NULL,5,NULL,NULL,NULL,NULL,NULL),
	 ('Voluntarios',NULL,1,NULL,NULL,NULL,NULL,NULL),
	 ('Zona "Centro"',NULL,1,NULL,NULL,NULL,NULL,NULL),
	 ('Zona "Oeste"',NULL,1,NULL,NULL,NULL,NULL,NULL),
	 ('Zona Oeste UR-I',NULL,5,NULL,NULL,NULL,NULL,NULL),
	 ('Zona "Sur"',NULL,1,NULL,NULL,NULL,NULL,NULL),
	 ('Comando Centro UR-I',NULL,5,NULL,NULL,NULL,'2022-10-13 23:39:00','2022-10-13 23:40:37'),
	 ('Comando Oeste UR-I',NULL,5,NULL,NULL,NULL,'2022-10-13 23:40:13','2022-10-13 23:40:13');
INSERT INTO cio911.executing_entity (name,color,entity_type_id,address_id,department_id,deleted_at,created_at,updated_at) VALUES
	 ('Comando Fatima UR-X',NULL,5,NULL,NULL,NULL,'2022-10-13 23:41:26','2022-10-13 23:41:26'),
	 ('Comando Santa Clara UR-X',NULL,5,NULL,NULL,NULL,'2022-10-13 23:41:50','2022-10-13 23:41:50'),
	 ('Comando Candelaria UR-X',NULL,5,NULL,NULL,NULL,'2022-10-13 23:42:16','2022-10-13 23:42:16'),
	 ('DIR. DEFENSA AMBIENTAL',NULL,14,NULL,NULL,NULL,'2022-10-14 08:10:19','2022-10-14 08:10:19'),
	 ('G.O.E',NULL,12,NULL,NULL,NULL,'2022-10-14 08:12:00','2022-10-14 08:12:00'),
	 ('GOE',NULL,12,NULL,NULL,NULL,'2022-10-14 08:14:35','2022-10-14 08:14:35'),
	 ('RESCATE COMPLEJOS',NULL,15,NULL,NULL,NULL,'2022-10-14 08:21:33','2022-10-14 08:21:33'),
	 ('GAP',NULL,12,NULL,NULL,NULL,'2022-10-14 10:21:42','2022-10-14 10:21:42'),
	 ('cdo san isidro',NULL,12,NULL,NULL,'2022-10-14 23:49:06','2022-10-14 13:40:15','2022-10-14 23:49:06'),
	 ('cdo san isidro',NULL,12,NULL,NULL,'2022-10-14 23:48:57','2022-10-14 13:40:15','2022-10-14 23:48:57');
INSERT INTO cio911.executing_entity (name,color,entity_type_id,address_id,department_id,deleted_at,created_at,updated_at) VALUES
	 ('DESTACAMENTO EL CHOGUI',NULL,6,NULL,NULL,NULL,'2022-10-14 18:51:30','2022-10-14 18:51:30'),
	 ('D.G. Drogas Peligrosas',NULL,8,NULL,NULL,'2022-10-14 23:47:52','2022-10-14 23:45:44','2022-10-14 23:47:52'),
	 ('drogas',NULL,8,NULL,NULL,'2022-10-14 23:47:44','2022-10-14 23:45:57','2022-10-14 23:47:44'),
	 ('otras unidades regionales',NULL,14,NULL,NULL,NULL,'2022-10-15 01:59:50','2022-10-15 01:59:50'),
	 ('Destacamento Terminal',NULL,7,NULL,NULL,NULL,'2022-10-15 05:44:56','2022-10-15 05:44:56'),
	 ('BOMBERO OESTE',NULL,25,NULL,NULL,NULL,'2022-10-16 03:50:21','2022-10-16 03:50:21'),
	 ('Video Vigilancia',NULL,9,NULL,NULL,NULL,'2022-10-17 12:24:30','2022-10-17 12:24:30'),
	 ('bombero sur',NULL,24,NULL,NULL,NULL,'2022-10-18 08:00:33','2022-10-18 08:00:33'),
	 ('CUARTEL CENTRAL- SUR',NULL,24,NULL,NULL,NULL,'2022-10-18 15:06:40','2022-10-18 15:06:40'),
	 ('Bomberos sur Cuartel Central',NULL,24,NULL,NULL,NULL,'2022-10-26 12:11:32','2022-10-26 12:11:32');
INSERT INTO cio911.executing_entity (name,color,entity_type_id,address_id,department_id,deleted_at,created_at,updated_at) VALUES
	 ('Bombero San Isidro',NULL,24,NULL,NULL,NULL,'2022-10-26 12:13:09','2022-10-26 12:13:09'),
	 ('Bombero Garupa',NULL,24,NULL,NULL,NULL,'2022-10-26 12:13:36','2022-10-26 12:13:36'),
	 ('BOMBERO ITAEMBE GUAZU',NULL,2,NULL,NULL,NULL,'2022-11-23 18:10:59','2022-11-23 18:10:59'),
	 ('COMISARIA MUJER CANDELARIA',NULL,6,NULL,NULL,NULL,'2022-11-23 18:12:28','2022-11-23 18:12:28'),
	 ('MOTORIZADA SOL DE MISIONES',NULL,12,NULL,NULL,NULL,'2022-11-23 18:13:50','2022-11-23 18:13:50'),
	 ('MOTORIZADA FATIMA',NULL,12,NULL,NULL,NULL,'2022-11-23 18:14:27','2022-11-23 18:14:27'),
	 ('MOTORIZADA GARUPA',NULL,12,NULL,NULL,NULL,'2022-11-23 18:15:17','2022-11-23 18:15:17'),
	 ('MOTORIZADA ITAEMBE MINI',NULL,12,NULL,NULL,NULL,'2022-11-23 18:15:58','2022-11-23 18:15:58'),
	 ('MOTORIZADA UR-1',NULL,12,NULL,NULL,NULL,'2022-11-23 18:16:51','2022-11-23 18:16:51'),
	 ('PREFECTURA NAVAL ARGENTINA',NULL,7,NULL,NULL,NULL,'2022-12-28 20:36:01','2022-12-28 20:36:01');
INSERT INTO cio911.executing_entity (name,color,entity_type_id,address_id,department_id,deleted_at,created_at,updated_at) VALUES
	 ('Zona Centro',NULL,24,NULL,NULL,NULL,'2023-01-20 19:54:51','2023-01-20 19:54:51'),
	 ('MOTORIZADA LIBERTADOR',NULL,9,NULL,NULL,NULL,'2023-01-28 01:46:35','2023-04-14 20:38:06'),
	 ('BOMBERO ZONA CENTRO',NULL,24,NULL,NULL,NULL,'2023-01-30 13:36:12','2023-01-30 13:36:12'),
	 ('DESTACAMENTO COSTA SUR',NULL,7,NULL,NULL,NULL,'2023-02-08 20:54:52','2023-02-08 20:54:52'),
	 ('DESTACAMENTO 508 VIV.',NULL,7,NULL,NULL,NULL,'2023-02-08 21:20:40','2023-02-08 21:20:40'),
	 ('Montada',NULL,13,NULL,NULL,NULL,'2023-03-07 09:23:26','2023-03-07 09:23:26'),
	 ('DESTACAMENTO PARAJE SANTA INES',NULL,7,NULL,NULL,'2023-04-05 08:38:09','2023-04-05 08:36:08','2023-04-05 08:38:09'),
	 ('MOTORIZADA ITAEMBE GUAZU',NULL,9,NULL,NULL,NULL,'2023-04-14 20:39:11','2023-04-14 20:39:11'),
	 ('ESPACIO VERDES',NULL,23,NULL,NULL,NULL,'2023-09-02 09:44:15','2023-09-02 09:44:15'),
	 ('DIRECCION HOMICIDIOS',NULL,8,NULL,NULL,NULL,'2023-12-17 00:31:04','2023-12-17 00:31:04');
INSERT INTO cio911.executing_entity (name,color,entity_type_id,address_id,department_id,deleted_at,created_at,updated_at) VALUES
	 ('Resguardo de Detenidos',NULL,29,NULL,NULL,NULL,'2023-12-22 12:10:25','2023-12-22 12:10:25'),
	 ('MOTORIZADA ZONA OESTE',NULL,8,NULL,NULL,NULL,'2024-04-01 22:51:19','2024-04-01 22:51:19'),
	 ('VIDEO VIGILANCIA ITAEMBE GUAZU',NULL,9,NULL,NULL,NULL,'2024-08-02 19:27:15','2024-08-02 19:27:15');

-- executing_entity_type
INSERT INTO cio911.executing_entity_type (name,deleted_at,created_at,updated_at) VALUES
	 ('Bomberos','2022-10-12 11:20:31',NULL,'2022-10-12 11:20:31'),
	 ('Bomberos Itaembé Guazú',NULL,NULL,NULL),
	 ('Bombero Voluntarios',NULL,NULL,NULL),
	 ('Brigada De Canes',NULL,NULL,NULL),
	 ('Comando',NULL,NULL,NULL),
	 ('Comisaría',NULL,NULL,NULL),
	 ('Destacamento',NULL,NULL,NULL),
	 ('Dirección',NULL,NULL,NULL),
	 ('División',NULL,NULL,NULL),
	 ('FUERO FEDERAL',NULL,NULL,NULL);
INSERT INTO cio911.executing_entity_type (name,deleted_at,created_at,updated_at) VALUES
	 ('Gendamería Nacional Argentina',NULL,NULL,NULL),
	 ('Grupos Operativos',NULL,NULL,NULL),
	 ('Montada',NULL,NULL,NULL),
	 ('OTRAS UNIDADES REGIONALES',NULL,NULL,NULL),
	 ('Rescates Complejos',NULL,NULL,NULL),
	 ('Ruidos Molestos',NULL,NULL,NULL),
	 ('Salud',NULL,NULL,NULL),
	 ('Sanidad UR-I',NULL,NULL,NULL),
	 ('Sanidad UR-X',NULL,NULL,NULL),
	 ('Sistema Externo',NULL,NULL,NULL);
INSERT INTO cio911.executing_entity_type (name,deleted_at,created_at,updated_at) VALUES
	 ('Unidad Central de Traslado',NULL,NULL,NULL),
	 ('ff','2022-10-14 01:51:06','2022-10-12 11:00:34','2022-10-14 01:51:06'),
	 ('Rescates Complejos',NULL,'2022-10-12 11:08:43','2022-10-12 11:08:43'),
	 ('Bomberos',NULL,'2022-10-12 11:10:27','2022-10-12 11:10:27'),
	 ('Bomberos',NULL,'2022-10-12 11:31:13','2022-10-12 11:31:13'),
	 ('MOTORIZADA JURS. CRIA 18VA',NULL,'2023-01-28 01:43:55','2023-01-28 01:43:55'),
	 ('MOTORIZADA JURS. CRIA 18VA','2023-01-28 01:44:10','2023-01-28 01:44:00','2023-01-28 01:44:10'),
	 ('División Montada',NULL,'2023-03-07 09:23:07','2023-03-07 09:23:07'),
	 ('Resguardo de detenidos',NULL,'2023-12-22 12:09:47','2023-12-22 12:09:47'),
	 ('APOYO A PERSONAL','2023-12-22 12:27:41','2023-12-22 12:22:55','2023-12-22 12:27:41');

-- localities
INSERT INTO cio911.localities (name,created_at,updated_at,deleted_at) VALUES
	 ('POSADAS',NULL,NULL,NULL),
	 ('GARUPA',NULL,NULL,NULL),
	 ('FACHINAL',NULL,NULL,NULL),
	 ('APOSTOLES',NULL,NULL,NULL),
	 ('SAN JOSE',NULL,NULL,NULL),
	 ('AZARA',NULL,NULL,NULL),
	 ('TRES CAPONES',NULL,NULL,NULL),
	 ('SANTA ANA',NULL,NULL,NULL),
	 ('CANDELARIA',NULL,NULL,NULL),
	 ('PROFUNDIDAD',NULL,NULL,NULL);
INSERT INTO cio911.localities (name,created_at,updated_at,deleted_at) VALUES
	 ('CERRO CORA',NULL,NULL,NULL),
	 ('BONPLAND',NULL,NULL,NULL),
	 ('MARTIRES',NULL,NULL,NULL),
	 ('LORETO',NULL,NULL,NULL),
	 ('LEANDRO N. ALEM',NULL,NULL,NULL),
	 ('OLEGARIO V. ANDRADE',NULL,NULL,NULL),
	 ('CERRO AZUL',NULL,NULL,NULL),
	 ('ARROYO DEL MEDIO',NULL,NULL,NULL),
	 ('DOS ARROYOS',NULL,NULL,NULL),
	 ('GOBERNADOR LOPEZ',NULL,NULL,NULL);
INSERT INTO cio911.localities (name,created_at,updated_at,deleted_at) VALUES
	 ('CAA - YARI',NULL,NULL,NULL),
	 ('ALMAFUERTE',NULL,NULL,NULL),
	 ('CONCEPCION DE LA SIERA',NULL,NULL,NULL),
	 ('SANTA MARIA',NULL,NULL,NULL),
	 ('SAN JAVIER',NULL,NULL,NULL),
	 ('ITACARUARE',NULL,NULL,NULL),
	 ('MOJON GRANDE',NULL,NULL,NULL),
	 ('FLORENTINO AMEGHINO',NULL,NULL,NULL),
	 ('SAN IGNACIO',NULL,NULL,NULL),
	 ('CORPUS',NULL,NULL,NULL);
INSERT INTO cio911.localities (name,created_at,updated_at,deleted_at) VALUES
	 ('GOBERNADOR ROCA',NULL,NULL,NULL),
	 ('SANTO PIPO',NULL,NULL,NULL),
	 ('HIPOLITO YRIGOYEN',NULL,NULL,NULL),
	 ('GENERAL URQUIZA',NULL,NULL,NULL),
	 ('COLONIA POLANA',NULL,NULL,NULL),
	 ('JARDIN AMERICA',NULL,NULL,NULL),
	 ('OBERA',NULL,NULL,NULL),
	 ('GENERAL ALVEAR',NULL,NULL,NULL),
	 ('COLONIA ALBERDI',NULL,NULL,NULL),
	 ('CAMPO VIERA',NULL,NULL,NULL);
INSERT INTO cio911.localities (name,created_at,updated_at,deleted_at) VALUES
	 ('CAMPO RAMON',NULL,NULL,NULL),
	 ('PANAMBI',NULL,NULL,NULL),
	 ('LOS HELECHOS',NULL,NULL,NULL),
	 ('GUARANI',NULL,NULL,NULL),
	 ('SAN MARTIN',NULL,NULL,NULL),
	 ('PUERTO RICO',NULL,NULL,NULL),
	 ('PUERTO LEONI',NULL,NULL,NULL),
	 ('CAPIOVI',NULL,NULL,NULL),
	 ('RUIZ DE MONTOYA',NULL,NULL,NULL),
	 ('GARUHAPE',NULL,NULL,NULL);
INSERT INTO cio911.localities (name,created_at,updated_at,deleted_at) VALUES
	 ('EL ALCAZAR',NULL,NULL,NULL),
	 ('DOS DE MAYO',NULL,NULL,NULL),
	 ('CAMPO GRANDE',NULL,NULL,NULL),
	 ('ARISTOBULO DEL VALLE',NULL,NULL,NULL),
	 ('SALTO ENCANTADO',NULL,NULL,NULL),
	 ('ALBA POSSE',NULL,NULL,NULL),
	 ('25 DE mayo',NULL,NULL,NULL),
	 ('COLONIA AURORA',NULL,NULL,NULL),
	 ('MONTECARLO',NULL,NULL,NULL),
	 ('CARAGUATAY',NULL,NULL,NULL);
INSERT INTO cio911.localities (name,created_at,updated_at,deleted_at) VALUES
	 ('PUERTO PIRAY',NULL,NULL,NULL),
	 ('SAN VICENTE',NULL,NULL,NULL),
	 ('EL SOBERBIO',NULL,NULL,NULL),
	 ('ELDORADO',NULL,NULL,NULL),
	 ('9 DE julio',NULL,NULL,NULL),
	 ('SANTIAGO DE LINIERS',NULL,NULL,NULL),
	 ('COLONIA VICTORIA',NULL,NULL,NULL),
	 ('COLONIA DELICIA',NULL,NULL,NULL),
	 ('SAN PEDRO',NULL,NULL,NULL),
	 ('POZO AZUL',NULL,NULL,NULL);
INSERT INTO cio911.localities (name,created_at,updated_at,deleted_at) VALUES
	 ('PUERTO ESPERANZA',NULL,NULL,NULL),
	 ('WANDA',NULL,NULL,NULL),
	 ('PUERTO LIBERTAD',NULL,NULL,NULL),
	 ('PUERTO IGUAZU',NULL,NULL,NULL),
	 ('BERNARDO DE IRIGOYEN',NULL,NULL,NULL),
	 ('SAN ANTONIO',NULL,NULL,NULL),
	 ('COMANDANTE ANDRESITO',NULL,NULL,NULL);

-- typification
INSERT INTO cio911.typification (name,`number`,full_name,code_id,deleted_at,created_at,updated_at) VALUES
	 ('Accidente Laborales',NULL,'Accidente Laborales',4,NULL,NULL,NULL),
	 ('TECNICA',NULL,'Accidente Laborales TECNICA',1,NULL,NULL,NULL),
	 ('Acoso',NULL,'Acoso',4,NULL,NULL,NULL),
	 ('Actos o Palabras Obscenas',NULL,'Actos o Palabras Obscenas',2,NULL,NULL,NULL),
	 ('Actuación de Grupos',NULL,'Actuación de Grupos',4,NULL,NULL,NULL),
	 ('Alarma',NULL,'Alarma',2,NULL,NULL,NULL),
	 ('Banco o Entidad Financiera',NULL,'Alarma Banco o Entidad Financiera',4,NULL,NULL,NULL),
	 ('Comercio',NULL,'Alarma Comercio',4,NULL,NULL,NULL),
	 ('inmueble Particular',NULL,'Alarma Inmueble Particular',4,NULL,NULL,NULL),
	 ('Amenaza',NULL,'Amenaza',4,NULL,NULL,NULL);
INSERT INTO cio911.typification (name,`number`,full_name,code_id,deleted_at,created_at,updated_at) VALUES
	 ('Amenaza de Explosivos',NULL,'Amenaza de Explosivos',1,NULL,NULL,NULL),
	 ('Establecimiento Educativo',NULL,'Amenaza de Explosivos Establecimiento Educativo',1,NULL,NULL,NULL),
	 ('Vía Pública',NULL,'Amenaza de Explosivos Vía Pública',1,NULL,NULL,NULL),
	 ('De Muerte',NULL,'Amenaza De Muerte',1,NULL,NULL,NULL),
	 ('Animales Sueltos',NULL,'Animales Sueltos',2,NULL,NULL,NULL),
	 ('Peligrosos y/o Agresivos',NULL,'Animales Sueltos Peligrosos y/o Agresivos',4,NULL,NULL,NULL),
	 ('Apoyo (Efectivo Policial en Peligro)',NULL,'Apoyo (Efectivo Policial en Peligro)',1,NULL,NULL,NULL),
	 ('Apoyo (Personal de Transito Municipal)',NULL,'Apoyo (Personal de Transito Municipal)',4,NULL,NULL,NULL),
	 ('Apoyo (Personal Poder Judicial)',NULL,'Apoyo (Personal Poder Judicial)',4,NULL,NULL,NULL),
	 ('Arboles Caidos',NULL,'Arboles Caidos',4,NULL,NULL,NULL);
INSERT INTO cio911.typification (name,`number`,full_name,code_id,deleted_at,created_at,updated_at) VALUES
	 ('Aviso',NULL,'Aviso',1,NULL,NULL,NULL),
	 ('Boca de Tormenta Expuesta (sin rejas)',NULL,'Aviso Boca de Tormenta Expuesta (sin rejas)',1,NULL,NULL,NULL),
	 ('Fuga de agua en la vía pública',NULL,'Aviso Fuga de agua en la vía pública',1,NULL,NULL,NULL),
	 ('Botón de Pánico',NULL,'Botón de Pánico',1,NULL,NULL,NULL),
	 ('Carga de Dominio',NULL,'Carga de Dominio',2,NULL,NULL,NULL),
	 ('Alta Dominio Investigaciones',NULL,'Carga de Dominio Alta Dominio Investigaciones',2,NULL,NULL,NULL),
	 ('Conflicto Entre Vecinos',NULL,'Conflicto Entre Vecinos',4,NULL,NULL,NULL),
	 ('Con Heridos',NULL,'Conflicto Entre Vecinos Con Heridos',4,NULL,NULL,NULL),
	 ('Con prohibición de Acercamiento',NULL,'Conflicto Entre Vecinos Con prohibición de Acercamiento',1,NULL,NULL,NULL),
	 ('Sin Heridos',NULL,'Conflicto Entre Vecinos Sin Heridos',2,NULL,NULL,NULL);
INSERT INTO cio911.typification (name,`number`,full_name,code_id,deleted_at,created_at,updated_at) VALUES
	 ('Corte de Energía',NULL,'Corte de Energía',4,NULL,NULL,NULL),
	 ('COVID-19',NULL,'COVID-19',2,NULL,NULL,NULL),
	 ('Pedido de Asitencia por COVID-19',NULL,'COVID-19 Pedido de Asitencia por COVID-19',2,NULL,NULL,NULL),
	 ('Violación de Cuarentena Social y Obligatoria',NULL,'COVID-19 Violación de Cuarentena Social y Obligatoria',2,NULL,NULL,NULL),
	 ('Daños Ambientasles - Sustancias Peligrosas',NULL,'Daños Ambientasles-Sustancias Peligrosas',4,NULL,NULL,NULL),
	 ('Daños Contra la Propiedad',NULL,'Daños Contra la Propiedad',4,NULL,NULL,NULL),
	 ('Delito Contra La Integridad Sexual',NULL,'Delito Contra La Integridad Sexual',1,NULL,NULL,NULL),
	 ('Agravado Por El Vinculo',NULL,'Delito Contra La Integridad Sexual Agravado Por El Vinculo',4,NULL,NULL,NULL),
	 ('Con Acceso Carnal',NULL,'Delito Contra La Integridad Sexual Con Acceso Carnal',4,NULL,NULL,NULL),
	 ('Sin Acceso Carnal',NULL,'Delito Contra La Integridad Sexual Sin Acceso Carnal',4,NULL,NULL,NULL);
INSERT INTO cio911.typification (name,`number`,full_name,code_id,deleted_at,created_at,updated_at) VALUES
	 ('Automotor',NULL,'Delitos Contra la Propiedad Automotor',4,NULL,NULL,NULL),
	 ('Delitos Federales',NULL,'Delitos Federales',4,NULL,NULL,NULL),
	 ('Estupefacientes - Ley 23.737 (Drogas)',NULL,'Delitos Federales Estupefacientes - Ley 23.737 (Drogas)',4,NULL,NULL,NULL),
	 ('Con Fines De Comercialización',NULL,'Delitos Federales Estupefacientes - Ley 23.737 (Drogas) Con Fines De Comercialización',4,NULL,NULL,NULL),
	 ('Consumiendo En La Vía Pública',NULL,'Delitos Federales Estupefacientes - Ley 23.737 (Drogas) Consumiendo En La Vía Pública',4,NULL,NULL,NULL),
	 ('Trata De Personas',NULL,'Delitos Federales Trata De Personas',4,NULL,NULL,NULL),
	 ('Desalojo',NULL,'Desalojo',4,NULL,NULL,NULL),
	 ('Desaparición de Persona',NULL,'Desaparición de Persona',4,NULL,NULL,NULL),
	 ('En Curso de Agua',NULL,'Desaparición de Persona En Curso de Agua',1,NULL,NULL,NULL),
	 ('Persona Extraviada',NULL,'Desaparición de Persona Persona Extraviada',4,NULL,NULL,NULL);
INSERT INTO cio911.typification (name,`number`,full_name,code_id,deleted_at,created_at,updated_at) VALUES
	 ('Persona Extraviada Mayor',NULL,'Desaparición de Persona Persona Extraviada Mayor',4,NULL,NULL,NULL),
	 ('Persona Extraviada Menor',NULL,'Desaparición de Persona Persona Extraviada Menor',1,NULL,NULL,NULL),
	 ('Desastres Naturales',NULL,'Desastres Naturales',1,NULL,NULL,NULL),
	 ('Caída De Rayos',NULL,'Desastres Naturales Caída De Rayos',4,NULL,NULL,NULL),
	 ('Con Interrupción De Energía Eléctrica',NULL,'Desastres Naturales Caída De Rayos Con Interrupción De Energía Eléctrica',4,NULL,NULL,NULL),
	 ('Con Semáforos Fuera De Servicio',NULL,'Desastres Naturales Caída De Rayos Con Semáforos Fuera De Servicio',4,NULL,NULL,NULL),
	 ('Derrumbes',NULL,'Desastres Naturales Derrumbes',4,NULL,NULL,NULL),
	 ('Barrios y Calles',NULL,'Desastres Naturales Derrumbes Barrios y Calles',4,NULL,NULL,NULL),
	 ('Con Interrupción De Energía Eléctrica',NULL,'Desastres Naturales Derrumbes Con Interrupción De Energía Eléctrica',4,NULL,NULL,NULL),
	 ('Con Personas Atrapadas',NULL,'Desastres Naturales Derrumbes Con Personas Atrapadas',4,NULL,NULL,NULL);
INSERT INTO cio911.typification (name,`number`,full_name,code_id,deleted_at,created_at,updated_at) VALUES
	 ('Con Semáforos Fuera De Servicio',NULL,'Desastres Naturales Derrumbes Con Semáforos Fuera De Servicio',4,NULL,NULL,NULL),
	 ('Vivienda/s',NULL,'Desastres Naturales Derrumbes Vivienda/s',4,NULL,NULL,NULL),
	 ('inundaciones',NULL,'Desastres Naturales Inundaciones',4,NULL,NULL,NULL),
	 ('Barrios y Calles',NULL,'Desastres Naturales Inundaciones Barrios y Calles',4,NULL,NULL,NULL),
	 ('Con Interrupción De Energía Eléctrica',NULL,'Desastres Naturales Inundaciones Con Interrupción De Energía Eléctrica',4,NULL,NULL,NULL),
	 ('Con Personas Atrapadas',NULL,'Desastres Naturales Inundaciones Con Personas Atrapadas',4,NULL,NULL,NULL),
	 ('Con Semáforos Fuera De Servicio',NULL,'Desastres Naturales Inundaciones Con Semáforos Fuera De Servicio',4,NULL,NULL,NULL),
	 ('Vivienda/s',NULL,'Desastres Naturales Inundaciones Vivienda/s',4,NULL,NULL,NULL),
	 ('Tornados',NULL,'Desastres Naturales Tornados',4,NULL,NULL,NULL),
	 ('Con Interrupción De Energía Eléctrica',NULL,'Desastres Naturales Tornados Con Interrupción De Energía Eléctrica',4,NULL,NULL,NULL);
INSERT INTO cio911.typification (name,`number`,full_name,code_id,deleted_at,created_at,updated_at) VALUES
	 ('Con Personas Atrapadas',NULL,'Desastres Naturales Tornados Con Personas Atrapadas',4,NULL,NULL,NULL),
	 ('Con Semáforos Fuera De Servicio',NULL,'Desastres Naturales Tornados Con Semáforos Fuera De Servicio',4,NULL,NULL,NULL),
	 ('Desconocido en Hospital',NULL,'Desconocido en Hospital',2,NULL,NULL,NULL),
	 ('Desorden',NULL,'Desorden',4,NULL,NULL,NULL),
	 ('Alumnos De Establecimientos Educativos',NULL,'Desorden Alumnos De Establecimientos Educativos',4,NULL,NULL,NULL),
	 ('Con Arma Blanca',NULL,'Desorden Con Arma Blanca',1,NULL,NULL,NULL),
	 ('Con Arma de Fuego',NULL,'Desorden Con Arma de Fuego',1,NULL,NULL,NULL),
	 ('En Domicilio Particular',NULL,'Desorden En Domicilio Particular',4,NULL,NULL,NULL),
	 ('Desorden en la Vía Pública',NULL,'Desorden en la Vía Pública',4,NULL,NULL,NULL),
	 ('Desorden en lugares cerrados',NULL,'Desorden en lugares cerrados',4,NULL,NULL,NULL);
INSERT INTO cio911.typification (name,`number`,full_name,code_id,deleted_at,created_at,updated_at) VALUES
	 ('Detección Dominio Alta Dominio Investigación',NULL,'Detección Dominio Alta Dominio Investigación',2,NULL,NULL,NULL),
	 ('Detección Dominios',NULL,'Detección Dominios',2,NULL,NULL,NULL),
	 ('ACTIVACIÓN Dominio PRUEBA',NULL,'Detección Dominios ACTIVACIÓN Dominio PRUEBA',1,NULL,NULL,NULL),
	 ('ACTIVACIÓN Dominio URGENTE',NULL,'Detección Dominios ACTIVACIÓN Dominio URGENTE',4,NULL,NULL,NULL),
	 ('Alta Dominio Prueba',NULL,'Detección Dominios Alta Dominio Prueba',2,NULL,NULL,NULL),
	 ('Alta Dominio URGENTE',NULL,'Detección Dominios Alta Dominio URGENTE',2,NULL,NULL,NULL),
	 ('Baja Dominio Prueba',NULL,'Detección Dominios Baja Dominio Prueba',2,NULL,NULL,NULL),
	 ('Baja Dominio URGENTE',NULL,'Detección Dominios Baja Dominio URGENTE',2,NULL,NULL,NULL),
	 ('Disparo de Armas de Fuego',NULL,'Disparo de Armas de Fuego',1,NULL,NULL,NULL),
	 ('Elemento de dudosa procedencia',NULL,'Elemento de dudosa procedencia',1,NULL,NULL,NULL);
INSERT INTO cio911.typification (name,`number`,full_name,code_id,deleted_at,created_at,updated_at) VALUES
	 ('En Domicilios Abandonados',NULL,'Elemento de dudosa procedencia En Domicilios Abandonados',4,NULL,NULL,NULL),
	 ('Emergencia Civil',NULL,'Emergencia Civil',1,NULL,NULL,NULL),
	 ('Desastre Natural GENERAL',NULL,'Emergencia Civil Desastre Natural GENERAL',1,NULL,NULL,NULL),
	 ('Emergencia Médica',NULL,'Emergencia Médica',4,NULL,NULL,NULL),
	 ('Accidente Doméstico',NULL,'Emergencia Médica Accidente Doméstico',4,NULL,NULL,NULL),
	 ('Con Persona Desvanecida',NULL,'Emergencia Médica Con Persona Desvanecida',4,NULL,NULL,NULL),
	 ('Intoxicación',NULL,'Emergencia Médica Intoxicación',4,NULL,NULL,NULL),
	 ('Menor en Estado de Desnutrición',NULL,'Emergencia Médica Menor en Estado de Desnutrición',4,NULL,NULL,NULL),
	 ('Menor en Situación de Riesgo',NULL,'Emergencia Médica Menor en Situación de Riesgo',1,NULL,NULL,NULL),
	 ('Persona Con Ataque',NULL,'Emergencia Médica Persona Con Ataque',1,NULL,NULL,NULL);
INSERT INTO cio911.typification (name,`number`,full_name,code_id,deleted_at,created_at,updated_at) VALUES
	 ('Persona Con Infarto',NULL,'Emergencia Médica Persona Con Infarto',1,NULL,NULL,NULL),
	 ('Persona Con Trabajo De Parto',NULL,'Emergencia Médica Persona Con Trabajo De Parto',4,NULL,NULL,NULL),
	 ('Persona en Estado de Indigencia',NULL,'Emergencia Médica Persona en Estado de Indigencia',4,NULL,NULL,NULL),
	 ('Persona Enferma',NULL,'Emergencia Médica Persona Enferma',4,NULL,NULL,NULL),
	 ('Emergencia Salud',NULL,'Emergencia Salud',4,NULL,NULL,NULL),
	 ('Emergencias Eléctricas',NULL,'Emergencias Eléctricas',4,NULL,NULL,NULL),
	 ('Corte de Luz',NULL,'Emergencias Eléctricas Corte de Luz',4,NULL,NULL,NULL),
	 ('Postes Caídos',NULL,'Emergencias Eléctricas Postes Caídos',4,NULL,NULL,NULL),
	 ('Emergencia Médica 911',NULL,'Emergencia Médica 911',1,NULL,NULL,NULL),
	 ('Estafa y Defraudaciones',NULL,'Estafa y Defraudaciones',4,NULL,NULL,NULL);
INSERT INTO cio911.typification (name,`number`,full_name,code_id,deleted_at,created_at,updated_at) VALUES
	 ('Exhibiciones Obscenas',NULL,'Exhibiciones Obscenas',4,NULL,NULL,NULL),
	 ('Falsa Alarma',NULL,'Falsa Alarma',2,NULL,NULL,NULL),
	 ('Fuga de Gas en Viviendas',NULL,'Fuga de Gas en Viviendas',4,NULL,NULL,NULL),
	 ('Hallazgo de Cadáver',NULL,'Hallazgo de Cadáver',4,NULL,NULL,NULL),
	 ('Supuesto (Olores Nauseabundos)',NULL,'Hallazgo de Cadáver Supuesto (Olores Nauseabundos)',1,NULL,NULL,NULL),
	 ('Hallazgo de explosivo',NULL,'Hallazgo de explosivo',4,NULL,NULL,NULL),
	 ('Hallazgo de Objetos Peligrosos en la Vía Pública',NULL,'Hallazgo de Objetos Peligrosos en la Vía Pública',1,NULL,NULL,NULL),
	 ('Hallazgo de Persona Desconocida Extraviada',NULL,'Hallazgo de Persona Desconocida Extraviada',1,NULL,NULL,NULL),
	 ('Hallazgo de Restos Humanos',NULL,'Hallazgo de Restos Humanos',1,NULL,NULL,NULL),
	 ('Homicidio',NULL,'Homicidio',1,NULL,NULL,NULL);
INSERT INTO cio911.typification (name,`number`,full_name,code_id,deleted_at,created_at,updated_at) VALUES
	 ('Con Arma Blanca',NULL,'Homicidio Con Arma Blanca',4,NULL,NULL,NULL),
	 ('Con Arma de Fuego',NULL,'Homicidio Con Arma de Fuego',1,NULL,NULL,NULL),
	 ('Con Objeto Contundente',NULL,'Homicidio Con Objeto Contundente',4,NULL,NULL,NULL),
	 ('Por Envenenamiento',NULL,'Homicidio Por Envenenamiento',4,NULL,NULL,NULL),
	 ('Por Extrangulación',NULL,'Homicidio Por Extrangulación',4,NULL,NULL,NULL),
	 ('Hurto',NULL,'Hurto',4,NULL,NULL,NULL),
	 ('Automotor',NULL,'Hurto Automotor',1,NULL,NULL,NULL),
	 ('Consumado',NULL,'Hurto Consumado',4,NULL,NULL,NULL),
	 ('Establecimiento Publico',NULL,'Hurto Establecimiento Publico',1,NULL,NULL,NULL),
	 ('Motocicleta',NULL,'Hurto Motocicleta',4,NULL,NULL,NULL);
INSERT INTO cio911.typification (name,`number`,full_name,code_id,deleted_at,created_at,updated_at) VALUES
	 ('Simple',NULL,'Hurto Simple',4,NULL,NULL,NULL),
	 ('Incendio',NULL,'Incendio',1,NULL,NULL,NULL),
	 ('Con Personas Atrapadas',NULL,'Incendio Con Personas Atrapadas',4,NULL,NULL,NULL),
	 ('De Edificios',NULL,'Incendio De Edificios',4,NULL,NULL,NULL),
	 ('De Transformador',NULL,'Incendio De Transformador',4,NULL,NULL,NULL),
	 ('De Vehiculos',NULL,'Incendio De Vehiculos',1,NULL,NULL,NULL),
	 ('De Vivienda/s',NULL,'Incendio De Vivienda/s',1,NULL,NULL,NULL),
	 ('Establecimientos públicos',NULL,'Incendio Establecimientos públicos',1,NULL,NULL,NULL),
	 ('Explosión',NULL,'Incendio Explosión',1,NULL,NULL,NULL),
	 ('Malezas',NULL,'Incendio Malezas',4,NULL,NULL,NULL);
INSERT INTO cio911.typification (name,`number`,full_name,code_id,deleted_at,created_at,updated_at) VALUES
	 ('Incitación Sexual Escandalosa',NULL,'Incitación Sexual Escandalosa',4,NULL,NULL,NULL),
	 ('Interrrupción en el suministro de Agua Potable',NULL,'Interrrupción en el suministro de Agua Potable',2,NULL,NULL,NULL),
	 ('Lesiones',NULL,'Lesiones',4,NULL,NULL,NULL),
	 ('Con Arma Blanca',NULL,'Lesiones Con Arma Blanca',1,NULL,NULL,NULL),
	 ('Con Arma de Fuego',NULL,'Lesiones Con Arma de Fuego',1,NULL,NULL,NULL),
	 ('Con Fractura Expuesta',NULL,'Lesiones Con Fractura Expuesta',1,NULL,NULL,NULL),
	 ('Con Fracturas',NULL,'Lesiones Con Fracturas',1,NULL,NULL,NULL),
	 ('Con Objetos Contundentes',NULL,'Lesiones Con Objetos Contundentes',1,NULL,NULL,NULL),
	 ('Con Perdidas de Miembros',NULL,'Lesiones Con Perdidas de Miembros',1,NULL,NULL,NULL),
	 ('En Riñas',NULL,'Lesiones En Riñas',4,NULL,NULL,NULL);
INSERT INTO cio911.typification (name,`number`,full_name,code_id,deleted_at,created_at,updated_at) VALUES
	 ('En Vía Pública',NULL,'Lesiones En Vía Pública',4,NULL,NULL,NULL),
	 ('Llamadas en Bromas',NULL,'Llamadas en Bromas',2,NULL,NULL,NULL),
	 ('Llamado Interno',NULL,'Llamado Interno',2,NULL,NULL,NULL),
	 ('Llamados por Consulta',NULL,'Llamados por Consulta',2,NULL,NULL,NULL),
	 ('Maltrato Animal',NULL,'Maltrato Animal',4,NULL,NULL,NULL),
	 ('Manifestaciones',NULL,'Manifestaciones',4,NULL,NULL,NULL),
	 ('Activas',NULL,'Manifestaciones Activas',4,NULL,NULL,NULL),
	 ('Agresivas Con Cortes de Rutas y Calles',NULL,'Manifestaciones Agresivas Con Cortes de Rutas y Calles',4,NULL,NULL,NULL),
	 ('Pacifistas',NULL,'Manifestaciones Pacifistas',4,NULL,NULL,NULL),
	 ('Menor en Situación de Riesgo',NULL,'Menor en Situación de Riesgo',1,NULL,NULL,NULL);
INSERT INTO cio911.typification (name,`number`,full_name,code_id,deleted_at,created_at,updated_at) VALUES
	 ('Menores Consumiendo Alcohol en la Vía Pública',NULL,'Menores Consumiendo Alcohol en la Vía Pública',4,NULL,NULL,NULL),
	 ('Modalidad motochorros',NULL,'Modalidad motochorros',1,NULL,NULL,NULL),
	 ('Móvil NOVEDADES',NULL,'Móvil NOVEDADES',2,NULL,NULL,NULL),
	 ('Móvil Policial Involucrado en Acto de Indecoro',NULL,'Móvil Policial Involucrado en Acto de Indecoro',1,NULL,NULL,NULL),
	 ('Muerte',NULL,'Muerte',1,NULL,NULL,NULL),
	 ('Muerte Dudosa',NULL,'Muerte Dudosa',1,NULL,NULL,NULL),
	 ('Novedades de la Guardia',NULL,'Novedades de la Guardia',2,NULL,NULL,NULL),
	 ('Video Vigilancia',NULL,'Novedades de la Guardia Video Vigilancia',2,NULL,NULL,NULL),
	 ('Novedades Video Vigilancia',NULL,'Novedades Video Vigilancia',2,NULL,NULL,NULL),
	 ('Alta de Cámaras',NULL,'Novedades Video Vigilancia Alta de Cámaras',2,NULL,NULL,NULL);
INSERT INTO cio911.typification (name,`number`,full_name,code_id,deleted_at,created_at,updated_at) VALUES
	 ('Baja de Cámaras',NULL,'Novedades Video Vigilancia Baja de Cámaras',2,NULL,NULL,NULL),
	 ('Estado de Cámaras',NULL,'Novedades Video Vigilancia Estado de Cámaras',2,NULL,NULL,NULL),
	 ('Reemplazo de tipo de Cámaras',NULL,'Novedades Video Vigilancia Reemplazo de tipo de Cámaras',2,NULL,NULL,NULL),
	 ('Reparación de Cámaras',NULL,'Novedades Video Vigilancia Reparación de Cámaras',2,NULL,NULL,NULL),
	 ('Ofensa de Palabra o de Hecho',NULL,'Ofensa de Palabra o de Hecho',2,NULL,NULL,NULL),
	 ('Ofensas al Pudor',NULL,'Ofensas al Pudor',2,NULL,NULL,NULL),
	 ('Patotas',NULL,'Patotas',4,NULL,NULL,NULL),
	 ('Pedido de Auxilio',NULL,'Pedido de Auxilio',4,NULL,NULL,NULL),
	 ('Persona cobrando peaje',NULL,'Persona cobrando peaje',1,NULL,NULL,NULL),
	 ('Persona con pedido de Det. o Cap.',NULL,'Persona con pedido de Det. o Cap.',4,NULL,NULL,NULL);
INSERT INTO cio911.typification (name,`number`,full_name,code_id,deleted_at,created_at,updated_at) VALUES
	 ('Persona en estado de ebriedad',NULL,'Persona en estado de ebriedad',2,NULL,NULL,NULL),
	 ('Persona en situación de calle',NULL,'Persona en situación de calle',4,NULL,NULL,NULL),
	 ('Persona Exhibiendo Arma de Fuego',NULL,'Persona Exhibiendo Arma de Fuego',4,NULL,NULL,NULL),
	 ('Persona extraviada',NULL,'Persona extraviada',4,NULL,NULL,NULL),
	 ('Mayor',NULL,'Persona extraviada Mayor',4,NULL,NULL,NULL),
	 ('Menor',NULL,'Persona extraviada Menor',4,NULL,NULL,NULL),
	 ('Personal policial Agredido/Herido',NULL,'Personal policial Agredido/Herido',1,NULL,NULL,NULL),
	 ('Personal Policial Involucrado en Acto de Indecoro',NULL,'Personal Policial Involucrado en Acto de Indecoro',1,NULL,NULL,NULL),
	 ('Personas Ahorcadas',NULL,'Personas Ahorcadas',4,NULL,NULL,NULL),
	 ('Personas Atrapadas en Ascensor',NULL,'Personas Atrapadas en Ascensor',3,NULL,NULL,NULL);
INSERT INTO cio911.typification (name,`number`,full_name,code_id,deleted_at,created_at,updated_at) VALUES
	 ('Personas Demoradas',NULL,'Personas Demoradas',4,NULL,NULL,NULL),
	 ('Por civiles',NULL,'Personas Demoradas Por civiles',1,NULL,NULL,NULL),
	 ('Por Personal Policial',NULL,'Personas Demoradas Por Personal Policial',4,NULL,NULL,NULL),
	 ('Personas en estado de demencias',NULL,'Personas en estado de demencias',4,NULL,NULL,NULL),
	 ('Menor',NULL,'Personas en estado de demencias Menor',4,NULL,NULL,NULL),
	 ('Mayor',NULL,'Personas en estado de demencias Mayor',4,NULL,NULL,NULL),
	 ('Personas en situación de Abandono',NULL,'Personas en situación de Abandono',4,NULL,NULL,NULL),
	 ('Personas Trasladando Elementos Dudosa Procedencia',NULL,'Personas Trasladando Elementos Dudosa Procedencia',4,NULL,NULL,NULL),
	 ('Perturbaciones y Escándalos',NULL,'Perturbaciones y Escándalos',4,NULL,NULL,NULL),
	 ('En Domicilio o Lugares Privados',NULL,'Perturbaciones y Escándalos En Domicilio o Lugares Privados',4,NULL,NULL,NULL);
INSERT INTO cio911.typification (name,`number`,full_name,code_id,deleted_at,created_at,updated_at) VALUES
	 ('En Lugares públicos',NULL,'Perturbaciones y Escándalos en Lugares públicos',4,NULL,NULL,NULL),
	 ('Fumigacion de Abejas',NULL,'Perturbaciones y Escándalos Fumigacion de Abejas',3,NULL,NULL,NULL),
	 ('Privación ilegítima de la libertad',NULL,'Privación ilegítima de la libertad',1,NULL,NULL,NULL),
	 ('Llamada tercero',NULL,'Privación ilegítima de la libertad Llamada tercero',1,NULL,NULL,NULL),
	 ('Llamada víctima',NULL,'Privación ilegítima de la libertad Llamada víctima',1,NULL,NULL,NULL),
	 ('Llamada víctima liberada',NULL,'Privación ilegítima de la libertad Llamada víctima liberada',1,NULL,NULL,NULL),
	 ('Problemas con sistemas del 911',NULL,'Problemas con sistemas del 911',1,NULL,NULL,NULL),
	 ('Despacho',NULL,'Problemas con sistemas del 911 Despacho',1,NULL,NULL,NULL),
	 ('Radio P25',NULL,'Problemas con sistemas del 911 Radio P25',1,NULL,NULL,NULL),
	 ('Reclamos',NULL,'Reclamos',2,NULL,NULL,NULL);
INSERT INTO cio911.typification (name,`number`,full_name,code_id,deleted_at,created_at,updated_at) VALUES
	 ('Rescate de Animales',NULL,'Rescate de Animales',3,NULL,NULL,NULL),
	 ('Resultado de Evento',NULL,'Resultado de Evento',2,NULL,NULL,NULL),
	 ('Robo',NULL,'Robo',4,NULL,NULL,NULL),
	 ('Con arma blanca',NULL,'Robo Con arma blanca',1,NULL,NULL,NULL),
	 ('Con Arma de Fuego',NULL,'Robo Con Arma de Fuego',1,NULL,NULL,NULL),
	 ('Con Objetos Contundentes',NULL,'Robo Con Objetos Contundentes',1,NULL,NULL,NULL),
	 ('Consumado',NULL,'Robo Consumado',4,NULL,NULL,NULL),
	 ('de Automotor',NULL,'Robo de Automotor',1,NULL,NULL,NULL),
	 ('Robo de Elementos de Vehículos',NULL,'Robo de Elementos de Vehículos',4,NULL,NULL,NULL),
	 ('en Domicilio Particular',NULL,'Robo en Domicilio Particular',4,NULL,NULL,NULL);
INSERT INTO cio911.typification (name,`number`,full_name,code_id,deleted_at,created_at,updated_at) VALUES
	 ('En Grado De Tentativa',NULL,'Robo En Grado De Tentativa',1,NULL,NULL,NULL),
	 ('En Proceso',NULL,'Robo En Proceso',1,NULL,NULL,NULL),
	 ('Modalidad Arrebato',NULL,'Robo Modalidad Arrebato',1,NULL,NULL,NULL),
	 ('Ruidos Molestos',NULL,'Ruidos Molestos',3,NULL,NULL,NULL),
	 ('Secuestro',NULL,'Secuestro',1,NULL,NULL,NULL),
	 ('Semáforos fuera de servicio',NULL,'Semáforos fuera de servicio',3,NULL,NULL,NULL),
	 ('Simulacro',NULL,'Simulacro',2,NULL,NULL,NULL),
	 ('Siniestro Aéreo',NULL,'Siniestro Aéreo',1,NULL,NULL,NULL),
	 ('Siniestro Náutico',NULL,'Siniestro Náutico',1,NULL,NULL,NULL),
	 ('Siniestro vial',NULL,'Siniestro vial',4,NULL,NULL,NULL);
INSERT INTO cio911.typification (name,`number`,full_name,code_id,deleted_at,created_at,updated_at) VALUES
	 ('Con lesionados',NULL,'Siniestro vial Con lesionados',1,NULL,NULL,NULL),
	 ('Con personas atrapadas',NULL,'Siniestro vial Con personas atrapadas',2,NULL,NULL,NULL),
	 ('Con personas fallecidas',NULL,'Siniestro vial Con personas fallecidas',1,NULL,NULL,NULL),
	 ('Despiste de Vehículos',NULL,'Siniestro vial Despiste de Vehículos',3,NULL,NULL,NULL),
	 ('Sin lesionados',NULL,'Siniestro Vial sin lesionados',4,NULL,NULL,NULL),
	 ('Vehículo inscinerado',NULL,'Siniestro vial Vehículo inscinerado',4,NULL,NULL,NULL),
	 ('Solicitud de traslado de detenidos',NULL,'Solicitud de traslado de detenidos',4,NULL,NULL,NULL),
	 ('Solicitud Móvil Traslado de Detenidos',NULL,'Solicitud Móvil Traslado de Detenidos',4,NULL,NULL,NULL),
	 ('Sospechoso',NULL,'Sospechoso',4,NULL,NULL,NULL),
	 ('Inmediaciones de un Inmueble',NULL,'Sospechoso Inmediaciones de un Inmueble',4,NULL,NULL,NULL);
INSERT INTO cio911.typification (name,`number`,full_name,code_id,deleted_at,created_at,updated_at) VALUES
	 ('Interior de un Inmueble',NULL,'Sospechoso Interior de un Inmueble',1,NULL,NULL,NULL),
	 ('Suicidio',NULL,'Suicidio',1,NULL,NULL,NULL),
	 ('En grado de tentativa',NULL,'Suicidio En grado de tentativa',4,NULL,NULL,NULL),
	 ('TECNICA',NULL,'TECNICA',2,NULL,NULL,NULL),
	 ('FALLA DEL SISTEMA DESPACHO',NULL,'TECNICA FALLA DEL SISTEMA DESPACHO',2,NULL,NULL,NULL),
	 ('SIN VISUALIZACIÓN DE CÁMARAS DE VIDEO VIGILANCIA',NULL,'TECNICA SIN VISUALIZACIÓN DE CÁMARAS DE VIDEO VIGILANCIA',2,NULL,NULL,NULL),
	 ('TOXICOMANÍA',NULL,'TOXICOMANÍA',1,NULL,NULL,NULL),
	 ('Comercialización de Estupefacientes',NULL,'TOXICOMANÍA Comercialización de Estupefacientes',1,NULL,NULL,NULL),
	 ('Consumo en la Vía Pública',NULL,'TOXICOMANÍA Consumo en la Vía Pública',4,NULL,NULL,NULL),
	 ('Hallazgo de Estupefacientes',NULL,'TOXICOMANÍA Hallazgo de Estupefacientes',4,NULL,NULL,NULL);
INSERT INTO cio911.typification (name,`number`,full_name,code_id,deleted_at,created_at,updated_at) VALUES
	 ('Trata de Personas',NULL,'Trata de Personas',1,NULL,NULL,NULL),
	 ('En Proceso',NULL,'Trata de Personas En Proceso',1,NULL,NULL,NULL),
	 ('Usurpación',NULL,'Usurpación',4,NULL,NULL,NULL),
	 ('Propiedad Privada',NULL,'Usurpación Propiedad Privada',4,NULL,NULL,NULL),
	 ('Propiedad Pública',NULL,'Usurpación Propiedad Pública',4,NULL,NULL,NULL),
	 ('Vandalismo',NULL,'Vandalismo',4,NULL,NULL,NULL),
	 ('Vehículo con personas sospechosas',NULL,'Vehículo con personas sospechosas',4,NULL,NULL,NULL),
	 ('Vehículos o motos',NULL,'Vehículos o motos',4,NULL,NULL,NULL),
	 ('Abandonados',NULL,'Vehículos o motos Abandonados',4,NULL,NULL,NULL),
	 ('Estacionados en lugares prohibidos',NULL,'Vehículos o motos Estacionados en lugares prohibidos',4,NULL,NULL,NULL);
INSERT INTO cio911.typification (name,`number`,full_name,code_id,deleted_at,created_at,updated_at) VALUES
	 ('Obstaculizando el transito',NULL,'Vehículos o motos Obstaculizando el transito',4,NULL,NULL,NULL),
	 ('Realizando maniobras peligrosas',NULL,'Vehículos o motos Realizando maniobras peligrosas',4,NULL,NULL,NULL),
	 ('VERIFICACIÓN EMERGENCIAS MÉDICAS',NULL,'VERIFICACIÓN EMERGENCIAS MÉDICAS',2,NULL,NULL,NULL),
	 ('Video Vigilancia',NULL,'Video Vigilancia',2,NULL,NULL,NULL),
	 ('Violación de Domicilio',NULL,'Violación de Domicilio',1,NULL,NULL,NULL),
	 ('En Proceso',NULL,'Violación de Domicilio En Proceso',1,NULL,NULL,NULL),
	 ('Violencia De Género',NULL,'Violencia De Género',1,NULL,NULL,NULL),
	 ('Con Lesiones Físicas',NULL,'Violencia De Género Con Lesiones Físicas',1,NULL,NULL,NULL),
	 ('En Proceso',NULL,'Violencia De Género En Proceso',1,NULL,NULL,NULL),
	 ('Psicológica',NULL,'Violencia De Género Psicológica',1,NULL,NULL,NULL);
INSERT INTO cio911.typification (name,`number`,full_name,code_id,deleted_at,created_at,updated_at) VALUES
	 ('Violencia Familiar',NULL,'Violencia Familiar',1,NULL,NULL,NULL),
	 ('Con Exclusión de Hogar',NULL,'Violencia Familiar Con Exclusión de Hogar',1,NULL,NULL,NULL),
	 ('En Estado de Crisis',NULL,'Violencia Familiar En Estado de Crisis',1,NULL,NULL,NULL),
	 ('En Proceso',NULL,'Violencia Familiar En Proceso',1,NULL,NULL,NULL),
	 ('Hacia Femenino',NULL,'Violencia Familiar Hacia Femenino',1,NULL,NULL,NULL),
	 ('Hacia Masculino',NULL,'Violencia Familiar Hacia Masculino',1,NULL,NULL,NULL),
	 ('Hacia Menores',NULL,'Violencia Familiar Hacia Menores',1,NULL,NULL,NULL),
	 ('Incumplimiento Judicial Prohibición Acercamiento',NULL,'Violencia Familiar Incumplimiento Judicial Prohibición Acercamiento',1,NULL,NULL,NULL),
	 ('prueba',NULL,'prueba',2,NULL,'2022-10-22 11:42:50','2022-10-22 11:42:50'),
	 ('VEDA DE PESCA',0,'VEDA DE PESCA',4,NULL,'2022-11-03 10:13:04','2022-11-03 10:13:04');
INSERT INTO cio911.typification (name,`number`,full_name,code_id,deleted_at,created_at,updated_at) VALUES
	 ('NOVEDADES TOTEM',NULL,'NOVEDADES TOTEM',1,NULL,'2022-11-18 23:24:44','2022-11-18 23:24:44'),
	 ('Novedades Tobillera Electrónica',NULL,'Novedades Tobillera Electrónica',1,NULL,'2022-12-16 17:41:31','2022-12-16 17:41:31'),
	 ('Embarcación a la deriva',NULL,'Embarcación a la deriva',1,NULL,'2022-12-28 20:27:05','2022-12-28 20:27:05'),
	 ('QUEJAS HACIA PERSONAL POLICIAL',NULL,'QUEJAS HACIA PERSONAL POLICIAL',2,NULL,'2023-04-10 09:56:46','2023-04-10 09:56:46'),
	 ('SOLICITUD DE RECORRIDAS',NULL,'SOLICITUD DE RECORRIDAS',3,NULL,'2023-07-31 01:19:00','2023-07-31 01:19:00'),
	 ('Baja Dominio Investigaciones',0,'Baja Dominio Urgente',2,NULL,'2023-12-06 08:46:06','2023-12-06 08:46:06'),
	 ('Baja Dominio Investigaciones',NULL,'Baja Dominio Investigaciones',2,NULL,'2023-12-18 18:53:51','2023-12-18 18:53:51'),
	 ('NOVEDADES SUPERVISION OPERACIONAL',0,'NOVEDADES SUPERVISION OPERACIONAL',3,NULL,'2023-12-31 15:08:25','2023-12-31 15:08:25'),
	 ('FUGA DE HOGAR',NULL,'FUGA DE HOGAR',1,NULL,'2024-08-27 18:17:08','2024-08-27 18:17:08');

-- users
INSERT
	INTO
	cio911.users (id,
	mag,
	user_name,
	`hierarchy`,
	surname,
	name,
	email,
	dependence,
	password,
	first_login,
	role_id,
	create_user_id,
	deleted_at,
	created_at,
	updated_at
)
VALUES(1,
1,
'1',
'Oficial',
'Arizaga',
'Francisco',
'arizagafrancisco@gmail.com',
'Dir. Innovacion',
NULL,
'2021-01-01 12:00:00',
1,
1,
NULL,
NULL,
NULL
);

-- Se habilitan la relación entre tablas
SET FOREIGN_KEY_CHECKS=1;
