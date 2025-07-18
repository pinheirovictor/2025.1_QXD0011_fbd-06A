from fastapi import FastAPI
from crud_departamento import router as departamento_router



app = FastAPI(
    title="API Empresa",
    version="1.0"
)

app.include_router(
    departamento_router, 
 prefix="/departamentos", 
 tags=["Departamentos"])


# uvicorn main:app --reload

# python -m uvicorn main:app --reload