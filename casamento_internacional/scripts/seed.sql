-- SEED  casamento tematico


INSERT INTO usuario (idusuario,nome,perfil, cpf, email, senha) VALUES
(1,'Rojer','Administrador', '12345678901', 'admin@casamentotem.com', '$2b$12$XrXLBN7KA.pITRN0.glGo.D/1kY7lsMmu9eMkxbub.iqShKjEroe2'),
(2,'Maria','Cerimonialista', '10987654321', 'recepcao@wedding.com', '$2b$12$5jRFRl63H2FeyV7fs8v9neaJDnuLbZDRnvy63xOrH7MCUlA8y5TEm'),
(3,'ana','noiva', '109845656', 'noiva@casamento.com', '$2b$12$4.2tvjY/kdT9cYspKL8vk.B44F7Mo3BnU5Nlxst1OMnvKQbXu8gSq'),
(4,'vitor','noivo', '109834556', 'noivo@casasadhf.com', '$2b$12$9dMEjmbFxzF6QfdGbcw12eiKCG2bP36tAM/Bnm/EDZoJO/Adw27Xy');

INSERT INTO evento (idevento, nome, date_time, cidade,bairro,rua,numero)
VALUES (1,'casamento tematico','04/22/2026 00:00:00','porto alegre','pinheiro','joao de oliveira',220);

INSERT INTO convidado 
(idconvidado,nome,email,perfil,evento_idevento)
VALUES
(
        1,
        'Matheus Souza',
        'azevedomatheus@example.com',
        'administracao',
        1
    ),
(
        2,
        'Maya Araújo',
        'luiz-felipe43@example.com',
        'administracao',
        1
    ),
(
        3,
        'Gabriela Pinto',
        'ana-livia28@example.org',
        'amigos',
        1
    ),
(
        4,
        'Arthur Gabriel da Luz',
        'ksousa@example.com',
        'familiar',
        1
    ),
(
        5,
        'Emilly Aragão',
        'duarteliam@example.net',
        'administracao',
        1
    ),
(
        6,
        'Lucas Gabriel Camargo',
        'sda-luz@example.net',
        'familiar',
        1
    ),
(
        7,
        'João Guilherme Guerra',
        'hadassacampos@example.org',
        'administracao',
        1
    ),
(
        8,
        'Danilo Martins',
        'ninaaraujo@example.com',
        'amigos',
        1
    ),
(
        9,
        'Maria Flor Azevedo',
        'joao22@example.com',
        'administracao',
        1
    );

INSERT INTO checkin (idcheckin,convidado_idconvidado,status,usuario_idusuario)
VALUES
(
        1,
        1,
        'confirmado',                   
        4
        ),
(
        2,
        2,
        'confirmado',                   
        2
        ),
(
        3,
        3,
        'confirmado',                   
        1
        ),
(
        4,
        4,
        'confirmado',                   
        3
        ),
(
        5,
        5,
        'confirmado',                   
        4
        ),
(
        6,
        6,
        'confirmado',                   
        2
        ),
(
        7,
        7,
        'confirmado',                   
        1
        ),
(
        8,
        8,
        'confirmado',                   
        2
        ),
(
        9,
        9,
        'confirmado',                   
        2
        );

INSERT INTO log (idlogin_log,date_time,usuario_idusuario)
VALUES
(
        1,
        '1984-07-21 04:16:55',              
        1
        ),
(
        2,
        '2011-06-02 08:03:50',              
        1
        ),
(
        3,
        '1974-07-04 20:43:40',              
        1
        ),
(
        4,
        '1995-05-07 04:31:08',              
        1
        ),
(
        5,
        '2026-04-14 18:37:05',              
        1
        ),
(
        6,
        '1995-03-26 10:25:14',              
        1
        ),
(
        7,
        '1977-05-28 16:17:49',              
        1
        ),
(
        8,
        '2016-04-03 15:16:45',              
        1
        ),
(
        9,
        '1999-05-15 12:16:35',              
        1
        );
