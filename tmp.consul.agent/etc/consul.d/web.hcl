{
  "service": {
    "name": "web",
    "tags": ["koa"],
    "port": 80,
    "check": {
      "http": "http://koa-web",
      "interval": "10s"
    }
  }
}
