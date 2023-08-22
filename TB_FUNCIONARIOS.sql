create database db_rh;
use db_rh;
create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255),
idade bigint,
telefone varchar(255),
setor varchar(255),
salario decimal (6,2) not null,
primary key (id)
);

insert into tb_funcionarios (nome,idade,telefone,setor,salario) value ("Richard",30,"11 970310711","fullstack jr",3000.00);
insert into tb_funcionarios (nome,idade,telefone,setor,salario) value ("Joao",22,"11 956789956","seguranca",1900.00);
insert into tb_funcionarios (nome,idade,telefone,setor,salario) value ("Guilherme",32,"11 967889087","analista de rh",2500.00);
insert into tb_funcionarios (nome,idade,telefone,setor,salario) value ("Vinicios",25,"11 912345678","recepcionista",2000.00);
insert into tb_funcionarios (nome,idade,telefone,setor,salario) value ("Regina",55,"11 956784433","auxiliar de limpeza",1800.00);

select * from tb_funcionarios;
select * from tb_funcionarios where salario>2000;
select * from tb_funcionarios where salario<2000;

update tb_funcionarios set salario=5000.00 where id=1;