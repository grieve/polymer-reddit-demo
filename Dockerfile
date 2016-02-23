FROM node:5.4
MAINTAINER Ryan Grieve <me@ryangrieve.com>

RUN npm set progress=false
RUN npm install -g bower http-server

ADD . /src
WORKDIR /src

RUN bower install --allow-root

EXPOSE 3000

CMD http-server -a 0.0.0.0 -p 3000