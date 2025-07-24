from pydantic import BaseModel
from typing import List, Optional
from datetime import date

class ProjetoCreate(BaseModel):
    projnome: str
    projnumero: int
    projlocal: Optional[str] = None

class LocalizacaoDepCreate(BaseModel):
    dlocal: str

class FuncionarioCreate(BaseModel):
    pnome: str
    minicial: Optional[str] = None
    unome: str
    cpf: str
    datanasc: Optional[date] = None
    endereco: Optional[str] = None
    sexo: Optional[str] = None
    salario: Optional[float] = None
    cpf_supervisor: Optional[str] = None

class DepartamentoCompletoCreate(BaseModel):
    dnumero: int
    dnome: str
    localizacoes: List[LocalizacaoDepCreate]
    projetos: List[ProjetoCreate]
    gerente: FuncionarioCreate
    funcionarios: Optional[List[FuncionarioCreate]] = None   # além do gerente
