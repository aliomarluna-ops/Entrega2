CREATE DATABASE GymAccess;
USE GymAccess;

CREATE TABLE PLANES (
    id_plan INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL, 
    precio DECIMAL(10,2) NOT NULL
);

CREATE TABLE SOCIOS (
    id_socio INT AUTO_INCREMENT PRIMARY KEY,
    nombre_completo VARCHAR(100) NOT NULL,
    dni VARCHAR(20) UNIQUE NOT NULL, 
    email VARCHAR(100) UNIQUE, 
    fecha_alta DATE DEFAULT (CURRENT_DATE),
    estado ENUM('Activo', 'Inactivo', 'Suspendido') DEFAULT 'Activo', 
    id_plan INT, 
    FOREIGN KEY (id_plan) REFERENCES PLANES(id_plan)
);

CREATE TABLE ASISTENCIAS (
    id_asistencia INT AUTO_INCREMENT PRIMARY KEY,
    id_socio INT, 
    fecha_hora DATETIME DEFAULT CURRENT_TIMESTAMP, 
    FOREIGN KEY (id_socio) REFERENCES SOCIOS(id_socio)
);

CREATE TABLE PAGOS (
    id_pago INT AUTO_INCREMENT PRIMARY KEY,
    id_socio INT NOT NULL,
    fecha_pago DATETIME DEFAULT CURRENT_TIMESTAMP,
    monto DECIMAL(10,2) NOT NULL,
    metodo_pago VARCHAR(50), -- Ej: Efectivo, Tarjeta, Transferencia
    mes_correspondiente VARCHAR(20), -- Ej: 'Marzo 2026'
    FOREIGN KEY (id_socio) REFERENCES SOCIOS(id_socio)
);

CREATE TABLE EMPLEADOS (
    id_empleado INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    especialidad VARCHAR(50), -- Ej: Personal Trainer, Recepción
    turno VARCHAR(20) -- Ej: Mañana, Tarde, Noche
);

CREATE TABLE CLASES (
    id_clase INT AUTO_INCREMENT PRIMARY KEY,
    nombre_clase VARCHAR(50) NOT NULL,
    horario TIME NOT NULL,
    cupo_maximo INT NOT NULL,
    id_empleado INT, 
    FOREIGN KEY (id_empleado) REFERENCES EMPLEADOS(id_empleado)
);

CREATE TABLE INVENTARIO (
    id_maquina INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    ultima_revision DATE,
    estado ENUM('Operativa', 'En Mantenimiento', 'Dañada') DEFAULT 'Operativa'
);

CREATE TABLE FICHAS_MEDICAS (
    id_ficha INT AUTO_INCREMENT PRIMARY KEY,
    id_socio INT UNIQUE NOT NULL, 
    peso DECIMAL(5,2), -- En kg
    altura DECIMAL(3,2), -- En metros
    alergias TEXT,
    fecha_vencimiento_apto_fisico DATE,
    FOREIGN KEY (id_socio) REFERENCES SOCIOS(id_socio)
);
