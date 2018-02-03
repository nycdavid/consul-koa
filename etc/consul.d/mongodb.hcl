{
  "service": {
    "name": "mongodb-master",
    "tags": ["mongodb"],
    "port": 27017,
    "check": {
      "script": "/tmp/healthchecks/mongodb.sh",
      "interval": "10s"
    }
  }
}
