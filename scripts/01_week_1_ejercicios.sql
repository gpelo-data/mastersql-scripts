-- ====================================================
-- Week 1: Consultas básicas y filtro
-- Script SQL compatible con SQL Server
-- Autor: Gastón Peló
-- Fecha: 2025-08-06
-- ====================================================


-- ====================================================
-- 1. Mostrar toda la información de la tabla EMP
-- ====================================================

SELECT
    *
FROM
    Emp;


-- ====================================================
-- 2. Mostrar los trabajos únicos de la tabla EMP
-- ====================================================

SELECT DISTINCT
    JOB
FROM
    Emp;


-- ====================================================
-- 3. Listar los empleados en orden ascendente según su salario
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
-- 5. Mostrar todos los grupos de trabajo únicos
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
