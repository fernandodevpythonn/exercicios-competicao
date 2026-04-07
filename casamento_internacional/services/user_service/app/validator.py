import re
import bcrypt

def validate_email(email):
    if not email:
        return False, "email é obrigatório"
    pattern = r"^[a-zA-Z0-9_.+-]+@[a-zA-z0-9-]+\.[a-zA-Z]{2,}$"
    if not re.match(pattern, email):
        return False, "email inválido"
    return True, ""

def validate_password(password):
    if not password:
        return False, "senha é obrigatória"
    if len(password) < 6:
        return False, "senha deve ter ao menos 6 caracteres"
    if not re.search(r"[A-Za-z]", password) or not re.search(r"\d", password):
        return False, "senha deve conter letras e números"
    return True, ""

def hash_password(password):
    return bcrypt.hashpw(password.encode(), bcrypt.gensalt()).decode()

def check_password(password, hashed):
    return bcrypt.checkpw(password.encode(), hashed.encode())

def validate_cpf(cpf):
    if not cpf or not re.match(r"^\d{11}$", cpf):
        return False, "cpf inválido. Deve conter 11 números."
    return True, ""