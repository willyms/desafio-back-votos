DROP TABLE IF EXISTS tb_votesession;
DROP TABLE IF EXISTS tb_associate;
DROP TABLE IF EXISTS tb_voting;

CREATE TABLE tb_associate(
   id serial PRIMARY KEY,
   name VARCHAR (100),
   cpf VARCHAR (11) UNIQUE NOT NULL
);

INSERT INTO tb_associate (name, cpf)
    VALUES ('Emanuel Hugo Augusto Aragão', '96722007146'), ('Pedro Gabriel Fernando Barros', '82955016900'),
           ('Joaquim Márcio Fábio Rodrigues', '97638987730'), ('Stefany Agatha Kamilly Santos', '91864586397'),
           ('Alessandra Raquel Isis de Paula', '09257975452'), ('Analu Liz Stella dos Santos', '19887089745'),
           ('Vitor César Raul Novaes', '05340638103'), ('Manuel Luís Tomás Rodrigues', '98096435949');

CREATE TABLE tb_votesession(
   id serial PRIMARY KEY,
   description VARCHAR (500),
   enabled BOOLEAN DEFAULT TRUE,
   start_date_time TIMESTAMP,
   end_date_time TIMESTAMP DEFAULT NULL
);

INSERT INTO tb_votesession(description, enabled, start_date_time, end_date_time)
    VALUES ('Instalação dos quebra-molas nas vias públicas', FALSE, '2022-02-10 07:00:00', '2022-02-15 20:00:00'),
           ('Proibição som automotivo nas areas de parque infantil', FALSE, '2022-06-02 07:00:00', '2022-06-02 19:00:00'),
           ('Permitir campanha/publicidade politica na area pública', TRUE, '2022-09-02 12:00:00', '2022-09-10 12:00:00'),

CREATE TABLE tb_voting(
   id serial PRIMARY KEY,
   vote_session_id INT NOT NULL,
   associate_id INT NOT NULL,
   vote_type VARCHAR(3) NOT NULL
);

INSERT INTO tb_voting(vote_session_id, associate_id, vote_type)
    VALUES (1,1,'NO'), (1,1,'YES'), (1,1,'NO'),
           (2,1,'NO'), (2,1,'YES'), (2,1,'NO'),(2,1,'NO'), (2,1,'YES'), (2,1,'NO'),(2,1,'NO'), (2,1,'YES'), (2,1,'NO');