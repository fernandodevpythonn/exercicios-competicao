-- seed casamento praia 


  INSERT INTO usuario (idusuario,nome,email,senha,perfil)VALUES
  (1, 'maria','adminmaria@gmail.com', '$2b$12$Vv9mnBqBL1wnEC1eFxv2TugT9/6g21ISUfPrd6oC7LyG1hik/qobu','administrador'),
  (2, 'joao','cerimonialjoao@gmail.com', '$2b$12$3MNiMRqQg.4CkBT.Rc4qAeiQlvLUtyyM5izl0B1RWz5ySMWgCW/ZW','cerimonialista');
  
    INSERT INTO evento (idevento,nome,cidade,bairro,rua,numero,data_time)
    VALUES (1,'casamento na praia','porto alegre','agronomia','marcioholver', 102, '20/03/2026 20:30:00');
    
    INSERT INTO convidado (idconvidado,nome,email,cpf,evento_idevento)
    VALUES
    (
        1,
        'Kevin Vieira',
        'laraalves@example.com',
        83926174528,
        1
        ),
(
        2,
        'Maria Alice Borges',
        'saraoliveira@example.net',
        86971054202,
        1
        ),
(
        3,
        'Arthur Gabriel das Neves',
        'maria-isismonteiro@example.net',
        89671402585,
        1
        ),
(
        4,
        'João Gabriel Freitas',
        'guerramaria-luiza@example.net',
        59862301406,
        1
        ),
(
        5,
        'Isabel da Luz',
        'vianajose-pedro@example.org',
        39056487256,
        1
        ),
(
        6,
        'Maria Helena Gomes',
        'fernanda86@example.org',
        28309641796,
        1
        ),
(
        7,
        'Diogo Cassiano',
        'anascimento@example.net',
        35627804947,
        1
        ),
(
        8,
        'Gael Fonseca',
        'fonsecaagatha@example.net',
        35428760974,
        1
        ),
(
        9,
        'Dra. Luana Cavalcanti',
        'bpinto@example.com',
        86253719068,
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
        1,
        'confirmado'
        ),
(
        6,
        6,                 
        1,
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
        '2010-12-10 02:55:43'                 
        ),
(
        2,
        1,
        '1970-07-04 17:54:08'                 
        ),
(
        3,
        2,
        '1981-02-20 21:34:54'                 
        ),
(
        4,
        2,
        '2007-03-11 16:40:09'                 
        ),
(
        5,
        2,
        '1984-07-03 16:29:34'                 
        ),
(
        6,
        1,
        '1989-11-19 19:31:50'                 
        ),
(
        7,
        2,
        '1993-07-07 21:33:44'                 
        ),
(
        8,
        2,
        '1978-07-08 04:37:44'                 
        ),
(
        9,
        1,
        '1972-08-16 20:42:07'                 
        );
