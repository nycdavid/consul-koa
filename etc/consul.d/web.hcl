{
  "service": {
    "name": "web",
    "tags": ["koa"],
    "port": 1111,
    "check": {
      "http": "http://koa-web:1111",
      "interval": "10s"
    }
  }
}
