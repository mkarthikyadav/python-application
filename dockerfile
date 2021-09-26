FROM ubuntu
FROM python:3.8-slim-buster
LABEL maintainer = "mkarthikyadav007@gmail.com"
RUN apt-get update -y
RUN apt-get install vim -y
RUN apt-get install git -y
ADD main.py .
FROM python:3.8-slim-buster
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt 
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]


