-- ====================================================
-- Script SQL para creación de tablas Dept y Emp
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
