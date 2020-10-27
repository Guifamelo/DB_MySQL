create database db_escola;
use db_escola;
create table tb_alunos(
id int(5) auto_increment,
nome varchar(50) not null,
idade int(2) not null,
cpf int(11) not null,
sangue varchar(3) not null,
comentario varchar(255),
primary key(id)
);
select * from tb_alunos;
alter table tb_alunos add nota int(2);
alter table tb_alunos change semestre nota int(2);
alter table tb_alunos change nota situacao varchar(10);
insert into tb_alunos (nome, idade, cpf, sangue, semestre)
values ("Guilherme", 26, 35233253, "O+", 8);
insert into tb_alunos (nome, idade, cpf, sangue, semestre)
values ("Maria", 23, 2534124, "O-", 5);
insert into tb_alunos (nome, idade, cpf, sangue, semestre)
values ("João", 28, 35546753, "A+", 8);
insert into tb_alunos (nome, idade, cpf, sangue, semestre)
values ("Arthuir", 25, 32154823, "O+", 5);
insert into tb_alunos (nome, idade, cpf, sangue, semestre)
values ("Ana", 26, 12534354, "A+", 8);
insert into tb_alunos (nome, idade, cpf, sangue, semestre)
values ("Mariana", 21, 45663753, "A+", 6);
insert into tb_alunos (nome, idade, cpf, sangue, semestre)
values ("Bruno", 25, 6543234, "A-", 8);
select * from tb_alunos where nota > 7;
select * from tb_alunos where nota < 7;
update tb_alunos set nome = "Arthur" where id=5;
select * from tb_alunos;

