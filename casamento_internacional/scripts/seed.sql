-- SEED  casamento tematico


INSERT INTO usuario (idusuario,nome,perfil, cpf, email, senha) VALUES
(1,'Rojer','Administrador', '12345678901', 'admin@casamentotem.com', '$2b$12$bY68J0HUYNG9V2iJvXR9A.39t77I.bNnGE36E63Eshl6sSKpA/1Ja'),
(2,'Maria','Cerimonialista', '10987654321', 'recepcao@wedding.com', '$2b$12$CbE3BGHIDUHdkEdfSSoPZeOf9cOhXRyVlLufB.pchAJFWwRGvQ34C');

INSERT INTO evento (idevento, nome, date_time, cidade,bairro,rua,numero)
VALUES (1,"casamento tematico","04/22/2026 00:00:00","porto alegre","pinheiro","joao de oliveira",220);

INSERT INTO convidado 
(idconvidado,nome,email,perfil,cpf,evento_idevento)
VALUES (1,"fernando","fernando@gmail.com","amigo",04004004,1)
