FROM ubuntu

RUN apt-get update -y
RUN apt install python3 python3-dev python3-pip -y
WORKDIR src

COPY . .
RUN pip install -r requirements.txt

RUN python manage.py migrate

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
