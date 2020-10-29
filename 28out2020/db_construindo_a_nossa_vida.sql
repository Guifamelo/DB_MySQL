create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;
create table tb_categoria (
id bigint(5) auto_increment,
categoria varchar(50) not null,
disponivel boolean not null,
primary key(id)
);

select*from tb_categoria;
insert into tb_categoria (categoria, disponivel) 
	values ("Alvenaria", true);
insert into tb_categoria (categoria, disponivel) 
	values ("Elétrica", true);
insert into tb_categoria (categoria, disponivel) 
	values ("Acessórios", true);
    
use db_construindo_a_nossa_vida;

create table tb_produtos (
id bigint(5) auto_increment,
nome varchar(255) not null,
preco float(10,2) not null,
descricao varchar(255) not null,
fornecedor varchar(255) not null,
categoria_id bigint (5),
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_produtos (nome, preco, descricao, fornecedor, categoria_id) 
	values ("Eletroduto 1/2'' PVC", 10,"Eletroduto Amanco meia polegada", "Amanco", 2);
insert into tb_produtos (nome, preco, descricao, fornecedor, categoria_id) 
	values ("Vedacit", 100,"Manta líquida base asfalto Vedapren 18L", "C&C", 1);
insert into tb_produtos (nome, preco, descricao, fornecedor, categoria_id) 
	values ("Esquadro", 29.99,"Esquadro 90° 30cm", "Tramontina", 3);
    
