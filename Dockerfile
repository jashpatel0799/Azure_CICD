FROM python:3.9-silm-buster
WORKDIR /application
COPY . /application

RUN apt update -y

RUN apt-get update && pip install -r requirements.txt
CMD ["python3", "application.py"]