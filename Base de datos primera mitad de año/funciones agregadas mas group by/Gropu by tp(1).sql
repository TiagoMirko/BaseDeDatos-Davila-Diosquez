SELECT min(`cantidad de dias`) FROM `paquete de viaje` ; -- EJ 1
SELECT max(`cantidad de dias`) FROM `paquete de viaje` ; -- EJ 2
SELECT avg(costo) FROM `paquete de viaje` where `cantidad de dias` = 3 ; -- EJ 3
SELECT sum(`cant de personas`) FROM reservas where `fecha de inicio` >= "2024-07-01" AND `fecha de fin` < "2024-08-01" ; -- EJ 4
SELECT count(*) , destino FROM `paquete de viaje` GROUP BY destino ; -- EJ 5
SELECT sum(`cantidad de excusiones`) FROM `paquete de viaje` WHERE destino = "Bariloche" ; -- EJ 6
SELECT count(*)  `paquete de viaje` FROM reservas WHERE `paquete de viaje_codigo` = 1 ; -- EJ 7
SELECT count(*) , `paquete de viaje_codigo` FROM reservas GROUP BY `paquete de viaje_codigo` ; -- EJ 8
UPDATE `paquete de viaje` SET costo = costo + costo * 10/100 ; -- EJ 9
SELECT count(codigo_hospedaje) cant_paq_hosp FROM `paquete de viaje` GROUP BY codigo_hospedaje ; -- EJ 10
UPDATE `paquete de viaje` SET `cantidad de dias` = `cantidad de dias` + 1 WHERE destino = "Salta" ; -- EJ 11
SELECT sum(costo) FROM `paquete de viaje` GROUP BY destino ; -- EJ 12
SELECT count(`codigo hotel`) cant_paq_hosp FROM hospedaje GROUP BY `codigo hotel` HAVING cant_paq_hosp > 3  ; -- 13
SELECT destino FROM `paquete de viaje` WHERE costo > 100000 GROUP BY destino ; -- EJ 14 
SELECT destino FROM `paquete de viaje` GROUP BY destino HAVING avg(costo) > 25000  ; -- EJ 15 
SELECT `paquete de viaje_codigo` , avg(`cant de personas`) FROM reservas GROUP BY `paquete de viaje_codigo` ;-- 16
SELECT destino , costo FROM `paquete de viaje` GROUP BY destino , costo HAVING max(costo)   ; -- EJ 17
SELECT count(codigo) cant_reservas FROM reservas GROUP BY clientes_dni ; -- EJ 18
SELECT destino , `cantidad de dias` FROM `paquete de viaje` GROUP BY destino,`cantidad de dias`  ORDER BY destino ASC ,`cantidad de dias` ASC ; --  EJ 19 
SELECT destino , costo FROM  `paquete de viaje` GROUP BY destino , costo ORDER BY destino , costo  ;  -- EJ 20 