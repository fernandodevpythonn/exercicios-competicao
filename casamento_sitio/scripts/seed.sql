-- seed casamento sitio 

    INSERT INTO evento (idevento,nome,data_hora,cidade,bairro,rua,numero,cep)
    VALUES (1, 'casamento_sitio', '20/03/2026 20:30:00', 'porto alegre', 'joao pessoa', 'sao martins', 112, 10203948);
    
    INSERT INTO usuario (idusuario,nome,email,senha,evento_idevento,perfil)
    VALUES (1,'Vitor', 'vitoradm@gmail.com', '$2b$12$2jv4ngyACIGi820F2FHu3.a962Mpnv1.3VqsXYDzr794cFad3BmOu',1, 'administrador'),
    (2,'Ana', 'anacerimonia@gmail.com', '$2b$12$5D0iSt84KN.tE0qqJF2iTuOPjxkOYfnxhx5P7rbXKR8LEymgbgg.C',1, 'cerimonialista');
    
    INSERT INTO convidado (idconvidado,nome,cpf,evento_idevento,email)
    VALUES
    (
        1,
        'Antony da Luz',
        12486093796,
        1,
        'otavio11@example.com'                       
        ),
(
        2,
        'Maria Helena Sousa',
        73520648938,
        1,
        'agathanovais@example.org'                       
        ),
(
        3,
        'Paulo Martins',
        93571260406,
        1,
        'bella02@example.org'                       
        ),
(
        4,
        'Valentina Melo',
        70195683277,
        1,
        'mendoncadavi-luiz@example.net'                       
        ),
(
        5,
        'Mateus Araújo',
        40731982541,
        1,
        'tcaldeira@example.org'                       
        ),
(
        6,
        'Isaac Vasconcelos',
        96175204867,
        1,
        'pedro-miguelpires@example.net'                       
        ),
(
        7,
        'Dr. Davi Miguel Araújo',
        63078549283,
        1,
        'pastorbreno@example.org'                       
        ),
(
        8,
        'Danilo Gomes',
        28375041653,
        1,
        'alvessophia@example.org'                       
        ),
(
        9,
        'Srta. Allana Freitas',
        02941835741,
        1,
        'leandrocastro@example.com'                       
        );

    INSERT INTO checkin (idcheckin,convidado_idconvidado,usuario_idusuario,status)
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
        2,
        'confirmado'                     
        ),
(
        9,
        9,
        1,
        'confirmado'                     
        );

    INSERT INTO espaco (idespaco,espaco,evento_idevento)
    VALUES (1,'cerimonia',1),(2, 'espaço de dança',1), (3, 'buffet',1);
    