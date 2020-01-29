FROM python:3.8-alpine
LABEL maintiner="Daniel Pendolino <daniel@pendolino.info>"

WORKDIR /app

COPY requirements.txt /app
RUN pip install -r requirements.txt

COPY . /app

EXPOSE 5000
CMD ["python", "webhooks.py"]
