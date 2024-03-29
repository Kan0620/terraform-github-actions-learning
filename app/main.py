from fastapi import FastAPI
import uvicorn

app = FastAPI()

@app.get("/")
def index():
    return {"hello": "from AWS"}

if __name__ == "__main__":
    uvicorn.run("main:app", host="0.0.0.0", port=80, reload=True)