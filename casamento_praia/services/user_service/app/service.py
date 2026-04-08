from .database import get_connection
from .validator import hash_password, check_password, validate_email, validate_cpf,validate_password
from mysql.connector import IntegrityError

def list_users():
    conn = get_connection()
    cursor = conn.cursor(dictionary=True)
    cursor.execute("SELECT idusuario, nome, cpf, email, perfil FROM usuario")
    users = cursor.fetchall()
    cursor.close()
    conn.close()
    return users

def get_user(userid):
    conn = get_connection()
    cursor = conn.cursor(dictionary=True)
    cursor.execute("SELECT idusuario, nome, cpf, email, perfil FROM usuario WHERE idusuario=%s", (userid,))
    user = cursor.fetchone()
    cursor.close()
    conn.close()
    return user

