create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria (
id bigint(5) auto_increment,
categoria varchar(50) not null,
disponivel boolean not null,
primary key(id)
);

insert into tb_categoria (categoria, disponivel) 
	values ("Tecnologias", true);
insert into tb_categoria (categoria, disponivel) 
	values ("Biológicas", true);
insert into tb_categoria (categoria, disponivel) 
	values ("Humanas", true);
insert into tb_categoria (categoria, disponivel) 
	values ("Exatas", true);
    
use db_cursoDaMinhaVida;
create table tb_produtos (
id bigint(5) auto_increment,
nome varchar(255) not null,
preco float(10,2) not null,
descricao varchar(255) not null,
periodo varchar(255) not null,
categoria_id bigint (5),
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_produtos (nome, preco, descricao, periodo, categoria_id) 
	values ("Dev. Java Jr Full Stack", 15000,"Curso de programação Java Full Stack Jr.", "Manhã", 1);
insert into tb_produtos (nome, preco, descricao, periodo, categoria_id) 
	values ("Ciência dos Dados", 11500,"Curso imersivo DataScience completo", "Noite", 1);
insert into tb_produtos (nome, preco, descricao, periodo, categoria_id) 
	values ("Biologia", 20000,"Curso de biologia atualizado com acesso ao campus", "Manhã", 2);   
insert into tb_produtos (nome, preco, descricao, periodo, categoria_id) 
	values ("Física Quântica", 50000,"Curso de física quântica", "Integral", 4); 
insert into tb_produtos (nome, preco, descricao, periodo, categoria_id) 
	values ("Recursos Humanos", 15989,"Curso de RH", "Noturno", 3);      
insert into tb_produtos (nome, preco, descricao, periodo, categoria_id) 
	values ("Engenharia Elétrica", 65000,"Curso de Elétrica com ênfase em eletrônica", "Noturno", 4); 
insert into tb_produtos (nome, preco, descricao, periodo, categoria_id) 
	values ("Engenharia Civil", 60000,"Curso de Engenharia civíl com ênfase em pontes", "Noturno", 4);  
insert into tb_produtos (nome, preco, descricao, periodo, categoria_id) 
	values ("Java Script", 7399,"Curso de programação JS", "Diurno", 1);
insert into tb_produtos (nome, preco, descricao, periodo, categoria_id) 
	values ("Ed. Física", 11000,"Curso de Ed. Física com ênfase em esportes de alto rendimento", "Noturno", 2);
insert into tb_produtos (nome, preco, descricao, periodo, categoria_id) 
	values ("Psicologia", 20000,"Curo psicologia", "Diurno", 3);
insert into tb_produtos (nome, preco, descricao, periodo, categoria_id) 
	values ("Pedagogia", 17500,"Curo Pedagogia social", "Noturno", 3);
insert into tb_produtos (nome, preco, descricao, periodo, categoria_id) 
	values ("Jornalismo", 25500,"Curso jornalismo", "Diurno", 3);
   
select*from tb_produtos;
    
select*from tb_produtos where preco>50;   
select*from tb_produtos where preco between 3 and 60;
select*from tb_produtos where nome like "%JAV%";
select*from tb_produtos inner join tb_categoria where tb_categoria.id = tb_produtos.categoria_id;

select*from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id
		where  tb_categoria.categoria = "tecnologias"; -- tb_categoria.categoria  like "%Tec%";
			

  