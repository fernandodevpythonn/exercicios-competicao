-- seed mini wedding 

  INSERT INTO usuario (idusuario,nome,email,senha,perfil)
  VALUES
  (
      '1',
      'Dra. Heloisa Montenegro',
      'mpeixoto@example.org',
      '$2b$12$EjAghL0EWMrGr8xzQw9HPOOrGVgcJHvCxscGiPGeJP0kmkznnZ5K.',
      'cerimonialista'                     
      ),
(
      '2',
      'Matheus Cavalcante',
      'egoncalves@example.com',
      '$2b$12$fAV6uP2icdYbeGA24xWjh.EF2Ee28ubJ7R7RXV9rLqCg2bjafwPKS',
      'administrador'                     
      ),
(
      '3',
      'Lara Freitas',
      'da-cruzmaria-flor@example.com',
      '$2b$12$iU2eg9s4ZbRhS0cShMognOvYlweLFz8U.9FwUsmPWnghC4isEY42e',
      'cerimonialista'                     
      ),
(
      '4',
      'Gael Henrique Casa Grande',
      'elisajesus@example.com',
      '$2b$12$t2uNOY9SqcOZ.Bgu1op4Qu82hTIxaWdrZV/aQQl/kK/d10/wABsM2',
      'cerimonialista'                     
      ),
(
      '5',
      'Maria Fernanda Pinto',
      'uda-costa@example.net',
      '$2b$12$JNU4e3OgJbzWEsuPvGah1OoQe69b.JJW.GZlbxVIW7zXF6W0nzpsq',
      'cerimonialista'                     
      ),
(
      '6',
      'Ester Oliveira',
      'maria-helena65@example.com',
      '$2b$12$J6IZpxdRNQ.2WoovdVUJXOqQ/p2JERUPW55SpEXGhlXQi.QRKAC8u',
      'cerimonialista'                     
      ),
(
      '7',
      'Clarice Souza',
      'machadokamilly@example.org',
      '$2b$12$aqru2EdIJNllNirIEqyLauUSEyt46kVGh3apw3dR214rE2dWHgxWW',
      'cerimonialista'                     
      ),
(
      '8',
      'Gabriel Campos',
      'kaiquemendonca@example.net',
      '$2b$12$T5t/K/6vU/2XyVFT1TYh9OHWZDPNUdOBIziliM7j.oL4KHlOjEZ92',
      'administrador'                     
      ),
(
      '9',
      'Ravy Nunes',
      'jda-mota@example.org',
      '$2b$12$5wfkrY0VcCY/mHGV5KTIFuG6hDzNK2nIDlg1q0sDZ9CPslAODdaTe',
      'cerimonialista'                     
      ),
(
      '10',
      'Dr. João Guilherme Brito',
      'rgarcia@example.net',
      '$2b$12$bSBDJ.Hqgu8BGm2x7fXapObQ15FehaKRfiDYiUV/OrJJ7BU2guWNW',
      'administrador'                     
      ),
(
      '11',
      'Dra. Ana Carolina Garcia',
      'costelabenjamin@example.com',
      '$2b$12$XYJZWu1rL5oMSXv2ZDKwI.uMTDkFIs8ZCILiF42TpCHy4CGgHKC9.',
      'administrador'                     
      ),
(
      '12',
      'Sara Sales',
      'diogoda-mota@example.com',
      '$2b$12$GmITFkNc4zaO/.ctl61vhO1VvDpMpXMiltYzD1gUuhEIGj3LLWnFy',
      'administrador'                     
      ),
(
      '13',
      'José Pedro Teixeira',
      'wda-conceicao@example.net',
      '$2b$12$VsEgIag6uRWJUkKBpSe.k.Vw0koujdTExpo5ePAQLwRrk0tG/vRNW',
      'administrador'                     
      ),
(
      '14',
      'Rebeca Pereira',
      'enzo71@example.org',
      '$2b$12$yIAbmTwMiFcScFGUx1.ICuCeLGbcsWBbdYp1cHZ55feYh8rYWm54.',
      'cerimonialista'                     
      );

  INSERT INTO evento (idevento,nome,date_time,cidade,bairro,rua,numero,cep)
  VALUES
  (
       '1',
       'mini wedding urbano',
       '2010-12-15 18:53:38',
       'Oliveira de Aragão',
       'Vila São Rafael',
       'Chácara Benjamim Sampaio',
       '4',
       '36691-934'                    
       ),
(
       '2',
       'mini wedding urbano',
       '2010-12-15 18:53:38',
       'Ferreira',
       'Guaratã',
       'Condomínio Sousa',
       '29',
       '84997-963'                    
       ),
(
       '3',
       'mini wedding urbano',
       '2010-12-15 18:53:38',
       'Farias de Monteiro',
       'Camargos',
       'Pátio de Pires',
       '45',
       '83674-486'                    
       ),
(
       '4',
       'mini wedding urbano',
       '2010-12-15 18:53:38',
       'Casa Grande das Flores',
       'Novo Santa Cecilia',
       'Viela Otávio Barbosa',
       '8',
       '42168147'                    
       ),
(
       '5',
       'mini wedding urbano',
       '2010-12-15 18:53:38',
       'Peixoto',
       'Vitoria',
       'Esplanada Costa',
       '7',
       '59101-660'                    
       ),
(
       '6',
       'mini wedding urbano',
       '2010-12-15 18:53:38',
       'Duarte do Sul',
       'Sion',
       'Área de da Luz',
       '4',
       '20792195'                    
       ),
(
       '7',
       'mini wedding urbano',
       '2010-12-15 18:53:38',
       'Campos de Montenegro',
       'Padre Eustáquio',
       'Lagoa Porto',
       '51',
       '44232823'                    
       ),
(
       '8',
       'mini wedding urbano',
       '2010-12-15 18:53:38',
       'Mendes do Galho',
       'São Luiz',
       'Jardim Cauê Casa Grande',
       '86',
       '60782638'                    
       ),
(
       '9',
       'mini wedding urbano',
       '2010-12-15 18:53:38',
       'Andrade do Norte',
       'Tres Marias',
       'Morro de Rodrigues',
       '9',
       '13800-409'                    
       ),
(
       '10',
       'mini wedding urbano',
       '2010-12-15 18:53:38',
       'Costela',
       'Penha',
       'Rua Arthur Gabriel Cassiano',
       '85',
       '86857738'                    
       ),
(
       '11',
       'mini wedding urbano',
       '2010-12-15 18:53:38',
       'Gomes de Macedo',
       'Aparecida',
       'Condomínio Andrade',
       '30',
       '32816688'                    
       ),
(
       '12',
       'mini wedding urbano',
       '2010-12-15 18:53:38',
       'Pires do Sul',
       'Conjunto São Francisco De Assis',
       'Parque Natália Barbosa',
       '4',
       '36351-188'                    
       ),
(
       '13',
       'mini wedding urbano',
       '2010-12-15 18:53:38',
       'Nogueira',
       'Vila Antena Montanhês',
       'Praça de Novaes',
       '445',
       '24977-405'                    
       ),
(
       '14',
       'mini wedding urbano',
       '2010-12-15 18:53:38',
       'Macedo',
       'Prado',
       'Morro Lorena Castro',
       '50',
       '99243234'                    
       );

  INSERT INTO convidado (idconvidado,nome,email,cpf,restricao_alimentar)
  VALUES
  (
      '0',
      'Maysa das Neves',
      'henrique36@example.net',
      '938.250.614-42',
      'Leite'                      
      ),
(
      '1',
      'Mirella Farias',
      'maria-isissilva@example.org',
      '025.649.381-24',
      'Nenhuma'                      
      ),
(
      '2',
      'Thomas da Mota',
      'ana-carolina66@example.net',
      '672.814.350-53',
      'Nenhuma'                      
      ),
(
      '3',
      'Pietra Fernandes',
      'jose-miguelsilveira@example.com',
      '765.430.291-61',
      'açucar'                      
      ),
(
      '4',
      'Leandro Nogueira',
      'pedro-miguelmartins@example.org',
      '216.459.870-94',
      'açucar'                      
      ),
(
      '5',
      'Dra. Luara Barbosa',
      'scamargo@example.net',
      '801.962.574-76',
      'Nenhuma'                      
      ),
(
      '6',
      'Erick Siqueira',
      'upacheco@example.net',
      '986.423.507-92',
      'açucar'                      
      ),
(
      '7',
      'Brayan Mendes',
      'manuellacassiano@example.net',
      '340.271.586-44',
      'Leite'                      
      ),
(
      '8',
      'Srta. Maria Flor Costela',
      'da-cruzana-cecilia@example.com',
      '283.641.075-26',
      'açucar'                      
      ),
(
      '9',
      'Benício Martins',
      'cassianobianca@example.org',
      '781.296.504-01',
      'Leite'                      
      ),
(
      '10',
      'Erick Silva',
      'ana-juliaandrade@example.org',
      '726.593.048-74',
      'Nenhuma'                      
      ),
(
      '11',
      'Eloá Brito',
      'eduarda27@example.net',
      '047.293.815-05',
      'açucar'                      
      ),
(
      '12',
      'Enrico Silveira',
      'lsousa@example.com',
      '895.716.324-73',
      'Nenhuma'                      
      ),
(
      '13',
      'Alexandre Sá',
      'kmoraes@example.net',
      '946.510.723-99',
      'Leite'                      
      ),
(
      '14',
      'Sra. Emanuelly Borges',
      'kmendes@example.org',
      '512.748.630-07',
      'açucar'                      
      );

  INSERT INTO checkin (idcheckin,status)
  VALUES
  (
      '0',
      'confirmado'                     
      ),
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

  INSERT INTO log (idlog,date_time)
  VALUES
  (
      '0',
      '1999-03-04 23:56:52'                
      ),
(
      '1',
      '2021-05-29 19:59:34'                
      ),
(
      '2',
      '1992-07-14 15:31:07'                
      ),
(
      '3',
      '1986-07-04 10:53:02'                
      ),
(
      '4',
      '2011-11-07 01:02:28'                
      ),
(
      '5',
      '1999-04-10 20:30:41'                
      ),
(
      '6',
      '1982-03-28 05:16:05'                
      ),
(
      '7',
      '2014-07-21 17:07:13'                
      ),
(
      '8',
      '1998-04-14 01:06:24'                
      ),
(
      '9',
      '1975-03-02 07:12:15'                
      ),
(
      '10',
      '2002-01-19 10:33:20'                
      ),
(
      '11',
      '1987-07-24 19:18:37'                
      ),
(
      '12',
      '2012-04-25 01:18:45'                
      ),
(
      '13',
      '1983-07-21 08:33:46'                
      ),
(
      '14',
      '2012-01-07 11:55:35'                
      );
