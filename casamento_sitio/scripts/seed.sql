-- seed casamento sitio 

    INSERT INTO convidado (idconvidado,nome,cpf,email)
    VALUES
    (
        '1',
        'Henry Gabriel Pacheco',
        '032.857.194-60',
        'ana-juliapeixoto@example.org'                       
        ),
(
        '2',
        'Sra. Emilly Teixeira',
        '063.274.915-61',
        'murilo49@example.org'                       
        ),
(
        '3',
        'Gael Souza',
        '734.968.501-75',
        'natalia47@example.net'                       
        ),
(
        '4',
        'Gabrielly Cunha',
        '152.907.843-14',
        'levifernandes@example.com'                       
        ),
(
        '5',
        'Júlia Andrade',
        '986.412.753-55',
        'enricosa@example.net'                       
        ),
(
        '6',
        'Agatha Rezende',
        '069.584.172-67',
        'larissanascimento@example.com'                       
        ),
(
        '7',
        'Maria Isis da Rosa',
        '075.361.489-84',
        'teixeiracaue@example.com'                       
        ),
(
        '8',
        'Sr. João Felipe Machado',
        '172.960.438-22',
        'laviniaduarte@example.org'                       
        ),
(
        '9',
        'Léo Almeida',
        '985.406.731-93',
        'lsilveira@example.org'                       
        ),
(
        '10',
        'Diego Fonseca',
        '628.037.159-02',
        'bdas-neves@example.com'                       
        ),
(
        '11',
        'Manuella Peixoto',
        '790.421.368-04',
        'aaparecida@example.net'                       
        ),
(
        '12',
        'Emanuelly Sousa',
        '675.142.839-19',
        'umelo@example.org'                       
        ),
(
        '13',
        'Diogo Nascimento',
        '156.907.342-25',
        'matteo54@example.net'                       
        ),
(
        '14',
        'Maria Eduarda Monteiro',
        '427.065.931-99',
        'dantemelo@example.org'                       
        );

    INSERT INTO checkin (idcheckin,status)
    VALUES
    (
        '1',
        'confirmado'                     
        ),
(
        '2',
        'confirmado'                     
        ),
(
        '3',
        'confirmado'                     
        ),
(
        '4',
        'confirmado'                     
        ),
(
        '5',
        'confirmado'                     
        ),
(
        '6',
        'confirmado'                     
        ),
(
        '7',
        'confirmado'                     
        ),
(
        '8',
        'confirmado'                     
        ),
(
        '9',
        'confirmado'                     
        ),
(
        '10',
        'confirmado'                     
        ),
(
        '11',
        'confirmado'                     
        ),
(
        '12',
        'confirmado'                     
        ),
(
        '13',
        'confirmado'                     
        ),
(
        '14',
        'confirmado'                     
        );

    INSERT INTO espaco (idespaco,espaco)
    VALUES
    (
        '1',
        'buffet'                    
        ),
(
        '2',
        'buffet'                    
        ),
(
        '3',
        'casamento'                    
        ),
(
        '4',
        'buffet'                    
        ),
(
        '5',
        'area de danca'                    
        ),
(
        '6',
        'area de danca'                    
        ),
(
        '7',
        'area de danca'                    
        ),
(
        '8',
        'buffet'                    
        ),
(
        '9',
        'area de danca'                    
        ),
(
        '10',
        'casamento'                    
        ),
(
        '11',
        'casamento'                    
        ),
(
        '12',
        'buffet'                    
        ),
(
        '13',
        'area de danca'                    
        ),
(
        '14',
        'buffet'                    
        );

    INSERT INTO evento (idevento,nome,date_time,cidade,bairro,rua,numero,cep)
    VALUES
    (
        '1',
        'casamento Sitio',
        '1980-04-24 09:35:59',
        'Gomes',
        'João Pinheiro',
        'Conjunto Henry Borges',
        '5',
        '47381803'                    
        ),
(
        '2',
        'casamento Sitio',
        '2001-09-03 11:29:58',
        'da Mata de Minas',
        'Jardim São José',
        'Lagoa Gomes',
        '6',
        '39765-609'                    
        ),
(
        '3',
        'casamento Sitio',
        '2023-11-17 13:24:53',
        'Cirino Verde',
        'Vila Fumec',
        'Jardim Isaac Borges',
        '65',
        '26404-738'                    
        ),
(
        '4',
        'casamento Sitio',
        '2019-07-16 13:26:00',
        'Duarte Paulista',
        'Dom Cabral',
        'Loteamento Lunna Novaes',
        '49',
        '26571786'                    
        ),
(
        '5',
        'casamento Sitio',
        '1982-05-07 23:20:42',
        'Sousa de Goiás',
        'Brasil Industrial',
        'Ladeira de Sales',
        '43',
        '49112-719'                    
        ),
(
        '6',
        'casamento Sitio',
        '1994-09-15 15:24:22',
        'Machado de Mendonça',
        'Palmares',
        'Setor Amanda Ramos',
        '507',
        '03261499'                    
        ),
(
        '7',
        'casamento Sitio',
        '2006-04-29 11:36:16',
        'Fonseca da Serra',
        'Vila São Geraldo',
        'Viela de Albuquerque',
        '60',
        '23980-760'                    
        ),
(
        '8',
        'casamento Sitio',
        '1984-06-02 06:48:47',
        'Oliveira de Goiás',
        'Vila Calafate',
        'Loteamento de Cunha',
        '64',
        '21605-289'                    
        ),
(
        '9',
        'casamento Sitio',
        '1986-02-10 14:36:57',
        'Lima do Norte',
        'Acaba Mundo',
        'Viaduto de Leão',
        '22',
        '23441-330'                    
        ),
(
        '10',
        'casamento Sitio',
        '1978-04-25 00:33:24',
        'Oliveira de Macedo',
        'Taquaril',
        'Largo Théo Duarte',
        '95',
        '23051428'                    
        ),
(
        '11',
        'casamento Sitio',
        '2011-05-23 12:50:39',
        'Fogaça Alegre',
        'Nossa Senhora Do Rosário',
        'Recanto de Ferreira',
        '9',
        '76568-933'                    
        ),
(
        '12',
        'casamento Sitio',
        '1998-02-22 03:44:38',
        'Camargo',
        'Vila Inestan',
        'Viaduto de Guerra',
        '8',
        '37631-763'                    
        ),
(
        '13',
        'casamento Sitio',
        '2022-01-02 12:13:04',
        'Rodrigues Paulista',
        'Solar Do Barreiro',
        'Campo Pedro Miguel Monteiro',
        '631',
        '44406103'                    
        ),
(
        '14',
        'casamento Sitio',
        '1970-01-26 06:30:15',
        'Rios',
        'Vila Nova Gameleira 1ª Seção',
        'Lago Ana Sophia Gonçalves',
        '1',
        '08812-432'                    
        );

    INSERT INTO log (idlog,date_time)
    VALUES
    (
        '1',
        '2007-01-10 18:39:18'                 
        ),
(
        '2',
        '2007-02-13 07:44:49'                 
        ),
(
        '3',
        '2020-11-18 17:36:44'                 
        ),
(
        '4',
        '2018-04-02 13:16:05'                 
        ),
(
        '5',
        '1986-06-03 20:09:58'                 
        ),
(
        '6',
        '2007-01-03 23:55:53'                 
        ),
(
        '7',
        '2011-11-18 05:46:02'                 
        ),
(
        '8',
        '2024-01-19 16:18:53'                 
        ),
(
        '9',
        '2004-12-17 17:44:15'                 
        ),
(
        '10',
        '1991-02-27 04:18:44'                 
        ),
(
        '11',
        '2025-02-06 19:59:01'                 
        ),
(
        '12',
        '2014-09-25 23:48:15'                 
        ),
(
        '13',
        '2004-01-26 01:30:20'                 
        ),
(
        '14',
        '2003-07-06 16:56:55'                 
        );

    INSERT INTO usuario (idusuario,nome,email,senha,perfil)
    VALUES
    (
        '1',
        'Francisco Porto',
        'isis30@example.net',
        '$2b$12$qCHOjTIYn0CSOGZYhefW..RKn.Lp0.YyK/jsmvuzaQfOKUNJhrZf6',
        'cerimonialista'                     
        ),
(
        '2',
        'Bruno Barros',
        'ericksampaio@example.net',
        '$2b$12$8Nve/8EEVdzURWLRj8Hc7.WmsZOBhxyHVRCNapprzET9hmRVrf6Tu',
        'administrador'                     
        ),
(
        '3',
        'Maria Macedo',
        'anna-liz12@example.org',
        '$2b$12$jH1rB2YMIeo.csBLdhyinuiDXqIv2MBTrrv.VplTfreNp9hvHgEg6',
        'administrador'                     
        ),
(
        '4',
        'Apollo Fonseca',
        'paulomontenegro@example.org',
        '$2b$12$FdMAC3apvvy5BPQmZwngkuh9Lc1m.ZV0u8ceOFhtWlfbefeXsLONC',
        'cerimonialista'                     
        ),
(
        '5',
        'Francisco Costela',
        'samuel15@example.com',
        '$2b$12$XwS7EB9tK7xU4alFfGcIXOS/EcoCbsHDEq675bS2mSDmG86YZYNhS',
        'administrador'                     
        ),
(
        '6',
        'Lucas Gabriel Sá',
        'diaseloah@example.org',
        '$2b$12$xoE82NSPWXZRtbF0nvRX.Oqeajkcajh1OQH55q4t2nJ8nUgo3ayIS',
        'administrador'                     
        ),
(
        '7',
        'Arthur Gabriel Pacheco',
        'duartebella@example.net',
        '$2b$12$pcDaUsUpW24xkMPuilMUDOjolA4X.wQgXls5fmjhqJR0pM3tcFHg6',
        'administrador'                     
        ),
(
        '8',
        'Mateus Machado',
        'tcunha@example.com',
        '$2b$12$OM1TQlNq/jPZg9Q9EW65xO47DIO8p1Y91DLPcoZdOA6Tcs3q2kd5.',
        'cerimonialista'                     
        ),
(
        '9',
        'Dra. Stella Aragão',
        'wcirino@example.com',
        '$2b$12$o8OFM9VtaqbgCpr30qN44uwl1BWaJ1a6pDVNBCgcxk6NSVFYhx.Tu',
        'administrador'                     
        ),
(
        '10',
        'Ana Sophia Pires',
        'biancaoliveira@example.net',
        '$2b$12$ZIhMSlwh0FURCCKXHUFVJeGVQ33YZft27x7fRFf0jp87ZS2Bt5qw.',
        'administrador'                     
        ),
(
        '11',
        'Natália Cardoso',
        'qda-luz@example.org',
        '$2b$12$UZtmL0bYEq2c1yXJwIWSzuhq9uH1s60qO5jPMiUP2/5m3FuqSk0l6',
        'cerimonialista'                     
        ),
(
        '12',
        'Maria Cecília da Costa',
        'lorenzomelo@example.org',
        '$2b$12$ReCruzfs5wJzdbWmYovDXuZfjaSXhehowKPmO9HhdPCI9UJxnbalO',
        'administrador'                     
        ),
(
        '13',
        'Alícia Pires',
        'joao-vitor75@example.net',
        '$2b$12$5QcjJZCErPxZhbxs7V9mVu9/Rit2/ayfnSNtv1PFTN2o3IG/aMr16',
        'cerimonialista'                     
        ),
(
        '14',
        'Maria Eduarda Barbosa',
        'mariane41@example.net',
        '$2b$12$1l2FdRvL6rAQxEpCTgGfUOVbKgnTRGML4DY/JMIa/uKDxmx0FuXTy',
        'cerimonialista'                     
        );
