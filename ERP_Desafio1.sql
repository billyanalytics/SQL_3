-- CRIANDO BANCO DE DADOS
CREATE DATABASE ERP_Desafio1 ;

-- CRIANDO TABELAS
-- CLIENTES
CREATE TABLE clientes ( 
	cd_cliente SERIAL PRIMARY KEY,  
	nm_cliente VARCHAR(80));
	
-- VENDEDORES
CREATE TABLE vendedor ( 
 	cd_vendedor SERIAL PRIMARY KEY,  
 	nm_vendedor VARCHAR(80)); 
	
-- PRODUTOS
CREATE TABLE produtos ( 
	cd_produto SERIAL PRIMARY KEY,  
	nm_produto VARCHAR(80),  
 	tp_produto VARCHAR(80));

-- ITEM DE VENDAS
CREATE TABLE venda_item( 
 	cd_venda_item SERIAL PRIMARY KEY,  
 	cd_produto INT,  
 	cd_venda INT,  
	qtde_venda FLOAT); 
	
-- VENDAS
CREATE TABLE venda ( 
 	cd_venda SERIAL PRIMARY KEY,  
 	cd_cliente INT,  
 	cd_vendedor INT,  
 	dt_venda DATE); 

-- RELACIOANMENTO 
-- Venda
ALTER TABLE venda ADD FOREIGN KEY(cd_cliente) REFERENCES clientes (cd_cliente)
ALTER TABLE venda ADD FOREIGN KEY(cd_vendedor) REFERENCES vendedor (cd_vendedor)
-- Venda Item
ALTER TABLE venda_item ADD FOREIGN KEY(cd_produto) REFERENCES produtos (cd_produto)
ALTER TABLE venda_item ADD FOREIGN KEY(cd_venda ) REFERENCES venda (cd_venda)

-- INSERINDO CLIENTES
INSERT INTO clientes (cd_cliente, nm_cliente) VALUES
	(1, 'Cliente 1'),
	(2, 'Cliente 2'),
	(3, 'Cliente 3'),
	(4, 'Cliente 4'),
	(5, 'Cliente 5');
						
-- INSERINDO VENDEDORES
INSERT INTO vendedor (cd_vendedor, nm_vendedor) VALUES
	(1, 'Vendedor 1'),
	(2, 'Vendedor 2');
	
-- INSERINDO PRODUTOS
INSERT INTO produtos (cd_produto, nm_produto, tp_produto) VALUES
	(1, 'Produto 1', 'Tipo A'),
	(2, 'Produto 2', 'Tipo B'),
	(3, 'Produto 3', 'Tipo A'),
	(4, 'Produto 4', 'Tipo C'),
	(5, 'Produto 5', 'Tipo B'),
	(6, 'Produto 6', 'Tipo A'),
	(7, 'Produto 7', 'Tipo C'),
	(8, 'Produto 8', 'Tipo A'),
	(9, 'Produto 9', 'Tipo B'),
	(10, 'Produto 10', 'Tipo C');

-- INSERINDO ITEM VENDAS
INSERT INTO venda_item (cd_venda_item, cd_produto, cd_venda, qtde_venda) VALUES
	(1, 1, 1, 5.0),
	(2, 2, 1, 3.0),
	(3, 3, 1, 2.0),
	(4, 4, 2, 4.0),
	(5, 5, 2, 2.5),
	(6, 6, 2, 1.5);
	
-- INSERINDO VENDAS
INSERT INTO venda (cd_venda, cd_cliente, cd_vendedor, dt_venda) VALUES
	(1, 1, 1, '2023-10-17'),
	(2, 2, 1, '2023-10-16'),
	(3, 3, 2, '2023-10-15');

-- SELEÇÃO DE TABELAS
select *
from venda