create database db_cidade_das_carnes;
use db_cidade_das_carnes;
create table tb_categoria (
id bigint(5) auto_increment,
categoria varchar(50) not null,
disponivel boolean not null,
primary key(id)
);
  
    select * from tb_categoria;
insert into tb_categoria (categoria, disponivel) 
	values ("bovinos", true);
    insert into tb_categoria (categoria, disponivel) 
	values ("Peixes", true);
    insert into tb_categoria (categoria, disponivel) 
	values ("Suínos", true);
    insert into tb_categoria (categoria, disponivel) 
	values ("Embutidos", true);
    insert into tb_categoria (categoria, disponivel) 
	values ("Aves", true);
    
    
use db_cidade_das_carnes;
create table tb_produtos (
id bigint(5) auto_increment,
nome varchar(255) not null,
precokg float(10,2) not null,
descricao varchar(255) not null,
fornecedor varchar(255) not null,
categoria_id bigint (5) not null,
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

    select * from tb_produtos;
insert into tb_produtos (nome, precokg, descricao, fornecedor, categoria_id) 
	values ("Picanha Argentina", 100,"Picanha Bovina Argentina", "Biriba Carnes", 1);
    insert into tb_produtos (nome, precokg, descricao, fornecedor, categoria_id) 
	values ("Tilápia", 30,"Tilápia Fresca de Santos", "Santos Peixes SA", 2);
    insert into tb_produtos (nome, precokg, descricao, fornecedor, categoria_id) 
	values ("Bisteca", 40,"Bisteca Suína", "Fazendinha SP", 3);
insert into tb_produtos (nome, precokg, descricao, fornecedor, categoria_id) 
	values ("Salsicha", 15,"Salsicha SEARA Dourmet", "SEARA/RJ", 4);
insert into tb_produtos (nome, precokg, descricao, fornecedor, categoria_id) 
	values ("Asa de Frango", 20,"Asinha de frango ", "Fazendinha SP", 5);
    insert into tb_produtos (nome, precokg, descricao, fornecedor, categoria_id) 
	values ("Alcatra", 37.50,"Alcatra macia dos pampas ", "Fabrica de carne MT", 1);
     insert into tb_produtos (nome, precokg, descricao, fornecedor, categoria_id) 
	values ("Baby beef", 70,"Baby beef retirado da mãe ainda criança", "Fabrica de carne MT", 1);
         insert into tb_produtos (nome, precokg, descricao, fornecedor, categoria_id) 
	values ("Patinho Moido", 25,"Patinho moído ainda jovem", "Fabrica de carne MT", 1);
 
    
select * from tb_produtos where precokg> 50;
select * from tb_produtos where precokg between 3 and 60;
select * from tb_produtos where nome like "%co%";

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id; 	
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id 
	where tb_categoria.categoria like "%bo%";
    



