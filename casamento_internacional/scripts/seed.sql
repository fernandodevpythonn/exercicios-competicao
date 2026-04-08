-- SEED  casamento tematico


INSERT INTO usuario (idusuario,nome,perfil, cpf, email, senha) VALUES
(1,'Rojer','Administrador', '12345678901', 'admin@casamentotem.com', '$2b$12$5aTbRNDtaWgWI4le0.k9muWNd7xyJdNSgNgcYTbYcu9RUK.PqXPNK'),
(2,'Maria','Cerimonialista', '10987654321', 'recepcao@wedding.com', '$2b$12$fQKBGZOm0VMujddbBAaD7OdQ2snK3LOALk0I1yGIJQfzCuzGmZb5G');

INSERT INTO evento (idevento, nome, date_time, cidade,bairro,rua,numero)
VALUES (1,"casamento tematico","04/22/2026 00:00:00","porto alegre","pinheiro","joao de oliveira",220);

INSERT INTO convidado 
(idconvidado,nome,email,perfil,cpf,evento_idevento)
VALUES (1,"fernando","fernando@gmail.com","amigo",04004004,1)
