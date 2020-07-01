# interlok-soiltype-demo-auth [![Docker Build Status](https://img.shields.io/docker/cloud/build/adaptrislabs/interlok-soiltype-demo-auth.svg)](https://hub.docker.com/r/adaptrislabs/nterlok-soiltype-demo-auth/)

The https://github.com/adaptris-labs/interlok-soiltype-demo but with added authentication based on a simple database table stored as a CSV file.

## Quickstart

```
docker run -it --rm -P8080:8080 adaptrislabs/interlok-soiltype-demo-auth
```

* use Postman (or similar); passing in Basic authentication with `demouser:password` (the urls are the same)
* No Authorization header returns a 403
* Bad username + password returns a 403

## Notes

* Uses a CSV database (src/main/interlok/config/csvjdbc)
* adaptrislabs/interlok-soiltype-demo includes the appropriate driver already.
* Only the additional files required are included, so it can't be opened as a normal UI project.