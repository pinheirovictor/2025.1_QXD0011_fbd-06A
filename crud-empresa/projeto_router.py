from fastapi import APIRouter, HTTPException
from db import get_connection
from models import Projeto
from typing import List

router = APIRouter()

@router.get("/projetos", response_model=List[Projeto])
async def listar_projetos():
    conn = get_connection()
    cur = conn.cursor()
    cur.execute("SELECT projnumero, projnome, projlocal, dnum FROM projeto")
    rows = cur.fetchall()
    cur.close()
    conn.close()
    return [Projeto(projnumero=r[0], projnome=r[1], projlocal=r[2], dnum=r[3]) for r in rows]

@router.get("/projeto/{projnumero}", response_model=Projeto)
async def get_projeto(projnumero: int):
    conn = get_connection()
    cur = conn.cursor()
    cur.execute("SELECT projnumero, projnome, projlocal, dnum FROM projeto WHERE projnumero=%s", (projnumero,))
    row = cur.fetchone()
    cur.close()
    conn.close()
    if row:
        return Projeto(projnumero=row[0], projnome=row[1], projlocal=row[2], dnum=row[3])
    raise HTTPException(404, "Projeto não encontrado")

@router.post("/projeto")
async def criar_projeto(proj: Projeto):
    conn = get_connection()
    cur = conn.cursor()
    try:
        cur.execute(
            "INSERT INTO projeto (projnumero, projnome, projlocal, dnum) VALUES (%s, %s, %s, %s)",
            (proj.projnumero, proj.projnome, proj.projlocal, proj.dnum)
        )
        conn.commit()
    except Exception as e:
        conn.rollback()
        raise HTTPException(400, f"Erro ao criar projeto: {e}")
    finally:
        cur.close()
        conn.close()
    return {"msg": "Projeto criado com sucesso"}

@router.delete("/projeto/{projnumero}")
async def deletar_projeto(projnumero: int):
    conn = get_connection()
    cur = conn.cursor()
    cur.execute("DELETE FROM projeto WHERE projnumero=%s", (projnumero,))
    conn.commit()
    cur.close()
    conn.close()
    return {"msg": "Projeto removido"}
