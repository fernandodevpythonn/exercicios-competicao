from .database import get_connection
import mysql.connector

def realizar_checkin(idconvidado, idusuario):
  conn = get_connection()
  cursor = conn.cursor(dictionary=True)

  try:

    cursor.execute("""
        SELECT idconvidado
        FROM convidado
        WHERE idconvidado = %s
    """, (idconvidado,))

    convidado = cursor.fetchone()

    if not convidado:
      return {"erro": "convidado nao encontrado"}, 404

    cursor.execute("""
       INSERT INTO checkin (usuario_idusuario, convidado_idconvidado)              
       VALUES (%s, %s)
    """, (idusuario, idconvidado))

    cursor.execute("""
        UPDATE convidado
        SET status = 'confirmado'
        WHERE idconvidado = %s
    """, (idconvidado,))

    return {"message":"checkin realizado"}, 201

  except mysql.connector.IntegrityError:
    return {"erro":"checkin ja realizado"}, 400

  except Exception as e:
    return {"erro": "erro interno", "details": str(e)}, 500


  finally:
    cursor.close()
    conn.close()