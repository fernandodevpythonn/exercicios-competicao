from pydantic import BaseModel, EmailStr, constr
from typing import Optional

class UserBase(BaseModel):
  nome: str
  cpf: str
  email = EmailStr
  id_perfil: int

class UserCreate(UserBase):
  senha: str

class UserUpdate(BaseModel):
  nome: Optional[str]
  cpf: Optional[str]
  email: Optional[EmailStr]
  senha: Optional[str]
  id_perfil: Optional[int]

class UserOut(UserBase):
  id_usuario: int