# BD-ANIMAIS-OUTROS
## Descrição
Atividades realizadas na materia Banco de Dados.
Realizando a criação de banco de dados e alguns comandos.
## ETAPA 1:
1-Crie a tabela animais e insira todos os valores disponíveis:
```
CREATE TABLE animais (
id int,
nome varchar(50),
nasc date,
peso decimal(10,2),
cor varchar(50)
);

INSERT INTO animais VALUES (01, 'Ágata','2015-04-09',13.9,'branco');
INSERT INTO animais VALUES (02, 'Félix','2016-06-06',14.3,'preto');
INSERT INTO animais VALUES (03, 'Tom','2013-02-08', 11.2,'azul');
INSERT INTO animais VALUES (04, 'Garfield','2015-07-07',17.1,'laranja');
INSERT INTO animais VALUES (05,'Frajola','2013-08-01',13.7,'preto');
INSERT INTO animais VALUES (06,'Manda-chuva','2012-02-03',12.3,'amarelo');
INSERT INTO animais VALUES (07,'Snowball','2014-04-06',13.2,'preto');
INSERT INTO animais VALUES (10,'Ágata','2015-08-03',11.9,'azul');
INSERT INTO animais VALUES (11,'Gato de Botas','2012-12-10',11.6,'amarelo');
INSERT INTO animais VALUES (12,'Kitty','2020-04-06',11.6,'amarelo');
INSERT INTO animais VALUES (13,'Milu','2013-02-04',17.9,'branco');
INSERT INTO animais VALUES (14,'Pluto','2012-01-03',12.3,'amarelo');
INSERT INTO animais VALUES (15,'Pateta','2015-05-01',17.7,'preto');
INSERT INTO animais VALUES (16,'Snoopy','2013-07-02',18.2,'branco');
INSERT INTO animais VALUES (17,'rex','2019-11-03',19.7,'bege');
INSERT INTO animais VALUES (20,'Bidu','2012-09-08',12.4,'azul');
INSERT INTO animais VALUES (21,'Dum Dum','2015-04-06',11.2,'laranja');
INSERT INTO animais VALUES (22,'Muttley','2011-02-03',14.3,'laranja');
INsERT INTO animais VALUES (23,'Scooby','2012-01-02',19.9,'marrom');
INSERT INTO animais VALUES (24,'Rufus','2014-04-05',19.7,'branco');
INSERT INTO animais VALUES (25,'Rex','2021-08-19',19.7,'branco');
```
2-Selecione todos os animais:
```
/*select * from animais;*/
```
3-Selecione todos os animais que pesam menos que 13.1:
```
/*select * from animais where peso < 13.1;*/
```
4-Selecione todos nasceram entre fevereiro e dezembro de 2015:
```
/*select * from animais where nasc between '2015-01-01' and '2015-12-31';*/
```
5-Selecione todos os animais brancos que pesam menos que 15.0:;
```
/*select * from animais where cor = 'branco' and peso < 15.0;*/
```
6-Selecione nome, cor e peso de todos cujo nome comece com ’B’:
```
/*select nome,cor,peso from animais where nome like 'B%';*/
```
7-Selecione nome, cor e peso de todos com cor vermelha, amarela, marrom e laranja:
```
/*select nome,cor,peso from animais where cor in ('vermelha','marrom','laranja','amarela');*/
```
8-Selecione nome, cor, data de nascimento e peso de todos ordenados pelos mais jovens:
```
/*select nome,cor,nasc,peso from animais order by nasc desc;*/
```
9-Selecione todos os animais cujo nome comece com 'C' e não sejam brancos:
```
/*select * from animais where nome like 'C%' and cor != 'branco';*/
```
10-Selecione todos os animais cujo nome contenha 'ba':
```
/*select * from animais where nome like 'ba%';*/
```
11-Selecione todos os animais com peso entre 13.0 à 15.0:
```
/*select * from animais where peso between 13.0 and 15.0;*/
```
12-Selecione todos os animais que o peso não seja maior que 30, com cor amarelo ou roxo e nascidos depois de 2012:
```
/*select * from animais where peso < 30.0 and cor like 'amarelo' or cor like 'roxo' and nasc >'2012-01-01';*/
```
13-(Desafio) Selecione todos os capricornianos:
```
/*select * from animais where (month(nasc) = 12 and day(nasc) >= 22) or (month(nasc) = 1 and day(nasc) <= 19);*/
```
14-(Desafio) Selecione todos os animais com nome formado por mais de uma palavra:
```
/*select * from animais where locate(' ',nome) > 1;*/
```

## ETAPA 2:

1-Crie um banco de dados para armazenar dados de Animais e Espécies. Um animal tem seu nome, data_nasc e peso. Uma espécie tem um nome e uma descrição:
```
/*create table especies (
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
```
1-2Faça a modelagem relacional, DER:
![Etapa 1-2](https://github.com/Ig0rFA/BD-ANIMAIS-OUTROS/blob/main/BD-ANIMAIS-OUTROS/DER-ANIMAIS-ESPECIES.png)
1-3Insira pelo menos 8 animais e 3 espécies:
```
/*insert into especies values (1,'Mamiferos','Animais que andam');
insert into especies values (2,'Aves','Animais que voam');
insert into especies values (3,'Repteis','Animais que rastejam');

insert into animais values (01,'Luke', date'2023-01-02', 15.0,1);
insert into animais values (02,'Bidu', date'2023-02-04', 16.0,1);
insert into animais values (03,'Amora', date'2023-03-06', 19.0,1);
insert into animais values (04,'Garfield', date'2023-04-08', 30.0,1);
insert into animais values (05,'Relampago-MC', date'2023-05-10', 2.0,3);
insert into animais values (06,'Veloster', date'2023-06-12', 3.0,3);
insert into animais values (07,'Pica-Pau', date'2023-07-14', 4.0,2);
insert into animais values (08,'Zeca Urubu', date'2023-08-16', 9.0,2);*/*/
```
2-Crie um banco de dados para registrar dados de Produtos e Marcas. Um produto deve ter nome, preço de custo, preço de venda, data de validade e marca. Uma marca deve ter, nome, site oficial e telefone:
```
/*create table marca (
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
*/
```
2-2Faça a modelagem relacional, DER:
![Etapa 2-2](https://github.com/Ig0rFA/BD-ANIMAIS-OUTROS/blob/main/BD-ANIMAIS-OUTROS/DER-PRODUTO-MARCA.png)
2-3Insira pelo menos 8 Produtos e 3 Marcas:
```
/*insert into marca values (1,'nestlepepsico.com.br',000111222);
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
*/
```
3-Crie um banco de dados para registrar dados de Filmes e Categorias. Um filme tem seu título, sinopse, estudio e categoria. Uma categoria deve ter nome e público alvo:
```
/*create table categorias (
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
);*/
```
3-2Faça a modelagem relacional, DER:
![Etapa 3-2](https://github.com/Ig0rFA/BD-ANIMAIS-OUTROS/blob/main/BD-ANIMAIS-OUTROS/DER-FILMES-CATEGORIAS.png)
3-3Insira pelo menos 8 Filmes e 3 Categorias:
```
/*insert into categorias values (1,'comedia','adolecente');
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
*/
```
