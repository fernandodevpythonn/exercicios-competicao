from faker import Faker
import random
import bcrypt
import string

fake = Faker('pt_BR')


def limpar_cpf(cpf: str) -> str:
    return ''.join(filter(str.isdigit, cpf))


def gerar_hash(senha: str) -> str:
    return bcrypt.hashpw(senha.encode('utf-8'), bcrypt.gensalt()).decode('utf-8')

def gerar_sql(qtd_convidados: int) -> str:
    sql = "-- SEED  casamento tematico\n\n"
 
    sql += f"""
INSERT INTO usuario (idusuario,nome,perfil, cpf, email, senha) VALUES
(1,'Rojer','Administrador', '12345678901', 'admin@casamentotem.com', '{gerar_hash('345663554')}'),
(2,'Maria','Cerimonialista', '10987654321', 'recepcao@wedding.com', '{gerar_hash('33939')}'),
(3,'ana','noiva', '109845656', 'noiva@casamento.com', '{gerar_hash('333453')}'),
(4,'vitor','noivo', '109834556', 'noivo@casasadhf.com', '{gerar_hash('234234')}');
"""

    sql += """
INSERT INTO evento (idevento, nome, date_time, cidade,bairro,rua,numero)
VALUES (1,'casamento tematico','04/22/2026 00:00:00','porto alegre','pinheiro','joao de oliveira',220);
"""
    
    linha_convidado = []
    for i in range(1,qtd_convidados):
        id = i
        nome = fake.name_nonbinary()
        email = fake.email()
        perfil = random.choice(['familiar','amigos','administracao'])
        idevento = 1
        linha_convidado.append(f"""(
        {id},
        '{nome}',
        '{email}',
        '{perfil}',
        {idevento}
    )""")
    sql += """
INSERT INTO convidado 
(idconvidado,nome,email,perfil,evento_idevento)
VALUES
""" + ",\n".join(linha_convidado) + ";\n"
    
    linha_checkin = []
    for i in range(1,qtd_convidados):
        id = i
        id_convidado = i
        id_usuario = random.choice([1,2,3,4])
        status = 'confirmado'
        linha_checkin.append(f"""(
        {id},
        {id_convidado},
        '{status}',                   
        {id_usuario}
        )""")
    sql += """
INSERT INTO checkin (idcheckin,convidado_idconvidado,status,usuario_idusuario)
VALUES
"""+",\n".join(linha_checkin)+";\n"


    linha_log = []
    for i in range(1,qtd_convidados):
        idlog = i
        idusuario = 1
        datetime = fake.date_time()
        linha_log.append(f"""(
        {idlog},
        '{datetime}',              
        {idusuario}
        )""")
    sql += """
INSERT INTO log (idlogin_log,date_time,usuario_idusuario)
VALUES
"""+",\n".join(linha_log)+";\n"

    return sql


if __name__ == "__main__":
    while True:
        try:
            qtd = int(input("Quantidade de convidados (mín 10): "))
            if qtd >= 10:
                break
            else:
                print("Informe um número maior ou igual a 30.")
        except ValueError:
            print("Por favor, insira um número válido.")

    sql = gerar_sql(qtd)

    with open("seed.sql", "w", encoding="utf-8") as f:
        f.write(sql)

    print("\nSeed gerado com sucesso!")