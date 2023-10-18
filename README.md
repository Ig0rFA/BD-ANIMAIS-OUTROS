# BD-ANIMAIS-OUTROS
## Descrição
Atividades realizadas na materia Banco de Dados.
Realizando a criação de banco de dados e alguns comandos.
## ETAPA 1:
/*1-Crie a tabela animais e insira todos os valores disponíveis:*/;

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

2-Selecione todos os animais:
/*select * from animais;*/
3-Selecione todos os animais que pesam menos que 13.1:
/*select * from animais where peso < 13.1;*/
4-Selecione todos nasceram entre fevereiro e dezembro de 2015:
/*select * from animais where nasc between '2015-01-01' and '2015-12-31';*/
5-Selecione todos os animais brancos que pesam menos que 15.0:;
/*select * from animais where cor = 'branco' and peso < 15.0;*/
6-Selecione nome, cor e peso de todos cujo nome comece com ’B’:
/*select nome,cor,peso from animais where nome like 'B%';*/
7-Selecione nome, cor e peso de todos com cor vermelha, amarela, marrom e laranja:
/*select nome,cor,peso from animais where cor in ('vermelha','marrom','laranja','amarela');*/
8-Selecione nome, cor, data de nascimento e peso de todos ordenados pelos mais jovens:
/*select nome,cor,nasc,peso from animais order by nasc desc;*/
9-Selecione todos os animais cujo nome comece com 'C' e não sejam brancos:
/*select * from animais where nome like 'C%' and cor != 'branco';*/
10-Selecione todos os animais cujo nome contenha 'ba':
/*select * from animais where nome like 'ba%';*/
11-Selecione todos os animais com peso entre 13.0 à 15.0:
/*select * from animais where peso between 13.0 and 15.0;*/
12-Selecione todos os animais que o peso não seja maior que 30, com cor amarelo ou roxo e nascidos depois de 2012:
/*select * from animais where peso < 30.0 and cor like 'amarelo' or cor like 'roxo' and nasc >'2012-01-01';*/
13-(Desafio) Selecione todos os capricornianos:
/*select * from animais where (month(nasc) = 12 and day(nasc) >= 22) or (month(nasc) = 1 and day(nasc) <= 19);*/
14-(Desafio) Selecione todos os animais com nome formado por mais de uma palavra:
/*select * from animais where locate(' ',nome) > 1;*/

## ETAPA 2:

1-Crie um banco de dados para armazenar dados de Animais e Espécies. Um animal tem seu nome, data_nasc e peso. Uma espécie tem um nome e uma descrição:
/* asd */
1-2Faça a modelagem relacional, DER:
![Etapa 1-2](https://github.com/Ig0rFA/BD-ANIMAIS-OUTROS/blob/main/BD-ANIMAIS-OUTROS/DER-ANIMAIS-ESPECIES.png)
1-3Insira pelo menos 8 animais e 3 espécies:
/* asd */
2-Crie um banco de dados para registrar dados de Produtos e Marcas. Um produto deve ter nome, preço de custo, preço de venda, data de validade e marca. Uma marca deve ter, nome, site oficial e telefone:
/* asd */
2-2Faça a modelagem relacional, DER:
![Etapa 2-2](https://github.com/Ig0rFA/BD-ANIMAIS-OUTROS/blob/main/BD-ANIMAIS-OUTROS/DER-PRODUTO-MARCA.png)
2-3Insira pelo menos 8 Produtos e 3 Marcas:
/* asd */
3-Crie um banco de dados para registrar dados de Filmes e Categorias. Um filme tem seu título, sinopse, estudio e categoria. Uma categoria deve ter nome e público alvo:
/* asd */
3-2Faça a modelagem relacional, DER.
![Etapa 3-2](https://github.com/Ig0rFA/BD-ANIMAIS-OUTROS/blob/main/BD-ANIMAIS-OUTROS/DER-FILMES-CATEGORIAS.png)
3-3Insira pelo menos 8 Filmes e 3 Categorias:
/* asd */
