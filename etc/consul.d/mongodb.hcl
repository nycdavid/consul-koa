{
  "service": {
    "name": "mongodb-master",
    "tags": ["mongodb"],
    "port": 27017,
    "check": {
      "script": "/healthchecks/mongodb.sh",
      "interval": "10s"
    }
  }
}
