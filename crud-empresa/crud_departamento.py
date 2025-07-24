from fastapi import APIRouter, HTTPException
from db import get_connection
from models import Departamento
from typing import List, Optional
from models import DepartamentoUpdate

router = APIRouter()

@router.post("/departamento")
async def criar_departamento(dep: Departamento):
    conn = get_connection()
    cur = conn.cursor()
    try:
        cur.execute(
            "INSERT INTO departamento (dnumero, dnome, cpf_gerente, data_inicio_gerente) VALUES (%s, %s, %s, %s)",
            (dep.dnumero, dep.dnome, dep.cpf_gerente, dep.data_inicio_gerente)
        )
        conn.commit()
    except Exception as e:
        conn.rollback()
        raise HTTPException(400, f"Erro ao criar departamento: {e}")
    finally:
        cur.close()
        conn.close()
    return {"msg": "Departamento criado com sucesso"}


@router.get("/departamentos", response_model=List[Departamento])
async def listar_departamentos():
    conn = get_connection()
    cur = conn.cursor()
    cur.execute("SELECT dnumero, dnome, cpf_gerente, data_inicio_gerente FROM departamento")
    rows = cur.fetchall()
    cur.close()
    conn.close()
    return [
        Departamento(
            dnumero=d[0], dnome=d[1], cpf_gerente=d[2], data_inicio_gerente=d[3]
        ) for d in rows
    ]

@router.get("/departamento/{dnumero}", response_model=Departamento)
async def get_departamento(dnumero: int):
    conn = get_connection()
    cur = conn.cursor()
    cur.execute("SELECT dnumero, dnome, cpf_gerente, data_inicio_gerente FROM departamento WHERE dnumero=%s", (dnumero,))
    row = cur.fetchone()
    cur.close()
    conn.close()
    if row:
        return Departamento(dnumero=row[0], dnome=row[1], cpf_gerente=row[2], data_inicio_gerente=row[3])
    raise HTTPException(404, "Departamento não encontrado")


@router.patch("/departamento/{dnumero}")
async def atualizar_departamento_parcial(dnumero: int, dep: DepartamentoUpdate):
    conn = get_connection()
    cur = conn.cursor()
    cur.execute("SELECT dnumero FROM departamento WHERE dnumero=%s", (dnumero,))
    if not cur.fetchone():
        cur.close()
        conn.close()
        raise HTTPException(404, "Departamento não encontrado")
    fields = []
    values = []
    for campo, valor in dep.dict(exclude_unset=True).items():
        fields.append(f"{campo}=%s")
        values.append(valor)
    if not fields:
        cur.close()
        conn.close()
        raise HTTPException(400, "Nenhum campo informado para atualização")
    values.append(dnumero)
    try:
        cur.execute(f"UPDATE departamento SET {', '.join(fields)} WHERE dnumero=%s", values)
        conn.commit()
    except Exception as e:
        conn.rollback()
        raise HTTPException(400, f"Erro ao atualizar: {e}")
    finally:
        cur.close()
        conn.close()
    return {"msg": "Departamento atualizado"}

@router.delete("/departamento/{dnumero}")
async def deletar_departamento(dnumero: int):
    conn = get_connection()
    cur = conn.cursor()
    cur.execute("DELETE FROM departamento WHERE dnumero=%s", (dnumero,))
    conn.commit()
    cur.close()
    conn.close()
    return {"msg": "Departamento removido"}



