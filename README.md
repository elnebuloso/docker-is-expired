# docker-is-expired

create cache entry and ask if it is expired

## example

- ask if entry with name foo is younger or older than 2 minutes
- will return yes if older
- will return no if younger

```
docker run --rm --cap-add=SYS_TIME --volume is_expired:/tmp elnebuloso/is-expired foo 2
```

```
if [[ "$(docker run --cap-add=SYS_TIME --volume is_expired:/tmp elnebuloso/is-expired foo 1)" = "yes" ]]; then
    echo "do something when older"
fi;
```