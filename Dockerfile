FROM ubuntu

LABEL S L Narasimha Reddy <slnreddy84@gmail.com>

WORKDIR /usr/apps/nodeapp/

RUN apt update -y && apt install nodejs -y && apt install npm -y && npm install -g http-server

ADD . /usr/apps/nodeapp/

EXPOSE 8080

CMD [ "http-server","-s" ]
