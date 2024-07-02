insert into camionero values(123,12342, "tiasgo", 12312, "ac 22020", 13145);
insert into camionero values(1232,12234, "tsisago", 231312, "ac 23020", 14314);
insert into camionero values(12223,12234, "tisago", 121312, "ac 20240", 13314);
insert into camionero values(1223,21234, "tiagos", 123312, "ac 20250", 11314);
insert into camionero_has_camion values(123,3213,"2037-05-01");
insert into camionero_has_camion values(1232,313,"2117-05-01");
insert into camionero_has_camion values(12223,33,"2017-05-01");
insert into camionero_has_camion values(1223,32,"2027-05-01");

insert into ciudad  values(3123621,"san martsin");
insert into ciudad  values(3123221,"san martgin");
insert into ciudad  values(3123211,"san martfin");
insert into ciudad  values(3123421,"san maqrtin");
insert into ciudad  values(3123521,"san masrtin");

insert into paquete   values(4801,"chocolate", "bautis", "vava 246",123,3123621 );
insert into paquete   values(48021,"chocsolate", "bautsi", "vava 245",1232,3123221 );
insert into paquete   values(48201,"chocolaste", "bausti", "vava 244",12223, 3123211);
insert into paquete   values(42801,"chocolates", "basuti", "vava 224",1223,3123521 );

insert into camion values(3213,2022,"r8",51,123);
insert into camion values(313,201,"r82",15,1232);
insert into camion values(33,202,"r81",14,12223);
insert into camion values(32103,203,"r38",13,1223);

select dni from camionero_has_camion where camion_matricula = 1 and fecha  = "2023-04-26";
select nombre from ciudad;
update camionero set salario = salario + (salario * (1/10));
select codigo,descripcion,camionero_rec from paquete;
delete from paquete where codigo <100;

