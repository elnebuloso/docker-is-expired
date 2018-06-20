# docker-is-expired

create cache entry and ask if it is expired

## example

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
    echo "do something when older"
fi;
```