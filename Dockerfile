FROM consul:1.0.3

RUN apk update && \
  apk add nodejs && \
  npm install

ADD . ./
