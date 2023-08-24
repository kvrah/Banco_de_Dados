create database db_farmacia_bem_estar;
use db_farmacia_bem_estar;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal (6,2),
setor varchar(255),
estoque int,
primary key (id)
);

insert into tb_produtos(nome,preco,setor,estoque,categoria_id) value ("rivotril",50.00,"controlado",50,1);
insert into tb_produtos(nome,preco,setor,estoque,categoria_id) value ("diazepam",35.00,"controlado",32,1);
insert into tb_produtos(nome,preco,setor,estoque,categoria_id) value ("desodorante",13.00,"perfumaria",44,2);
insert into tb_produtos(nome,preco,setor,estoque,categoria_id) value ("inalador",199.00,"equipamentos",7,3);
insert into tb_produtos(nome,preco,setor,estoque,categoria_id) value ("manteiga de cacau",3.00,"perfumaria",123,4);
insert into tb_produtos(nome,preco,setor,estoque,categoria_id) value ("vitamina A",35.00,"suplemento",20,1);
insert into tb_produtos(nome,preco,setor,estoque,categoria_id) value ("barra de ceral ",7.00,"alimentos",350,5);
insert into tb_produtos(nome,preco,setor,estoque,categoria_id) value ("shampoo",12.00,"perfumaria",78,2);

select * from tb_produtos;
select * from tb_produtos where preco>50.00;
select * from tb_produtos where preco between 5.00 and 60.00;
select * from tb_produtos where nome like "%c%";

create table tb_categorias(
id bigint auto_increment,
tipo varchar(255),
descricao varchar(255),
primary key (id)
);

insert into tb_categorias(tipo,descricao) value ("Medicamentos","Produtos para tratamento de saúde");
insert into tb_categorias(tipo,descricao) value ("Higiene","Produtos para cuidados pessoais e higiene");
insert into tb_categorias(tipo,descricao) value ("Equipamentos","Equipamentos medicos");
insert into tb_categorias(tipo,descricao) value ("Cosméticos","Produtos de beleza e cuidados estéticos");
insert into tb_categorias(tipo,descricao) value ("Alimentos","Produtos alimentícios e suplementos");

alter table tb_produtos add categoria_id bigint;
alter table tb_produtos add constraint fk_produtos_categorias foreign key (categoria_id) references tb_categorias(id);

select nome,preco,estoque,categoria_id from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categoria_id;
select nome,preco,estoque,categoria_id from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categoria_id where categoria_id=4;