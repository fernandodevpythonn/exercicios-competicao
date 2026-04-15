-- seed mini wedding 

  INSERT INTO usuario (idusuario,nome,email,senha,perfil)
  VALUES (1, 'mario', 'marioadm@gmail.com','$2b$12$4X.E8JmohkN5VTqVnSyqSOAWexAQSzW0uqwv7PP2ZawrMz0oXDXli','administrador'),
  (2, 'juliana','julianausu@gmail.com','$2b$12$TYW4e.TKLvcr8nZx7nafdetdZeA1eUCXq7yYzFo3Ajj0wxj58XOw6', 'usuario');
  
  INSERT INTO evento (idevento,nome,date_time,cidade,bairro,rua,numero,cep)
  VALUES (1, 'mini wedding', '1971-09-15 21:28:13','porto alegre', 'farrapos', 'limario', 455, 06958476);
  
  INSERT INTO convidado (idconvidado,nome,email,cpf,evento_idevento,restricao_alimentar)
  VALUES
  (
      0,
      'Ayla Monteiro',
      'eduarda53@example.com',
      '379.246.081-50',
      1,
      'Lactose'                      
      ),
(
      1,
      'Dr. Vitor Alves',
      'mathias26@example.org',
      '839.147.502-60',
      1,
      'Nenhuma'                      
      ),
(
      2,
      'Luana Duarte',
      'vitoria70@example.org',
      '450.376.182-07',
      1,
      'Lactose'                      
      ),
(
      3,
      'Brenda Abreu',
      'ana79@example.net',
      '819.046.237-78',
      1,
      'açucar'                      
      ),
(
      4,
      'Lucca Câmara',
      'luara33@example.net',
      '398.064.725-00',
      1,
      'Lactose'                      
      ),
(
      5,
      'Ian Leão',
      'ynascimento@example.org',
      '742.501.896-94',
      1,
      'Lactose'                      
      ),
(
      6,
      'Lara Caldeira',
      'fonsecaana-livia@example.com',
      '683.910.257-21',
      1,
      'Lactose'                      
      ),
(
      7,
      'Dr. Otávio Cardoso',
      'nogueirabrenda@example.org',
      '082.697.154-76',
      1,
      'Nenhuma'                      
      ),
(
      8,
      'João Lucas Moura',
      'marcos-vinicius18@example.com',
      '571.394.026-80',
      1,
      'açucar'                      
      ),
(
      9,
      'Liam Pinto',
      'sousajosue@example.com',
      '384.201.679-40',
      1,
      'Lactose'                      
      );

  INSERT INTO checkin (idcheckin,convidado_idconvidado, usuario_idusuario,status)
  VALUES
  (
      0,
      0,
      1,
      'confirmado'                    
      ),
(
      1,
      1,
      1,
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
      2,
      'confirmado'                    
      );

  INSERT INTO log (idlogin_log,date_time,usuario_idusuario)
  VALUES
  (
      0,
      '1984-07-26 01:03:57',
      1
      ),
(
      1,
      '1975-11-22 19:32:20',
      2
      ),
(
      2,
      '1988-04-05 14:20:23',
      1
      ),
(
      3,
      '1975-11-27 16:27:43',
      2
      ),
(
      4,
      '2010-01-18 04:05:26',
      1
      ),
(
      5,
      '1973-03-29 11:47:25',
      1
      ),
(
      6,
      '1984-06-12 01:13:41',
      2
      ),
(
      7,
      '2017-03-05 00:49:48',
      2
      ),
(
      8,
      '2022-02-10 08:02:59',
      1
      ),
(
      9,
      '1976-06-27 06:56:11',
      1
      );
