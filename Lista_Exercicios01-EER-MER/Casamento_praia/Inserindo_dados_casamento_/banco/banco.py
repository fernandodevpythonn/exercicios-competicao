import mysql.connector
from mysql.connector import Error

def inserir_dados(contador,quantidade):
    conexao = mysql.connector.connect(
        host = "localhost",
        user = "root",
        password = "",
        database = "casamento"
    )
    cursor = conexao.cursor()
    while contador < quantidade:
      def inserir_local(): #Adiciona os dados na tabela local
       cursor.execute("""
        INSERT INTO local (rua,numero)
        VALUES ('joao de oliveira',500)
       """)
      def inserir_evento():
        cursor.execute("""
         INSERT INTO evento (nome,local_idlocal,data_time)
         VALUES ('casamento',82374,'19/03/2026')
        """)
      contador+=1
      conexao.commit()
      inserir_local()#insere dados na tabela local
      inserir_evento()#insere dados na tabela evento
contador = 0
print("----Preenchendo tabelas----")
quantidade = int(input("quantidade de dados: "))
def preencher_tabelas():#recebe as função que cria todos os inserts nas tabelas
  inserir_dados(contador,quantidade)
preencher_tabelas()