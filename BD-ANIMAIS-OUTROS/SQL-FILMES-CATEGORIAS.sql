create table categorias (
	id_categorias int (100) primary key auto_increment not null,
    categoria_nome varchar(50) not null,
	publico_alvo varchar(50) not null
);

create table filmes (
	id_produto int (100) primary key auto_increment not null,
	titulo varchar(100) not null,
    sinopse varchar(100) not null,
    estudio varchar(100) not null,
    categorias_id int (100),
    foreign key(categorias_id) references categorias(id_categorias)
);

insert into categorias values (1,'comedia','adolecente');
insert into categorias values (2,'terror','adulto');
insert into categorias values (3,'romance','idoso');

insert into filmes values (01,'Gente Grande','amigos do ensino fundametal','lasvegas.estudios',1);
insert into filmes values (02,'As branquelas','homens se passam por modelos','lasvegas.estudios',1);
insert into filmes values (03,'Minha mae e uma peca','historia da dona herminia','brasil.estudios',1);
insert into filmes values (04,'Ate que amorte nos separe','ganhador na loteria perde tudo','lasvegas.estudios',1);
insert into filmes values (05,'A freira','se passa em um orfanato','losangeles.estudios',2);
insert into filmes values (06,'It','palhaco assasino','losangeles.estudios',2);
insert into filmes values (07,'Como eu era antes de voce','romance terminal','losangeles.estudios',3);
insert into filmes values (08,'A barraca do beijo','encontro na barraca do beijo','losangeles.estudios',3);

select * from filmes;