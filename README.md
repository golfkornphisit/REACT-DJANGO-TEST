//ติดตั้ง
docker run --rm -it -v $(pwd):/code -w /code node:22.15 sh -c "npm create vite@latest frontend -- --template react && cd frontend/ && npm install"

- sudo chown -R korn:korn /home/korn/Work/react-django-docker

//restart บ่อยๆ
- docker compose up --watch --build

//ติดตั้ง axios
- docker compose run --rm -v $(pwd)/frontend:/frontend frontend sh -c "npm install axios"

//ติดตั้ง Django ตามลำดับ
- สร้างโฟเดอร์ backend
- docker build .
- docker compose build
- docker compose run --rm backend sh -c "django-admin startproject backend ."
- python3 -m venv env
- source env/bin/activate
- pip install -r requirements.txt

- docker compose up --watch --build
ตรวจสอบ
http://localhost:8000/api/hello-world/

