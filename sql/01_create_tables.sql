CREATE TABLE autor(
    id_autor INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    nacionalidade TEXT NOT NULL
);

CREATE TABLE livro(
    id_livro INTEGER PRIMARY KEY,
    titulo TEXT NOT NULL,
    ano_publicacao INTEGER NOT NULL,
    isbn TEXT NOT NULL UNIQUE
);

-- Tabela associativa entre Livro e Autor

CREATE TABLE livro_autor(
    id_livro INTEGER,
    id_autor INTEGER,
    PRIMARY KEY(id_livro,id_autor),
    FOREIGN KEY(id_livro)
        REFERENCES livro(id_livro),
    FOREIGN KEY(id_autor)
        REFERENCES autor(id_autor)
);

CREATE TABLE emprestimo(
    id_emprestimo INTEGER PRIMARY KEY,
    id_livro INTEGER NOT NULL,
    nome_leitor TEXT NOT NULL,
    data_emprestimo TEXT NOT NULL,
    data_devolucao TEXT NOT NULL,
    FOREIGN KEY(id_livro)
        REFERENCES livro(id_livro)
);