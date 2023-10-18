create table marca (
	id_marca int (100) primary key auto_increment not null,
	site_oficial varchar(100) not null,
    telefone int
);

create table produto (
	id_produto int (100) primary key auto_increment not null,
	nome varchar(100) not null,
    data_validade date not null,
    preco_custo decimal(9.2) not null,
    preco_venda decimal(9.2) not null,
    marca_id int (100),
    foreign key(marca_id) references marca(id_marca)
);

insert into marca values (1,'nestlepepsico.com.br',000111222);
insert into marca values (2,'heinzpepsico.com.br',333444555);
insert into marca values (3,'pepsico.com.br',666777888);

insert into produto values (01,'Chocolate', date'2024-01-02', 15.0,30.0,1);
insert into produto values (02,'Cacau', date'2029-02-04', 16.0,32.0,1);
insert into produto values (03,'Sucrilhos', date'2028-03-06', 19.0,38.0,1);
insert into produto values (04,'Molho de Tomate', date'2027-04-08', 30.0,60.0,1);
insert into produto values (05,'Cerveja', date'2026-05-10', 2.0,4.0,3);
insert into produto values (06,'Maionese', date'2025-06-12', 3.0,6.0,3);
insert into produto values (07,'Doritos', date'2024-07-14', 4.0,8.0,2);
insert into produto values (08,'Toddy', date'2023-08-16', 9.0,18.0,2);

select * from produto;