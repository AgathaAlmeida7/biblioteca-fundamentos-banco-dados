# Modelagem Física

## Objetivo

A modelagem física representa a etapa em que o modelo lógico é implementado em um Sistema Gerenciador de Banco de Dados (SGBD). Nesta fase, as entidades e seus relacionamentos deixam de ser apenas uma representação lógica e passam a existir fisicamente por meio de comandos SQL.

O objetivo desta etapa é criar a estrutura do banco de dados do Sistema de Biblioteca, garantindo que as tabelas, chaves primárias, chaves estrangeiras e demais restrições sejam implementadas de forma consistente, preservando a integridade dos dados.

---

## SGBD escolhido

Para este projeto foi utilizado o **SQLite**.

A escolha do SQLite foi motivada por ser um SGBD relacional leve, gratuito, amplamente utilizado em projetos acadêmicos, protótipos e aplicações de pequeno e médio porte. Além disso, não exige a instalação de um servidor de banco de dados, permitindo que toda a estrutura seja armazenada em um único arquivo (`.db`), o que simplifica o processo de desenvolvimento e aprendizado dos fundamentos de banco de dados.

---

## Estrutura implementada

Nesta etapa serão implementadas as seguintes tabelas:

* **Autor**
* **Livro**
* **Livro_Autor**
* **Emprestimo**

A tabela **Livro_Autor** é responsável por representar o relacionamento muitos-para-muitos (N:N) entre livros e autores.

Já a tabela **Emprestimo** representa o relacionamento um-para-muitos (1:N) entre Livro e Empréstimo.

---

## Recursos utilizados

Durante a implementação física serão utilizados os principais recursos da linguagem SQL, como:

* CREATE TABLE;
* PRIMARY KEY;
* FOREIGN KEY;
* NOT NULL;
* UNIQUE;
* INSERT INTO;
* SELECT.

Esses recursos garantem a criação da estrutura física do banco de dados e permitem validar seu funcionamento por meio de inserções e consultas.

---

## Organização do projeto

Os arquivos desta etapa estão organizados da seguinte forma:

```text
database/
└── biblioteca.db

sql/
├── 01_create_tables.sql
├── 02_insert_dados.sql
└── 03_consultas.sql
```

* **database/**: armazenará o arquivo físico do banco de dados SQLite.
* **sql/**: conterá os scripts responsáveis pela 

## Conclusão

A modelagem física transforma o modelo lógico em uma estrutura real de banco de dados, permitindo que as informações do Sistema de Biblioteca sejam armazenadas, consultadas e manipuladas por meio de comandos SQL. Esta etapa estabelece a base necessária para os testes e para a integração do banco de dados com aplicações desenvolvidas em Python.
