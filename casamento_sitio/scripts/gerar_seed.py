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

    sql += f"""
    INSERT INTO evento (idevento,nome,data_hora,cidade,bairro,rua,numero,cep)
    VALUES (1, 'casamento_sitio', '20/03/2026 20:30:00', 'porto alegre', 'joao pessoa', 'sao martins', 112, 10203948);
    """
    
    sql += f"""
    INSERT INTO usuario (idusuario,nome,email,senha,evento_idevento,perfil)
    VALUES (1,'Vitor', 'vitoradm@gmail.com', '{gerar_hash('92530011')}',1, 'administrador'),
    (2,'Ana', 'anacerimonia@gmail.com', '{gerar_hash('10520011')}',1, 'cerimonialista');
    """

    linha_convidado =[]
    for i in range(1,tamanho_seed):
        id = i
        nome = fake.name_nonbinary()
        cpf = limpar_cpf(fake.cpf())
        email = fake.email()
        linha_convidado.append(f"""(
        {id},
        '{nome}',
        {cpf},
        1,
        '{email}'                       
        )""")

    sql += f"""
    INSERT INTO convidado (idconvidado,nome,cpf,evento_idevento,email)
    VALUES
    """+",\n".join(linha_convidado)+";\n"
    
    linha_checkin = []
    for i in range(1,tamanho_seed):
        id = i
        id_usuario = random.choice([1,2])
        status = "confirmado"
        linha_checkin.append(f"""(
        {id},
        {i},
        {id_usuario},
        '{status}'                     
        )""")

    sql += f"""
    INSERT INTO checkin (idcheckin,convidado_idconvidado,usuario_idusuario,status)
    VALUES
    """+",\n".join(linha_checkin)+";\n"

    
    sql += f"""
    INSERT INTO espaco (idespaco,espaco,evento_idevento)
    VALUES (1,'cerimonia',1),(2, 'espaço de dança',1), (3, 'buffet',1);
    """

    # linha_log = []
    # for i in range(1,tamanho_seed):
    #     id = i
    #     date_time = fake.date_time()
    #     idusuario = random.choice([1,2])

    #     linha_log.append(f"""(
    #     {id},
    #     '{date_time}',                 
    #     {idusuario}
    #     )""")

    # # sql += f"""
    # # INSERT INTO log (idlogin_log,date_time,usuario_idusuario)
    # # VALUES
    # # """+",\n".join(linha_log)+";\n"

    return sql

if __name__ == "__main__":
    while True:
        try:
            qtd = int(input("Quantas convidados deseja inserir? "))
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