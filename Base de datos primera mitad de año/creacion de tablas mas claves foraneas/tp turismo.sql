insert into clientes values (10000,"Pepito","Ibañez","2770",549112,"Google Pixel 5"),
(10001,"Andres","Garazalez","2775",549121,"Iphone x"),
(10002,"Joaquin","Duzckewick","2750",549212,"Google Pixel 7"),
(10003,"Felipe","Lorras","5720",579112,"Moto G40"),
(10004,"Maximo","Ritter","3524",55112,"Iphone 7"),
(10005,"Tomas","Golitre","892",969120,"Samsumng J5"),
(10006,"Santiago","Sarrena","9815",541928,"Samsumng A50"),
(10007,"Blas","Mokix","8520",515412,"Iphone 14"),
(10008,"Juan Cruz","Suarez","8898",154015,"Iphone 13"),
(10009,"Damian","Punic","7822",482720,"Iphone 15");

insert into hospedaje values ("1","Hotel A","5 Estrellas","10",1234567890,100,"SI","SI","SI",5,"SI"),
("2","Hotel B","3 Estrellas","20",1234567891,152,"NO","SI","SI",3,"SI"),
("3","Hotel C","1 Estrellas","30",1234567892,281,"SI","NO","SI",2,"NO"),
("4","Hotel D","5 Estrellas","40",1234567893,418,"SI","SI","NO",6,"SI"),
("5","Hotel E","6 Estrellas","50",1234567894,207,"SI","SI","SI",15,"SI"),
("6","Hotel F","2 Estrellas","60",1234567895,164,"SI","SI","SI",8,"SI"),
("7","Hotel G","4 Estrellas","70",1234567896,373,"SI","SI","SI",3,"SI"),
("8","Hotel H","5 Estrellas","80",1234567897,399,"SI","SI","SI",4,"SI"),
("9","Hotel I","3 Estrellas","90",1234567898,421,"SI","SI","SI",6,"SI"),
("10","Hotel J","4 Estrellas","100",1234567899,540,"SI","SI","SI",4,"SI");

INSERT INTO `paquete de viaje` VALUES(1, 10 , 9 , 200000 , "EFECTIVO" , 6 , "Avion"),
(2, 9, 8, 300000, "TARJETA", 7, "Auto"),
(3,11,10,400000,"EFECTIVO",5,"Avion"),
(4,5,4,500000,"TARJETA",4,"Avion"),
(5,6,6,600000,"EFECTIVO",3,"Auto"),
(6,7,6,700000,"EFECTIVO",5,"Avion"),
(7,8,7,800000,"EFECTIVO",4,"Auto"),
(8,9,8,900000,"TARJETA",7,"Avion"),
(9,12,12,10000000,"TARJETA",10,"Avion"),
(10,16,15,15000000,"EFECTIVO",12,"Auto");

insert into reservas values (100,"Pepito",1,2021-1-1,2021-1-10,4,10000,1),
(101,"Pedro",2,2017-5-5,2018-6-25,4,10001,2),
(102,"Iniesta",3,2007-5-31,2017-7-1,4,10002,3),
(103,"Puyol",4,2020-5-5,2021-9-6,4,10003,4),
(104,"Xavi",5,2020-9-9,2021-9-6,4,10004,5),
(105,"Messi",6,2020-9-9,2021-9-6,4,4,10005,6),
(106,"Neymar",7,2020-9-9,2021-9-6,4,10006,7),
(107,"Eto",8,2020-9-9,2021-9-6,4,10007,8),
(108,"Henry",9,2020-9-9,2021-9-6,4,10008,9),
(109,"Navas",10,2020-9-9,2021-9-6,4,10009,10);


insert into pago values (1,"santander", "efectivo", "si","1"),
(2,"santander", "tarjeta", "si","2"),
(3,"visa", "efectivo", "no","3"),
(4,"santander", "tarjeta", "si","4"),
(5,"visa", "efectivo", "no","5"),
(6,"santander", "tarjeta", "si","6"),
(7,"santander", "efectivo", "no","7"),
(8,"visa", "efectivo", "si","8"),
(9,"santander", "tarjeta", "no","9"),
(10,"visa", "tarjeta", "si","10");


insert into `pago_has_paquete de viaje` values (1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10);

select * from clientes ; -- 4
select * from clientes where dni = 10005; -- 5
select apellido , nombre, telefono , celular  from clientes where apellido like "Gar%"; -- 6
select * from clientes left join reservas on dni = clientes_dni; -- 7
select * from clientes right join reservas on dni = clientes_dni; -- 8 
select apellido , nombre, telefono , celular  from clientes where apellido like "%ez"; -- 9
update clientes set direccion = "San Juan 1234" where dni = 10009; -- 10
Select * from hospedaje where categoria="Cabaña"; -- 11 
select * from `paquete de viaje` where `cantidad de dias` = 2  and costo > 6000; -- 12 


select * from reserva where `fecha de inicio` >= '2017-05-01' and `fecha de fin` <= '2017-05-10' order by `fecha de inicio` , `fecha de fin` desc; -- 13
select costo, apellido, nombre,dni, `tipo de pago` from clientes join reserva on dni= clientes_dni join `paquete de viaje` on `paquete de viaje_codigo` = codigo join pago on codigo = `paquete de viaje_codigo` ; -- 15
select * from hospedaje left join `paquete de viaje` on codigo = alojamiento_idalojamiento where `cant/dias` = null; -- 16


delete from reservas where clientes_dni= 10009; -- 14




update hospedaje set direccion= "Belgrano 15897" where `codigo hotel` = 3 ; -- 17 


select apellido, nombre, telefono, celular from clientes where apellido like "%ar%"; -- 19



