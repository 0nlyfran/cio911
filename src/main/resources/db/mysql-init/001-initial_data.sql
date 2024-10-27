-- Aquí van todas las migraciones necesarias 

-- Se deshabilitan la relación entre tablas
SET FOREIGN_KEY_CHECKS=0;

-- codes
ALTER TABLE cio911.codes AUTO_INCREMENT = 1;
INSERT INTO cio911.codes (`order`,name,hex) VALUES
	 (0,'ROJO','#FF8B8B'),
	 (2,'CELESTE','#9FD1FF'),
	 (3,'VERDE','#AAFFA2'),
	 (1,'AMARILLO','#F5FFA2');

-- executing_entity
ALTER TABLE cio911.executing_entity AUTO_INCREMENT = 1;
INSERT INTO cio911.executing_entity (name,color,entity_type_id,address_id,department_id) VALUES
	 ('10ma UR-X',NULL,6,NULL,NULL),
	 ('11ra UR-X',NULL,6,NULL,NULL),
	 ('12da UR-I',NULL,6,NULL,NULL),
	 ('13ra UR-I',NULL,6,NULL,NULL),
	 ('14ta UR-X',NULL,6,NULL,NULL),
	 ('15ta UR-X',NULL,6,NULL,NULL),
	 ('16ta UR-I',NULL,6,NULL,NULL),
	 ('17ma UR-I',NULL,6,NULL,NULL),
	 ('18va UR-X',NULL,6,NULL,NULL),
	 ('19na UR-I',NULL,6,NULL,NULL);
INSERT INTO cio911.executing_entity (name,color,entity_type_id,address_id,department_id) VALUES
	 ('1ra UR-I',NULL,6,NULL,NULL),
	 ('20ma UR-X',NULL,6,NULL,NULL),
	 ('2da UR-I',NULL,6,NULL,NULL),
	 ('3ra UR-I',NULL,6,NULL,NULL),
	 ('4ta UR-I',NULL,6,NULL,NULL),
	 ('5ta UR-X',NULL,6,NULL,NULL),
	 ('6ta UR-I',NULL,6,NULL,NULL),
	 ('7ma UR-I',NULL,6,NULL,NULL),
	 ('8va UR-X',NULL,6,NULL,NULL),
	 ('9na UR-X',NULL,6,NULL,NULL);
INSERT INTO cio911.executing_entity (name,color,entity_type_id,address_id,department_id) VALUES
	 ('Agrupación Motorizada',NULL,12,NULL,NULL),
	 ('Ambulancia',NULL,21,NULL,NULL),
	 ('Brigada de Investigaciones UR-I',NULL,9,NULL,NULL),
	 ('Brigada de Investigaciones UR-X',NULL,9,NULL,NULL),
	 ('Candelaria',NULL,6,NULL,NULL),
	 ('Comando Candelaria UR-X',NULL,5,NULL,NULL),
	 ('DEPARTAMENTO SUPERVISION OPERACIONAL',NULL,14,NULL,NULL),
	 ('Comando Santa Clara UR-X',NULL,5,NULL,NULL),
	 ('Defensa Civil',NULL,14,NULL,NULL);
INSERT INTO cio911.executing_entity (name,color,entity_type_id,address_id,department_id) VALUES
	 ('De la Mujer Itaembe Mini',NULL,6,NULL,NULL),
	 ('De la Mujer Oeste',NULL,6,NULL,NULL),
	 ('De la Mujer URI',NULL,6,NULL,NULL),
	 ('De la Mujer URX',NULL,6,NULL,NULL),
	 ('Dependiente Municipalidad',NULL,14,NULL,NULL),
	 ('Direccion Centro Integral de Operaciones',NULL,8,NULL,NULL),
	 ('Dir. Gral. Vial y Turismo',NULL,8,NULL,NULL),
	 ('Drogas Peligrosas',NULL,8,NULL,NULL),
	 ('Emergencia Médica',NULL,20,NULL,NULL),
	 ('EMSA SA',NULL,14,NULL,NULL);
INSERT INTO cio911.executing_entity (name,color,entity_type_id,address_id,department_id) VALUES
	 ('Garupa',NULL,1,NULL,NULL),
	 ('Garupa UR-X',NULL,6,NULL,NULL),
	 ('Grupo de Intervención Rápida',NULL,12,NULL,NULL),
	 ('Hospital',NULL,21,NULL,NULL),
	 ('IMUSA',NULL,14,NULL,NULL),
	 ('Infantería UR-I',NULL,12,NULL,NULL),
	 ('Investigaciones Complejas',NULL,8,NULL,NULL),
	 ('Itaembe Guazu',NULL,6,NULL,NULL),
	 ('Ministerio de salud',NULL,17,NULL,NULL),
	 ('Otros',NULL,14,NULL,NULL);
INSERT INTO cio911.executing_entity (name,color,entity_type_id,address_id,department_id) VALUES
	 ('Pol Científica UR-I',NULL,8,NULL,NULL),
	 ('Pol Científica UR-X',NULL,8,NULL,NULL),
	 ('Policía Federal POSADAS',NULL,10,NULL,NULL),
	 ('Prevención de Delitos',NULL,12,NULL,NULL),
	 ('SAMSA',NULL,14,NULL,NULL),
	 ('Sanidad Policial',NULL,9,NULL,NULL),
	 ('San Isidro',NULL,1,NULL,NULL),
	 ('Comando San Isidro UR-X',NULL,5,NULL,NULL),
	 ('Seguridad Costanera',NULL,7,NULL,NULL),
	 ('Transito Municipal',NULL,8,NULL,NULL);
INSERT INTO cio911.executing_entity (name,color,entity_type_id,address_id,department_id) VALUES
	 ('(UCT)',NULL,21,NULL,NULL),
	 ('UR-I',NULL,5,NULL,NULL),
	 ('UR-X',NULL,5,NULL,NULL),
	 ('Voluntarios',NULL,1,NULL,NULL),
	 ('Zona "Centro"',NULL,1,NULL,NULL),
	 ('Zona "Oeste"',NULL,1,NULL,NULL),
	 ('Zona Oeste UR-I',NULL,5,NULL,NULL),
	 ('Zona "Sur"',NULL,1,NULL,NULL),
	 ('Comando Centro UR-I',NULL,5,NULL,NULL),
	 ('Comando Oeste UR-I',NULL,5,NULL,NULL);
INSERT INTO cio911.executing_entity (name,color,entity_type_id,address_id,department_id) VALUES
	 ('DESTACAMENTO EL CHOGUI',NULL,6,NULL,NULL),
	 ('otras unidades regionales',NULL,14,NULL,NULL),
	 ('Destacamento Terminal',NULL,7,NULL,NULL),
	 ('BOMBERO OESTE',NULL,25,NULL,NULL),
	 ('Video Vigilancia',NULL,9,NULL,NULL),
	 ('bombero sur',NULL,24,NULL,NULL),
	 ('CUARTEL CENTRAL- SUR',NULL,24,NULL,NULL),
	 ('Bomberos sur Cuartel Central',NULL,24,NULL,NULL);
INSERT INTO cio911.executing_entity (name,color,entity_type_id,address_id,department_id) VALUES
	 ('Bombero San Isidro',NULL,24,NULL,NULL),
	 ('Bombero Garupa',NULL,24,NULL,NULL),
	 ('BOMBERO ITAEMBE GUAZU',NULL,2,NULL,NULL),
	 ('COMISARIA MUJER CANDELARIA',NULL,6,NULL,NULL),
	 ('MOTORIZADA SOL DE MISIONES',NULL,12,NULL,NULL),
	 ('MOTORIZADA FATIMA',NULL,12,NULL,NULL),
	 ('MOTORIZADA GARUPA',NULL,12,NULL,NULL),
	 ('MOTORIZADA ITAEMBE MINI',NULL,12,NULL,NULL),
	 ('MOTORIZADA UR-1',NULL,12,NULL,NULL),
	 ('PREFECTURA NAVAL ARGENTINA',NULL,7,NULL,NULL);
INSERT INTO cio911.executing_entity (name,color,entity_type_id,address_id,department_id) VALUES
	 ('Zona Centro',NULL,24,NULL,NULL),
	 ('MOTORIZADA LIBERTADOR',NULL,9,NULL,NULL),
	 ('BOMBERO ZONA CENTRO',NULL,24,NULL,NULL),
	 ('DESTACAMENTO COSTA SUR',NULL,7,NULL,NULL),
	 ('DESTACAMENTO 508 VIV.',NULL,7,NULL,NULL),
	 ('Montada',NULL,13,NULL,NULL),
	 ('MOTORIZADA ITAEMBE GUAZU',NULL,9,NULL,NULL),
	 ('ESPACIO VERDES',NULL,23,NULL,NULL),
	 ('DIRECCION HOMICIDIOS',NULL,8,NULL,NULL);
INSERT INTO cio911.executing_entity (name,color,entity_type_id,address_id,department_id) VALUES
	 ('Resguardo de Detenidos',NULL,29,NULL,NULL),
	 ('MOTORIZADA ZONA OESTE',NULL,8,NULL,NULL),
	 ('VIDEO VIGILANCIA ITAEMBE GUAZU',NULL,9,NULL,NULL);

-- executing_entity_type
ALTER TABLE cio911.executing_entity_type AUTO_INCREMENT = 1;
INSERT INTO cio911.executing_entity_type (name) VALUES
	 ('Bomberos'),
	 ('Bomberos Itaembé Guazú'),
	 ('Bombero Voluntarios'),
	 ('Brigada De Canes'),
	 ('Comando'),
	 ('Comisaría'),
	 ('Destacamento'),
	 ('Dirección'),
	 ('División'),
	 ('FUERO FEDERAL');
INSERT INTO cio911.executing_entity_type (name) VALUES
	 ('Gendamería Nacional Argentina'),
	 ('Grupos Operativos'),
	 ('Montada'),
	 ('OTRAS UNIDADES REGIONALES'),
	 ('Rescates Complejos'),
	 ('Ruidos Molestos'),
	 ('Salud'),
	 ('Sanidad UR-I'),
	 ('Sanidad UR-X'),
	 ('Sistema Externo');
INSERT INTO cio911.executing_entity_type (name) VALUES
	 ('Unidad Central de Traslado'),
	 ('Rescates Complejos'),
	 ('Bomberos'),
	 ('Bomberos'),
	 ('MOTORIZADA JURS. CRIA 18VA'),
	 ('División Montada'),
	 ('Resguardo de detenidos');

-- localities
ALTER TABLE cio911.localities AUTO_INCREMENT = 1;
INSERT INTO cio911.localities (name) VALUES
	 ('POSADAS'),
	 ('GARUPA'),
	 ('FACHINAL'),
	 ('APOSTOLES'),
	 ('SAN JOSE'),
	 ('AZARA'),
	 ('TRES CAPONES'),
	 ('SANTA ANA'),
	 ('CANDELARIA'),
	 ('PROFUNDIDAD');
INSERT INTO cio911.localities (name) VALUES
	 ('CERRO CORA'),
	 ('BONPLAND'),
	 ('MARTIRES'),
	 ('LORETO'),
	 ('LEANDRO N. ALEM'),
	 ('OLEGARIO V. ANDRADE'),
	 ('CERRO AZUL'),
	 ('ARROYO DEL MEDIO'),
	 ('DOS ARROYOS'),
	 ('GOBERNADOR LOPEZ');
INSERT INTO cio911.localities (name) VALUES
	 ('CAA - YARI'),
	 ('ALMAFUERTE'),
	 ('CONCEPCION DE LA SIERA'),
	 ('SANTA MARIA'),
	 ('SAN JAVIER'),
	 ('ITACARUARE'),
	 ('MOJON GRANDE'),
	 ('FLORENTINO AMEGHINO'),
	 ('SAN IGNACIO'),
	 ('CORPUS');
INSERT INTO cio911.localities (name) VALUES
	 ('GOBERNADOR ROCA'),
	 ('SANTO PIPO'),
	 ('HIPOLITO YRIGOYEN'),
	 ('GENERAL URQUIZA'),
	 ('COLONIA POLANA'),
	 ('JARDIN AMERICA'),
	 ('OBERA'),
	 ('GENERAL ALVEAR'),
	 ('COLONIA ALBERDI'),
	 ('CAMPO VIERA');
INSERT INTO cio911.localities (name) VALUES
	 ('CAMPO RAMON'),
	 ('PANAMBI'),
	 ('LOS HELECHOS'),
	 ('GUARANI'),
	 ('SAN MARTIN'),
	 ('PUERTO RICO'),
	 ('PUERTO LEONI'),
	 ('CAPIOVI'),
	 ('RUIZ DE MONTOYA'),
	 ('GARUHAPE');
INSERT INTO cio911.localities (name) VALUES
	 ('EL ALCAZAR'),
	 ('DOS DE MAYO'),
	 ('CAMPO GRANDE'),
	 ('ARISTOBULO DEL VALLE'),
	 ('SALTO ENCANTADO'),
	 ('ALBA POSSE'),
	 ('25 DE mayo'),
	 ('COLONIA AURORA'),
	 ('MONTECARLO'),
	 ('CARAGUATAY');
INSERT INTO cio911.localities (name) VALUES
	 ('PUERTO PIRAY'),
	 ('SAN VICENTE'),
	 ('EL SOBERBIO'),
	 ('ELDORADO'),
	 ('9 DE julio'),
	 ('SANTIAGO DE LINIERS'),
	 ('COLONIA VICTORIA'),
	 ('COLONIA DELICIA'),
	 ('SAN PEDRO'),
	 ('POZO AZUL');
INSERT INTO cio911.localities (name) VALUES
	 ('PUERTO ESPERANZA'),
	 ('WANDA'),
	 ('PUERTO LIBERTAD'),
	 ('PUERTO IGUAZU'),
	 ('BERNARDO DE IRIGOYEN'),
	 ('SAN ANTONIO'),
	 ('COMANDANTE ANDRESITO');

-- typification
ALTER TABLE cio911.typification AUTO_INCREMENT = 1;
INSERT INTO cio911.typification (name,`number`,full_name,code_id) VALUES
	 ('Accidente Laborales',NULL,'Accidente Laborales',4),
	 ('TECNICA',NULL,'Accidente Laborales TECNICA',1),
	 ('Acoso',NULL,'Acoso',4),
	 ('Actos o Palabras Obscenas',NULL,'Actos o Palabras Obscenas',2),
	 ('Actuación de Grupos',NULL,'Actuación de Grupos',4),
	 ('Alarma',NULL,'Alarma',2),
	 ('Banco o Entidad Financiera',NULL,'Alarma Banco o Entidad Financiera',4),
	 ('Comercio',NULL,'Alarma Comercio',4),
	 ('inmueble Particular',NULL,'Alarma Inmueble Particular',4),
	 ('Amenaza',NULL,'Amenaza',4);
INSERT INTO cio911.typification (name,`number`,full_name,code_id) VALUES
	 ('Amenaza de Explosivos',NULL,'Amenaza de Explosivos',1),
	 ('Establecimiento Educativo',NULL,'Amenaza de Explosivos Establecimiento Educativo',1),
	 ('Vía Pública',NULL,'Amenaza de Explosivos Vía Pública',1),
	 ('De Muerte',NULL,'Amenaza De Muerte',1),
	 ('Animales Sueltos',NULL,'Animales Sueltos',2),
	 ('Peligrosos y/o Agresivos',NULL,'Animales Sueltos Peligrosos y/o Agresivos',4),
	 ('Apoyo (Efectivo Policial en Peligro)',NULL,'Apoyo (Efectivo Policial en Peligro)',1),
	 ('Apoyo (Personal de Transito Municipal)',NULL,'Apoyo (Personal de Transito Municipal)',4),
	 ('Apoyo (Personal Poder Judicial)',NULL,'Apoyo (Personal Poder Judicial)',4),
	 ('Arboles Caidos',NULL,'Arboles Caidos',4);
INSERT INTO cio911.typification (name,`number`,full_name,code_id) VALUES
	 ('Aviso',NULL,'Aviso',1),
	 ('Boca de Tormenta Expuesta (sin rejas)',NULL,'Aviso Boca de Tormenta Expuesta (sin rejas)',1),
	 ('Fuga de agua en la vía pública',NULL,'Aviso Fuga de agua en la vía pública',1),
	 ('Botón de Pánico',NULL,'Botón de Pánico',1),
	 ('Carga de Dominio',NULL,'Carga de Dominio',2),
	 ('Alta Dominio Investigaciones',NULL,'Carga de Dominio Alta Dominio Investigaciones',2),
	 ('Conflicto Entre Vecinos',NULL,'Conflicto Entre Vecinos',4),
	 ('Con Heridos',NULL,'Conflicto Entre Vecinos Con Heridos',4),
	 ('Con prohibición de Acercamiento',NULL,'Conflicto Entre Vecinos Con prohibición de Acercamiento',1),
	 ('Sin Heridos',NULL,'Conflicto Entre Vecinos Sin Heridos',2);
INSERT INTO cio911.typification (name,`number`,full_name,code_id) VALUES
	 ('Corte de Energía',NULL,'Corte de Energía',4),
	 ('COVID-19',NULL,'COVID-19',2),
	 ('Pedido de Asitencia por COVID-19',NULL,'COVID-19 Pedido de Asitencia por COVID-19',2),
	 ('Violación de Cuarentena Social y Obligatoria',NULL,'COVID-19 Violación de Cuarentena Social y Obligatoria',2),
	 ('Daños Ambientasles - Sustancias Peligrosas',NULL,'Daños Ambientasles-Sustancias Peligrosas',4),
	 ('Daños Contra la Propiedad',NULL,'Daños Contra la Propiedad',4),
	 ('Delito Contra La Integridad Sexual',NULL,'Delito Contra La Integridad Sexual',1),
	 ('Agravado Por El Vinculo',NULL,'Delito Contra La Integridad Sexual Agravado Por El Vinculo',4),
	 ('Con Acceso Carnal',NULL,'Delito Contra La Integridad Sexual Con Acceso Carnal',4),
	 ('Sin Acceso Carnal',NULL,'Delito Contra La Integridad Sexual Sin Acceso Carnal',4);
INSERT INTO cio911.typification (name,`number`,full_name,code_id) VALUES
	 ('Automotor',NULL,'Delitos Contra la Propiedad Automotor',4),
	 ('Delitos Federales',NULL,'Delitos Federales',4),
	 ('Estupefacientes - Ley 23.737 (Drogas)',NULL,'Delitos Federales Estupefacientes - Ley 23.737 (Drogas)',4),
	 ('Con Fines De Comercialización',NULL,'Delitos Federales Estupefacientes - Ley 23.737 (Drogas) Con Fines De Comercialización',4),
	 ('Consumiendo En La Vía Pública',NULL,'Delitos Federales Estupefacientes - Ley 23.737 (Drogas) Consumiendo En La Vía Pública',4),
	 ('Trata De Personas',NULL,'Delitos Federales Trata De Personas',4),
	 ('Desalojo',NULL,'Desalojo',4),
	 ('Desaparición de Persona',NULL,'Desaparición de Persona',4),
	 ('En Curso de Agua',NULL,'Desaparición de Persona En Curso de Agua',1),
	 ('Persona Extraviada',NULL,'Desaparición de Persona Persona Extraviada',4);
INSERT INTO cio911.typification (name,`number`,full_name,code_id) VALUES
	 ('Persona Extraviada Mayor',NULL,'Desaparición de Persona Persona Extraviada Mayor',4),
	 ('Persona Extraviada Menor',NULL,'Desaparición de Persona Persona Extraviada Menor',1),
	 ('Desastres Naturales',NULL,'Desastres Naturales',1),
	 ('Caída De Rayos',NULL,'Desastres Naturales Caída De Rayos',4),
	 ('Con Interrupción De Energía Eléctrica',NULL,'Desastres Naturales Caída De Rayos Con Interrupción De Energía Eléctrica',4),
	 ('Con Semáforos Fuera De Servicio',NULL,'Desastres Naturales Caída De Rayos Con Semáforos Fuera De Servicio',4),
	 ('Derrumbes',NULL,'Desastres Naturales Derrumbes',4),
	 ('Barrios y Calles',NULL,'Desastres Naturales Derrumbes Barrios y Calles',4),
	 ('Con Interrupción De Energía Eléctrica',NULL,'Desastres Naturales Derrumbes Con Interrupción De Energía Eléctrica',4),
	 ('Con Personas Atrapadas',NULL,'Desastres Naturales Derrumbes Con Personas Atrapadas',4);
INSERT INTO cio911.typification (name,`number`,full_name,code_id) VALUES
	 ('Con Semáforos Fuera De Servicio',NULL,'Desastres Naturales Derrumbes Con Semáforos Fuera De Servicio',4),
	 ('Vivienda/s',NULL,'Desastres Naturales Derrumbes Vivienda/s',4),
	 ('inundaciones',NULL,'Desastres Naturales Inundaciones',4),
	 ('Barrios y Calles',NULL,'Desastres Naturales Inundaciones Barrios y Calles',4),
	 ('Con Interrupción De Energía Eléctrica',NULL,'Desastres Naturales Inundaciones Con Interrupción De Energía Eléctrica',4),
	 ('Con Personas Atrapadas',NULL,'Desastres Naturales Inundaciones Con Personas Atrapadas',4),
	 ('Con Semáforos Fuera De Servicio',NULL,'Desastres Naturales Inundaciones Con Semáforos Fuera De Servicio',4),
	 ('Vivienda/s',NULL,'Desastres Naturales Inundaciones Vivienda/s',4),
	 ('Tornados',NULL,'Desastres Naturales Tornados',4),
	 ('Con Interrupción De Energía Eléctrica',NULL,'Desastres Naturales Tornados Con Interrupción De Energía Eléctrica',4);
INSERT INTO cio911.typification (name,`number`,full_name,code_id) VALUES
	 ('Con Personas Atrapadas',NULL,'Desastres Naturales Tornados Con Personas Atrapadas',4),
	 ('Con Semáforos Fuera De Servicio',NULL,'Desastres Naturales Tornados Con Semáforos Fuera De Servicio',4),
	 ('Desconocido en Hospital',NULL,'Desconocido en Hospital',2),
	 ('Desorden',NULL,'Desorden',4),
	 ('Alumnos De Establecimientos Educativos',NULL,'Desorden Alumnos De Establecimientos Educativos',4),
	 ('Con Arma Blanca',NULL,'Desorden Con Arma Blanca',1),
	 ('Con Arma de Fuego',NULL,'Desorden Con Arma de Fuego',1),
	 ('En Domicilio Particular',NULL,'Desorden En Domicilio Particular',4),
	 ('Desorden en la Vía Pública',NULL,'Desorden en la Vía Pública',4),
	 ('Desorden en lugares cerrados',NULL,'Desorden en lugares cerrados',4);
INSERT INTO cio911.typification (name,`number`,full_name,code_id) VALUES
	 ('Detección Dominio Alta Dominio Investigación',NULL,'Detección Dominio Alta Dominio Investigación',2),
	 ('Detección Dominios',NULL,'Detección Dominios',2),
	 ('ACTIVACIÓN Dominio PRUEBA',NULL,'Detección Dominios ACTIVACIÓN Dominio PRUEBA',1),
	 ('ACTIVACIÓN Dominio URGENTE',NULL,'Detección Dominios ACTIVACIÓN Dominio URGENTE',4),
	 ('Alta Dominio Prueba',NULL,'Detección Dominios Alta Dominio Prueba',2),
	 ('Alta Dominio URGENTE',NULL,'Detección Dominios Alta Dominio URGENTE',2),
	 ('Baja Dominio Prueba',NULL,'Detección Dominios Baja Dominio Prueba',2),
	 ('Baja Dominio URGENTE',NULL,'Detección Dominios Baja Dominio URGENTE',2),
	 ('Disparo de Armas de Fuego',NULL,'Disparo de Armas de Fuego',1),
	 ('Elemento de dudosa procedencia',NULL,'Elemento de dudosa procedencia',1);
INSERT INTO cio911.typification (name,`number`,full_name,code_id) VALUES
	 ('En Domicilios Abandonados',NULL,'Elemento de dudosa procedencia En Domicilios Abandonados',4),
	 ('Emergencia Civil',NULL,'Emergencia Civil',1),
	 ('Desastre Natural GENERAL',NULL,'Emergencia Civil Desastre Natural GENERAL',1),
	 ('Emergencia Médica',NULL,'Emergencia Médica',4),
	 ('Accidente Doméstico',NULL,'Emergencia Médica Accidente Doméstico',4),
	 ('Con Persona Desvanecida',NULL,'Emergencia Médica Con Persona Desvanecida',4),
	 ('Intoxicación',NULL,'Emergencia Médica Intoxicación',4),
	 ('Menor en Estado de Desnutrición',NULL,'Emergencia Médica Menor en Estado de Desnutrición',4),
	 ('Menor en Situación de Riesgo',NULL,'Emergencia Médica Menor en Situación de Riesgo',1),
	 ('Persona Con Ataque',NULL,'Emergencia Médica Persona Con Ataque',1);
INSERT INTO cio911.typification (name,`number`,full_name,code_id) VALUES
	 ('Persona Con Infarto',NULL,'Emergencia Médica Persona Con Infarto',1),
	 ('Persona Con Trabajo De Parto',NULL,'Emergencia Médica Persona Con Trabajo De Parto',4),
	 ('Persona en Estado de Indigencia',NULL,'Emergencia Médica Persona en Estado de Indigencia',4),
	 ('Persona Enferma',NULL,'Emergencia Médica Persona Enferma',4),
	 ('Emergencia Salud',NULL,'Emergencia Salud',4),
	 ('Emergencias Eléctricas',NULL,'Emergencias Eléctricas',4),
	 ('Corte de Luz',NULL,'Emergencias Eléctricas Corte de Luz',4),
	 ('Postes Caídos',NULL,'Emergencias Eléctricas Postes Caídos',4),
	 ('Emergencia Médica 911',NULL,'Emergencia Médica 911',1),
	 ('Estafa y Defraudaciones',NULL,'Estafa y Defraudaciones',4);
INSERT INTO cio911.typification (name,`number`,full_name,code_id) VALUES
	 ('Exhibiciones Obscenas',NULL,'Exhibiciones Obscenas',4),
	 ('Falsa Alarma',NULL,'Falsa Alarma',2),
	 ('Fuga de Gas en Viviendas',NULL,'Fuga de Gas en Viviendas',4),
	 ('Hallazgo de Cadáver',NULL,'Hallazgo de Cadáver',4),
	 ('Supuesto (Olores Nauseabundos)',NULL,'Hallazgo de Cadáver Supuesto (Olores Nauseabundos)',1),
	 ('Hallazgo de explosivo',NULL,'Hallazgo de explosivo',4),
	 ('Hallazgo de Objetos Peligrosos en la Vía Pública',NULL,'Hallazgo de Objetos Peligrosos en la Vía Pública',1),
	 ('Hallazgo de Persona Desconocida Extraviada',NULL,'Hallazgo de Persona Desconocida Extraviada',1),
	 ('Hallazgo de Restos Humanos',NULL,'Hallazgo de Restos Humanos',1),
	 ('Homicidio',NULL,'Homicidio',1);
INSERT INTO cio911.typification (name,`number`,full_name,code_id) VALUES
	 ('Con Arma Blanca',NULL,'Homicidio Con Arma Blanca',4),
	 ('Con Arma de Fuego',NULL,'Homicidio Con Arma de Fuego',1),
	 ('Con Objeto Contundente',NULL,'Homicidio Con Objeto Contundente',4),
	 ('Por Envenenamiento',NULL,'Homicidio Por Envenenamiento',4),
	 ('Por Extrangulación',NULL,'Homicidio Por Extrangulación',4),
	 ('Hurto',NULL,'Hurto',4),
	 ('Automotor',NULL,'Hurto Automotor',1),
	 ('Consumado',NULL,'Hurto Consumado',4),
	 ('Establecimiento Publico',NULL,'Hurto Establecimiento Publico',1),
	 ('Motocicleta',NULL,'Hurto Motocicleta',4);
INSERT INTO cio911.typification (name,`number`,full_name,code_id) VALUES
	 ('Simple',NULL,'Hurto Simple',4),
	 ('Incendio',NULL,'Incendio',1),
	 ('Con Personas Atrapadas',NULL,'Incendio Con Personas Atrapadas',4),
	 ('De Edificios',NULL,'Incendio De Edificios',4),
	 ('De Transformador',NULL,'Incendio De Transformador',4),
	 ('De Vehiculos',NULL,'Incendio De Vehiculos',1),
	 ('De Vivienda/s',NULL,'Incendio De Vivienda/s',1),
	 ('Establecimientos públicos',NULL,'Incendio Establecimientos públicos',1),
	 ('Explosión',NULL,'Incendio Explosión',1),
	 ('Malezas',NULL,'Incendio Malezas',4);
INSERT INTO cio911.typification (name,`number`,full_name,code_id) VALUES
	 ('Incitación Sexual Escandalosa',NULL,'Incitación Sexual Escandalosa',4),
	 ('Interrrupción en el suministro de Agua Potable',NULL,'Interrrupción en el suministro de Agua Potable',2),
	 ('Lesiones',NULL,'Lesiones',4),
	 ('Con Arma Blanca',NULL,'Lesiones Con Arma Blanca',1),
	 ('Con Arma de Fuego',NULL,'Lesiones Con Arma de Fuego',1),
	 ('Con Fractura Expuesta',NULL,'Lesiones Con Fractura Expuesta',1),
	 ('Con Fracturas',NULL,'Lesiones Con Fracturas',1),
	 ('Con Objetos Contundentes',NULL,'Lesiones Con Objetos Contundentes',1),
	 ('Con Perdidas de Miembros',NULL,'Lesiones Con Perdidas de Miembros',1),
	 ('En Riñas',NULL,'Lesiones En Riñas',4);
INSERT INTO cio911.typification (name,`number`,full_name,code_id) VALUES
	 ('En Vía Pública',NULL,'Lesiones En Vía Pública',4),
	 ('Llamadas en Bromas',NULL,'Llamadas en Bromas',2),
	 ('Llamado Interno',NULL,'Llamado Interno',2),
	 ('Llamados por Consulta',NULL,'Llamados por Consulta',2),
	 ('Maltrato Animal',NULL,'Maltrato Animal',4),
	 ('Manifestaciones',NULL,'Manifestaciones',4),
	 ('Activas',NULL,'Manifestaciones Activas',4),
	 ('Agresivas Con Cortes de Rutas y Calles',NULL,'Manifestaciones Agresivas Con Cortes de Rutas y Calles',4),
	 ('Pacifistas',NULL,'Manifestaciones Pacifistas',4),
	 ('Menor en Situación de Riesgo',NULL,'Menor en Situación de Riesgo',1);
INSERT INTO cio911.typification (name,`number`,full_name,code_id) VALUES
	 ('Menores Consumiendo Alcohol en la Vía Pública',NULL,'Menores Consumiendo Alcohol en la Vía Pública',4),
	 ('Modalidad motochorros',NULL,'Modalidad motochorros',1),
	 ('Móvil NOVEDADES',NULL,'Móvil NOVEDADES',2),
	 ('Móvil Policial Involucrado en Acto de Indecoro',NULL,'Móvil Policial Involucrado en Acto de Indecoro',1),
	 ('Muerte',NULL,'Muerte',1),
	 ('Muerte Dudosa',NULL,'Muerte Dudosa',1),
	 ('Novedades de la Guardia',NULL,'Novedades de la Guardia',2),
	 ('Video Vigilancia',NULL,'Novedades de la Guardia Video Vigilancia',2),
	 ('Novedades Video Vigilancia',NULL,'Novedades Video Vigilancia',2),
	 ('Alta de Cámaras',NULL,'Novedades Video Vigilancia Alta de Cámaras',2);
INSERT INTO cio911.typification (name,`number`,full_name,code_id) VALUES
	 ('Baja de Cámaras',NULL,'Novedades Video Vigilancia Baja de Cámaras',2),
	 ('Estado de Cámaras',NULL,'Novedades Video Vigilancia Estado de Cámaras',2),
	 ('Reemplazo de tipo de Cámaras',NULL,'Novedades Video Vigilancia Reemplazo de tipo de Cámaras',2),
	 ('Reparación de Cámaras',NULL,'Novedades Video Vigilancia Reparación de Cámaras',2),
	 ('Ofensa de Palabra o de Hecho',NULL,'Ofensa de Palabra o de Hecho',2),
	 ('Ofensas al Pudor',NULL,'Ofensas al Pudor',2),
	 ('Patotas',NULL,'Patotas',4),
	 ('Pedido de Auxilio',NULL,'Pedido de Auxilio',4),
	 ('Persona cobrando peaje',NULL,'Persona cobrando peaje',1),
	 ('Persona con pedido de Det. o Cap.',NULL,'Persona con pedido de Det. o Cap.',4);
INSERT INTO cio911.typification (name,`number`,full_name,code_id) VALUES
	 ('Persona en estado de ebriedad',NULL,'Persona en estado de ebriedad',2),
	 ('Persona en situación de calle',NULL,'Persona en situación de calle',4),
	 ('Persona Exhibiendo Arma de Fuego',NULL,'Persona Exhibiendo Arma de Fuego',4),
	 ('Persona extraviada',NULL,'Persona extraviada',4),
	 ('Mayor',NULL,'Persona extraviada Mayor',4),
	 ('Menor',NULL,'Persona extraviada Menor',4),
	 ('Personal policial Agredido/Herido',NULL,'Personal policial Agredido/Herido',1),
	 ('Personal Policial Involucrado en Acto de Indecoro',NULL,'Personal Policial Involucrado en Acto de Indecoro',1),
	 ('Personas Ahorcadas',NULL,'Personas Ahorcadas',4),
	 ('Personas Atrapadas en Ascensor',NULL,'Personas Atrapadas en Ascensor',3);
INSERT INTO cio911.typification (name,`number`,full_name,code_id) VALUES
	 ('Personas Demoradas',NULL,'Personas Demoradas',4),
	 ('Por civiles',NULL,'Personas Demoradas Por civiles',1),
	 ('Por Personal Policial',NULL,'Personas Demoradas Por Personal Policial',4),
	 ('Personas en estado de demencias',NULL,'Personas en estado de demencias',4),
	 ('Menor',NULL,'Personas en estado de demencias Menor',4),
	 ('Mayor',NULL,'Personas en estado de demencias Mayor',4),
	 ('Personas en situación de Abandono',NULL,'Personas en situación de Abandono',4),
	 ('Personas Trasladando Elementos Dudosa Procedencia',NULL,'Personas Trasladando Elementos Dudosa Procedencia',4),
	 ('Perturbaciones y Escándalos',NULL,'Perturbaciones y Escándalos',4),
	 ('En Domicilio o Lugares Privados',NULL,'Perturbaciones y Escándalos En Domicilio o Lugares Privados',4);
INSERT INTO cio911.typification (name,`number`,full_name,code_id) VALUES
	 ('En Lugares públicos',NULL,'Perturbaciones y Escándalos en Lugares públicos',4),
	 ('Fumigacion de Abejas',NULL,'Perturbaciones y Escándalos Fumigacion de Abejas',3),
	 ('Privación ilegítima de la libertad',NULL,'Privación ilegítima de la libertad',1),
	 ('Llamada tercero',NULL,'Privación ilegítima de la libertad Llamada tercero',1),
	 ('Llamada víctima',NULL,'Privación ilegítima de la libertad Llamada víctima',1),
	 ('Llamada víctima liberada',NULL,'Privación ilegítima de la libertad Llamada víctima liberada',1),
	 ('Problemas con sistemas del 911',NULL,'Problemas con sistemas del 911',1),
	 ('Despacho',NULL,'Problemas con sistemas del 911 Despacho',1),
	 ('Radio P25',NULL,'Problemas con sistemas del 911 Radio P25',1),
	 ('Reclamos',NULL,'Reclamos',2);
INSERT INTO cio911.typification (name,`number`,full_name,code_id) VALUES
	 ('Rescate de Animales',NULL,'Rescate de Animales',3),
	 ('Resultado de Evento',NULL,'Resultado de Evento',2),
	 ('Robo',NULL,'Robo',4),
	 ('Con arma blanca',NULL,'Robo Con arma blanca',1),
	 ('Con Arma de Fuego',NULL,'Robo Con Arma de Fuego',1),
	 ('Con Objetos Contundentes',NULL,'Robo Con Objetos Contundentes',1),
	 ('Consumado',NULL,'Robo Consumado',4),
	 ('de Automotor',NULL,'Robo de Automotor',1),
	 ('Robo de Elementos de Vehículos',NULL,'Robo de Elementos de Vehículos',4),
	 ('en Domicilio Particular',NULL,'Robo en Domicilio Particular',4);
INSERT INTO cio911.typification (name,`number`,full_name,code_id) VALUES
	 ('En Grado De Tentativa',NULL,'Robo En Grado De Tentativa',1),
	 ('En Proceso',NULL,'Robo En Proceso',1),
	 ('Modalidad Arrebato',NULL,'Robo Modalidad Arrebato',1),
	 ('Ruidos Molestos',NULL,'Ruidos Molestos',3),
	 ('Secuestro',NULL,'Secuestro',1),
	 ('Semáforos fuera de servicio',NULL,'Semáforos fuera de servicio',3),
	 ('Simulacro',NULL,'Simulacro',2),
	 ('Siniestro Aéreo',NULL,'Siniestro Aéreo',1),
	 ('Siniestro Náutico',NULL,'Siniestro Náutico',1),
	 ('Siniestro vial',NULL,'Siniestro vial',4);
INSERT INTO cio911.typification (name,`number`,full_name,code_id) VALUES
	 ('Con lesionados',NULL,'Siniestro vial Con lesionados',1),
	 ('Con personas atrapadas',NULL,'Siniestro vial Con personas atrapadas',2),
	 ('Con personas fallecidas',NULL,'Siniestro vial Con personas fallecidas',1),
	 ('Despiste de Vehículos',NULL,'Siniestro vial Despiste de Vehículos',3),
	 ('Sin lesionados',NULL,'Siniestro Vial sin lesionados',4),
	 ('Vehículo inscinerado',NULL,'Siniestro vial Vehículo inscinerado',4),
	 ('Solicitud de traslado de detenidos',NULL,'Solicitud de traslado de detenidos',4),
	 ('Solicitud Móvil Traslado de Detenidos',NULL,'Solicitud Móvil Traslado de Detenidos',4),
	 ('Sospechoso',NULL,'Sospechoso',4),
	 ('Inmediaciones de un Inmueble',NULL,'Sospechoso Inmediaciones de un Inmueble',4);
INSERT INTO cio911.typification (name,`number`,full_name,code_id) VALUES
	 ('Interior de un Inmueble',NULL,'Sospechoso Interior de un Inmueble',1),
	 ('Suicidio',NULL,'Suicidio',1),
	 ('En grado de tentativa',NULL,'Suicidio En grado de tentativa',4),
	 ('TECNICA',NULL,'TECNICA',2),
	 ('FALLA DEL SISTEMA DESPACHO',NULL,'TECNICA FALLA DEL SISTEMA DESPACHO',2),
	 ('SIN VISUALIZACIÓN DE CÁMARAS DE VIDEO VIGILANCIA',NULL,'TECNICA SIN VISUALIZACIÓN DE CÁMARAS DE VIDEO VIGILANCIA',2),
	 ('TOXICOMANÍA',NULL,'TOXICOMANÍA',1),
	 ('Comercialización de Estupefacientes',NULL,'TOXICOMANÍA Comercialización de Estupefacientes',1),
	 ('Consumo en la Vía Pública',NULL,'TOXICOMANÍA Consumo en la Vía Pública',4),
	 ('Hallazgo de Estupefacientes',NULL,'TOXICOMANÍA Hallazgo de Estupefacientes',4);
INSERT INTO cio911.typification (name,`number`,full_name,code_id) VALUES
	 ('Trata de Personas',NULL,'Trata de Personas',1),
	 ('En Proceso',NULL,'Trata de Personas En Proceso',1),
	 ('Usurpación',NULL,'Usurpación',4),
	 ('Propiedad Privada',NULL,'Usurpación Propiedad Privada',4),
	 ('Propiedad Pública',NULL,'Usurpación Propiedad Pública',4),
	 ('Vandalismo',NULL,'Vandalismo',4),
	 ('Vehículo con personas sospechosas',NULL,'Vehículo con personas sospechosas',4),
	 ('Vehículos o motos',NULL,'Vehículos o motos',4),
	 ('Abandonados',NULL,'Vehículos o motos Abandonados',4),
	 ('Estacionados en lugares prohibidos',NULL,'Vehículos o motos Estacionados en lugares prohibidos',4);
INSERT INTO cio911.typification (name,`number`,full_name,code_id) VALUES
	 ('Obstaculizando el transito',NULL,'Vehículos o motos Obstaculizando el transito',4),
	 ('Realizando maniobras peligrosas',NULL,'Vehículos o motos Realizando maniobras peligrosas',4),
	 ('VERIFICACIÓN EMERGENCIAS MÉDICAS',NULL,'VERIFICACIÓN EMERGENCIAS MÉDICAS',2),
	 ('Video Vigilancia',NULL,'Video Vigilancia',2),
	 ('Violación de Domicilio',NULL,'Violación de Domicilio',1),
	 ('En Proceso',NULL,'Violación de Domicilio En Proceso',1),
	 ('Violencia De Género',NULL,'Violencia De Género',1),
	 ('Con Lesiones Físicas',NULL,'Violencia De Género Con Lesiones Físicas',1),
	 ('En Proceso',NULL,'Violencia De Género En Proceso',1),
	 ('Psicológica',NULL,'Violencia De Género Psicológica',1);
INSERT INTO cio911.typification (name,`number`,full_name,code_id) VALUES
	 ('Violencia Familiar',NULL,'Violencia Familiar',1),
	 ('Con Exclusión de Hogar',NULL,'Violencia Familiar Con Exclusión de Hogar',1),
	 ('En Estado de Crisis',NULL,'Violencia Familiar En Estado de Crisis',1),
	 ('En Proceso',NULL,'Violencia Familiar En Proceso',1),
	 ('Hacia Femenino',NULL,'Violencia Familiar Hacia Femenino',1),
	 ('Hacia Masculino',NULL,'Violencia Familiar Hacia Masculino',1),
	 ('Hacia Menores',NULL,'Violencia Familiar Hacia Menores',1),
	 ('Incumplimiento Judicial Prohibición Acercamiento',NULL,'Violencia Familiar Incumplimiento Judicial Prohibición Acercamiento',1),
	 ('prueba',NULL,'prueba',2),
	 ('VEDA DE PESCA',0,'VEDA DE PESCA',4);
INSERT INTO cio911.typification (name,`number`,full_name,code_id) VALUES
	 ('NOVEDADES TOTEM',NULL,'NOVEDADES TOTEM',1),
	 ('Novedades Tobillera Electrónica',NULL,'Novedades Tobillera Electrónica',1),
	 ('Embarcación a la deriva',NULL,'Embarcación a la deriva',1),
	 ('QUEJAS HACIA PERSONAL POLICIAL',NULL,'QUEJAS HACIA PERSONAL POLICIAL',2),
	 ('SOLICITUD DE RECORRIDAS',NULL,'SOLICITUD DE RECORRIDAS',3),
	 ('Baja Dominio Investigaciones',0,'Baja Dominio Urgente',2),
	 ('Baja Dominio Investigaciones',NULL,'Baja Dominio Investigaciones',2),
	 ('NOVEDADES SUPERVISION OPERACIONAL',0,'NOVEDADES SUPERVISION OPERACIONAL',3),
	 ('FUGA DE HOGAR',NULL,'FUGA DE HOGAR',1);

-- users
ALTER TABLE cio911.users AUTO_INCREMENT = 1;
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
	create_user_id)
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
1
);

-- cancellation_reason
ALTER TABLE cio911.cancellation_reason AUTO_INCREMENT = 1;
INSERT INTO cio911.cancellation_reason (id, reason) VALUES(1, 'Con Detenidos');
INSERT INTO cio911.cancellation_reason (id, reason) VALUES(2, 'En Comisión');
INSERT INTO cio911.cancellation_reason (id, reason) VALUES(3, 'En Juzgado');
INSERT INTO cio911.cancellation_reason (id, reason) VALUES(4, 'En Operativo');
INSERT INTO cio911.cancellation_reason (id, reason) VALUES(5, 'En Puesto Fijo');
INSERT INTO cio911.cancellation_reason (id, reason) VALUES(6, 'En Traslado Detenido');
INSERT INTO cio911.cancellation_reason (id, reason) VALUES(7, 'Falta de Combustible');
INSERT INTO cio911.cancellation_reason (id, reason) VALUES(8, 'Falta de Efectivos');
INSERT INTO cio911.cancellation_reason (id, reason) VALUES(9, 'Fuera de Jurisdicción');
INSERT INTO cio911.cancellation_reason (id, reason) VALUES(10, 'SIN MOVILES DISPONIBLES');
INSERT INTO cio911.cancellation_reason (id, reason) VALUES(11, 'REQUIRENTE NO RESPONDE LLAMADOS');
INSERT INTO cio911.cancellation_reason (id, reason) VALUES(12, 'COMUNICACIÓN TELEFÓNICA CON REQUIRENTE');
INSERT INTO cio911.cancellation_reason (id, reason) VALUES(13, 'No Contestan la Radio');
INSERT INTO cio911.cancellation_reason (id, reason) VALUES(14, 'Se encuentra fuera de jurisdicción (NO DIÓ AVISO AL 911)');
INSERT INTO cio911.cancellation_reason (id, reason) VALUES(15, 'DOMICILIO INEXISTENTE (CALLES PARALELAS)');
INSERT INTO cio911.cancellation_reason (id, reason) VALUES(16, 'NO RESPONDE LA RADIO');
INSERT INTO cio911.cancellation_reason (id, reason) VALUES(17, 'CON DENUNCIANTE');
INSERT INTO cio911.cancellation_reason (id, reason) VALUES(18, 'Apoyo a personal');

-- attention_type
ALTER TABLE cio911.attention_type AUTO_INCREMENT = 1;
INSERT INTO cio911.attention_type (id, name) VALUES(1, 'Sin Atención en Despacho');
INSERT INTO cio911.attention_type (id, name) VALUES(2, 'Con Atención en Despacho');

-- status_type
ALTER TABLE cio911.attention_type AUTO_INCREMENT = 1;
INSERT INTO cio911.status_type (id, name) VALUES(1, 'Nuevo');
INSERT INTO cio911.status_type (id, name) VALUES(2, 'Abierto');
INSERT INTO cio911.status_type (id, name) VALUES(3, 'En Proceso');
INSERT INTO cio911.status_type (id, name) VALUES(4, 'Cerrado');
INSERT INTO cio911.status_type (id, name) VALUES(5, 'Cerrado sin atención de despacho');

-- Se habilitan la relación entre tablas
SET FOREIGN_KEY_CHECKS=1;
