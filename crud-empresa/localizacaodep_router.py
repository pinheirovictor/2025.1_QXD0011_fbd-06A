from fastapi import APIRouter, HTTPException
from db import get_connection
from models import LocalizacaoDep
from typing import List

router = APIRouter()

@router.get("/localizacoesdep", response_model=List[LocalizacaoDep])
async def listar_localizacoes():
    conn = get_connection()
    cur = conn.cursor()
    cur.execute("SELECT dnumero, dlocal FROM localizacaodep")
    rows = cur.fetchall()
    cur.close()
    conn.close()
    return [LocalizacaoDep(dnumero=r[0], dlocal=r[1]) for r in rows]

@router.get("/localizacaodep/{dnumero}", response_model=LocalizacaoDep)
async def get_localizacao(dnumero: int):
    conn = get_connection()
    cur = conn.cursor()
    cur.execute("SELECT dnumero, dlocal FROM localizacaodep WHERE dnumero=%s", (dnumero,))
    row = cur.fetchone()
    cur.close()
    conn.close()
    if row:
        return LocalizacaoDep(dnumero=row[0], dlocal=row[1])
    raise HTTPException(404, "Localização não encontrada")

@router.post("/localizacaodep")
async def criar_localizacao(loc: LocalizacaoDep):
    conn = get_connection()
    cur = conn.cursor()
    try:
        cur.execute(
            "INSERT INTO localizacaodep (dnumero, dlocal) VALUES (%s, %s)",
            (loc.dnumero, loc.dlocal)
        )
        conn.commit()
    except Exception as e:
        conn.rollback()
        raise HTTPException(400, f"Erro ao criar localização: {e}")
    finally:
        cur.close()
        conn.close()
    return {"msg": "Localização criada com sucesso"}

@router.delete("/localizacaodep/{dnumero}")
async def deletar_localizacao(dnumero: int):
    conn = get_connection()
    cur = conn.cursor()
    cur.execute("DELETE FROM localizacaodep WHERE dnumero=%s", (dnumero,))
    conn.commit()
    cur.close()
    conn.close()
    return {"msg": "Localização removida"}
