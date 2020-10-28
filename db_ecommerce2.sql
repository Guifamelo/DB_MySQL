create database db_ecommerce2;
use db_ecommerce2;
create table tb_categoria(
id bigint (10) auto_increment,
nome varchar(255) not null,
tipo varchar(255) not null,
primary key (id)
);
delete from tb_categoria where id in (8,9,10);
insert into tb_categoria (nome, tipo) 
	values ("Vestuário", "Vestuário");
insert into tb_categoria (nome, tipo) 
	values ("Eletrônicos", "Eletrônicos");
insert into tb_categoria (nome, tipo) 
	values ("Automóveis", "Automóveis");
insert into tb_categoria (nome, tipo) 
	values ("Acessórios", "Acessórios");
insert into tb_categoria (nome, tipo) 
	values ("Calçados", "Calçados");    
select*from tb_categoria;


create table tb_produtos (
id bigint (10) auto_increment,
nome varchar(255) not null,
descricao varchar(255) not null,
preco decimal(10,2),
cor varchar(255),
marca varchar(255),
categoria_id bigint(10),
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produtos (nome, descricao, preco, cor, marca, categoria_id) 
	values ("Camiseta Preta Lisa", "Camiseta Urgh! lisa, sem logotipo Tam-GG", 60, "Preta", "Urgh", 13); 
insert into tb_produtos (nome, descricao, preco, cor, marca, categoria_id) 
	values ("Calça Jeans", "Calça jeans preta Ed. Especial", 100, "Preta", "Girassol", 13); 
insert into tb_produtos (nome, descricao, preco, cor, marca, categoria_id) 
	values ("iPhone 11S", "Smartphone iPhone 11s Cam", 4300, "Prata", "Apple", 14); 
insert into tb_produtos (nome, descricao, preco, cor, marca, categoria_id) 
	values ("XIOMI Redmi Note 9", "Smartphone XIOMI Redmi Note 9 128GB 4GB RAM ", 1500, "Cinza", "XIOMI", 14);
insert into tb_produtos (nome, descricao, preco, cor, marca, categoria_id) 
	values ("Air Max 90'Excee", "Tenis Nike Air Max Excee n41 ", 400, "Azul", "Nike", 12); 
insert into tb_produtos (nome, descricao, preco, cor, marca, categoria_id) 
	values ("Jordan Proto-Max 720 ", "Tenis de Basquete n41 ", 620, "Preto", "Nike", 12);  
insert into tb_produtos (nome, descricao, preco, cor, marca, categoria_id) 
	values ("Civic", "Honda Civic 2007 1.8 LXS 16V 4P Automático ", 35900, "Preto", "Honda", 15); 
insert into tb_produtos (nome, descricao, preco, cor, marca, categoria_id) 
	values ("Fit", "Honda Fit 2004 1.4 LX 16V 4P Manual ", 18900, "Prata", "Honda", 15);     
insert into tb_produtos (nome, descricao, preco, cor, marca, categoria_id) 
	values ("Skate Pró", "Skate montado Mormaii Shape azul bebê com detalhe amarelo ", 199, "Azul", "Mormai", 11); 
insert into tb_produtos (nome, descricao, preco, cor, marca, categoria_id) 
	values ("Boné Atlanta Braves", "Boné tam 7 1/4 New Era Atlanta Braves especial Edition", 139.99, "Verde", "New Era", 11);    
    
    select*from tb_produtos;
select*from tb_produtos where preco > 2000;
select*from tb_produtos where preco between 1000 and 2000;
select * from tb_produtos where nome like "%C%";