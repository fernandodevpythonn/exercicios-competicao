-- seed casamento praia 


  INSERT INTO usuario (idusuario,nome,email,senha,perfil, cpf)VALUES
  (1, 'maria','adminmaria@gmail.com', '$2b$12$PmdLvT59CjoqGiKj1nsLOOaQRidEVLKP1ZwgBaKha0aE6oDrxEtSC','administrador',35648712090),
  (2, 'joao','cerimonialjoao@gmail.com', '$2b$12$b2YEaYHUrjTMssJ8d5TCtu7LZ/1kiYn8LknFoo/.kcesXQEl0ANzy','cerimonialista',12093764822);
  
    INSERT INTO evento (idevento,nome,cidade,bairro,rua,numero,data_time)
    VALUES (1,'casamento na praia','porto alegre','agronomia','marcioholver', 102, '20/03/2026 20:30:00');
    
    INSERT INTO convidado (idconvidado,nome,email,cpf,evento_idevento)
    VALUES
    (
        1,
        'Ana Sophia Vargas',
        'mourathales@example.net',
        85714926382,
        1
        ),
(
        2,
        'Dr. Thales Costa',
        'joao-lucas51@example.org',
        28974150611,
        1
        ),
(
        3,
        'Vicente Azevedo',
        'maria-florlima@example.com',
        04157362934,
        1
        ),
(
        4,
        'Luiz Fernando Barbosa',
        'pmoraes@example.org',
        74398510648,
        1
        ),
(
        5,
        'Valentim Viana',
        'wsa@example.com',
        76510943280,
        1
        ),
(
        6,
        'Cecilia Albuquerque',
        'xleao@example.com',
        85046379139,
        1
        ),
(
        7,
        'Sra. Lara da Mota',
        'igorborges@example.net',
        50839127405,
        1
        ),
(
        8,
        'Evelyn da Cunha',
        'emillycavalcante@example.org',
        09365178401,
        1
        ),
(
        9,
        'Sr. Gustavo Macedo',
        'enrico17@example.org',
        38759240610,
        1
        );

    INSERT INTO area (idarea,evento_idevento,area)
    VALUES (1,1,'cerimonia'),
    (2,1,'buffet'),
    (3,1,'area de danca');
    
    INSERT INTO checkin (idcheckin,convidado_idconvidado, usuario_idusuario, status)
    VALUES
    (
        1,
        1,                 
        2,
        'confirmado'
        ),
(
        2,
        2,                 
        2,
        'confirmado'
        ),
(
        3,
        3,                 
        1,
        'confirmado'
        ),
(
        4,
        4,                 
        1,
        'confirmado'
        ),
(
        5,
        5,                 
        2,
        'confirmado'
        ),
(
        6,
        6,                 
        2,
        'confirmado'
        ),
(
        7,
        7,                 
        2,
        'confirmado'
        ),
(
        8,
        8,                 
        1,
        'confirmado'
        ),
(
        9,
        9,                 
        2,
        'confirmado'
        );

INSERT INTO log (idlog,usuario_idusuario,datetime)
VALUES
(
        1,
        1,
        '2004-09-24 20:25:33'                 
        ),
(
        2,
        1,
        '2009-03-07 06:18:48'                 
        ),
(
        3,
        2,
        '2019-03-14 09:23:10'                 
        ),
(
        4,
        1,
        '2026-02-01 10:02:22'                 
        ),
(
        5,
        2,
        '2013-12-12 22:00:12'                 
        ),
(
        6,
        1,
        '2016-12-16 16:42:26'                 
        ),
(
        7,
        1,
        '1982-02-27 17:49:09'                 
        ),
(
        8,
        1,
        '1973-03-24 07:58:27'                 
        ),
(
        9,
        1,
        '1982-02-20 13:26:48'                 
        );
