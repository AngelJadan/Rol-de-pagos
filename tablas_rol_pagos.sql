CREATE TABLE tipos_contratos(
	tco_id	INT AUTO_INCREMENT NOT NULL,
	tco_contrato VARCHAR(250) NOT NULL,
	tco_sueldo_b	DOUBLE(12,2) NOT NULL,
	PRIMARY KEY(tco_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
CREATE TABLE empresas (
    emp_id                   INT AUTO_INCREMENT NOT NULL,
    emp_razon_social         VARCHAR(250) NOT NULL,
    emp_ruc                  VARCHAR(20) NOT NULL,
    emp_telefono             VARCHAR(50) NOT NULL,
    emp_direccion            VARCHAR(250) NOT NULL,
    emp_correo_electronico   VARCHAR(250) NOT NULL,
	PRIMARY KEY(emp_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
CREATE TABLE personas (
	per_id					 INT AUTO_INCREMENT NOT NULL,
    per_tipo_id              VARCHAR(250) NOT NULL,
    per_identificacion       VARCHAR(20) NOT NULL,
    per_fechanacimiento      VARCHAR(20) NOT NULL,
    per_nombre               VARCHAR(250) NOT NULL,
    per_apellido             VARCHAR(250) NOT NULL,
    per_correo_electronico   VARCHAR(250) NOT NULL,
    per_direccion            VARCHAR(250) NOT NULL,
    per_telefono             VARCHAR(50) NOT NULL,
    per_parentezco           VARCHAR(250),
	per_emp_id				 INT,
	PRIMARY KEY(per_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
ALTER TABLE personas ADD CONSTRAINT fk_per_emp_id FOREIGN KEY (per_emp_id) REFERENCES empresas(emp_id);
CREATE TABLE rep_legales (
    rep_id                        INT AUTO_INCREMENT NOT NULL,
    rep_fecha_ingreso             VARCHAR(20) NOT NULL,
    rep_fecha_salida              VARCHAR(20),
    rep_emp_id               INT NOT NULL,
    per_per_id					  INT NOT NULL,
	PRIMARY KEY(rep_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
ALTER TABLE rep_legales ADD CONSTRAINT fk_rep_emp_id FOREIGN KEY(rep_emp_id) REFERENCES empresas(emp_id);
ALTER TABLE rep_legales ADD CONSTRAINT FK_per_per_id FOREIGN KEY(per_per_id) REFERENCES personas(per_id);
CREATE TABLE horas (
    hor_id1       INT NOT NULL AUTO_INCREMENT,
    hor_entrada   VARCHAR(5) NOT NULL,
    hor_salida    VARCHAR(5),
	PRIMARY KEY(hor_id1)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
CREATE TABLE dias (
    dia_id    INT NOT NULL AUTO_INCREMENT,
    dia_dia   VARCHAR(20) NOT NULL,
	PRIMARY KEY(dia_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
CREATE TABLE contratos (
    con_id                        INT AUTO_INCREMENT NOT NULL,
    con_fecha_ingreso             VARCHAR(20) NOT NULL,
    con_fecha_salida              VARCHAR(20),
	con_contrato				  VARCHAR(150),
    con_relacion_laboral          VARCHAR(250) NOT NULL,
    con_cargo                     VARCHAR(250) NOT NULL,
    con_sueldo                    DOUBLE(12,2) NOT NULL,
    con_periodo_prueba            boolean NOT NULL,
    con_per_id               INT NOT NULL,
    con_emp_id               INT NOT NULL,
	con_hor_id				 INT NOT NULL,
	con_dia_id				 INT NOT NULL,
	PRIMARY KEY(con_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
ALTER TABLE contratos ADD CONSTRAINT fk_con_emp_id FOREIGN KEY (con_emp_id) REFERENCES empresas(emp_id);
ALTER TABLE contratos ADD CONSTRAINT fk_con_per_id FOREIGN KEY (con_per_id) REFERENCES personas(per_id);
ALTER TABLE contratos ADD CONSTRAINT fk_con_hor_id FOREIGN KEY (con_hor_id) REFERENCES horas(hor_id1);
ALTER TABLE contratos ADD CONSTRAINT fk_con_dia_id FOREIGN KEY (con_dia_id) REFERENCES dias(dia_id);
CREATE TABLE horarios (
    hor_id             INT AUTO_INCREMENT NOT NULL,
    contratos_con_id   INT NOT NULL,
    dias_hor_id        INT NOT NULL,
	PRIMARY KEY(hor_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
ALTER TABLE horarios ADD CONSTRAINT fk_dias_hor_id FOREIGN KEY (dias_hor_id) REFERENCES dias(dia_id);
ALTER TABLE horarios ADD CONSTRAINT fk_contratos_con_id FOREIGN KEY (contratos_con_id) REFERENCES contratos(con_id);
CREATE TABLE asistencias(
	asi_id		INT	AUTO_INCREMENT NOT NULL,
	asi_dia_id	INT NOT NULL,
	asi_hor_id1	INT NOT NULL,
	asi_per_id	INT NOT NULL,
	PRIMARY KEY(asi_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
ALTER TABLE asistencias ADD CONSTRAINT fk_asi_dia_id	FOREIGN KEY(asi_dia_id) REFERENCES dias(dia_id);
ALTER TABLE asistencias ADD CONSTRAINT fk_asi_hor_id1	FOREIGN KEY(asi_hor_id1) REFERENCES horas(hor_id1);
ALTER TABLE asistencias ADD CONSTRAINT fk_asi_per_id	FOREIGN KEY(asi_per_id) REFERENCES personas(per_id);
CREATE TABLE roles (
    rol_id                         INT NOT NULL AUTO_INCREMENT,
    rol_per_id                INT NOT NULL,
    rol_emp_id                INT NOT NULL,
    rep_legales_rep_id             INT NOT NULL,
    rol_sueldo_nominal             DOUBLE(12,2) NOT NULL,
    rol_dias                       INT NOT NULL,
    rol_valor_horas_extras         DOUBLE(12,2) NOT NULL,
    rol_valor_suplementarias       DOUBLE(12,2) NOT NULL,
    rol_valor_nocturnas            DOUBLE(12,2) NOT NULL,
    rol_valor_comision             DOUBLE(12,2) NOT NULL,
    rol_total_ing_gravado          DOUBLE(12,2) NOT NULL,
    rol_valor_decimo_cuarto        DOUBLE(12,2) NOT NULL,
    rol_tipo_decimo_cuarto         VARCHAR(50) NOT NULL,
    rol_valor_decimo_tercero       DOUBLE(12,2) NOT NULL,
    rol_tipo_decimo_tercero        VARCHAR(50) NOT NULL,
    rol_fondo_reserva              DOUBLE(12,2) NOT NULL,
    rol_tipo_fondo_reserva         VARCHAR(50) NOT NULL,
    rol_alimentacion               DOUBLE(12,2) NOT NULL,
    rol_transporte                 DOUBLE(12,2) NOT NULL,
    rol_total_ingreso_no_gravado   DOUBLE(12,2) NOT NULL,
	rol_aporte_seguro			   DOUBLE(12,2) NOT NULL,
	rol_sueldo_liquido			   DOUBLE(12,2) NOT NULL,
	PRIMARY KEY(rol_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
ALTER TABLE roles ADD CONSTRAINT fk_rol_emp_id FOREIGN KEY(rol_emp_id) REFERENCES empresas(emp_id);
ALTER TABLE roles ADD CONSTRAINT fk_rol_per_identificacion FOREIGN KEY(rol_per_id) REFERENCES personas(per_id);
ALTER TABLE roles ADD CONSTRAINT fk_rep_legales_rep_id FOREIGN KEY(rep_legales_rep_id) REFERENCES rep_legales(rep_id);
CREATE TABLE prestamos (
    pre_id              INT AUTO_INCREMENT NOT NULL,
    pre_tipo_prestamo   VARCHAR(250) NOT NULL,
    pre_valor           DOUBLE(12,2) NOT NULL,
    pre_cuota           VARCHAR(50) NOT NULL,
	pre_detalle		    VARCHAR(250) NOT NULL,
	pre_rol_id		INT NOT NULL,
	PRIMARY KEY(pre_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
ALTER TABLE prestamos ADD CONSTRAINT fk_pre_rol_id FOREIGN KEY(pre_rol_id) REFERENCES roles(rol_id);
CREATE TABLE asis_roles(
	aro_id	INT AUTO_INCREMENT NOT NULL,
	aro_mes	INT NOT NULL,
	aro_anio	INT NOT NULL,
	aro_asi_id	INT NOT NULL,
	aro_rol_id	INT NOT NULL,
	PRIMARY KEY(aro_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
ALTER TABLE asis_roles ADD CONSTRAINT fk_aro_asi_id	FOREIGN KEY(aro_asi_id) REFERENCES asistencias(asi_id);
ALTER TABLE asis_roles ADD CONSTRAINT fk_aro_rol_id	FOREIGN KEY(aro_rol_id) REFERENCES roles(rol_id);