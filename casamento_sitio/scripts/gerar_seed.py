from faker import Faker
import random
import bcrypt

fake = Faker('pt_BR')

def limpar_cpf(cpf:str):
    return ''.join(filter(str.isdigit,cpf))

def gerar_hash(senha:str):
    return bcrypt.hashpw(senha.encode('utf-8'), bcrypt.gensalt()).decode('utf-8')

def gerar_sql(tamanho_seed: int):

    sql = "-- seed casamento sitio \n"


    linha_convidado =[]
    for i in range(1,tamanho_seed):
        id = i
        nome = fake.name_nonbinary()
        cpf = fake.cpf()
        email = fake.email()
        linha_convidado.append(f"""(
        '{id}',
        '{nome}',
        '{cpf}',
        '{email}'                       
        )""")

    sql += f"""
    INSERT INTO convidado (idconvidado,nome,cpf,email)
    VALUES
    """+",\n".join(linha_convidado)+";\n"
    
    linha_checkin = []
    for i in range(1,tamanho_seed):
        id = i
        status = "confirmado"
        linha_checkin.append(f"""(
        '{id}',
        '{status}'                     
        )""")

    sql += f"""
    INSERT INTO checkin (idcheckin,status)
    VALUES
    """+",\n".join(linha_checkin)+";\n"

    linha_espaco = []
    for i in range(1,tamanho_seed):
        id = i
        espaco = random.choice(['area de danca','buffet','casamento'])
        linha_espaco.append(f"""(
        '{id}',
        '{espaco}'                    
        )""")
    sql += f"""
    INSERT INTO espaco (idespaco,espaco)
    VALUES
    """+",\n".join(linha_espaco)+";\n"

    linha_evento = []
    for i in range(1,tamanho_seed):
        id = i
        nome = "casamento Sitio"
        date_time = fake.date_time()
        cidade = fake.city()
        bairro = fake.bairro()
        rua = fake.street_name()
        numero = fake.building_number()
        cep = fake.postcode()
        linha_evento.append(f"""(
        '{id}',
        '{nome}',
        '{date_time}',
        '{cidade}',
        '{bairro}',
        '{rua}',
        '{numero}',
        '{cep}'                    
        )""")
    sql += f"""
    INSERT INTO evento (idevento,nome,date_time,cidade,bairro,rua,numero,cep)
    VALUES
    """+",\n".join(linha_evento)+";\n"

    linha_log = []
    for i in range(1,tamanho_seed):
        id = i
        date_time = fake.date_time()
        linha_log.append(f"""(
        '{id}',
        '{date_time}'                 
        )""")
    sql += f"""
    INSERT INTO log (idlog,date_time)
    VALUES
    """+",\n".join(linha_log)+";\n"

    linha_usuario = []
    for i in range(1,tamanho_seed):
        id = i
        nome = fake.name_nonbinary()
        email = fake.email()
        senha = gerar_hash(fake.password(length=10))
        perfil = random.choice(['cerimonialista','administrador'])
        linha_usuario.append(f"""(
        '{id}',
        '{nome}',
        '{email}',
        '{senha}',
        '{perfil}'                     
        )""")
    sql += f"""
    INSERT INTO usuario (idusuario,nome,email,senha,perfil)
    VALUES
    """+",\n".join(linha_usuario)+";\n"

    return sql

if __name__ == "__main__":
    while True:
        try:
            qtd = int(input("Quantas linhas deseja inserir? "))
            if qtd >= 10:
                break
            else:
                print("erro: Digite um valor maior ou igual a 10")
        except ValueError:
            print("Erro: Valor inválido")
    
    sql = gerar_sql(qtd)

    with open("seed.sql","w", encoding="utf-8") as f:
        f.write(sql)

    print("seed gerado com sucesso")