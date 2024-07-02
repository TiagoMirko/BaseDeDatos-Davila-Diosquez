SELECT min(`cantidad de dias`) FROM `paquete de viaje` ;
SELECT max(`cantidad de dias`) FROM `paquete de viaje` ;
SELECT avg(costo) FROM `paquete de viaje` where `cantidad de dias` = 3 ;
SELECT sum(`cant de personas`) FROM reservas where `fecha de inicio` >= "2024-07-01" AND `fecha de fin` < "2024-08-01" ;
SELECT count(*) , destino FROM `paquete de viaje` GROUP BY destino ;
SELECT sum(`cantidad de excusiones`) FROM `paquete de viaje` WHERE destino = "Bariloche" ;
SELECT count(*) , `paquete de viaje` FROM reservas WHERE `paquete de viaje_codigo` = 1 ;
SELECT count(*) , `paquete de viaje_codigo` FROM reservas GROUP BY `paquete de viaje_codigo` ;
UPDATE `paquete de viaje` SET costo = costo + costo * 10/100 ;
SELECT count(*) , `codigo hotel` FROM hospedaje GROUP BY codigo_hospedaje ;

