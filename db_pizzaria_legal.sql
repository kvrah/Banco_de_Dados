create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_pizzas (
id bigint auto_increment,
sabor varchar(255) not null,
preco decimal (4,2),
tamanho varchar(255),
quantidade int,
primary key (id)
);

insert into tb_pizzas (sabor,preco,tamanho,quantidade,categoria_id) values ("calabresa",35.00,"pequena",18,2);
insert into tb_pizzas (sabor,preco,tamanho,quantidade,categoria_id) values ("mussarela",35.00,"pequena",15,2);
insert into tb_pizzas (sabor,preco,tamanho,quantidade,categoria_id) values ("vegetariana",50.00,"grande",5,3);
insert into tb_pizzas (sabor,preco,tamanho,quantidade,categoria_id) values ("frango com catupiry",35.00,"media",12,4);
insert into tb_pizzas (sabor,preco,tamanho,quantidade,categoria_id) values ("Portugesa",45.00,"media",4,4);
insert into tb_pizzas (sabor,preco,tamanho,quantidade,categoria_id) values ("calabresa",15.00,"esfiha",7,5);
insert into tb_pizzas (sabor,preco,tamanho,quantidade,categoria_id) values ("atum",55.00,"grande",4,2);
insert into tb_pizzas (sabor,preco,tamanho,quantidade,categoria_id) values ("romeu e julieta",65.00,"media",7,1);

select * from tb_pizzas;
select * from tb_pizzas where preco> 45.00;
select * from tb_pizzas where preco between 50.00 and 100.00;
select * from tb_pizzas where sabor like "%m%";

create table tb_categorias(
id bigint auto_increment,
tipo varchar(255),
descricao varchar(255),
primary key (id)
);

insert into tb_categorias(tipo,descricao) value ("doce","pizzas sabores doces");
insert into tb_categorias(tipo,descricao) value ("salgadas","pizzas sabores salgados");
insert into tb_categorias(tipo,descricao) value ("vegetariana","pizzas sabores vegetarianas");
insert into tb_categorias(tipo,descricao) value ("especiais","pizzas sabores especiais");
insert into tb_categorias(tipo,descricao) value ("esfihas","esfihas sabores");

alter table tb_pizzas add categoria_id bigint;
alter table tb_pizzas add constraint fk_pizzas_categoria foreign key (categoria_id) references tb_pizzas(id);

select sabor,preco,tamanho,quantidade,categoria_id from tb_pizzas inner join tb_categorias on tb_categorias.id = tb_pizzas.categoria_id;

select sabor,preco,tamanho,quantidade,categoria_id from tb_pizzas inner join tb_categorias on tb_categorias.id = tb_pizzas.categoria_id where categoria_id=1;