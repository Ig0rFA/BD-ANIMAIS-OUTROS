create table especies (
	id_especies int (100) primary key auto_increment not null,
	nome varchar(100) not null,
    descricao text
);

create table animais (
	id_animais int (100) primary key auto_increment not null,
	nome varchar(100) not null,
    data_nasc date not null,
    peso decimal(9.2) not null,
    especies_id int (100),
    foreign key(especies_id) references especies(id_especies)
);

insert into especies values (1,'Mamiferos','Animais que andam');
insert into especies values (2,'Aves','Animais que voam');
insert into especies values (3,'Repteis','Animais que rastejam');

insert into animais values (01,'Luke', date'2023-01-02', 15.0,1);
insert into animais values (02,'Bidu', date'2023-02-04', 16.0,1);
insert into animais values (03,'Amora', date'2023-03-06', 19.0,1);
insert into animais values (04,'Garfield', date'2023-04-08', 30.0,1);
insert into animais values (05,'Relampago-MC', date'2023-05-10', 2.0,3);
insert into animais values (06,'Veloster', date'2023-06-12', 3.0,3);
insert into animais values (07,'Pica-Pau', date'2023-07-14', 4.0,2);
insert into animais values (08,'Zeca Urubu', date'2023-08-16', 9.0,2);

select * from animais;