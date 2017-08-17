# interlok-soiltype-demo-auth [![Docker Build Status](https://img.shields.io/docker/build/lewinc/interlok-soiltype-demo-auth.svg)](https://hub.docker.com/r/mcwarman/nterlok-soiltype-demo-auth/)

The https://github.com/quotidian-ennui/interlok-soiltype-demo but with added authentication based on a database table.

* use Postman (or similar); passing in Basic authentication with `demouser:password` (the urls are the same)
* No Authorization header returns a 403
* Bad username + password returns a 403

## Build and run

* ```docker-compose up```

__Might take a while to start up with some errors logged; just be patient!__

A few things to be aware of
* Because it's docker; the UI might take a bit longer to start and there may be complaints from c3p0. This is something to do with the derby driver taking a while to create the database + flyway action.


## Virtualbox / docker toolbox notes

* You will probably need to explicitly mount a shared folder into the docker `default` machine before the volume mounts work.
* Pointing your browser to http://${DOCKER_HOST}:8080/swagger is going to display the swagger page, but with a message `Can't read from server...`
    * Change the address that swagger is trying to connect so that it's not `localhost`
* You need to edit the docker-compose.yml file so that `interlok.api.host` is correct for your env.
