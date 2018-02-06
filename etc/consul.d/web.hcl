{
  "service": {
    "name": "web",
    "tags": ["koa"],
    "port": 80,
    "check": {
      "http": "http://127.0.0.1",
      "interval": "10s"
    }
  }
}
