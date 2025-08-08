-- ====================================================
-- Week 1: Consultas b�sicas y filtro
-- Script SQL compatible con SQL Server
-- Autor: Gast�n Pel�
-- Fecha: 2025-08-06
-- ====================================================


-- ====================================================
-- 1. Mostrar toda la informaci�n de la tabla EMP
-- ====================================================

SELECT
    *
FROM
    Emp;


-- ====================================================
-- 2. Mostrar los trabajos �nicos de la tabla EMP
-- ====================================================

SELECT DISTINCT
    JOB
FROM
    Emp;


-- ====================================================
-- 3. Listar los empleados en orden ascendente seg�n su salario
-- ====================================================

SELECT
    *
FROM
    Emp
ORDER BY
    SAL ASC;


-- ====================================================
-- 4. Listar los detalles de los empleados en
-- orden ascendente por DeptNo y descendente por Jobs
-- ====================================================

SELECT
    *
FROM
    Emp
ORDER BY
    DEPTNO ASC,
    JOB DESC;


-- ====================================================
-- 5. Mostrar todos los grupos de trabajo �nicos
-- en orden descendente
-- ====================================================

SELECT DISTINCT
    JOB
FROM
    Emp
ORDER BY
    JOB DESC;


-- ====================================================
-- Extra: Mostrar todos los detalles de los empleados 
-- que tienen el trabajo de 'MANAGER'
-- ====================================================

SELECT
    *
FROM
    Emp
WHERE
    JOB = 'MANAGER';
