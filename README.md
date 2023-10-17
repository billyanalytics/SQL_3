[![Autor](https://img.shields.io/badge/Autor-AlanBilly-blue.svg)](https://www.linkedin.com/in/alanbillyteixeirareis)
[![Professor](https://img.shields.io/badge/Professor-AlexSouza-red.svg)](https://github.com/aasouzaconsult) 
![Assunto](https://img.shields.io/badge/Assunto-modelagem-yellow.svg)
<!-- Imagem redimensionada -->
<img src="https://digitalcollege.com.br/wp-content/webp-express/webp-images/uploads/2022/05/logo-digital.png.webp" alt="texto alt" width="300">

<!-- Imagem redimensionada -->
<img src="https://flowti.com.br/storage/blog/1318532023022463f8b93d47e36.png" alt="texto alt" width="600">

# Desafio ERP (inicial) 
Cliente tem a necessidade de criar um banco de dados para armazenar os cadastros de `Clientes`, `Vendedores`, `Produtos`, `Itens de Vendas` e as `Vendas` realizadas em seu estabelecimento.

## Status
![Badge em Desenvolvimento](https://img.shields.io/static/v1?label=STATUS&message=FINALIZADO&color=GREEN&style=for-the-badge)

# Iniciando Desafio

## Projeto de Modelagem Lógica, Conceitual com Criação e inserção do Banco de Dados 📚💾

Neste projeto, vamos explorar o processo de criação de um banco de dados relacional para gerenciar informações sobre `Clientes`, `Vendedores`, `Produtos`, `Itens de Vendas` e as `Vendas` . Seguiremos os passos desde a modelagem conceitual até a implementação do banco de dados.

## Sobre
Este projeto visa demonstrar a modelagem lógica e conceitual de um banco de dados fictício. Através deste repositório, você encontrará informações sobre a história dos bancos de dados, suas funcionalidades, pré-requisitos e um exemplo de modelagem de tabela.
Neste projeto, estaremos criando um banco de dados para uma cliente fictícia. O sistema permitirá o gerenciamento de informações sobre Vendas, Vendedores, Clientes, Produtos , Tipos e Produtos, Estoque, e os Itens de Vendas.

## História do Banco de Dados 📜
Os bancos de dados desempenham um papel crucial na organização e recuperação de informações. Sua história remonta aos primórdios da computação, quando sistemas primitivos de armazenamento de dados eram utilizados. Desde então, evoluíram significativamente e desempenham um papel vital em todas as esferas da tecnologia. Nosso projeto se baseia em conceitos modernos de bancos de dados relacionais.

## Modelagem Conceitual 🧩
A modelagem conceitual é a primeira etapa do processo de criação de um banco de dados. Envolve a identificação de entidades, seus atributos e relacionamentos. Nossa modelagem conceitual inclui quatro tabelas: Vendas, Produtos, Vendedores, Cleintes  e Item de vendas.

- **Tabela: Clientes** 🙎
  - Registra as informações dos Clientes, incluindo o nome, e seu código.
    
- **Tabela: Vendedores** 👥
  - Armazena dados os Vendedores, como nome e código do Vendedor.
    
- **Tabela: Produtos** ✍️
  - Contém informações sobre os tipos, com seus nomes.
    
- **Tabela: Item da Venda** 🛒
  - Registra as informações código do produto, código da venda e quantidade de venda.
    
- **Tabela: Vendas** 📚
  - Armazena informações sobre as Vendas, incluindo data, vendedor e nome do cliente.

## Modelagem Lógica 📐
A modelagem lógica envolve a tradução do modelo conceitual em tabelas de banco de dados reais.

## Funcionalidades 💡
- Armazenamento de dados estruturados.
- Recuperação eficiente de informações.
- Manutenção de integridade dos dados.
- Gerenciamento de transações.
- Controle de acesso e segurança dos dados.

## Pré-requisitos 🛠️
Antes de iniciar este projeto, você deve ter:

- Conhecimento básico em bancos de dados relacionais.
- Um sistema de gerenciamento de banco de dados (SGBD) instalado, como MySQL, PostgreSQL ou SQLite.
- Ferramenta para modelagem de banco de dados nesse foi usado o [brmodeloweb](https://app.brmodeloweb.com/#!/)


## 🏁 Começando 🚀

##  Modelagem de Dados
Modelagem de dados é o processo de criar uma representação visual, ou esquema, que define os sistemas de coleta e gerenciamento de informações de qualquer organização.

# Conceitual
É a análise dos elementos e fenômenos relevantes de uma realidade observada ou imaginada e a posterior formação de um modelo abstrato do corpo de conhecimento adquirido: o Modelo Entidade-Relacionamento ou MER

![](https://github.com/billyanalytics/ERP-Desafio1/blob/main/Imagem/Modelagem%20conceitual.png?raw=true)

# Logica
Descreve como os dados serão armazenados no banco e também seus relacionamentos. Esse modelo adota alguma tecnologia, pode ser: relacional, orientado a objetos, orientado a colunas, entre outros. Os modelos lógicos basicamente determinam se todos os requisitos do negócio foram reunidos.

![](https://github.com/billyanalytics/ERP-Desafio1/blob/main/Imagem/Modelagem%20logica.png?raw=true)

# Fisico
Todas as informações coletadas são convertidas em modelos relacionais e modelos de negócios. Durante a modelagem física, os objetos são definidos em um nível denominado nível de esquema. Um esquema é considerado um grupo de objetos que estão relacionados entre si em um banco de dados.

- Criando Banco de Dados :computer:

```sql
CREATE DATABASE Erp_Desafio1 ;
```

- Criando as tabelas do banco de dados :pencil:

  - Clientes
    ```sql
    CREATE TABLE clientes ( 
	    cd_cliente INT PRIMARY KEY,  
	    nm_cliente VARCHAR(80)); 
    ```
  - Vendedores
    ```sql
     CREATE TABLE vendedor ( 
 	    cd_vendedor INT PRIMARY KEY,  
 	    nm_vendedor VARCHAR(80));
    ```
  - Produtos
    ```sql
    CREATE TABLE produtos ( 
	    cd_produto INT PRIMARY KEY,  
	    nm_produto VARCHAR(80),  
 	    tp_produto VARCHAR(80));
    ```
  - Item de Venda
    ```sql
    CREATE TABLE venda_item ( 
 	    cd_venda_item INT PRIMARY KEY,  
 	    cd_produto INT,  
 	    cd_venda INT,  
	    qtde_venda FLOAT);
    ```
  - Vendas
    ```sql
    CREATE TABLE venda ( 
 	    cd_venda INT PRIMARY KEY,  
 	    cd_cliente INT,  
 	    cd_vendedor INT,  
 	    dt_venda DATE); 
    ```
   
- Relacionamentos (`Foreign Keys`)
     
  - Vendas
    ```sql
    ALTER TABLE venda ADD FOREIGN KEY(cd_cliente) REFERENCES clientes (cd_cliente)
    ALTER TABLE venda ADD FOREIGN KEY(cd_vendedor) REFERENCES vendedor (cd_vendedor)
    ```
    
  - Item de Venda
    ```sql
    ALTER TABLE venda_item ADD FOREIGN KEY(cd_produto) REFERENCES produtos (cd_produto)
    ALTER TABLE venda_item ADD FOREIGN KEY(cd_venda ) REFERENCES venda (cd_venda)
    ```
     
- Alimentado o Banco de dados :cyclone:
  - INSERINDO CLIENTES
    ```sql
    INSERT INTO clientes (cd_cliente, nm_cliente) VALUES
	  (1, 'Cliente 1'),
	  (2, 'Cliente 2'),
	  (3, 'Cliente 3'),
	  (4, 'Cliente 4'),
	  (5, 'Cliente 5');
    ```
  - INSERINDO VENDEDORES
    ```sql
    INSERT INTO vendedor (cd_vendedor, nm_vendedor) VALUES
	  (1, 'Vendedor 1'),
	  (2, 'Vendedor 2');
    ```

  - INSERINDO PRODUTOS
    ```sql
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
    ```
    - INSERINDO VENDA
    ```sql
    INSERT INTO venda (cd_venda, cd_cliente, cd_vendedor, dt_venda) VALUES
	  (1, 1, 1, '2023-10-17'),
	  (2, 2, 1, '2023-10-16'),
	  (3, 3, 2, '2023-10-15');
    ```
    - INSERINDO ITEM VENDAS
    ```sql
    INSERT INTO venda_item (cd_venda_item, cd_produto, cd_venda, qtde_venda) VALUES
	  (1, 1, 1, 5.0),
	  (2, 2, 1, 3.0),
	  (3, 3, 1, 2.0),
	  (4, 4, 2, 4.0),
	  (5, 5, 2, 2.5),
	  (6, 6, 2, 1.5);
    ```
 - Consultando o banco de dados :skull_and_crossbones:
  - Clientes
     ```sql
     SELECT * FROM clientes ;
     ```
     ![](https://github.com/billyanalytics/ERP-Desafio1/blob/main/Imagem/Clientes.png?raw=true)

  - Vendedor
     ```sql
     SELECT * FROM vendedor  ;
     ```
     ![](https://github.com/billyanalytics/ERP-Desafio1/blob/main/Imagem/Vendedor.png?raw=true)

  - Produtos
     ```sql
     SELECT * FROM produtos  ;
     ```
    ![](https://github.com/billyanalytics/ERP-Desafio1/blob/main/Imagem/Produtos.png?raw=true)

  - Item De Venda
     ```sql
     SELECT * FROM venda_item ;
     ```
     ![](https://github.com/billyanalytics/ERP-Desafio1/blob/main/Imagem/Venda_item.png?raw=true)

  - Venda
     ```sql
     SELECT * FROM venda  ;
     ```
     ![](https://github.com/billyanalytics/ERP-Desafio1/blob/main/Imagem/Venda.png?raw=true)

* Segue o [dicionário](https://github.com/billyanalytics/ERP-Desafio1/blob/main/Documenta%C3%A7%C3%A3o/ERP%201.pdf) de dados do banco.

## 🎁 Expressões de gratidão

* Compartilhe com outras pessoas esse projeto 📢;
* Quer saber mais sobre o projeto? Entre em contato para tomarmos um :coffee:;

