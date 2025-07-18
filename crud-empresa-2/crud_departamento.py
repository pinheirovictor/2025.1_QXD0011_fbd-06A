from fastapi import  APIRouter, HTTPException
from db import get_connection
from models import Departamento
from typing import List, Optional


router = APIRouter()

@router.post("/departamento")
async def criar_departamento(dep: Departamento):
    conn = get_connection()
    cur = conn.cursor()
    try:
        cur.execute(
            """"
            INSERT INTO departamento(
                dnumero, dnome, cpf_gerente, data_inicio_gerente) 
                VALUES (%s, %s, %s, %s)
            """,
            (dep.dnumero, dep.dnome, dep.cpf_gerente, dep.data_inicio_gerente)
        )
        conn.commit()
    except Exception as e:
        conn.rollback()
        raise HTTPException(status_code=400, detail="Erro")
    finally:
        cur.close()
        conn.close()
    return {"msg": "Departamento criado com sucesso"}



@router.get("/departamentos", response_model=List[Departamento])
async def listar_departamentos():
    conn = get_connection()
    cur = conn.cursor()
    cur.execute("SELECT * FROM departamento")
    rows = cur.fetchall()
    cur.close()
    conn.close()
    return [
        Departamento(
            dnumero=d[0], 
            dnome=d[1], 
            cpf_gerente=d[2], 
            data_inicio_gerente=d[3]
        )for d in rows
    ]