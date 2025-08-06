-- ====================================================
-- Week 1: Consultas básicas 
-- Script SQL compatible con SQL Server
-- Autor: Gastón Peló
-- Fecha: 2025-08-06
-- ====================================================


-- ====================================================
-- Mostrar toda la información de la tabla EMP
-- ====================================================

SELECT * FROM Emp;


-- ====================================================
-- Mostrar los trabajos únicos de la tabla EMP
-- ====================================================

SELECT DISTINCT JOB FROM Emp;


-- ====================================================
-- Listar los empleados en orden ascendente según su salario
-- ====================================================

SELECT ENAME, SAL 
FROM Emp
ORDER BY SAL ASC;


-- ====================================================
-- Listar los detalles de los empleados en 
-- orden ascendente por DeptNo y descendente por Jobs
-- ====================================================

SELECT EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO
FROM Emp
ORDER BY DEPTNO ASC, JOB DESC;


-- ====================================================
-- Mostrar todos los grupos de trabajo únicos 
-- en orden descendente
-- ====================================================

SELECT DISTINCT JOB
FROM Emp
ORDER BY JOB DESC;