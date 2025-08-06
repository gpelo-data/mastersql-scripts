-- ====================================================
-- Script SQL para creación y carga de tablas Dept y Emp
-- Compatible con SQL Server
-- Autor: Gastón Peló
-- Fecha: 2025-08-06
-- ====================================================

-- 1. Crear la base de datos (opcional)
-- CREATE DATABASE MasterSQL;
-- GO

-- 2. Usar la base de datos
-- USE MasterSQL;
-- GO

-- ====================================================
-- 3. Eliminar tablas si ya existen (para evitar errores al rehacer el script)
IF OBJECT_ID('Emp', 'U') IS NOT NULL DROP TABLE Emp;
IF OBJECT_ID('Dept', 'U') IS NOT NULL DROP TABLE Dept;
GO

-- ====================================================
-- 4. Crear tabla Dept
CREATE TABLE Dept (
    DEPTNO INT PRIMARY KEY,
    DNAME VARCHAR(15) NOT NULL,
    LOC VARCHAR(15)
);
GO

-- ====================================================
-- 5. Crear tabla Emp
CREATE TABLE Emp (
    EMPNO INT PRIMARY KEY,
    ENAME VARCHAR(10) NOT NULL,
    JOB VARCHAR(15),
    MGR INT NULL,
    HIREDATE DATE,
    SAL INT,
    COMM INT NULL, 
    DEPTNO INT
);
GO

-- ====================================================
-- 6. Agregar clave foránea a Emp (relación con Dept)
ALTER TABLE Emp
ADD CONSTRAINT FK_Emp_Dept FOREIGN KEY (DEPTNO)
REFERENCES Dept(DEPTNO);
GO


-- ====================================================
-- 7. Insertar datos en Dept
INSERT INTO Dept (DEPTNO, DNAME, LOC) VALUES
    (10, 'ACCOUNTING', 'NEW YORK'),
    (20, 'RESEARCH', 'DALLAS'),
    (30, 'SALES', 'CHICAGO'),
    (40, 'OPERATIONS', 'BOSTON');
GO

-- ====================================================
-- 8. Insertar datos en Emp
INSERT INTO Emp (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) VALUES
(7369, 'SMITH', 'CLERK', 7902, CAST('1980-12-17' AS DATE), 800, NULL, 20),
(7499, 'ALLEN', 'SALESMAN', 7698, CAST('1981-02-20' AS DATE), 1600, 300, 30),
(7521, 'WARD', 'SALESMAN', 7698, CAST('1981-02-22' AS DATE), 1250, 500, 30),
(7566, 'JONES', 'MANAGER', 7839, CAST('1981-04-02' AS DATE), 2975, NULL, 20),
(7654, 'MARTIN', 'SALESMAN', 7698, CAST('1981-09-28' AS DATE), 1250, 1400, 30),
(7698, 'BLAKE', 'MANAGER', 7839, CAST('1981-05-01' AS DATE), 2850, NULL, 30),
(7782, 'CLARK', 'MANAGER', 7839, CAST('1981-06-09' AS DATE), 2450, NULL, 10),
(7788, 'SCOTT', 'ANALYST', 7566, DATEADD(DAY, -85, CAST('1987-07-13' AS DATE)), 3000, NULL, 20),
(7839, 'KING', 'PRESIDENT', NULL, CAST('1981-11-17' AS DATE), 5000, NULL, 10),
(7844, 'TURNER', 'SALESMAN', 7698, CAST('1981-09-08' AS DATE), 1500, 0, 30),
(7876, 'ADAMS', 'CLERK', 7788, DATEADD(DAY, -51, CAST('1987-07-13' AS DATE)), 1100, NULL, 20),
(7900, 'JAMES', 'CLERK', 7698, CAST('1981-12-03' AS DATE), 950, NULL, 30),
(7902, 'FORD', 'ANALYST', 7566, CAST('1981-12-03' AS DATE), 3000, NULL, 20),
(7934, 'MILLER', 'CLERK', 7782, CAST('1982-01-23' AS DATE), 1300, NULL, 10);
GO

-- ====================================================
-- Fin del script
-- ====================================================
