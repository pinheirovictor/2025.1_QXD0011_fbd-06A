from fastapi import APIRouter, HTTPException
from db import get_connection
from models2 import DepartamentoCompletoCreate

router = APIRouter()

@router.post("/departamento/completo")
async def criar_departamento_completo(dep: DepartamentoCompletoCreate):
    conn = get_connection()
    cur = conn.cursor()
    try:
        # INICIA TRANSAÇÃO
        cur.execute("BEGIN;")

        # 1. Cria departamento sem gerente ainda (cpf_gerente NULL)
        cur.execute(
            "INSERT INTO departamento (dnumero, dnome, cpf_gerente) VALUES (%s, %s, NULL)",
            (dep.dnumero, dep.dnome)
        )

        # 2. Cria gerente já vinculado a esse departamento (depois atualiza cpf_gerente)
        gerente = dep.gerente
        cur.execute(
            "INSERT INTO funcionario (pnome, minicial, unome, cpf, datanasc, endereco, sexo, salario, cpf_supervisor, dnr) "
            "VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)",
            (gerente.pnome, gerente.minicial, gerente.unome, gerente.cpf, gerente.datanasc,
             gerente.endereco, gerente.sexo, gerente.salario, gerente.cpf_supervisor, dep.dnumero)
        )

        # 3. Atualiza departamento com cpf_gerente
        cur.execute(
            "UPDATE departamento SET cpf_gerente=%s WHERE dnumero=%s",
            (gerente.cpf, dep.dnumero)
        )

        # 4. Cria localizações do departamento
        for loc in dep.localizacoes:
            cur.execute(
                "INSERT INTO localizacao_dep (dnumero, dlocal) VALUES (%s, %s)",
                (dep.dnumero, loc.dlocal)
            )

        # 5. Cria projetos do departamento
        for proj in dep.projetos:
            cur.execute(
                "INSERT INTO projeto (projnumero, projnome, projlocal, dnum) VALUES (%s, %s, %s, %s)",
                (proj.projnumero, proj.projnome, proj.projlocal, dep.dnumero)
            )

        # 6. Cria outros funcionários (se informados)
        if dep.funcionarios:
            for func in dep.funcionarios:
                cur.execute(
                    "INSERT INTO funcionario (pnome, minicial, unome, cpf, datanasc, endereco, sexo, salario, cpf_supervisor, dnr) "
                    "VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)",
                    (func.pnome, func.minicial, func.unome, func.cpf, func.datanasc,
                     func.endereco, func.sexo, func.salario, func.cpf_supervisor, dep.dnumero)
                )

        conn.commit()
    except Exception as e:
        conn.rollback()
        raise HTTPException(400, f"Erro ao criar departamento completo: {e}")
    finally:
        cur.close()
        conn.close()
    return {"msg": "Departamento e relacionados criados com sucesso"}
