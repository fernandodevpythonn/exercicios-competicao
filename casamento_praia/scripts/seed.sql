-- seed casamento praia 


  INSERT INTO usuario (idusuario,nome,email,senha,perfil)
  VALUES (1, 'maria','adminmaria@gmail.com', '$2b$12$BpQaW/K2186gUBcqdtZOOeFByGVaKEM2mw8k0RHrjMQaoe8kB0w7O','administrador'),
  (2, 'joao','cerimonialjoao@gmail.com', '$2b$12$ln0PrwGokM5yxy4mGTEz2exmThFktEOytvS7/p.rmcLALhwx4/cNG','cerimonialista');
  
    INSERT INTO evento (idevento,nome,cidade,bairro,rua,numero,data_time)
    VALUES (1,'casamento na praia','porto alegre','agronomia','marcioholver', 102, '20/03/2026 20:30:00');
    
    INSERT INTO convidado (idconvidado,nome,email,cpf,evento_idevento)
    VALUES
    (
        1,
        'Lívia Vieira',
        'isabelrios@example.org',
        95681043215,
        1
        ),
(
        2,
        'Rodrigo Silveira',
        'eloahpinto@example.org',
        58176204994,
        1
        ),
(
        3,
        'Théo Duarte',
        'eloa54@example.com',
        92461075352,
        1
        ),
(
        4,
        'Gustavo Henrique Mendonça',
        'beatrizvargas@example.org',
        64327985074,
        1
        ),
(
        5,
        'Sr. Luan Fogaça',
        'mcasa-grande@example.net',
        62157089330,
        1
        ),
(
        6,
        'Isabelly Cavalcante',
        'joao-vitorcamargo@example.org',
        73408921504,
        1
        ),
(
        7,
        'Srta. Emanuelly Pacheco',
        'dda-costa@example.net',
        84602531717,
        1
        ),
(
        8,
        'Dr. Valentim Fogaça',
        'stephany79@example.net',
        73508492656,
        1
        ),
(
        9,
        'Sr. Rhavi Lopes',
        'monteiromaya@example.net',
        73125489032,
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
        1,
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
        2,
        'confirmado'
        ),
(
        4,
        4,                 
        2,
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
        1,
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
        1,
        'confirmado'
        );

INSERT INTO log (idlog,usuario_idusuario,datetime)
VALUES
(
        1,
        2,
        '2015-03-09 23:13:23'                 
        ),
(
        2,
        2,
        '1980-04-29 01:30:48'                 
        ),
(
        3,
        1,
        '2016-10-25 08:03:28'                 
        ),
(
        4,
        2,
        '1983-01-05 07:02:19'                 
        ),
(
        5,
        2,
        '1974-04-12 04:06:40'                 
        ),
(
        6,
        1,
        '2005-01-11 23:48:35'                 
        ),
(
        7,
        2,
        '2004-06-24 09:00:47'                 
        ),
(
        8,
        2,
        '1996-07-28 11:31:03'                 
        ),
(
        9,
        2,
        '1981-09-16 07:11:26'                 
        );
