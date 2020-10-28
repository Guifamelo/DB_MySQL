create database db_RH2;
use db_RH2;
create table tb_cargo(
id bigint(5) auto_increment ,
cargo varchar(99) not null,
beneficios boolean not null,
carro boolean,
primary key(id)
);
select*from tb_cargo;
insert into tb_cargo (cargo, beneficios, carro) 
values ("Estagiário",true, false);
insert into tb_cargo (cargo, beneficios, carro) 
values ("Engenheire",true,true);
insert into tb_cargo (cargo, beneficios, carro) 
values ("Vendedore",true,true);
insert into tb_cargo (cargo, beneficios, carro) 
values ("TI",true,true);
insert into tb_cargo (cargo, beneficios, carro) 
values ("Diretor",true,true);
select * from tb_cargo;

create table tb_funcionario(
id bigint(5) auto_increment,
nome varchar(50) not null,
cpf bigint(11) not null,
pcd boolean not null,
salario decimal(10,2) not null,
ativo boolean,
cargo_id bigint(5) not null,

primary key(id),
foreign key(cargo_id) references tb_cargo(id)
);

select*from tb_funcionario; 
insert into tb_funcionario(nome, cpf, pcd, salario, ativo, cargo_id)
values("Dudu", 12345678911, true, 1500, true, 1);
insert into tb_funcionario(nome, cpf, pcd, salario, ativo, cargo_id)
values("Mariana", 21345678911, true, 7000, true, 2);
insert into tb_funcionario(nome, cpf, pcd, salario, ativo, cargo_id)
values("Bruno", 21435678911, true, 4000, true, 3);
insert into tb_funcionario(nome, cpf, pcd, salario, ativo, cargo_id)
values("Ana Paula", 21436574911, true, 4500, true, 4);
insert into tb_funcionario(nome, cpf, pcd, salario, ativo, cargo_id)
values("Silvia", 21436574911, true, 9999, true, 5);
insert into tb_funcionario(nome, cpf, pcd, salario, ativo, cargo_id)
values("Aninha", 12758478911, false, 1500, true, 1);
insert into tb_funcionario(nome, cpf, pcd, salario, ativo, cargo_id)
values("Maria", 21345848911, false, 7000, true, 2);
insert into tb_funcionario(nome, cpf, pcd, salario, ativo, cargo_id)
values("Carlos", 21438478911, false, 4000, true, 3);
insert into tb_funcionario(nome, cpf, pcd, salario, ativo, cargo_id)
values("André", 21436844911, false, 4500, true, 4);
insert into tb_funcionario(nome, cpf, pcd, salario, ativo, cargo_id)
values("Edson", 21716844911, false, 9999, true, 5);
insert into tb_funcionario (nome, cpf, pcd, salario, ativo, cargo_id)
values("Josefina", 8282828282828, false, 9999, true, 5);
insert into tb_funcionario (nome, cpf, pcd, salario, ativo, cargo_id)
values("Juliana", 2982828282828, false, 7000, true, 2);
insert into tb_funcionario (nome, cpf, pcd, salario, ativo, cargo_id)
values("Enzo", 4282828282828, false, 1500, true, 2);
insert into tb_funcionario (nome, cpf, pcd, salario, ativo, cargo_id)
values("Henrique", 4382828282828, false, 4500, true, 5);
insert into tb_funcionario (nome, cpf, pcd, salario, ativo, cargo_id)
values("Paula", 2782828282828, false, 7000, true, 2);

select*from tb_funcionario where salario between 1000 and 2000;
select * from tb_funcionario where nome like "%C%";

