-- seed casamento sitio 

    INSERT INTO evento (idevento,nome,data_hora,cidade,bairro,rua,numero,cep)
    VALUES (1, 'casamento_sitio', '20/03/2026 20:30:00', 'porto alegre', 'joao pessoa', 'sao martins', 112, 10203948);
    
    INSERT INTO usuario (idusuario,nome,email,senha,evento_idevento,perfil)
    VALUES (1,'Vitor', 'vitoradm@gmail.com', '$2b$12$R0rVA320.jzpw8U3JWHzzOfKlAcuL5JMtL645kiHqvy9ZntXRl5.O',1, 'administrador'),
    (2,'Ana', 'anacerimonia@gmail.com', '$2b$12$c4b0RqsBeUmviGe49pPB8efZTRkc.Hv/.83eoE15kVhYPptycQdaG',1, 'cerimonialista');
    
    INSERT INTO convidado (idconvidado,nome,cpf,evento_idevento,email)
    VALUES
    (
        1,
        'Helena Cardoso',
        42735961052,
        1,
        'maria-luisamachado@example.net'                       
        ),
(
        2,
        'Gabrielly Pereira',
        07543128608,
        1,
        'gmendonca@example.net'                       
        ),
(
        3,
        'Zoe Alves',
        03764218940,
        1,
        'calebdas-neves@example.com'                       
        ),
(
        4,
        'Melissa Sá',
        92860417303,
        1,
        'novaesdavi-luiz@example.com'                       
        ),
(
        5,
        'Nathan Sales',
        78693102478,
        1,
        'maria-helena54@example.org'                       
        ),
(
        6,
        'Lucas Fernandes',
        46710895211,
        1,
        'agathanovais@example.org'                       
        ),
(
        7,
        'Henry Gabriel Caldeira',
        90672153416,
        1,
        'yanpires@example.org'                       
        ),
(
        8,
        'Sophie da Cunha',
        04829163542,
        1,
        'vargasrodrigo@example.net'                       
        ),
(
        9,
        'Diogo Pacheco',
        61970823496,
        1,
        'campossophia@example.net'                       
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
        1,
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
        2,
        'confirmado'                     
        ),
(
        9,
        9,
        2,
        'confirmado'                     
        );

    INSERT INTO espaco (idespaco,espaco,evento_idevento)
    VALUES (1,'cerimonia',1),(2, 'espaço de dança',1), (3, 'buffet',1);
    