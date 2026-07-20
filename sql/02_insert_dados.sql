
-- INSERT INTO AUTOR

INSERT INTO autor(nome,nacionalidade)
values           ('Machado de Assis','Brasileira'),
('Clarice Lispector','Brasileira'),
('George Orwell','Britânica');

-- INSERT INTO LIVRO

INSERT INTO livro(titulo,ano_publicacao,isbn)
values           ('Dom Casmurro',1899,'978000000001'),
                 ('A Hora da Estrela',1977,'978000000002'),
                 ('1984',1949,'978000000003'),
                 ('A Revolução dos Bichos',1945,'978000000004');
-- INSERT INTO LIVRO_AUTOR
INSERT INTO livro_autor(id_livro,id_autor)
VALUES                 (   1,      1),
                       (   2,      2),
                       (   3,      3),
                       (   4,      3);

-- INSERT INTO EMPRESTIMOS

INSERT INTO emprestimo(id_livro,   nome_leitor,     data_emprestimo,    data_devolucao)
values                (   1,      'João Silva',      '2026-07-01',      '2026-07-15'),
                      (   3,      'Maria Oliveira',  '2026-07-03',      '2026-07-17'),
                      (   2,      'Carlos Souza',    '2026-07-05',      '2026-07-19');
