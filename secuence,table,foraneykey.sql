
CREATE SEQUENCE MUNICIPIOS_SEQ
INCREMENT BY 1
START WITH 10
MAXVALUE 100;

CREATE SEQUENCE CAPTURAS_SEQ
INCREMENT BY 1
START WITH 5000
MAXVALUE 6000;

CREATE TABLE MUNICIPIO(
    ID INTEGER NOT NULL PRIMARY KEY,
    NOMBRE VARCHAR2(255)
);

CREATE TABLE CAPTURAS(
    ID INTEGER NOT NULL PRIMARY KEY,
    FECHA DATE,
    DEPARTAMENTO VARCHAR2(255),
    MUNICIPIO_ID INTEGER NOT NULL,
    DIA VARCHAR2(255),
    BARRIO	VARCHAR2(255),
    ZONA	VARCHAR2(255),
    CLASE_SITIO	VARCHAR2(255),
    EDAD	INTEGER,
    SEXO	VARCHAR2(255),
    ESTADO_CIVIL VARCHAR2(255),
    CLASE_EMPLEADO	VARCHAR2(255),
    PROFESION	VARCHAR2(255),
    ESCOLARIDAD	VARCHAR2(255),
    DELITO	VARCHAR2(255),
    FOREIGN KEY (MUNICIPIO_ID) REFERENCES MUNICIPIO(ID)
);