create database db_escola;
use db_escola;

create table tb_alunos(
id bigint auto_increment,
nome varchar(255),
idade int,
serie varchar(255),
materia varchar(255),
nota decimal(4,2) not null,
primary key (id)
);

insert into tb_alunos (nome,idade,serie,materia,nota) value ("Richard",8,"8º ano A","matematica",8.5);
insert into tb_alunos (nome,idade,serie,materia,nota) value ("Carolina",7,"8º ano B","matematica",7);
insert into tb_alunos (nome,idade,serie,materia,nota) value ("João",6,"8º ano B","matematica",6);
insert into tb_alunos (nome,idade,serie,materia,nota) value ("Harley",8,"8º ano A","matematica",6.5);
insert into tb_alunos (nome,idade,serie,materia,nota) value ("Matheus",7,"8º ano A","matematica",9);
insert into tb_alunos (nome,idade,serie,materia,nota) value ("Alessandro",7,"8º ano B","matematica",4);
insert into tb_alunos (nome,idade,serie,materia,nota) value ("Lucas",6,"8º ano B","matematica",7.75);
insert into tb_alunos (nome,idade,serie,materia,nota) value ("Luis",7,"8º ano A","matematica",10);

select * from tb_alunos;
select * from tb_alunos where nota>7;
select * from tb_alunos where nota<7;

update tb_alunos set nota=9 where id=6;
