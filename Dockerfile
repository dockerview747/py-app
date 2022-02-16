FROM debian:latest 

RUN apt-get update -y && apt-get install python3 python3-pip -y && pip3 install flask 
RUN apt-get clean 

WORKDIR /app

ENV FLASK_APP=hello.py 

COPY . . 

EXPOSE 5000 

ENTRYPOINT ["flask" , "run" ,"--host=0.0.0.0"]

