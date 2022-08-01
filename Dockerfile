FROM ubuntu

RUN apt-get update -y
RUN apt install python3 python3-dev python3-pip -y
WORKDIR src

COPY . .
RUN pip install -r requirements.txt && chmod +x start_server.sh

#RUN python3 manage.py migrate

#CMD ["python3", "manage.py migrate", "manage.py runserver 0.0.0.0:8000"]
CMD ["/src/start_server.sh"]

