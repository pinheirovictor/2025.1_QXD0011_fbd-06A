from pydantic import BaseModel
from typing import List, Optional
from datetime import date

class Departamento(BaseModel):
    dnumero: int
    dnome: str
    cpf_gerente: Optional[str] = None
    data_inicio_gerente: Optional[date] = None

class DepartamentoUpdate(BaseModel):
    dnome: str
    cpf_gerente: Optional[str] = None
    data_inicio_gerente: Optional[date] = None

class Funcionario(BaseModel):
    pnome: str
    minicial: Optional[str] = None
    unome: str
    cpf: str
    datanasc: Optional[date] = None
    endereco: Optional[str] = None
    sexo: Optional[str] = None
    salario: Optional[float] = None
    cpf_supervisor: Optional[str] = None
    dnr: Optional[int] = None
    
class FuncionarioUpdate(BaseModel):
    pnome: Optional[str] = None
    minicial: Optional[str] = None
    unome: Optional[str] = None
    datanasc: Optional[str] = None   # Ou datetime.date
    endereco: Optional[str] = None
    sexo: Optional[str] = None
    salario: Optional[float] = None
    cpf_supervisor: Optional[str] = None
    dnr: Optional[int] = None
    
class LocalizacaoDep(BaseModel):
    dnumero: int
    dlocal: str

class Projeto(BaseModel):
    projnumero: int
    projnome: str
    projlocal: Optional[str] = None
    dnum: int
    
class ProjetoUpdate(BaseModel):
    projnome: str
    projlocal: Optional[str] = None
    dnum: int
    
class TrabalhaEm(BaseModel):
    fcpr: str
    pnr: int
    horas: float
    
class Depedente(BaseModel):
    fcpr: int
    nome_dependente: str
    sexo: Optional[str]= None
    datanasc: Optional[date] = None
    parentesco: Optional[str]= None