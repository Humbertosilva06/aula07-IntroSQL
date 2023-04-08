
--  Pratica 2.1:--
--para criar tabela: CREATE TABLE(tudo maisuculo) books(nome da tabela, minusculo) seguido por parenteses(). dentro do parenteses o nome das colunas o tipo do valor, se é unique, se é not null, se é primary key e etc, sempre com uma virgula no fim. No fim da tabela, apo´s os parenteses, SEMPRE POR PONTO E VIRGULA--
-- quando queremos dizer que um campo é obrigatorio colocamos NOT NULL--
-- quando o item não pode se repetir, usamos o UNIQUE--
-- para adicionar a pk, PRIMARY KEY(usamos aqui na id pois é o campo mais importante dessa tabela, assim podemos referencia-la em outra)--

CREATE TABLE books(
    id TEXT NOT NULL UNIQUE PRIMARY KEY,
    name TEXT NOT NULL,
    author TEXT NOT NULL,
    page_count INTEGER,
    price REAL NOT NULL
);

--PRATICA 2.2--
--para deletar a tabela: DROP TABLE nome da tabela --

DROP TABLE books;

-- PRATICA GUIADA 3 POPULAR TABELA --
-- 3.1 para inserir os valores: INSERT INTO nome da tabela (valores que serão populados), na linha de baixo VALUES e na linha de baixo os vlaores entre parenteses seguindo a ordem dos campos das colunas--
-- IMPORTANTE: os campos passados dentro do parenteses tem que seguir a mesma ordem de criação da tabela, os valores (VALUES)que serão populados tbm
                -- capos das colunas na mesma sequencia de criaão da table--
                --OBS: se o valor for null, dve ser informado como NULL--

INSERT INTO books (id, name, author, page_count, price)
VALUES
(8503012928, "O Quinze", "Rachel de Queiroz", 208, 24.95),
(8578887239, "Dom Casmurro", "Machado de Assis", (NULL), 46.90);

-- 3.2 para editar, UPDATE nome da table; embaixo, SET nome da coluna a ser editada = valor; na linha de baixo tem que por o WHERE id = valor ()TEM QUE POR O WHERE, SENÃO ALTERA TODAS AS LINHAS--
-- se eu quiser alterar mais de um campo, set campo a alterar = valor, embaixo coloca outro--

UPDATE books
SET page_count = 463
WHERE id = 8578887239;

--3.3 para deletar um item usa-se o DELETE (o DROP deleta toda a tebla, pra deletar um item tem que usar o DELETE): DELETE FROM nome da tabela; na linha de baixo o WHERE com id para identificar a linha;

DELETE FROM books
WHERE id = 8503012928;

-- Bomus select-- SELECIONA TUDO DA TABELA

SELECT * FROM books;

-- FIXAÇÃO--

--1 criar tabela de tarefas --

CREATE TABLE tarefas(
    id TEXT NOT NULL UNIQUE PRIMARY KEY,
    nome TEXT NOT NULL,
    concluida BOOLEAN
);

-- 2 popule a tabela com pelo menos 3 linhas--

INSERT INTO tarefas (id, nome, concluida)
VALUES
(01, "eSTUDAR pROGRAMAÇÃO", true),
(02, "completar pokeapi", false),
(03, " descansar", NULL);

-- 3 DELETAR A TABELA E RECRIA-LA

DROP TABLE tarefas;

--4 EDITAR UMA DAS LINHAS--

UPDATE tarefas
SET
concluida = true,
nome = "sEI LA O QUE POR"
WHERE id = 03;

-- 5 DELETE UMA DAS LINHAS

DELETE FROM tarefas
WHERE id = 02;

