# Biblioteca - Fundamentos de Banco de Dados

## Sobre o projeto

Este projeto consiste na criação de um banco de dados relacional
para gerenciamento de uma biblioteca.

O objetivo foi aplicar os principais fundamentos de banco de dados,
incluindo modelagem relacional, criação de tabelas, definição de
relacionamentos, inserção de dados e consultas SQL.

## Objetivos

- Criar um modelo de banco de dados relacional.
- Aplicar conceitos de chave primária e chave estrangeira.
- Implementar relacionamento muitos-para-muitos.
- Realizar consultas utilizando SQL.
- Praticar filtros, ordenação, agregações e JOINs.

## Tecnologias utilizadas

- SQLite
- SQL
- Git
- GitHub
- VS Code

## Modelo do banco de dados

O banco foi desenvolvido utilizando quatro entidades principais:

- Autor
- Livro
- Livro_Autor
- Empréstimo

Relacionamentos:

Autor possui relacionamento muitos-para-muitos com Livro,
utilizando a tabela intermediária Livro_Autor.

Livro possui relacionamento um-para-muitos com Empréstimo.

## Estrutura das tabelas

### Autor

Responsável por armazenar os dados dos autores.

Campos principais:

- id_autor (PK)
- nome
- nacionalidade


### Livro

Armazena informações dos livros cadastrados.

Campos principais:

- id_livro (PK)
- titulo
- ano_publicacao
- isbn


### Livro_Autor

Tabela associativa responsável pelo relacionamento entre livros e autores.

Campos:

- id_livro (FK)
- id_autor (FK)


### Empréstimo

Registra os empréstimos realizados.

Campos:

- id_emprestimo (PK)
- id_livro (FK)
- nome_leitor
- data_emprestimo
- data_devolucao


## Relacionamentos

Autor ↔ Livro

Tipo:
Muitos para Muitos (N:N)

Implementado através da tabela:

Livro_Autor


Livro → Empréstimo

Tipo:
Um para Muitos (1:N)

## Consultas SQL realizadas

Foram desenvolvidas consultas envolvendo:

### Consultas básicas

- Seleção de registros.
- Consulta de informações específicas.


### WHERE

Filtros utilizando condições.


### ORDER BY

Ordenação de resultados.


### Funções de agregação

Utilização de:

- COUNT()
- MAX()
- MIN()
- AVG()


### JOIN

Consultas relacionando múltiplas tabelas:

- Autor e Livro.
- Livros e Empréstimos.
- Autores relacionados a empréstimos.

## Como executar

Clone o repositório:

git clone <link-do-repositorio>


Entre na pasta:

cd biblioteca-fundamentos-banco-dados


Abra o SQLite:

sqlite3 database/biblioteca.db


Execute a criação das tabelas:

.read sql/01_create_tables.sql


Insira os dados:

.read sql/02_insert_dados.sql


Execute as consultas:

.read sql/03_consultas.sql

## Aprendizados

Durante o desenvolvimento deste projeto foram praticados:

- Modelagem de banco de dados relacional.
- Normalização de dados.
- Criação de tabelas.
- Relacionamentos entre entidades.
- Consultas SQL.
- Análise de informações utilizando agregações e JOINs.

## Autor

Agatha Almeida

Projeto desenvolvido como prática de fundamentos de Banco de Dados.

