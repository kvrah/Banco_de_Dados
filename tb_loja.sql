create database db_loja;
use db_loja;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255),
tipo varchar(255),
cor varchar(255),
quantidade int,
preco decimal(6,2) not null,
primary key (id)
);

insert into tb_produtos(nome,tipo,cor,quantidade,preco) value ("iphone 12","celular","preto",15,5000.00);
insert into tb_produtos(nome,tipo,cor,quantidade,preco) value ("chmapion rt45","relofio","prata",10,350.00);
insert into tb_produtos(nome,tipo,cor,quantidade,preco) value ("carregador tipo ligthning","acessorio","branco",25,120.00);
insert into tb_produtos(nome,tipo,cor,quantidade,preco) value ("adaptador de tomada","acessorio","branco",17,90.00);
insert into tb_produtos(nome,tipo,cor,quantidade,preco) value ("iphone 13","celular","rosa",7,6000.00);
insert into tb_produtos(nome,tipo,cor,quantidade,preco) value ("samsung s3 ultra","celular","preto",5,7000.00);
insert into tb_produtos(nome,tipo,cor,quantidade,preco) value ("capinha para iphone 13","acessorio","transparente",19,70.00);
insert into tb_produtos(nome,tipo,cor,quantidade,preco) value ("carregador portatil","acessorio","preto",29,550.00);

select * from tb_produtos;
select * from tb_produtos where preco>500.00;
select * from tb_proutos where preco<500.00;

update tb_produtos set quantidade=10 where id=1;