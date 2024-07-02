insert into cliente value(2123,"federico", "estevez", "nahuel huapi",90993838);
insert into cliente value(1223,"tiago", "davila", "condarco",76337893);
insert into cliente value(12223,"rocco", "carano", "ciudad de la paz",46522613);
insert into cliente value(1232,"mirko", "diosquez", "Oslo",90993838);
 
insert into producto value(333,"Buena calidad",10,4000,"2009-09-23");
insert into producto value(3344,"Excelente calidad",300,10000,"2009-09-24");
insert into producto value(3333,"Mal estado",1,2,"2009-09-21");
insert into producto value(3,"Estado deteriorado",5,10,"2009-09-12");
 
insert into cliente_has_producto value(2123,333,4000,"2009-09-23",10,999998);
insert into cliente_has_producto value(1223,3344,10000,"2009-09-24",300,999997);
insert into cliente_has_producto value(12223,3333,2,"2009,09,21",1,999996);
insert into cliente_has_producto value(1232,3,10,"2009-09-12",5,999995);
 
insert into proveedor value(100,"Jorge","Hernadez","Dasda","RS",111);
insert into proveedor value(101,"Fede","Martinez","Efefe","BS",344);
insert into proveedor value(102,"Dylan","Gil","Gege","AG",999);
insert into proveedor value(103,"Luis","Schik","Dasda","TD",209);
 

select codigo,precio from productos where precio > 1000 order by precio DESC;

select * from clientes where apellido like "p%"; 	
delete from clientes where descrpipcion is null;	

select * from producto where CODIGO = 7;

select descpricion,precio from producto where precio %10;