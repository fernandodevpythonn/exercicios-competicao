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


      sql += f"""
  INSERT INTO usuario (idusuario,nome,email,senha,perfil)VALUES
  (1, 'maria','adminmaria@gmail.com', '{gerar_hash('060606')}','administrador'),
  (2, 'joao','cerimonialjoao@gmail.com', '{gerar_hash('545454')}','cerimonialista');
  """
     
      sql += f"""
    INSERT INTO evento (idevento,nome,cidade,bairro,rua,numero,data_time)
    VALUES (1,'casamento na praia','porto alegre','agronomia','marcioholver', 102, '20/03/2026 20:30:00');
    """
      
      linha_convidado = []

      for i in range(1,tamanho_seed):
        id = i
        nome = fake.name()
        email = fake.email()
        cpf = limpar_cpf(fake.cpf())
        id_evento = 1
        linha_convidado.append(f"""(
        {id},
        '{nome}',
        '{email}',
        {cpf},
        {id_evento}
        )""")

      sql += f"""
    INSERT INTO convidado (idconvidado,nome,email,cpf,evento_idevento)
    VALUES
    """+",\n".join(linha_convidado)+";\n"
      

      
      sql += f"""
    INSERT INTO area (idarea,evento_idevento,area)
    VALUES (1,1,'cerimonia'),
    (2,1,'buffet'),
    (3,1,'area de danca');
    """
      
      linha_checkin = []
      for i in range(1,tamanho_seed):
        id = i
        status = "confirmado"
        id_usuario = random.choice([1,2])
        id_convidado = i
        linha_checkin.append(f"""(
        {id},
        {id_convidado},                 
        {id_usuario},
        '{status}'
        )""")
      
      sql += f"""
    INSERT INTO checkin (idcheckin,convidado_idconvidado, usuario_idusuario, status)
    VALUES
    """+",\n".join(linha_checkin)+";\n"
      
      linha_log = []
      for i in range(1,tamanho_seed):
        id = i
        idusuario = random.choice([1,2])
        datetime = fake.date_time()
        linha_log.append(f"""(
        {id},
        {idusuario},
        '{datetime}'                 
        )""")
      sql += f"""
INSERT INTO log (idlog,usuario_idusuario,datetime)
VALUES
"""+",\n".join(linha_log)+";\n"

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
