
create table users(
uname varchar(50) not null,
uemail varchar(50) not null primary key,
isRoot bool not null default false,
upassw varchar(65) not null
);
insert into users values('root','root@gmail.com',true,'37884910911ff444e69df25a8a5f12bcc31deaf9acdd0e3ff25c90adcf5f1360');

create table animal(
aid int not null auto_increment primary key,
aname varchar(50) not null,
atype varchar(50) not null,
arace varchar(50) not null,
aage int not null,
aweight float,
entry_date date not null,
exit_date date,
owner_id varchar(50) default null
);

create table vacuna(
id int primary key not null,
vname varchar(50) not null,
vanimal_type varchar(50) not null,
vduration int not null
);

create table registroVacunaAnimal(
id_vacuna int not null,
aid int not null,
fecha_de_vacunacion date not null,
duracion int not null,
primary key (id_vacuna, aid,fecha_de_vacunacion),
foreign key (id_vacuna) references vacuna(id),
foreign key (aid) references animal(aid)

);

create table persona(
nombre varchar(50) not null,
email varchar(50)not null,
phone_number varchar(50)not null,
identification varchar(50)not null primary key,
animals_adopted int default 0
);

insert into persona values('Death','','','Death',1);

insert into animal (aname, aage, aweight, atype, arace, entry_date)
values 
    ('Luna', 2, 7.8, 'cat', 'Meztizo', '2024-04-26'),  -- Gato
    ('Max', 1, 6.2, 'cat', 'Persa', '2024-04-26'),  -- Gato
    ('Rex', 4, 12.5, 'cat', 'Siamés', '2024-04-26');  -- Gato

insert into vacuna (id, vname, vanimal_type, vduration) values
(1, 'Rinotraqueitis viral felina', 'cat', 365),
(2, 'Calicivirus felino', 'cat', 365),
(3, 'Panleucopenia felina', 'cat', 365),
(4, 'Leucemia felina', 'cat', 365),
(5, 'Rabia', 'cat', 365),
(6, 'Clamidia felina', 'cat', 365),
(7, 'Coronavirus felino', 'cat', 365),
(8, 'Bordetella felina', 'cat', 365);

insert into vacuna (id, vname, vanimal_type, vduration) values
(9, 'Herpes', 'reptile', 365),
(10, 'Paramixovirus', 'reptile', 180),
(11, 'Salmonelosis', 'reptile', 180),
(12, 'Fiebre del Nilo Occidental', 'reptile', 365),
(13, 'Influenza', 'reptile', 180),
(14, 'Viruela', 'reptile', 180);

insert into vacuna (id, vname, vanimal_type, vduration) values
(15, 'Moquillo canino', 'dog', 365),
(16, 'Hepatitis infecciosa canina', 'dog', 365),
(17, 'Parvovirosis canina', 'dog', 365),
(18, 'Leptospirosis canina', 'dog', 365),
(19, 'Rabia', 'dog', 365),
(20, 'Bordetella canina', 'dog', 365),
(21, 'Coronavirus canino', 'dog', 365),
(22, 'Lyme', 'dog', 365),
(23, 'Influenza canina', 'dog', 365),
(24, 'Giardiasis canina', 'dog', 365);

insert into vacuna (id, vname, vanimal_type, vduration) values
(25, 'Enteritis necrótica', 'fish', 365),
(26, 'Septicemia hemorrágica vírica', 'fish', 365),
(27, 'Francisellosis', 'fish', 365),
(28, 'Vibriosis', 'fish', 365);

insert into vacuna (id, vname, vanimal_type, vduration) values
(29, 'Fiebre tifoidea', 'rodent', 365),
(30, 'Coriomeningitis linfocítica', 'rodent', 365),
(31, 'Leptospirosis', 'rodent', 365);

insert into animal (aname, aage, aweight, atype, arace, entry_date,exit_date,owner_ID)
values ('Michi', 3, 4.5, 'cat', 'Meztizo', '2024-04-26','2024-04-26','Death');  -- Gato

