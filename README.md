# 2020ip/postgres [![](https://images.microbadger.com/badges/image/2020ip/postgres.svg)](http://microbadger.com/images/2020ip/postgres "Get your own image badge on microbadger.com")

The `2020ip/postgres` image provides a Docker container running Postgres 9.5 with the [PLV8 1.4.8](https://github.com/plv8/plv8/) add-on installed. This image is based on the official [`postgres`](https://registry.hub.docker.com/_/postgres/) image.

## Usage
The container can be ran with:
```
docker run -p 5432:5432 --env POSTGRES_PASSWORD=myPassword --env POSTGRES_USER=postgres -d 2020ip/postgres
```

This image is based on the offical Postgres image, so see its documentation for all options.
https://hub.docker.com/_/postgres/
