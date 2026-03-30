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