from fastapi import FastAPI
from fastapi.encoders import jsonable_encoder
from services.read_table import get_entrerprise
from fastapi.middleware.cors import CORSMiddleware


origins ="*"





app = FastAPI()

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

@app.get('/search/{name}')
async def searchEnterprise(name: str):
    data = get_entrerprise(name)
    if data == "Empresa Não Encontrada":
        return {"message": data}


    response = jsonable_encoder(data)
    return response
