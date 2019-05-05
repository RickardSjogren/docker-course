FROM ubuntu

RUN apt-get update
RUN apt-get install -y python python-pip

RUN pip install flask

COPY . /opt/source-code

ENTRYPOINT FLASK_APP=/opt/source-code/app.py flask run --host 0.0.0.0
