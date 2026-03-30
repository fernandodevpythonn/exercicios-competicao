from faker import Faker
import random
import bcrypt


fake = Faker('pt_BR')


def limpar_cpf(cpf: str) -> str:
    """Remove qualquer caractere que não seja número do CPF."""
    return ''.join(filter(str.isdigit, cpf))


def gerar_hash(senha: str) -> str:
    """Gera hash bcrypt para a senha."""
    return bcrypt.hashpw(senha.encode('utf-8'), bcrypt.gensalt()).decode('utf-8')


def gerar_sql(qtd_seed: int) -> str:#typing hints (-> str)
    """Gera SQL completo para seed do banco Senac Wedding."""
    sql = "-- seed casamento tematico\n\n"

    linhas_usuario = []
    

    for i in range(1,qtd_seed):
      id = i
      perfil = random.choice(['administador','cerimonialista'])
      cpf = limpar_cpf(fake.cpf())
      email = fake.email()
      senha = gerar_hash(fake.password(length=10))
      nome = fake.name_female()
      linhas_usuario.append(f"""(
        '{id}',
        '{nome}',
        '{email}',
        '{senha}',
        '{perfil}',
        '{cpf}'
)""")
    
    sql += f"""
INSERT INTO usuario 
(idusuario,nome,email,senha,perfil,cpf)
VALUES
""" + ",\n".join(linhas_usuario) + ";\n"

    linhas_evento = []
    data = fake.date()+" "
    time = fake.time()
    cidade = fake.city()+" "
    bairro = fake.bairro()+" "
    numero = fake.building_number()
    for i in range(1,qtd_seed):
        id = i
        nome = "casamento_internacional"
        date_time = data+time
        local = cidade + bairro + numero
        linhas_evento.append(f"""(
        '{id}',
        '{nome}',
        '{date_time}',
        '{local}'
        )""")

    sql += """
INSERT INTO evento (id_evento,nome,date_time,local)
VALUES
""" + ",\n".join(linhas_evento) + ";\n"
    
    linhas_checkin = []

    for i in range(1,qtd_seed):
        id_checkin = i
        status = "confirmado"
        id_convidado = i
        id_usuario = '1'
        linhas_checkin.append(f"""(
        '{id_checkin}',
        '{status}',
        '{id_convidado}',
        '{id_usuario}'
        )""")
    sql += """
INSERT INTO checkin (idcheckin,status,convidado_idconvidado,usuario_idusuario)
VALUES
""" + ",\n".join(linhas_checkin)+";\n"

    linhas_convidado = []


    linhas_convidado.append(f"""(
        '1',
        'João',
        '11111111111',
        'noivo@email.com',
        'Noivos'
    )""")
    linhas_convidado.append(f"""(
        '2',
        'Maria',
        '22222222222',
        'noiva@email.com',
        'Noivos'
    )""")

 
    for i in range(3,qtd_seed):
        id = i
        nome = fake.name_female()
        cpf = limpar_cpf(fake.cpf())
        email = fake.email()
        perfil = random.choice(['brasileiro','gringo'])
        linhas_convidado.append(f"""(
        '{id}',
        '{nome}',
        '{cpf}',
        '{email}',
        '{perfil}'
        )""")

    sql += """
INSERT INTO convidado 
(id_convidado,nome,cpf,email,perfil)
VALUES
""" + ",\n".join(linhas_convidado) + ";\n"


    linhas_log = []
    data = fake.date()+" "
    hora = fake.time()+" "
    for i in range(1,qtd_seed):
        id = i
        date_time = data+hora
        id_usuario = i
        linhas_log.append(f"""(
        '{id}',
        '{date_time}',
        '{id_usuario}'
        )""")
    sql += """
INSERT INTO log
(id_log,date_time,usuario_idusuario)
VALUES
"""+",\n".join(linhas_log)+";\n"

    return sql


if __name__ == "__main__":

    while True:
        try:
            qtd = int(input("tamanho tabelas (mín 10 linhas): "))
            if qtd >= 10:
                break
            else:
                print("Informe um número maior ou igual a 10.")
        except ValueError:
            print("Por favor, insira um número válido.")

    sql = gerar_sql(qtd)

  
    with open("seed.sql", "w", encoding="utf-8") as f:
        f.write(sql)

    print("Seed gerado com sucesso!")


#é apenas um script, nao fica no sistema, usado apenas uma vez
#auth -> autenticacao -> auth_service -> validacao
#guest -> convidado -> guest_service
#user -> usuario -> user_service