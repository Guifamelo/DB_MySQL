
use db_RH;
create Table tb_funcionarios(
id int (5) auto_increment,
nome varchar(30) not null,
idade int(2) not null,
cargo varchar(20) not null,
salario decimal(10,2) not null,
ativo boolean not null,
primary key (id)
);
insert into tb_funcionarios(nome, idade, cargo, salario, ativo)
	values ("Guilherme", 26, "Dev Java Jr", 3000, true);
  insert into tb_funcionarios(nome, idade, cargo, salario, ativo)
	values ("Washington", 26, "Eng Civil", 5000, true);  
insert into tb_funcionarios(nome, idade, cargo, salario, ativo)
	values ("Luccia", 25, "Eng Eletricista", 6000, true); 
     insert into tb_funcionarios(nome, idade, cargo, salario, ativo)
	values ("Gustavo", 24, "TI BD", 4000, true);
insert into tb_funcionarios(nome, idade, cargo, salario, ativo)
	values ("Leonardo", 16, "Aprendiz", 1200, true); 
select * from tb_funcionarios where salario <2000;     
select * from tb_funcionarios where salario >2000;
update tb_funcionarios set nome = "Edson" where id=6;
update tb_funcionarios set idade = 50 where id=6;
update tb_funcionarios set cargo = "Motorista" where id=6;
update tb_funcionarios set salario = 3500 where id=6;
select * from tb_funcionarios;

    