import re

def validate_email(email):
  if not email:
    return False, "email é obrigado"
  pattern = r"^[\w\.-]+@[\w\.-]+.\w+$"
  if not re.match(pattern, email):
    return False, "email inválido"
  return True,""

def validate_password(password):
  if not password:
     return False, "senha é obrigada"
  if len(password) < 6:
     return False, "senha deve ter pelo menos 6 caracteres"
  return True,""