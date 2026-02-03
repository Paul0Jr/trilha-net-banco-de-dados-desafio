-- Criar banco de dados
CREATE DATABASE filmes;

-- Conectar ao banco de dados (executar manualmente no cliente)
-- \c filmes

-- Criar sequências para auto-increment
CREATE SEQUENCE atores_id_seq START 1;
CREATE SEQUENCE elenco_filme_id_seq START 1;
CREATE SEQUENCE filmes_id_seq START 1;
CREATE SEQUENCE filmes_genero_id_seq START 1;
CREATE SEQUENCE generos_id_seq START 1;

-- Criar tabela Atores
CREATE TABLE atores (
    id INT DEFAULT nextval('atores_id_seq') PRIMARY KEY,
    primeiro_nome VARCHAR(20),
    ultimo_nome VARCHAR(20),
    genero VARCHAR(1)
);

-- Criar tabela Filmes
CREATE TABLE filmes (
    id INT DEFAULT nextval('filmes_id_seq') PRIMARY KEY,
    nome VARCHAR(50),
    ano INT,
    duracao INT
);

-- Criar tabela Generos
CREATE TABLE generos (
    id INT DEFAULT nextval('generos_id_seq') PRIMARY KEY,
    genero VARCHAR(20)
);

-- Criar tabela ElencoFilme
CREATE TABLE elenco_filme (
    id INT DEFAULT nextval('elenco_filme_id_seq') PRIMARY KEY,
    id_ator INT NOT NULL,
    id_filme INT,
    papel VARCHAR(30),
    CONSTRAINT fk_elenco_filme_ator FOREIGN KEY (id_ator) REFERENCES atores(id)
);

-- Criar tabela FilmesGenero
CREATE TABLE filmes_genero (
    id INT DEFAULT nextval('filmes_genero_id_seq') PRIMARY KEY,
    id_genero INT,
    id_filme INT,
    CONSTRAINT fk_filmes_genero_genero FOREIGN KEY (id_genero) REFERENCES generos(id),
    CONSTRAINT fk_filmes_genero_filme FOREIGN KEY (id_filme) REFERENCES filmes(id)
);

-- Inserir dados na tabela Atores
INSERT INTO atores (id, primeiro_nome, ultimo_nome, genero) VALUES (1, 'James', 'Stewart', 'M');
INSERT INTO atores (id, primeiro_nome, ultimo_nome, genero) VALUES (2, 'Deborah', 'Kerr', 'F');
INSERT INTO atores (id, primeiro_nome, ultimo_nome, genero) VALUES (3, 'Peter', 'OToole', 'M');
INSERT INTO atores (id, primeiro_nome, ultimo_nome, genero) VALUES (4, 'Robert', 'DeNiro', 'M');
INSERT INTO atores (id, primeiro_nome, ultimo_nome, genero) VALUES (6, 'Harrison', 'Ford', 'M');
INSERT INTO atores (id, primeiro_nome, ultimo_nome, genero) VALUES (7, 'Stephen', 'Baldwin', 'M');
INSERT INTO atores (id, primeiro_nome, ultimo_nome, genero) VALUES (8, 'Jack', 'Nicholson', 'M');
INSERT INTO atores (id, primeiro_nome, ultimo_nome, genero) VALUES (9, 'Mark', 'Wahlberg', 'M');
INSERT INTO atores (id, primeiro_nome, ultimo_nome, genero) VALUES (10, 'Woody', 'Allen', 'M');
INSERT INTO atores (id, primeiro_nome, ultimo_nome, genero) VALUES (11, 'Claire', 'Danes', 'F');
INSERT INTO atores (id, primeiro_nome, ultimo_nome, genero) VALUES (12, 'Tim', 'Robbins', 'M');
INSERT INTO atores (id, primeiro_nome, ultimo_nome, genero) VALUES (13, 'Kevin', 'Spacey', 'M');
INSERT INTO atores (id, primeiro_nome, ultimo_nome, genero) VALUES (14, 'Kate', 'Winslet', 'F');
INSERT INTO atores (id, primeiro_nome, ultimo_nome, genero) VALUES (15, 'Robin', 'Williams', 'M');
INSERT INTO atores (id, primeiro_nome, ultimo_nome, genero) VALUES (16, 'Jon', 'Voight', 'M');
INSERT INTO atores (id, primeiro_nome, ultimo_nome, genero) VALUES (17, 'Ewan', 'McGregor', 'M');
INSERT INTO atores (id, primeiro_nome, ultimo_nome, genero) VALUES (18, 'Christian', 'Bale', 'M');
INSERT INTO atores (id, primeiro_nome, ultimo_nome, genero) VALUES (19, 'Maggie', 'Gyllenhaal', 'F');
INSERT INTO atores (id, primeiro_nome, ultimo_nome, genero) VALUES (20, 'Dev', 'Patel', 'M');
INSERT INTO atores (id, primeiro_nome, ultimo_nome, genero) VALUES (21, 'Sigourney', 'Weaver', 'F');
INSERT INTO atores (id, primeiro_nome, ultimo_nome, genero) VALUES (22, 'David', 'Aston', 'M');
INSERT INTO atores (id, primeiro_nome, ultimo_nome, genero) VALUES (23, 'Ali', 'Astin', 'F');

-- Inserir dados na tabela Filmes
INSERT INTO filmes (id, nome, ano, duracao) VALUES (1, 'Um Corpo que Cai', 1958, 128);
INSERT INTO filmes (id, nome, ano, duracao) VALUES (2, 'Os Inocentes', 1961, 100);
INSERT INTO filmes (id, nome, ano, duracao) VALUES (3, 'Lawrence da Arábia', 1962, 216);
INSERT INTO filmes (id, nome, ano, duracao) VALUES (4, 'O Franco Atirador', 1978, 183);
INSERT INTO filmes (id, nome, ano, duracao) VALUES (5, 'Amadeus', 1984, 160);
INSERT INTO filmes (id, nome, ano, duracao) VALUES (6, 'Blade Runner', 1982, 117);
INSERT INTO filmes (id, nome, ano, duracao) VALUES (7, 'De Olhos Bem Fechados', 1999, 159);
INSERT INTO filmes (id, nome, ano, duracao) VALUES (8, 'Os Suspeitos', 1995, 106);
INSERT INTO filmes (id, nome, ano, duracao) VALUES (9, 'Chinatown', 1974, 130);
INSERT INTO filmes (id, nome, ano, duracao) VALUES (10, 'Boogie Nights - Prazer Sem Limites', 1997, 155);
INSERT INTO filmes (id, nome, ano, duracao) VALUES (11, 'Noivo Neurótico, Noiva Nervosa', 1977, 93);
INSERT INTO filmes (id, nome, ano, duracao) VALUES (12, 'Princesa Mononoke', 1997, 134);
INSERT INTO filmes (id, nome, ano, duracao) VALUES (13, 'Um Sonho de Liberdade', 1994, 142);
INSERT INTO filmes (id, nome, ano, duracao) VALUES (14, 'Beleza Americana', 1999, 122);
INSERT INTO filmes (id, nome, ano, duracao) VALUES (15, 'Titanic', 1997, 194);
INSERT INTO filmes (id, nome, ano, duracao) VALUES (16, 'Gênio Indomável', 1997, 126);
INSERT INTO filmes (id, nome, ano, duracao) VALUES (17, 'Amargo pesadelo', 1972, 109);
INSERT INTO filmes (id, nome, ano, duracao) VALUES (18, 'Trainspotting - Sem Limites', 1996, 94);
INSERT INTO filmes (id, nome, ano, duracao) VALUES (19, 'O Grande Truque', 2006, 130);
INSERT INTO filmes (id, nome, ano, duracao) VALUES (20, 'Donnie Darko', 2001, 113);
INSERT INTO filmes (id, nome, ano, duracao) VALUES (21, 'Quem Quer Ser um Milionário?', 2008, 120);
INSERT INTO filmes (id, nome, ano, duracao) VALUES (22, 'Aliens, O Resgate', 1986, 137);
INSERT INTO filmes (id, nome, ano, duracao) VALUES (23, 'Uma Vida sem Limites', 2004, 118);
INSERT INTO filmes (id, nome, ano, duracao) VALUES (24, 'Avatar', 2009, 162);
INSERT INTO filmes (id, nome, ano, duracao) VALUES (25, 'Coração Valente', 1995, 178);
INSERT INTO filmes (id, nome, ano, duracao) VALUES (26, 'Os Sete Samurais', 1954, 207);
INSERT INTO filmes (id, nome, ano, duracao) VALUES (27, 'A Viagem de Chihiro', 2001, 125);
INSERT INTO filmes (id, nome, ano, duracao) VALUES (28, 'De Volta para o Futuro', 1985, 116);

-- Inserir dados na tabela Generos
INSERT INTO generos (id, genero) VALUES (1, 'Ação');
INSERT INTO generos (id, genero) VALUES (2, 'Aventura');
INSERT INTO generos (id, genero) VALUES (3, 'Animação');
INSERT INTO generos (id, genero) VALUES (4, 'Biografia');
INSERT INTO generos (id, genero) VALUES (5, 'Comédia');
INSERT INTO generos (id, genero) VALUES (6, 'Crime');
INSERT INTO generos (id, genero) VALUES (7, 'Drama');
INSERT INTO generos (id, genero) VALUES (8, 'Horror');
INSERT INTO generos (id, genero) VALUES (9, 'Musical');
INSERT INTO generos (id, genero) VALUES (10, 'Mistério');
INSERT INTO generos (id, genero) VALUES (11, 'Romance');
INSERT INTO generos (id, genero) VALUES (12, 'Suspense');
INSERT INTO generos (id, genero) VALUES (13, 'Guerra');

-- Inserir dados na tabela ElencoFilme
INSERT INTO elenco_filme (id, id_ator, id_filme, papel) VALUES (1, 1, 1, 'John Scottie Ferguson');
INSERT INTO elenco_filme (id, id_ator, id_filme, papel) VALUES (2, 2, 2, 'Miss Giddens');
INSERT INTO elenco_filme (id, id_ator, id_filme, papel) VALUES (3, 3, 3, 'T.E. Lawrence');
INSERT INTO elenco_filme (id, id_ator, id_filme, papel) VALUES (4, 4, 4, 'Michael');
INSERT INTO elenco_filme (id, id_ator, id_filme, papel) VALUES (5, 6, 6, 'Rick Deckard');
INSERT INTO elenco_filme (id, id_ator, id_filme, papel) VALUES (6, 7, 8, 'McManus');
INSERT INTO elenco_filme (id, id_ator, id_filme, papel) VALUES (7, 9, 10, 'Eddie Adams');
INSERT INTO elenco_filme (id, id_ator, id_filme, papel) VALUES (8, 10, 11, 'Alvy Singer');
INSERT INTO elenco_filme (id, id_ator, id_filme, papel) VALUES (9, 11, 12, 'San');
INSERT INTO elenco_filme (id, id_ator, id_filme, papel) VALUES (10, 12, 13, 'Andy Dufresne');
INSERT INTO elenco_filme (id, id_ator, id_filme, papel) VALUES (11, 13, 14, 'Lester Burnham');
INSERT INTO elenco_filme (id, id_ator, id_filme, papel) VALUES (12, 14, 15, 'Rose DeWitt Bukater');
INSERT INTO elenco_filme (id, id_ator, id_filme, papel) VALUES (13, 15, 16, 'Sean Maguire');
INSERT INTO elenco_filme (id, id_ator, id_filme, papel) VALUES (14, 16, 17, 'Ed');
INSERT INTO elenco_filme (id, id_ator, id_filme, papel) VALUES (15, 17, 18, 'Renton');
INSERT INTO elenco_filme (id, id_ator, id_filme, papel) VALUES (16, 19, 20, 'Elizabeth Darko');
INSERT INTO elenco_filme (id, id_ator, id_filme, papel) VALUES (17, 20, 21, 'Older Jamal');
INSERT INTO elenco_filme (id, id_ator, id_filme, papel) VALUES (18, 21, 22, 'Ripley');
INSERT INTO elenco_filme (id, id_ator, id_filme, papel) VALUES (19, 13, 23, 'Bobby Darin');
INSERT INTO elenco_filme (id, id_ator, id_filme, papel) VALUES (20, 8, 9, 'J.J. Gittes');
INSERT INTO elenco_filme (id, id_ator, id_filme, papel) VALUES (21, 18, 19, 'Alfred Borden');

-- Inserir dados na tabela FilmesGenero
INSERT INTO filmes_genero (id, id_genero, id_filme) VALUES (1, 1, 22);
INSERT INTO filmes_genero (id, id_genero, id_filme) VALUES (2, 2, 17);
INSERT INTO filmes_genero (id, id_genero, id_filme) VALUES (3, 2, 3);
INSERT INTO filmes_genero (id, id_genero, id_filme) VALUES (4, 3, 12);
INSERT INTO filmes_genero (id, id_genero, id_filme) VALUES (5, 5, 11);
INSERT INTO filmes_genero (id, id_genero, id_filme) VALUES (6, 6, 8);
INSERT INTO filmes_genero (id, id_genero, id_filme) VALUES (7, 6, 13);
INSERT INTO filmes_genero (id, id_genero, id_filme) VALUES (8, 7, 26);
INSERT INTO filmes_genero (id, id_genero, id_filme) VALUES (9, 7, 28);
INSERT INTO filmes_genero (id, id_genero, id_filme) VALUES (10, 7, 18);
INSERT INTO filmes_genero (id, id_genero, id_filme) VALUES (11, 7, 21);
INSERT INTO filmes_genero (id, id_genero, id_filme) VALUES (12, 8, 2);
INSERT INTO filmes_genero (id, id_genero, id_filme) VALUES (13, 9, 23);
INSERT INTO filmes_genero (id, id_genero, id_filme) VALUES (14, 10, 7);
INSERT INTO filmes_genero (id, id_genero, id_filme) VALUES (15, 10, 27);
INSERT INTO filmes_genero (id, id_genero, id_filme) VALUES (16, 10, 1);
INSERT INTO filmes_genero (id, id_genero, id_filme) VALUES (17, 11, 14);
INSERT INTO filmes_genero (id, id_genero, id_filme) VALUES (18, 12, 6);
INSERT INTO filmes_genero (id, id_genero, id_filme) VALUES (19, 13, 4);
