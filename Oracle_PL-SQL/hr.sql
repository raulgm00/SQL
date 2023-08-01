--OP Aritmeticos
SELECT last_name, salary, 12*salary +30, 12* (salary +30)
FROM employees;

--NULL
SELECT * FROM employees;
SELECT last_name, 12*salary*commission_pct
FROM employees;

--ALIAS:
SELECT last_name AS name, commission_pct comm FROM employees;
SELECT last_name AS "Nombre", salary*12 "Salario Anual" FROM employees;

--Operaqdor de CONCATENACIÓN
SELECT  last_name || ' ' || job_id AS "Empleado" FROM employees;
SELECT  last_name || ' is a ' || job_id "Empleado", first_name || ' ' || salary AS "Nombre - Salario" FROM employees;

-- Quaote (q)
SELECT last_name || q'[ Department´s Manager id: ]' || manager_id "UNION"
FROM employees;

-- filas DISTINTAS
SELECT department_id FROM employees;
SELECT DISTINCT department_id FROM employees;

--ESTRUCTURA DE TABLAS
DESCRIBE departments;

--Tabla DUAL;
SELECT 1+1 FROM DUAL;
SELECT 1 FROM DUAL;
SELECT USER FROM DUAL;
SELECT SYSDATE FROM DUAL;
SELECT 5*5 AS "OPERACION", USER, SYSDATE, DUMMY FROM DUAL;

--EJERCICIOS
SELECT * FROM job_history;
DESCRIBE job_history;
SELECT start_date FI, end_date FF, (end_date - 10) "Resta Fechas" FROM job_history;
SELECT * FROM departments;
DESCRIBE departments;
UPDATE departments SET department_name='Administrator' WHERE department_id=10;
SELECT DEPARTMENT_ID|| ' represents the '||
DEPARTMENT_NAME||' Department' as "Department Info"
FROM DEPARTMENTS;
select department_id|| ' represents the '||department_name||
' Department' "Department Info"
from departments;
SELECT ((10 + 20) * 50) + null from dual;
select 'this is a '||null||'test with nulls' from dual;
select null/0 from dual;
select null||'test'||null as "Test" from dual;
SELECT 'Coda''s favorite fetch toy is his orange ring' FROM DUAL;
SELECT last_name || q'[ Department's Manager id: ]' || manager_id "UNION" FROM employees;
SELECT last_name || 'Department''s Manager id:' || manager_id "CITAS" FROM employees;
SELECT last_name || 'Department's Manager id:' || manager_id "CITAS" FROM employees;
DESCRIBE regions;
SELECT * FROM regions;
SELECT '6*6' "Area" FROM regions;

--Parte 2# Clausula WHERE
SELECT last_name, job_id, department_id FROM employees WHERE last_name ='Whalen';
SELECT last_name, job_id, department_id FROM employees WHERE hire_date ='05-FEB-06';
SELECT * FROM employees WHERE department_id=60;
SELECT first_name AS "Nombre", salary+100 AS "Operación" FROM employees WHERE salary >= 100;

--Parte 2#Operadores de comapración
SELECT * FROM employees WHERE department_id=60;
SELECT first_name AS "Nombre", salary+100 AS "Salario" FROM employees WHERE salary BETWEEN 9000 AND 11000;
SELECT first_name AS "Nombre", salary+100 AS "Salario" FROM employees WHERE salary IN (9000,1000,11000);

--Parte 2# Operador LIKE
SELECT first_name, last_name, job_id FROM employees WHERE first_name LIKE 'S%';
SELECT first_name, last_name, job_id FROM employees WHERE first_name LIKE '_o%';
SELECT first_name, last_name, job_id FROM employees WHERE job_id LIKE 'SH\_%'  ESCAPE '\';
SELECT first_name, last_name, job_id FROM employees WHERE first_name LIKE '%y%';

--Parte 2# NULLS
SELECT last_name, manager_id FROM employees WHERE manager_id IS NULL;
SELECT last_name, manager_id FROM employees WHERE manager_id IS NOT NULL;

--Parte 2#COndicionales 
SELECT employee_id, last_name, job_id, salary FROM employees WHERE salary >=1000 AND job_id LIKE '%MAN'
SELECT employee_id, last_name, job_id, salary FROM employees WHERE salary >=1000 OR job_id LIKE '%MAN'
SELECT employee_id, last_name, job_id, salary FROM employees WHERE job_id NOT IN ('IT_PROG','ST_CLEARK','SA_REP');
SELECT employee_id, last_name, job_id, salary FROM employees WHERE salary NOT BETWEEN 1000 AND 15000;
SELECT employee_id, last_name, job_id, salary FROM employees WHERE salary NOT LIKE '%a%'
SELECT employee_id, last_name, job_id, salary, commission_pct FROM employees WHERE commission_pct IS NULL;
SELECT employee_id, last_name, job_id, salary, commission_pct FROM employees WHERE commission_pct IS NOT NULL;



ALTER TABLE countries ADD CONTADOR NUMBER(2,0) DEFAULT 1;
select * from countries;





