from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def home():
    return {"message": "Hello from FastAPI on EC2! (No Docker) 🚀 and Naveen"}

@app.get("/health")
def health():
    return {"status": "ok"}