SELECT * FROM empleado;
SELECT * FROM DEPARTAMENTO;
SELECT NOMBRE_DEPTO FROM DEPARTAMENTO;
SELECT NOMBRE, SALARIO FROM empleado; 
SELECT COMISION FROM EMPLEADO;
SELECT * FROM EMPLEADO WHERE CARGO = 'SECRETARIA';
SELECT * FROM EMPLEADO WHERE CARGO = 'VENDEDOR' ORDER BY NOMBRE ASC;
SELECT NOMBRE, CARGO FROM empleado order by SALARIO; 

SELECT NOMBRE, SALARIO, COMISION FROM EMPLEADO WHERE ID_DEPTO = '2000' order by COMISION;
SELECT SUM(SALARIO + COMISION+500) "SUMA DE PAGOS DEPTO 3000" FROM EMPLEADO WHERE ID_DEPTO = '3000';
SELECT NOMBRE FROM EMPLEADO WHERE NOMBRE LIKE 'J%';
SELECT NOMBRE, SALARIO, COMISION, (SALARIO+COMISION)"SALARIO TOTAL" FROM empleado WHERE comision > '1000'; 
SELECT NOMBRE, SALARIO, COMISION, (SALARIO+COMISION)"SALARIO TOTAL" FROM empleado WHERE comision = '0';
SELECT NOMBRE FROM EMPLEADO WHERE COMISION > SALARIO;
SELECT NOMBRE, SALARIO, COMISION FROM empleado WHERE COMISION <= (SALARIO *30 / 100);
select NOMBRE FROM EMPLEADO WHERE  NOMBRE NOT LIKE '%MA%';
SELECT NOMBRE_DEPTO FROM DEPARTAMENTO WHERE NOMBRE_DEPTO  LIKE 'VENTAS' OR  NOMBRE_DEPTO  LIKE 'INVESTIGACION' 
OR  NOMBRE_DEPTO  LIKE 'MANTENIMIENTO';
SELECT NOMBRE_DEPTO FROM DEPARTAMENTO WHERE NOMBRE_DEPTO NOT LIKE 'VENTAS' AND  NOMBRE_DEPTO NOT LIKE 'INVESTIGACION' 
AND  NOMBRE_DEPTO NOT LIKE 'MANTENIMIENTO';
SELECT MAX(SALARIO) FROM EMPLEADO ;
SELECT NOMBRE FROM EMPLEADO order by  NOMBRE DESC LIMIT 0,1;
SELECT MAX(SALARIO), MIN(SALARIO), (MAX(SALARIO)-MIN(SALARIO)) FROM EMPLEADO ;
SELECT D.NOMBRE_DEPTO, AVG(E.SALARIO) AS 'PROMEDIO POR DEPTO'  
FROM empleado E, DEPARTAMENTO D 
WHERE   E.id_depto = D.ID_DEPTO
group by D.NOMBRE_DEPTO;

SELECT D.NOMBRE_DEPTO, COUNT(E.ID_DEPTO) AS 'CANTIDAD DE EMPLEADOS'
FROM EMPLEADO E, departamento D 
WHERE E.ID_DEPTO = D.ID_DEPTO
GROUP BY D.nombre_depto;

SELECT  E.ID_EMPLEADO,E.NOMBRE, e.cargo = '%je%' as 'jefe' , count(E.cod_jefe) AS "CANTIDAD DE EMPLEADOS" 
FROM empleado E 
group by(E.cod_jefe) 
having  count(E.cod_jefe)>1  

;

SELECT D.NOMBRE_DEPTO, E.NOMBRE, E.salario
FROM empleado E, DEPARTAMENTO D 
WHERE   E.id_depto = D.ID_DEPTO 
and e.salario > 2120000
order by d.nombre_depto
;



