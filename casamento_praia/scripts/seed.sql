-- seed casamento praia 


  INSERT INTO usuario (idusuario,nome,email,senha,perfil)VALUES
  (1, 'maria','adminmaria@gmail.com', '$2b$12$CfapOI8I4pSCCeDGd9lE7OyabiryQQgydZ0lz2hdqQlzZ83iFykPe','administrador'),
  (2, 'joao','cerimonialjoao@gmail.com', '$2b$12$dO5vXkmqx44q4T4iajTImuqCJVCNzo2hnjB0S1UXDhv4reSi8UMsy','cerimonialista');
  
    INSERT INTO evento (idevento,nome,cidade,bairro,rua,numero,data_time)
    VALUES (1,'casamento na praia','porto alegre','agronomia','marcioholver', 102, '20/03/2026 20:30:00');
    
    INSERT INTO convidado (idconvidado,nome,email,cpf,evento_idevento)
    VALUES
    (
        1,
        'Matheus Guerra',
        'davi-lucas76@example.net',
        06924831524,
        1
        ),
(
        2,
        'Agatha Dias',
        'kamilly96@example.org',
        29617058430,
        1
        ),
(
        3,
        'Melina Abreu',
        'luana40@example.com',
        47295180397,
        1
        ),
(
        4,
        'Leonardo Camargo',
        'mirellaalves@example.org',
        97403851250,
        1
        ),
(
        5,
        'Ágatha Alves',
        'cecilia83@example.net',
        67205493161,
        1
        ),
(
        6,
        'Maria Cecília Rodrigues',
        'lnogueira@example.org',
        21647593891,
        1
        ),
(
        7,
        'Apollo Lima',
        'davialbuquerque@example.org',
        12703684517,
        1
        ),
(
        8,
        'Francisco Santos',
        'da-luzcalebe@example.com',
        78412306996,
        1
        ),
(
        9,
        'Leonardo Almeida',
        'elisa36@example.net',
        14809327604,
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
        1,
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
        1,
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
        1,
        'confirmado'
        ),
(
        8,
        8,                 
        2,
        'confirmado'
        ),
(
        9,
        9,                 
        1,
        'confirmado'
        );

INSERT INTO log (idlog,usuario_idusuario,datetime)
VALUES
(
        1,
        2,
        '1989-12-07 20:35:34'                 
        ),
(
        2,
        1,
        '1997-11-13 15:42:30'                 
        ),
(
        3,
        2,
        '1970-01-22 13:04:33'                 
        ),
(
        4,
        2,
        '2007-06-07 14:39:25'                 
        ),
(
        5,
        1,
        '2006-10-12 21:38:18'                 
        ),
(
        6,
        1,
        '1977-12-12 20:37:55'                 
        ),
(
        7,
        2,
        '1984-01-31 23:47:09'                 
        ),
(
        8,
        2,
        '2000-11-07 19:51:33'                 
        ),
(
        9,
        1,
        '2020-08-30 02:24:19'                 
        );
