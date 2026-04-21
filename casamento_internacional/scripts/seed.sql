-- SEED  casamento tematico


INSERT INTO usuario (idusuario,nome,perfil, cpf, email, senha) VALUES
(1,'Rojer','Administrador', '12345678901', 'admin@casamentotem.com', '$2b$12$2bpa4cz8wYChsONALpunxOgfMy4X43Nl31E7hrHhqCsRBFvsOuEmO'),
(2,'Maria','Cerimonialista', '10987654321', 'recepcao@wedding.com', '$2b$12$pda38F/X4a.9.CDR05eRI.p9c3pPYMSwW9bhLNfuDjgncbbPGNA7K'),
(3,'ana','noiva', '109845656', 'noiva@casamento.com', '$2b$12$nAaJaDBjaX.wHKKIsOS/B.9pP0GjZYT43MoKtbjf/4IDETFRzIuAW'),
(4,'vitor','noivo', '109834556', 'noivo@casasadhf.com', '$2b$12$UbaDJ7WX13QFxvAF9rqTg.p9BWz5WgO8zR9ejSGGWGab5zNV5sDHG');

INSERT INTO evento (idevento, nome, date_time, cidade,bairro,rua,numero)
VALUES (1,'casamento tematico','04/22/2026 00:00:00','porto alegre','pinheiro','joao de oliveira',220);

INSERT INTO convidado 
(idconvidado,nome,email,perfil,evento_idevento,status)
VALUES
(
        1,
        'Sr. Vitor Vasconcelos',
        'otavio11@example.com',
        'amigos',
        1,
        'naoconfirmado'
    ),
(
        2,
        'Ana Liz Farias',
        'joao-gabrielalmeida@example.com',
        'amigos',
        1,
        'naoconfirmado'
    ),
(
        3,
        'Matteo Gomes',
        'camargotheo@example.org',
        'amigos',
        1,
        'naoconfirmado'
    ),
(
        4,
        'Esther Sousa',
        'gabriellyribeiro@example.com',
        'familiar',
        1,
        'naoconfirmado'
    ),
(
        5,
        'Maria Julia Silva',
        'sampaiothiago@example.net',
        'familiar',
        1,
        'naoconfirmado'
    ),
(
        6,
        'Kaique Sampaio',
        'lucas97@example.net',
        'familiar',
        1,
        'naoconfirmado'
    ),
(
        7,
        'Natália Costela',
        'tsiqueira@example.org',
        'familiar',
        1,
        'naoconfirmado'
    ),
(
        8,
        'Sr. Joaquim Moreira',
        'orios@example.org',
        'familiar',
        1,
        'naoconfirmado'
    ),
(
        9,
        'Vinicius Sales',
        'wsampaio@example.com',
        'familiar',
        1,
        'naoconfirmado'
    );

INSERT INTO log (idlogin_log,date_time,usuario_idusuario)
VALUES
(
        1,
        '2014-07-06 06:37:58',              
        1
        ),
(
        2,
        '2012-12-22 03:31:25',              
        1
        ),
(
        3,
        '1998-06-07 14:38:30',              
        1
        ),
(
        4,
        '2000-03-15 22:15:17',              
        1
        ),
(
        5,
        '1973-01-11 12:53:30',              
        1
        ),
(
        6,
        '1999-04-16 00:41:40',              
        1
        ),
(
        7,
        '1999-09-19 21:16:53',              
        1
        ),
(
        8,
        '2016-02-05 04:51:27',              
        1
        ),
(
        9,
        '1974-05-11 10:02:49',              
        1
        );
