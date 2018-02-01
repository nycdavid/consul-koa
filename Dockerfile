FROM consul:1.0.3

ADD . ./

RUN apk update && \
  apk add nodejs yarn && \
  yarn install

ENTRYPOINT ["node", "app.js"]
