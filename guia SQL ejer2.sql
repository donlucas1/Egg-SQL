SELECT nombre FROM producto;
SELECT NOMBRE, PRECIO FROM producto;
SELECT * FROM producto;
SELECT NOMBRE, ROUND(PRECIO) FROM PRODUCTO;
select codigo_fabricante FROM producto;
SELECT CODIGO_FABRICANTE from PRODUCTO group by (CODIGO_FABRICANTE);
SELECT NOMBRE FROM FABRICANTE order by (NOMBRE);
SELECT NOMBRE, PRECIO FROM producto order by NOMBRE,  PRECIO DESC;
SELECT * FROM FABRICANTE LIMIT 0,5;
SELECT NOMBRE, PRECIO FROM producto order by PRECIO LIMIT 0,1;
SELECT NOMBRE, PRECIO FROM producto order by PRECIO desc  LIMIT 0,1;
SELECT NOMBRE FROM producto WHERE PRECIO <=120;
SELECT * FROM producto where PRECIO between 60 AND 200;
SELECT * FROM producto where codigo_fabricante IN (1 , 3 , 5);
SELECT NOMBRE FROM PRODUCTO WHERE NOMBRE LIKE '%PORTATIL%';


SELECT F.codigo, F.nombre, P.codigo, P.nombre
FROM fabricante F, producto P 
WHERE  F.codigo = P.codigo_fabricante 
;

SELECT  P.nombre, P.PRECIO,  F.nombre 
FROM fabricante F, producto P 
WHERE  F.codigo = P.codigo_fabricante 
ORDER BY F.nombre;

SELECT  P.nombre, P.PRECIO,  F.nombre 
FROM fabricante F, producto P 
WHERE  F.codigo = P.codigo_fabricante 
ORDER BY P.precio LIMIT 0,1;

SELECT  P.nombre, P.PRECIO,  F.nombre 
FROM fabricante F, producto P 
WHERE  F.codigo = P.codigo_fabricante 
having F.nombre like '%LENOVO%';

SELECT  P.nombre, P.PRECIO,  F.nombre 
FROM fabricante F, producto P 
WHERE  F.codigo = P.codigo_fabricante 
having F.nombre like '%CRUCIAL%' AND P.precio >200;

SELECT  P.nombre, P.PRECIO,  F.nombre 
FROM fabricante F, producto P 
WHERE  F.codigo = P.codigo_fabricante 
having F.nombre IN ('ASUS', 'Hewlett-Packard')
;

SELECT  P.nombre, P.PRECIO,  F.nombre 
FROM fabricante F, producto P 
WHERE  F.codigo = P.codigo_fabricante 
having P.PRECIO >=180
order by P.PRECIO DESC, P.NOMBRE ASC
;

SELECT F.nombre, P.nombre 
FROM  producto P 
right JOIN fabricante F
ON P.codigo_fabricante = F.codigo;

SELECT F.nombre 
FROM fabricante F 
WHERE NOT EXISTS ( Select P.NOMBRE
				  FROM PRODUCTO P
				WHERE  F.codigo = P.codigo_fabricante  
                );


SELECT  P.*,MAX(P.precio) AS 'PRECIO',   F.nombre 
FROM fabricante F, producto P 
WHERE  F.codigo = P.codigo_fabricante 
AND  F.NOMBRE LIKE '%LENOVO%' ;

SELECT *
FROM producto p 
WHERE EXISTS ( Select P.NOMBRE, max(p.precio), f.nombre
				  FROM PRODUCTO P, fabricante f
				WHERE  F.codigo = P.codigo_fabricante 
                and f.nombre like '%LENOVO%'
                );


