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

    sql += f"""
  INSERT INTO usuario (idusuario,nome,email,senha,perfil)
  VALUES (1, 'mario', 'marioadm@gmail.com','{gerar_hash('54458799')}','administrador'),
  (2, 'juliana','julianausu@gmail.com','{gerar_hash('36645700')}', 'usuario')
  """
    
    sql += f"""
  INSERT INTO evento (idevento,nome,date_time,cidade,bairro,rua,numero,cep)
  VALUES (1, 'mini wedding', '{fake.date_time()}','porto alegre', 'farrapos', 'limario', 455, 06958476)
  """
    
    linha_convidado = []
    for i in range(tamanho_seed):
      id = i
      nome = fake.name_nonbinary()
      email = fake.email()
      cpf = fake.cpf()
      restricao_alimentar = random.choice(['Nenhuma','Lactose','açucar'])
      linha_convidado.append(f"""(
      {id},
      '{nome}',
      '{email}',
      '{cpf}',
      '{restricao_alimentar}'                      
      )""")
    sql += f"""
  INSERT INTO convidado (idconvidado,nome,email,cpf,evento_idevento,restricao_alimentar)
  VALUES
  """+",\n".join(linha_convidado)+";\n"
    
    linha_checkin = []
    for i in range(tamanho_seed):
      id = i
      status = "confirmado"
      linha_checkin.append(f"""(
      {id},
      '{status}'                     
      )""")
    sql += f"""
  INSERT INTO checkin (idcheckin,convidado_idconvidado, usuario_idusuario,status)
  VALUES
  """+",\n".join(linha_checkin)+";\n"
    
    linha_log = []
   
    for i in range(tamanho_seed):
      id = i
      date_time = fake.date_time()
      idusaurio = random.choice([1,2])
      linha_log.append(f"""(
      {id},
      '{date_time}',
      {idusaurio}
      )""")
    sql += f"""
  INSERT INTO log (idlogin_log,date_time,usuario_idusuario)
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