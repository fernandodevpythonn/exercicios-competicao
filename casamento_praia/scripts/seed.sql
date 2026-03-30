-- seed casamento praia 


  INSERT INTO usuario (idusuario,nome,email,senha,perfil)
  VALUES
  (
       '1',
       'Raquel Aparecida',
       'da-motaemanuelly@example.com',
       '$2b$12$jsrPb/qMkZQ.ZYIydDwi9.KH8dqeEnMtN4ulDBvi6Vss4SA4lwPgy',
       'cerimonialista'                     
       ),
(
       '2',
       'Luna Rezende',
       'cavalcantiana@example.org',
       '$2b$12$IwEI8x3EIdDEis6..LbJAuplmR4HHSowx6kBm9cCqgMx/G/woB9uC',
       'cerimonialista'                     
       ),
(
       '3',
       'Vitória das Neves',
       'araujovinicius@example.com',
       '$2b$12$ojuSsSAIH.eIZ4UKrg75jeLFCPmYnu8m/AQ2Av95IQgcIWJ3w.phK',
       'cerimonialista'                     
       ),
(
       '4',
       'Dr. Yan Peixoto',
       'enzofogaca@example.com',
       '$2b$12$7C6/pgXQI54wNI8Xb3YFXOqFZyXl1/TSbx0p9JlqieIpvYZ12WFyC',
       'administrador'                     
       ),
(
       '5',
       'Enrico Caldeira',
       'rafaela89@example.com',
       '$2b$12$gQ.m2.30HePnBN7PLl9q8eJMAanQQ7vJecSyDOu7Qf/cQ2Cf/O8wK',
       'administrador'                     
       ),
(
       '6',
       'Gabriel Nascimento',
       'juliaalmeida@example.org',
       '$2b$12$EoLnmE9ilyEYH.Kz.72aQuFPnwLaWj9uqIpTAN6ZLuNEcaSLBsTe.',
       'administrador'                     
       ),
(
       '7',
       'Melina Melo',
       'da-motadavi-lucas@example.net',
       '$2b$12$3LIpnqVAlP14GT4MGqNTaez6pF53nzvueO/hmRRPFnSs9Bc1uA17C',
       'administrador'                     
       ),
(
       '8',
       'Melissa Mendonça',
       'maria-helenacampos@example.com',
       '$2b$12$DXoasJLYrxRGiPjaeK3u/e9Y4K1r3niBR5jI9ityutEfZNQV5uIoe',
       'administrador'                     
       ),
(
       '9',
       'Mariane Sales',
       'gmontenegro@example.com',
       '$2b$12$XORKjVlDwHhRqMT9kP4EKeeMPLaPrEi1h7OyJvSGD6j2himKOEWMi',
       'cerimonialista'                     
       ),
(
       '10',
       'Ana Liz Lopes',
       'melina59@example.com',
       '$2b$12$D.wcAXWkqxjMKapnJjzLMeD0nSu2MApyUz8A5rgSlbGZ3sjIzvEUO',
       'administrador'                     
       ),
(
       '11',
       'Laura Freitas',
       'da-cunhafelipe@example.org',
       '$2b$12$FjZimb03eLSM0PF5nl.2b.QabvjqXN7WZa0hiTbpDuXANxkONu6/C',
       'cerimonialista'                     
       ),
(
       '12',
       'Maria Fernanda Araújo',
       'pcirino@example.org',
       '$2b$12$LWlBuQ8Jgk6Q.ChclgJahOpV32bvbp625lKZ0t6EGqOm65iL3dN6u',
       'cerimonialista'                     
       );

    INSERT INTO convidado (idconvidado,nome,email,cpf)
    VALUES
    (
        '1',
        'Lorena Ramos',
        'leticiadias@example.net',
        '63279085438'
        ),
(
        '2',
        'Dr. João Miguel Teixeira',
        'albuquerquelarissa@example.org',
        '31057829404'
        ),
(
        '3',
        'Melissa Silva',
        'fda-mota@example.org',
        '74160529399'
        ),
(
        '4',
        'Isadora Peixoto',
        'raelalmeida@example.com',
        '67351802408'
        ),
(
        '5',
        'Stephany Cavalcanti',
        'arthur-gabrielsales@example.com',
        '24861370507'
        ),
(
        '6',
        'Gael Henrique Lopes',
        'marcelo11@example.net',
        '76908431231'
        ),
(
        '7',
        'Gabrielly Aparecida',
        'anasampaio@example.org',
        '05649712867'
        ),
(
        '8',
        'Maya Martins',
        'maria-alice52@example.org',
        '30586471901'
        ),
(
        '9',
        'Kamilly Porto',
        'lorenzo79@example.com',
        '02875614967'
        ),
(
        '10',
        'Bento Andrade',
        'olivia14@example.net',
        '28796150386'
        ),
(
        '11',
        'Ana Liz Almeida',
        'vcastro@example.com',
        '57912038612'
        ),
(
        '12',
        'Luna Vieira',
        'sviana@example.org',
        '83714920650'
        );

    INSERT INTO evento (idevento,nome,cidade,bairro,rua,numero,data_time)
    VALUES
    (
        '1',
        'Luara Sales',
        'Melo Paulista',
        'Vila Ipiranga',
        'Travessa Luiz Otávio Borges',
        '964',
        '2018-08-27 14:40:45'
        ),
(
        '2',
        'Manuella Sampaio',
        'da Cruz da Serra',
        'Ventosa',
        'Viela de Fernandes, 916',
        '13',
        '2018-08-27 14:40:45'
        ),
(
        '3',
        'Heitor Mendes',
        'Pereira',
        'Marieta 3ª Seção',
        'Sítio Thomas Pereira, 33',
        '434717',
        '2018-08-27 14:40:45'
        ),
(
        '4',
        'Miguel Silva',
        'Carvalho',
        'Taquaril',
        'Área Leonardo Guerra, 20',
        '7803926',
        '2018-08-27 14:40:45'
        ),
(
        '5',
        'Heloisa Marques',
        'Ferreira',
        'Independência',
        'Passarela de da Paz, 6',
        '28300',
        '2018-08-27 14:40:45'
        ),
(
        '6',
        'Yasmin Siqueira',
        'Vieira',
        'Flavio Marques Lisboa',
        'Distrito Noah Silva, 70',
        '713807',
        '2018-08-27 14:40:45'
        ),
(
        '7',
        'Luana Castro',
        'Sousa',
        'Satelite',
        'Avenida Maria Isis Oliveira, 764',
        '82',
        '2018-08-27 14:40:45'
        ),
(
        '8',
        'Dr. Luiz Felipe Rezende',
        'Sampaio de da Rosa',
        'Aparecida 7ª Seção',
        'Pátio Enzo Ribeiro, 96',
        '4134',
        '2018-08-27 14:40:45'
        ),
(
        '9',
        'Giovanna Viana',
        'Araújo',
        'Inconfidência',
        'Lago de da Rosa, 100',
        '39',
        '2018-08-27 14:40:45'
        ),
(
        '10',
        'Nicole Santos',
        'Nascimento de da Rocha',
        'Mariquinhas',
        'Vale Maria Vitória Casa Grande, 25',
        '732732541',
        '2018-08-27 14:40:45'
        ),
(
        '11',
        'Sra. Ana Júlia Monteiro',
        'Nunes',
        'Conjunto Paulo Vi',
        'Núcleo Noah Porto',
        '1',
        '2018-08-27 14:40:45'
        ),
(
        '12',
        'Luana Andrade',
        'Vasconcelos',
        'Vila Pinho',
        'Parque Esther da Luz, 857',
        '3599016',
        '2018-08-27 14:40:45'
        );

    INSERT INTO area (idarea,area)
    VALUES
    (
        '1',
        'casamento'                
        ),
(
        '2',
        'pista de dança'                
        ),
(
        '3',
        'buffet'                
        ),
(
        '4',
        'buffet'                
        ),
(
        '5',
        'buffet'                
        ),
(
        '6',
        'pista de dança'                
        ),
(
        '7',
        'buffet'                
        ),
(
        '8',
        'casamento'                
        ),
(
        '9',
        'buffet'                
        ),
(
        '10',
        'casamento'                
        ),
(
        '11',
        'buffet'                
        ),
(
        '12',
        'buffet'                
        );

    INSERT INTO checkin (idcheckin,qrcode)
    VALUES
    (
        '1',
        '514'                     
        ),
(
        '2',
        '086'                     
        ),
(
        '3',
        '347'                     
        ),
(
        '4',
        '619'                     
        ),
(
        '5',
        '926'                     
        ),
(
        '6',
        '197'                     
        ),
(
        '7',
        '137'                     
        ),
(
        '8',
        '697'                     
        ),
(
        '9',
        '804'                     
        ),
(
        '10',
        '364'                     
        ),
(
        '11',
        '088'                     
        ),
(
        '12',
        '412'                     
        );
