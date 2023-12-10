from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from credsly.utils.health import HealthCheck

app = FastAPI()

#? Add CORS middleware
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

@app.get(path="/health",response_model=HealthCheck,status_code=200)
async def health_check():
    return HealthCheck(status="OK")