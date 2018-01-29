FROM consul:1.0.3

ADD . ./

RUN apk update && \
  apk add nodejs && \
  npm install
