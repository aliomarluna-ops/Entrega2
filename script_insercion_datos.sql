USE GymAccess;

INSERT INTO PLANES (nombre, precio) VALUES 
('Mensualidad Básica', 30.00),
('Trimestre Full', 80.00),
('Anualidad VIP', 300.00);

INSERT INTO EMPLEADOS (nombre, especialidad, turno) VALUES 
('Carlos Mendoza', 'Personal Trainer', 'Mañana'),
('Luisana Pérez', 'Recepción', 'Tarde'),
('Miguel Rojas', 'CrossFit', 'Noche');

INSERT INTO SOCIOS (nombre_completo, dni, email, fecha_alta, estado, id_plan) VALUES 
('Pedro Perez', 'V-12345678', 'pedro@email.com', '2026-01-10', 'Activo', 1),
('Maria Garcia', 'V-87654321', 'maria@email.com', '2025-11-15', 'Suspendido', 2),
('Juan Bimba', 'V-11223344', 'juan@email.com', '2026-02-20', 'Activo', 3);

INSERT INTO CLASES (nombre_clase, horario, cupo_maximo, id_empleado) VALUES 
('CrossFit WOD', '19:00:00', 15, 3),
('Spinning', '08:00:00', 20, 1);

INSERT INTO INVENTARIO (nombre, ultima_revision, estado) VALUES 
('Prensa de Piernas 45°', '2026-02-01', 'Operativa'),
('Cinta de correr 1', '2026-01-15', 'En Mantenimiento'),
('Mancuernas 20kg (Par)', '2026-03-01', 'Operativa');

INSERT INTO FICHAS_MEDICAS (id_socio, peso, altura, alergias, fecha_vencimiento_apto_fisico) VALUES 
(1, 85.5, 1.78, 'Ninguna', '2027-01-10'),
(2, 62.0, 1.65, 'Polvo', '2026-11-15'),
(3, 92.0, 1.88, 'Ibuprofeno', '2027-02-20');

INSERT INTO PAGOS (id_socio, monto, metodo_pago, mes_correspondiente) VALUES 
(1, 30.00, 'Transferencia', 'Febrero 2026'),
(3, 300.00, 'Tarjeta', 'Anual 2026');

INSERT INTO ASISTENCIAS (id_socio) VALUES 
(1), (3);
