<!-- ========================================= -->
<!-- SISTEMA DE BIBLIOTECA - REQUISITOS       -->
<!-- Projeto: Fundamentos de Banco de Dados   -->
<!-- ========================================= -->

<!-- OBJETIVO DO SISTEMA -->
<!-- O sistema organiza livros, autores e empréstimos -->
<!-- permitindo controle de acervo e registros de retirada -->

# Sistema de Biblioteca — Levantamento de Requisitos

<!-- ========================================= -->
<!-- 1. OBJETIVO                               -->
<!-- ========================================= -->

<!-- Definir a finalidade do sistema antes da modelagem -->

## Objetivo do Sistema
<!-- Sistema responsável pelo gerenciamento de biblioteca -->
<!-- Controle de livros, autores e empréstimos -->

<!-- ========================================= -->
<!-- 2. ESCOPO                                 -->
<!-- ========================================= -->

## Escopo do Sistema
<!-- Define o que o sistema cobre -->

- Cadastro de autores  
- Cadastro de livros  
- Registro de empréstimos  
- Controle de devolução  
- Consulta de acervo  

<!-- ========================================= -->
<!-- 3. REGRAS DE NEGÓCIO                      -->
<!-- ========================================= -->

## Regras de Negócio

<!-- AUTOR -->
### Autores
<!-- Um autor pode ter vários livros (1:N) -->
<!-- Cada autor possui ID único -->

- Um autor pode escrever vários livros  
- Cada autor deve possuir um identificador único  
- Evitar duplicidade de nomes (regra opcional)  

---

<!-- LIVROS -->
### Livros
<!-- Livro pertence a um único autor -->
<!-- ISBN deve ser único -->

- Cada livro pertence a um único autor  
- Livro possui título, ano e ISBN  
- ISBN deve ser único  
- Livro pode estar disponível ou emprestado  

---

<!-- EMPRÉSTIMOS -->
### Empréstimos
<!-- Relaciona livro com retirada -->
<!-- Pode haver histórico de empréstimos -->

- Um livro pode ter vários empréstimos ao longo do tempo  
- Apenas um empréstimo ativo por livro  
- Registra data de empréstimo e devolução  
- Empréstimo só finaliza com devolução  

---

<!-- LEITORES -->
### Leitores
<!-- Não será entidade separada neste nível -->
<!-- Apenas atributo dentro de empréstimo -->

- Nome do leitor será registrado no empréstimo  
- Não haverá tabela de leitores neste módulo  

<!-- ========================================= -->
<!-- 4. RESTRIÇÕES                            -->
<!-- ========================================= -->

## Restrições do Sistema

- Não permitir empréstimo de livro já emprestado  
- Cada empréstimo deve estar vinculado a um livro  
- Controle de exclusão será definido futuramente  

<!-- ========================================= -->
<!-- 5. ENTIDADES IDENTIFICADAS               -->
<!-- ========================================= -->

## Entidades Identificadas

<!-- Essas são as entidades candidatas à modelagem -->

- Autor  
- Livro  
- Empréstimo  

<!-- ========================================= -->
<!-- 6. RELACIONAMENTOS                       -->
<!-- ========================================= -->

## Relacionamentos Iniciais

<!-- Autor 1:N Livro -->
- Autor → Livro (1 para N)  

<!-- Livro 1:N Empréstimo -->
- Livro → Empréstimo (1 para N)  

<!-- ========================================= -->
<!-- 7. OBSERVAÇÕES                           -->
<!-- ========================================= -->

## Observações para Modelagem

- Será necessário definir PKs e FKs  
- Livro terá FK de Autor  
- Empréstimo terá FK de Livro  
- Status de livro será controlado logicamente  

<!-- ========================================= -->
<!-- FIM DO DOCUMENTO                         -->
<!-- ========================================= -->