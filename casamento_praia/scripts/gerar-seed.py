from faker import Faker
import random
import bcrypt

fake = Faker('pt_BR')

def limpar_cpf(cpf: str):
  return ''.join(filter(str.isdigit,cpf))

def gerar_hash(senha: str):
  #Fazendo criptografia de senha
  return bcrypt.hashpw(senha.encode('utf-8'), bcrypt.gensalt()).decode('utf-8')

def gerar_sql(tamanho_seed: int):
      sql = "-- seed casamento praia \n\n"

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

      linha_convidado = []

      for i in range(1,tamanho_seed):
        id = i
        nome = fake.name()
        email = fake.email()
        cpf = limpar_cpf(fake.cpf())
        linha_convidado.append(f"""(
        '{id}',
        '{nome}',
        '{email}',
        '{cpf}'
        )""")

      sql += f"""
    INSERT INTO convidado (idconvidado,nome,email,cpf)
    VALUES
    """+",\n".join(linha_convidado)+";\n"
      
      linha_evento = []
      data = fake.date()+" "
      time = fake.time()
      date_time = data+time
      for i in range(1,tamanho_seed):
        id = i
        nome = fake.name_nonbinary()
        cidade = fake.city()
        bairro = fake.bairro()
        rua = fake.street_address()
        numero = fake.random_number()
        date_time = date_time
        linha_evento.append(f"""(
        '{id}',
        '{nome}',
        '{cidade}',
        '{bairro}',
        '{rua}',
        '{numero}',
        '{date_time}'
        )""")
      sql += f"""
    INSERT INTO evento (idevento,nome,cidade,bairro,rua,numero,data_time)
    VALUES
    """+",\n".join(linha_evento)+";\n"
      
      linha_area = []
      for i in range(1,tamanho_seed):
        id = i
        area = random.choice(['buffet','casamento','pista de dança'])
        linha_area.append(f"""(
        '{id}',
        '{area}'                
        )""")
      sql += f"""
    INSERT INTO area (idarea,area)
    VALUES
    """+",\n".join(linha_area)+";\n"
      
      linha_checkin = []
      for i in range(1,tamanho_seed):
        id = i
        qrcode = fake.numerify()
        linha_checkin.append(f"""(
        '{id}',
        '{qrcode}'                     
        )""")
      
      sql += f"""
    INSERT INTO checkin (idcheckin,qrcode)
    VALUES
    """+",\n".join(linha_checkin)+";\n"
      
      return sql
      
   

if __name__ == "__main__":
  while True:
    try:
      tamanho = int(input("Quantos dados deseja inserir nas tabelas? "))
      if tamanho >= 10:
        break
      else:
        print("Tamanho inválido (Mínimo 10)")
    except ValueError:
      print("Erro, valor inválido")
  sql = gerar_sql(tamanho)

  with open("seed.sql", "w", encoding="utf-8") as f:
    f.write(sql)
 
  print("Seed gerado com sucesso")
