FROM python:3.11-slim-buster

# sets the current working directory for subsequent instructions in the Dockerfile
WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "manage.py", "runserver", "0.0.0.0:8000"]