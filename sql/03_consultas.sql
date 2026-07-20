-- CONSULTAS BASICAS(entregue)
-- FILTROS(WHERE) (entregue)
-- ORDENACAO (ORDER BY) (em processamento....)
-- FUNCAO DE AGREGACAO-- (COUNT,MAX,MIN,AVG)
-- JOIN _-> UNIR TABELAS RELACIONADAS

-- CONSULTAS BASICAS
-- COMO EU OBTENHO OS DADOS
-- DQL -> CONSULTAR AS INFORMAÇÕES


-- COMO O BANCO DE DADOS RESPONDE PERGUNTAS ATRAVES DE CONSULTAS SQL

-- =================================================
--                CONSULTAS BASICAS
-- =================================================


-- 1. CONSULTAR TODOS OS AUTORES
SELECT * 
FROM autor;
-- 2. CONSULTAR TODOS OS LIVROS
SELECT * 
FROM livro;
-- 3. CONSULTAR TODOS OS EMPRESTIMOS
SELECT * 
FROM emprestimo;
-- 4. CONSULTAR APENAS NOMES DOS AUTORES
SELECT nome 
FROM autor;
-- 5. CONSULTAR TITULOS DOS LIVROS 
SELECT titulo,ano_publicacao 
FROM livro;
-- 6. CONSULTAR INFORMAÇÕES ESPECIFICAS DOS LIVROS
SELECT nome_leitor
FROM emprestimo;

-- ===========================================
--              FILTRO(WHERE)
-- ===========================================

-- 1) QUAIS AUTORES SAO BRASILEIROS?
select *
from autor where nacionalidade = 'Brasileira';

-- 2) QUAIS AUTORES NAO SAO BRASILEIROS?
select * 
from autor where nacionalidade <> 'Brasileira';

-- 3) QUAIS LIVROS FORAM PUBLICADOS DEPOIS DE 1950?
select titulo, ano_publicacao
from livro
where ano_publicacao > 1950 ;

-- 4) QUAIS LIVROS FORAM PUBLICADOS ANTES DE 1950?
select titulo , ano_publicacao
from livro
where ano_publicacao <1950;
-- 5) QUAL LIVRO POSSUI DETERMINADO ISBN?
select titulo,isbn
from livro where isbn = '978000000003';

-- 6) QUEM É O LEITOR CHAMADO JOAO SILVA?
select *
from emprestimo where nome_leitor= 'João Silva' ;

-- 7) QUAIS EMPRESTIMOS POSSUEM DATA DE DEVOLUCAO IGUAL  A UMA DETERMINADA DATA?
select id_livro,data_devolucao
from emprestimo 
where data_devolucao ='2026-07-17' ;

-- 8) QUAIS EMPRESTIMOS PERTENCEM AO  LIVRO  DE ID 3?
-- fitrando por uma chave estrangeira, que representa o relacionamento entre tabelas
select id_emprestimo
from emprestimo
where id_livro = 3;

-- 9) MOSTRAR SOMENTE O LIVRO CUJO TITULO É 1984
select id_livro,titulo
from livro where titulo = '1984';

-- 10) MOSTRAR SOMENTE OS EMPRESTIMOS REALIZADOS EM DETERMINADA DATA
select *
from emprestimo
where data_emprestimo = '2026-07-03';

-- ==========================================
--                ORDER BY
-- ==========================================
-- clausula considerada continuacao do sql
-- order by nao filtra nada, apenas muda a ordem em que os registros sao exibidos.
-- order by-> ordernar por SERVE PARA DEFIINIR COMO O RESULTADO DA CONSULTA SERA ORGANIZADO vai ficar organizado da forma que eu vima escolher.
-- FROM + WHERE + ORDER BY =  RESULTADO
-- ORDEM CRESCENTE ASC, DECRESCENTE DESC. asc é opcional, pq de forma automatica o sistema ja deixa em ordem crescente,caso voce nao bote o desc. o oder by é como voce quer que seja mostrado a ordem
-- IREI ORGANIZAR OS RESULTADOS.

-- 1)  OS AUTORES EM ORDEM ALFABETICA
select nome
from autor order by nome asc;

-- 2)  OS LIVROS EM ORDEM ALFABETICA
select titulo 
from livro order by titulo asc;
-- 3)  OS LIVROS DO MAIS ANTIGO PARA O MAIS RECENTE
select ano_publicacao
from livro order by ano_publicacao asc;

-- 4)  OS LIVROS DO MAIS RECENTE PARA O MAIS ANTIGO
select ano_publicacao
from livro order by ano_publicacao ;
-- 5)  OS EMPRESTIMOS PELA DATA DO EMPRESTIMOS
-- do mais antigo para o menor
select data_emprestimo 
from emprestimo order by data_emprestimo ;
-- desc ira fazer do mais recente ao mais antigo
-- 6)  OS LEITORES EM ORDEM ALFABETICA
select nome_leitor 
from emprestimo order by nome_leitor;

-- 7) AS DEVOLUCOES PELA DATA PREVISTA
select data_devolucao
from emprestimo order by data_devolucao asc;

-- =================================================
--              FUNÇÕES DE AGREGAÇÕES
-- =================================================

-- começo de saida de consultar dados para extrair informacoes dos dados;-- aqui entra a parte de analise de dados
-- agregacap-> juntar varios valores para produzir um unico resultado.
-- sempre que a pergunta envolver isso aqui ira ser usado funcoes de agregacoes:
-- quantidade;
-- maior valor;
-- menor valor;
-- media;
-- soma;

-- 1) QUANTOS AUTORES EXISTEM?
select count(*)
from autor;
-- 2) QUANTOS LIVROS EXISTEM?
-- pq como cada livro esta relacionado tambem a outras colunas, entao eu posso botar no count o simbolo de 'tudo' 
select count(*)
from livro;
-- 3) QUAL É O LIVRO MAIS ANTIGO?
-- para ver qual é o livro mais antigo vai para data de publicaao, e quantos menor for o ano mais antigo  o livro é 
select min(ano_publicacao)
from livro;
-- 4) QUAL É O LIVRO MAIS RECENTE?
-- aqui é o oposto a data de ano maior é o ano mais recente daquele livro
select max(ano_publicacao)
from livro;
-- 5) QUAL É A MEDIA DO ANO DE PUBLICACAO?
select avg(ano_publicacao)
from livro;
-- 6) QUANTOS RELACIONAMENTOS LIVRO-AUTOR EXISTEM?
select count(*)
from livro_autor;
-- 7) QUANTOS EMPRESTIMOS EXISTEM?
select count(*)
from emprestimo;
-- 8) QUAL FOI A PRIMEIRA DATA DE EMPRESTIMOS?
select min(data_emprestimo)
from emprestimo;
-- 9) QUAL FOI A ULTIMA DATA DE EMPRESTIMO?
select max(data_emprestimo)
from emprestimo;

-- =================================================
--                JOIN
-- =================================================
-- possibilita responder perguntas que envolvem duas ou mais tabelas ao mesmo tempo
-- no sql, juntar tabelas relacionadas atraves das chaves(pk e fk)
-- cada informacao fica na sua tabela, o joi reuno tudo quando se é necessario
-- 1) QUAL AUTOR ESCREVEU CADA LIVRO?
select autor.nome, livro.titulo
from autor
join livro_autor
on autor.id_autor=livro_autor.id_autor
join livro
on livro_autor.id_livro=livro.id_livro;

-- 2) QUAIS LIVROS FORAM ESCRITOS POR MACHADO DE ASSIS?
-- livro,e livro autor
SELECT livro.titulo
FROM autor
JOIN livro_autor
ON autor.id_autor = livro_autor.id_autor
JOIN livro
ON livro_autor.id_livro = livro.id_livro
WHERE autor.nome = 'Machado de Assis';

-- 3) QUAIS AUTORES POSSUEM LIVROS CADASTRADOS?
select autor.nome
from autor
join livro_autor
on autor.id_autor =  livro_autor.id_autor;

-- 4) QUEM PEGOU EMPRESTADO QUAL LIVRO?
select emprestimo.nome_leitor,livro.titulo
from emprestimo
join livro
on emprestimo.id_livro=livro.id_livro;

-- 5) QUAL FOI A DATA DO EMPRESTIMO DE CADA LIVRO?
select emprestimo.data_emprestimo,livro.titulo
from emprestimo
join livro
on emprestimo.id_livro=livro.id_livro;

-- 6) QUAL AUTOR ESTA RELACIONADO A UM EMPRESTIMO?
select  autor.nome, 
        livro.titulo,
        emprestimo.nome_leitor
from autor
join livro_autor
on autor.id_autor=livro_autor.id_autor
join livro
on livro_autor.id_livro=livro.id_livro
join emprestimo
on livro.id_livro=emprestimo.id_livro;

