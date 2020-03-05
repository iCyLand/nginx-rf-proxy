FROM nginx:1.16-alpine

RUN apk update && apk add socat

RUN mkdir /src

COPY src/. /src

EXPOSE 80/tcp

CMD [ "sh", "/src/run-nginx.sh" ]