
use db_ecommerce  ;  
create table tb_produtos(
id bigint(5) auto_increment,
nome varchar(70) not null,
marca varchar(50) not null,
descricao varchar(255) not null,
tipo varchar(30)not null,
preco decimal(10,2)not null,
peso decimal(3,2),
primary key (id)
);
insert into tb_produtos(nome, marca, descricao, tipo, preco, peso)
	value ("Tenis Jordan Westbrook One", "Nike", "Tênis Jordan Wb One BRANCO", "Calçados", 499.99,0.35);
insert into tb_produtos(nome, marca, descricao, tipo, preco)
	value ("Camisa Chicago Bulls", "Nike", "Camisa G NBA PRETA C.B. NBA ed. Especial", "Camisetas", 100.99);
insert into tb_produtos(nome, marca, descricao, tipo, preco)
	value ("Boné New Era Celtics", "New Era", "Boné 7 1/4 Celtics", "Chapeus", 149.99);
insert into tb_produtos(nome, marca, descricao, tipo, preco)
	value ("Oakley Holbrook Julian Wilson", "Oakley", "Oculos de sol polarizado ", "Acessórios", 320);
insert into tb_produtos(nome, marca, descricao, tipo, preco)
	value ("Calça Jeans Branca", "Adidas", "Calça jeans Branca tam 40 ", "Acessórios", 69.99);    
insert into tb_produtos(nome, marca, descricao, tipo, preco)
	value ("SmartWatch Mi Band 5", "Xiaomi", "Relogio Smart bluetooth", "Eletrônicos", 149.99);  
    insert into tb_produtos(nome, marca, descricao, tipo, preco)
	value ("Tênis Converse ERX260 ", "Converse", "Tênis ConverseERX260 Space Racer 41 Branco", "Calçados", 399.99);    
insert into tb_produtos(nome, marca, descricao, tipo, preco)
	value ("Jaqueta Corinthians 100 Anos", "Nike", "Jaqueta Comemorativa Corinthians 100 Anos Preta GG ", "Jaquetas", 129.99); 
update tb_produtos set nome = "Meia Nike Ronaldo Fenômeno R9" , descricao = "Meia M Preta R9", tipo = "Acessórios", preco = 29.99 where id=9;
update tb_produtos set preco = 599.99 where id=1; 
select * from tb_produtos where preco > 500;
select * from tb_produtos where preco < 500;
update tb_produtos set preco = 120 where id=6; 