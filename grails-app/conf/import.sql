INSERT INTO Vehiculo (version,marca, modelo, año, color, serial, estado) VALUES
  (0,'Toyota', 'Corolla VEND', 2021, 'Negro', '1234A', 'VENDIDO'),
  (0,'Nissan', 'Sentra', 2020, 'Rojo', '5678B', 'DISPONIBLE'),
  (0,'Honda', 'Civic', 2019, 'Blanco', '9012C', 'DISPONIBLE');

INSERT INTO PERSONA (version, fecha_nacimiento, apellidos, nombres, identificacion, class, fecha_ingreso, cargo, telefono, celular)
VALUES
(0, '2023-02-12 00:00:00', 'Gonzalez', 'Pedro', '1013680794', 'concesionario.Cliente', null, null, '3024350760', '3024350760'),
(0, '2023-02-12 00:00:00', 'Sanchez', 'Miguel', '1013680795', 'concesionario.Cliente', null, null, '3024350761', '3024350761'),
(0, '2023-02-12 00:00:00', 'Rodriguez', 'Juan', '1013680796', 'concesionario.Cliente', null, null, '3024350762', '3024350762'),
(0, '2023-02-12 00:00:00', 'Martinez', 'Mariana', '1013680797', 'concesionario.Cliente', null, null, '3024350763', '3024350763'),
(0, '2023-02-12 00:00:00', 'Gomez', 'Juana', '1013680798', 'concesionario.Cliente', null, null, '3024350764', '3024350764'),
(0, '2023-02-12 00:00:00', 'Diaz', 'Jose', '1013680799', 'concesionario.Cliente', null, null, '3024350765', '3024350765');


insert into Vehiculo (version,marca, modelo, año, color, serial, estado) values
(0,'Toyota', 'Camry', 2020, 'Negro', 'P1234', 'DISPONIBLE'),
(0,'Honda', 'Civic', 2021, 'Blanco', 'P1235', 'DISPONIBLE'),
(0,'Nissan', 'Altima', 2019, 'Gris', 'P1236', 'DISPONIBLE'),
(0,'Chevrolet', 'Impala', 2018, 'Rojo', 'P1237', 'DISPONIBLE'),
(0,'Ford', 'Fusion', 2021, 'Azul', 'P1238', 'DISPONIBLE'),
(0,'Jeep', 'Grand Cherokee', 2020, 'Verde', 'P1239', 'DISPONIBLE'),
(0,'Tesla', 'Model 3', 2020, 'Plateado', 'P1240', 'DISPONIBLE'),
(0,'Kia', 'Optima', 2021, 'Morado', 'P1241', 'DISPONIBLE'),
(0,'Subaru', 'Outback', 2020, 'Naranja', 'P1242', 'DISPONIBLE'),
(0,'Mazda', 'CX-5', 2021, 'Café', 'P1243', 'DISPONIBLE');

INSERT INTO PERSONA (VERSION, FECHA_NACIMIENTO, APELLIDOS, NOMBRES, IDENTIFICACION, CLASS, FECHA_INGRESO, CARGO, TELEFONO, CELULAR)
VALUES
(0, '2023-02-12 00:00:00', 'Potosi', 'Juan', '1013680793', 'concesionario.Vendedor', '2023-02-12 00:00:00', 'Auxiliar Ventas', NULL, NULL),
(0, '2023-02-12 00:00:00', 'Potosi', 'Pedro', '1013680794', 'concesionario.Vendedor', '2023-02-12 00:00:00', 'Auxiliar Ventas', NULL, NULL),
(0, '2023-02-12 00:00:00', 'Potosi', 'Andres', '1013680795', 'concesionario.Vendedor', '2023-02-12 00:00:00', 'Auxiliar Ventas', NULL, NULL);

--RUNSCRIPT FROM 'grails-app/conf/import.sql'

