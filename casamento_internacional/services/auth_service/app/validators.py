import re#compilador que analisa se existe com pattern

def validate_email(email):
    if not email:
        return False, "email é obrigatório"
    pattern = r"^[\w\.-]+@[\w\.-]+\.\w+$"
    if not re.match(pattern, email):
        return False, "email inválido"
    return True,""

def validate_password(password):
    if not password:
        return False, "senha é obrigatóra"
    if len(password) < 6:
        return False, "senha deve ter ao menos 6 caracteres"
    return True,""
