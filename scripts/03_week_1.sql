-- ====================================================
-- Week 1: Consultas b�sicas 
-- Script SQL compatible con SQL Server
-- Autor: Gast�n Pel�
-- Fecha: 2025-08-06
-- ====================================================


-- ====================================================
-- Mostrar toda la informaci�n de la tabla EMP
-- ====================================================

SELECT * FROM Emp;


-- ====================================================
-- Mostrar los trabajos �nicos de la tabla EMP
-- ====================================================

SELECT DISTINCT JOB FROM Emp;


-- ====================================================
-- Listar los empleados en orden ascendente seg�n su salario
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
-- Mostrar todos los grupos de trabajo �nicos 
-- en orden descendente
-- ====================================================

SELECT DISTINCT JOB
FROM Emp
ORDER BY JOB DESC;