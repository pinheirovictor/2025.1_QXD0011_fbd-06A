from fastapi import APIRouter, HTTPException
from db import get_connection
from models import TrabalhaEm
from typing import List

router = APIRouter()

@router.get("/trabalhaem", response_model=List[TrabalhaEm])
async def listar_trabalhaem():
    conn = get_connection()
    cur = conn.cursor()
    cur.execute("SELECT fcpf, pnr, horas FROM trabalhaem")
    rows = cur.fetchall()
    cur.close()
    conn.close()
    return [TrabalhaEm(fcpf=r[0], pnr=r[1], horas=r[2]) for r in rows]

@router.get("/trabalhaem/{fcpf}/{pnr}", response_model=TrabalhaEm)
async def get_trabalhaem(fcpf: str, pnr: int):
    conn = get_connection()
    cur = conn.cursor()
    cur.execute("SELECT fcpf, pnr, horas FROM trabalhaem WHERE fcpf=%s AND pnr=%s", (fcpf, pnr))
    row = cur.fetchone()
    cur.close()
    conn.close()
    if row:
        return TrabalhaEm(fcpf=row[0], pnr=row[1], horas=row[2])
    raise HTTPException(404, "Registro não encontrado")

@router.post("/trabalhaem")
async def criar_trabalhaem(te: TrabalhaEm):
    conn = get_connection()
    cur = conn.cursor()
    try:
        cur.execute(
            "INSERT INTO trabalhaem (fcpf, pnr, horas) VALUES (%s, %s, %s)",
            (te.fcpf, te.pnr, te.horas)
        )
        conn.commit()
    except Exception as e:
        conn.rollback()
        raise HTTPException(400, f"Erro ao criar registro: {e}")
    finally:
        cur.close()
        conn.close()
    return {"msg": "Registro criado com sucesso"}

@router.delete("/trabalhaem/{fcpf}/{pnr}")
async def deletar_trabalhaem(fcpf: str, pnr: int):
    conn = get_connection()
    cur = conn.cursor()
    cur.execute("DELETE FROM trabalhaem WHERE fcpf=%s AND pnr=%s", (fcpf, pnr))
    conn.commit()
    cur.close()
    conn.close()
    return {"msg": "Registro removido"}
