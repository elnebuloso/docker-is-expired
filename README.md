<img src="https://raw.githubusercontent.com/elnebuloso/docker-is-expired/master/logo.png" width="100%"/>

# docker-is-expired

![Release](https://github.com/elnebuloso/docker-is-expired/workflows/Release/badge.svg)
[![Docker Pulls](https://img.shields.io/docker/pulls/elnebuloso/is-expired.svg)](https://hub.docker.com/r/elnebuloso/is-expired)
[![GitHub](https://img.shields.io/github/license/elnebuloso/docker-is-expired.svg)](https://github.com/elnebuloso/docker-is-expired)

Dockerized Cache Entry and Tracking

## github

- https://github.com/elnebuloso/docker-is-expired

## docker

- https://hub.docker.com/r/elnebuloso/is-expired
- https://hub.docker.com/r/elnebuloso/is-expired/tags?page=1&ordering=last_updated

## usage

- ask if entry with name foo is younger or older than 10 seconds
- will return yes if cache entry foo is older than given params
- will return no if cache entry foo is younger than given params

### possible string values for time

- second|seconds
- minute|minutes
- hour|hours
- day|days
- week|weeks
- month|months
- year|years

```
docker run --rm --volume is_expired:/tmp elnebuloso/is-expired foo 10 seconds
docker run --rm --volume is_expired:/tmp elnebuloso/is-expired foo 5 minutes
docker run --rm --volume is_expired:/tmp elnebuloso/is-expired foo 1 hour
```

## example bash

```
if [[ "$(docker run --volume is_expired:/tmp elnebuloso/is-expired foo 10 seconds)" = "yes" ]]; then
    echo "do something when foo is expired"
fi;
```