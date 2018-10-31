# docker-gitbook

A Docker image for gitbook

## Usage

### Initialize

Run the following command, to init your gitbook

```bash
$ docker run --rm -v $(pwd)/gitbook:/gitbook hero/gitbook init
```

### Serve

Run the following command, to start gitbook server.

```bash
$ docker run -it -v $(pwd)/gitbook:/gitbook -p 4000:4000 --name my-gitbook hero/gitbook serve
```

## Docker compose

More easly usage is to use docker compose.

```bash
$ docker-compose up
```

## License

MIT. see [LICENSE](./LICENSE)
