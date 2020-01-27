FROM python:3.8-alpine
LABEL maintiner="Daniel Pendolino <daniel@pendolino.info>"

WORKDIR /app

COPY . /app
RUN pip install -r requirements.txt

EXPOSE 5000
CMD ["python", "webhooks.py"]
