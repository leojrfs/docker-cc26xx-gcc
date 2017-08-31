# docker-cc26xx-gcc


```bash
# Runs make by default
docker run \
    --rm \
    --volume "${PWD}":/source \
    leojrfs/docker-cc26xx-gcc

# But you can pass anything
docker run \
    --rm \
    --volume "${PWD}":/source \
    leojrfs/docker-cc26xx-gcc \
    make dist
```
