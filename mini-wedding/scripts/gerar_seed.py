from faker import Faker
import random
import bcrypt

fake = Faker('pt_BR')

def limpar_cpf(cpf:str):
  return ''.join(filter(str.isdigit,cpf))

def gerar_hash(senha:str):
  return bcrypt.hashpw(senha.encode('utf-8'), bcrypt.gensalt()).decode('utf-8')

def gerar_sql(tamanho_seed: int):
    sql = "-- seed mini wedding \n"
  
    linha_usuario = []

    for i in range(1,tamanho_seed):
      id = i
      nome = fake.name()
      email = fake.email()
      senha = gerar_hash(fake.password(length=10))
      perfil = random.choice(['administrador', 'cerimonialista'])
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
  """+ ",\n".join(linha_usuario)+";\n"
    

    linha_evento = []
    date = fake.date()+" "
    time =fake.time()
    for i in range(1,tamanho_seed):
       id = i
       nome = "mini wedding urbano"
       date_time = date+time
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
    
    linha_convidado = []
    for i in range(tamanho_seed):
      id = i
      nome = fake.name_nonbinary()
      email = fake.email()
      cpf = fake.cpf()
      restricao_alimentar = random.choice(['Nenhuma','Leite','açucar'])
      linha_convidado.append(f"""(
      '{id}',
      '{nome}',
      '{email}',
      '{cpf}',
      '{restricao_alimentar}'                      
      )""")
    sql += f"""
  INSERT INTO convidado (idconvidado,nome,email,cpf,restricao_alimentar)
  VALUES
  """+",\n".join(linha_convidado)+";\n"
    
    linha_checkin = []
    for i in range(tamanho_seed):
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
    
    linha_log = []
   
    for i in range(tamanho_seed):
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

    return sql
  
if __name__ =="__main__":
  while True:
    try:
      tamanho = int(input("Quantas linhas deseja inseir? "))
      if tamanho >= 10:
        break
      else:
        print("Erro: Digite um tamanho maior que 10")
    except ValueError:
      print("Valor inválido")

  sql = gerar_sql(tamanho)

  with open("seed.sql", "w", encoding="utf-8") as f:
    f.write(sql)
  
  print("Seed gerado com sucesso")