

insert into MEDICOS value ("medico", "stl", "ada", 2754, 456124);
insert into MEDICOS value ("Traumatologo", "sta", "aada", 22754, 2124);
insert into MEDICOS value ("medic", "sth", "adaa", 27546,1244);
insert into MEDICOS value ("med", "sgt", "hada", 25754, 5124);

insert into PACIENTES value (25754, "sDtF", "aSda", "CABA", "BUENOS AIRES", 1242);
insert into PACIENTES value (257524, "sDEt", "Sada", "CABA", "BUENOS AIRES", 1224);
insert into PACIENTES value (257534, "sWDt", "adaS", "CABA", "BUENOS AIRES", 1224);
insert into PACIENTES value (257544, "AsDt", "adSa", "CABA", "BUENOS AIRES", 2124);


iNSERT  into INGRESOS value (277, 288, 8, "2027-5-4", 2754,25754 );
insert into INGRESOS value (255, 2858, 58, "2017-2-4", 22754, 257524);
insert into INGRESOS value (2774, 2884, 28, "2012-12-24",27546, 257534 );
iNSERT into INGRESOS value (2775, 2868, 83, "2024-07-20", 5124,25754);
select NOMBRE from MEDICOS where ESPECIALIDAD =  "Traumatologo" 
Order by APELLIDO ASC;
delete from INGRESOS where `FECHA DE INGRESO`<"2018-01-01";
delete from INGRESOS where `CAMA DEL PACIENTE` = 8;
update MEDICOS set ESPECIALIDAD = "pediatra" where CODIGO=5;   
select  NOMBRE, CODIGO FROM MEDICOS WHERE NOMBRE LIKE "a%" ;

