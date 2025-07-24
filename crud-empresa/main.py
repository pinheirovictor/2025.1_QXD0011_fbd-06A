from fastapi import FastAPI

from crud_departamento import router as departamento_router
from crud_funcionario import router as funcionario_router
from localizacaodep_router import router as localizacaodep_router
from projeto_router import router as projeto_router
from trabalhaem_router import router as trabalhaem_router
from crud_departamento import router as dependente_router

app = FastAPI(
    title="API Empresa",
    version="1.0"
)

app.include_router(departamento_router, prefix="/departamentos", tags=["Departamentos"])
# app.include_router(funcionario_router, prefix="/funcionarios", tags=["Funcionários"])
# app.include_router(localizacaodep_router, prefix="/localizacoesdep", tags=["Localizações"])
# app.include_router(projeto_router, prefix="/projetos", tags=["Projetos"])
# app.include_router(trabalhaem_router, prefix="/trabalhaem", tags=["Trabalha em"])
# app.include_router(dependente_router, prefix="/dependentes", tags=["Dependentes"])
