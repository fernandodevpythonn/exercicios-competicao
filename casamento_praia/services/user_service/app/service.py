from .database import get_connection
from .validator import hash_password, check_password, validate_email, validate_cpf,validate_password
from mysql.connector import IntegrityError

def list_users():
    conn = get_connection()
    cursor = conn.cursor(dictionary=True)
    cursor.execute("SELECT idusuario, nome, email, cpf, perfil FROM usuario")
    users = cursor.fetchall()
    cursor.close()
    conn.close()
    return users

def get_user(userid):
    conn = get_connection()
    cursor = conn.cursor(dictionary=True)
    cursor.execute("SELECT idusuario, nome, email,cpf, perfil FROM usuario WHERE idusuario=%s", (userid,))
    user = cursor.fetchone()
    cursor.close()
    conn.close()
    return user

def create_user(data):
    email_valid, msg = validate_email(data.get("email"))
    if not email_valid:
        return None, msg
    password_valid, msg = validate_password(data.get("senha"))
    if not password_valid:
        return None, msg
    cpf_valid, msg = validate_cpf(data.get("cpf"))
    if not cpf_valid:
        return None, msg
    
    conn = get_connection()
    cursor = conn.cursor()

    try:
        cursor.execute(
            "INSERT INTO usuario (nome, cpf, email, senha, perfil) VALUES (%s,%s,%s,%s,%s)",
            (data['nome'], data['cpf'], data['email'], hash_password(data['senha'], data['perfil']))
        )
        conn.commit()
        userid = cursor.lastrowid#perguntar
    except IntegrityError as e:#perguntar
        conn.rollback()#perguntar
        cursor.close()
        conn.close()
        return None, "email ou cpf ja cadastrado"
    cursor.close()
    conn.close()
    return userid, None

def update_user(userid, data):
    conn = get_connection()
    cursor = conn.cursor()
    set_clause = []
    values = []

    for key in ["nome","email","senha","cpf","perfil"]:
        if key in data:
            if key == "senha":
                values.append(hash_password(data[key]))
            else:
                values.append(data[key])
            set_clause.append(f"{key}=%s")
    query = f"UPDATE usuario SET {', '.join(set_clause)} WHERE idusuario=%s"
    cursor.execute(query, values + [userid])
    conn.commit()
    cursor.close()
    conn.close()

def delete_user(userid):
    conn = get_connection()
    cursor = conn.cursor()
    cursor.execute("DELETE FROM usuario WHERE idusuario=%s", (userid, ))
    conn.commit()
    cursor.close()
    conn.close()

