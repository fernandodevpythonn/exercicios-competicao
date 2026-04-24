from .database import get_connection
from mysql.connector import IntegrityError

def list_guests(event_id=None):
    conn = get_connection()
    cursor = conn.cursor(dictionary=True)
    query = "SELECT * FROM convidado"
    params = []
    if event_id:
        query += "WHERE idevento=%s"
        params.append(event_id)
    cursor.execute(query, params)
    result = cursor.fetchall()
    cursor.close()
    conn.close()
    return result

def get_guest(guest_id):
    conn = get_connection()
    cursor = conn.cursor(dictionary=True)#usar dicionario quando não puder ser null
    cursor.execute("SELECT * FROM convidado WHERE idconvidado=%s", (guest_id,))
    guest = cursor.fetchone()
    cursor.close()
    conn.close()
    return guest

def create_guest(data):
    conn = get_connection()
    cursor = conn.cursor()
    query = """INSERT INTO convidado
       (nome,email,perfil,evento_idevento)
       VALUES (%s,%s,%s,%s)"""
    cursor.execute(query, (
        data['nome'], data['email'],data['perfil'],data['evento_idevento']
    ))
    conn.commit()
    guest_id = cursor.lastrowid#perguntar
    cursor.close()
    conn.close()
    return guest_id

def update_guest(guest_id, data):
    conn = get_connection()
    cursor = conn.cursor()
    set_clause =", ".join(f"{k}=%s" for k in data.keys())
    query = f"UPDATE convidado SET {set_clause} WHERE idconvidado=%s"
    cursor.execute(query, list(data.values()) + [guest_id])
    conn.commit()
    cursor.close()
    conn.close()

def delete_guest(guest_id):
    conn = get_connection()
    cursor = conn.cursor()
    cursor.execute("DELETE FROM convidado WHERE idconvidado=%s", (guest_id))

def checkin_guest(guest_id, user_id):
    conn = get_connection()
    cursor = conn.cursor()
    try:
        cursor.execute("INSERT INTO checkin (usuario_idusuario, convidado_idconvidado) VALUES (%s,%s)", (user_id,guest_id))
        cursor.execute("UPDATE convidado SET status='confirmado' WHERE idconvdiado=%s", (guest_id,))
        conn.commit()
        return True
    except IntegrityError:
        return False
    finally:
        cursor.close()
        conn.close()