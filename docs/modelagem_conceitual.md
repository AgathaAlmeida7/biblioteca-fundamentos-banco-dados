# Modelagem Conceitual (DER)

## 1. Objetivo
Este documento apresenta a modelagem conceitual do sistema de biblioteca, com base no levantamento de requisitos.

---

## 2. Entidades

### Livro
- id_livro
- titulo
- isbn
- ano_publicacao
- editora
- quantidade_exemplares

### Autor
- id_autor
- nome
- nacionalidade
- data_nascimento

### Empréstimo
- id_emprestimo
- data_emprestimo
- data_prevista_devolucao
- data_devolucao
- status

---

## 3. Relacionamentos

### Autor ↔ Livro
Um autor pode escrever vários livros e um livro pode ter vários autores.

Cardinalidade: N:N

---

### Livro ↔ Empréstimo
Um livro pode participar de vários empréstimos ao longo do tempo, mas cada empréstimo refere-se a um único livro.

Cardinalidade: 1:N

---

## 4. Diagrama Entidade-Relacionamento (DER)

![DER do sistema de biblioteca](./assets/modelagem-conceitual.png)

---

## 5. Conclusão
A modelagem conceitual define a estrutura base do sistema, servindo como guia para o modelo lógico e físico.