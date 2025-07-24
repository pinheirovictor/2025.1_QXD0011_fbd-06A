from fastapi import APIRouter, HTTPException
from db import get_connection
from models import Funcionario, FuncionarioUpdate

router = APIRouter()

@router.get("/funcionarios")
async def listar_funcionarios():
    conn = get_connection()
    cur = conn.cursor()
    cur.execute("SELECT pnome, minicial, unome, cpf, datanasc, endereco, sexo, salario, cpf_supervisor, dnr FROM funcionario")
    rows = cur.fetchall()
    cur.close()
    conn.close()
    return [
        Funcionario(
            pnome=r[0], minicial=r[1], unome=r[2], cpf=r[3],
            datanasc=r[4], endereco=r[5], sexo=r[6],
            salario=r[7], cpf_supervisor=r[8], dnr=r[9]
        ).dict()
        for r in rows
    ]

@router.get("/funcionario/{cpf}")
async def get_funcionario(cpf: str):
    conn = get_connection()
    cur = conn.cursor()
    cur.execute("SELECT pnome, minicial, unome, cpf, datanasc, endereco, sexo, salario, cpf_supervisor, dnr FROM funcionario WHERE cpf=%s", (cpf,))
    row = cur.fetchone()
    cur.close()
    conn.close()
    if row:
        return Funcionario(
            pnome=row[0], minicial=row[1], unome=row[2], cpf=row[3],
            datanasc=row[4], endereco=row[5], sexo=row[6],
            salario=row[7], cpf_supervisor=row[8], dnr=row[9]
        ).dict()
    raise HTTPException(404, "Funcionário não encontrado")

@router.post("/funcionario")
async def criar_funcionario(func: Funcionario):
    conn = get_connection()
    cur = conn.cursor()
    try:
        cur.execute(
            "INSERT INTO funcionario (pnome, minicial, unome, cpf, datanasc, endereco, sexo, salario, cpf_supervisor, dnr) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)",
            (
                func.pnome, func.minicial, func.unome, func.cpf, func.datanasc,
                func.endereco, func.sexo, func.salario, func.cpf_supervisor, func.dnr
            )
        )
        conn.commit()
    except Exception as e:
        conn.rollback()
        raise HTTPException(400, f"Erro ao criar funcionário: {e}")
    finally:
        cur.close()
        conn.close()
    return {"msg": "Funcionário criado com sucesso"}

@router.put("/funcionario/{cpf}")
async def atualizar_funcionario(cpf: str, func: Funcionario):
    conn = get_connection()
    cur = conn.cursor()
    cur.execute("SELECT cpf FROM funcionario WHERE cpf=%s", (cpf,))
    if not cur.fetchone():
        cur.close()
        conn.close()
        raise HTTPException(404, "Funcionário não encontrado")
    try:
        cur.execute(
            """UPDATE funcionario SET
                pnome=%s, minicial=%s, unome=%s, datanasc=%s,
                endereco=%s, sexo=%s, salario=%s, cpf_supervisor=%s, dnr=%s
                WHERE cpf=%s""",
            (
                func.pnome, func.minicial, func.unome, func.datanasc,
                func.endereco, func.sexo, func.salario, func.cpf_supervisor,
                func.dnr, cpf
            )
        )
        conn.commit()
    except Exception as e:
        conn.rollback()
        raise HTTPException(400, f"Erro ao atualizar: {e}")
    finally:
        cur.close()
        conn.close()
    return {"msg": "Funcionário atualizado"}

@router.patch("/funcionario/{cpf}")
async def atualizar_funcionario_parcial(cpf: str, func: FuncionarioUpdate):
    conn = get_connection()
    cur = conn.cursor()

    # Busca o funcionário para garantir que existe
    cur.execute("SELECT cpf FROM funcionario WHERE cpf=%s", (cpf,))
    if not cur.fetchone():
        cur.close()
        conn.close()
        raise HTTPException(404, "Funcionário não encontrado")

    # Monta dinamicamente o SQL para atualizar só os campos informados
    campos = []
    valores = []
    for campo, valor in func.dict(exclude_unset=True).items():
        campos.append(f"{campo}=%s")
        valores.append(valor)
    
    if not campos:
        cur.close()
        conn.close()
        raise HTTPException(400, "Nenhum campo informado para atualização")

    valores.append(cpf)
    query = f"UPDATE funcionario SET {', '.join(campos)} WHERE cpf=%s"

    try:
        cur.execute(query, tuple(valores))
        conn.commit()
    except Exception as e:
        conn.rollback()
        raise HTTPException(400, f"Erro ao atualizar: {e}")
    finally:
        cur.close()
        conn.close()

    return {"msg": "Funcionário atualizado"}

@router.delete("/funcionario/{cpf}")
async def deletar_funcionario(cpf: str):
    conn = get_connection()
    cur = conn.cursor()
    cur.execute("DELETE FROM funcionario WHERE cpf=%s", (cpf,))
    conn.commit()
    cur.close()
    conn.close()
    return {"msg": "Funcionário removido"}
