FROM python:3.12-slim

ENV RUN_HOST="0.0.0.0"
ENV RUN_PORT=8080

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8080

CMD ["python", "main.py"]
