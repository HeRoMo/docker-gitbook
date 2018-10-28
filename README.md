# docker-gitbook

A Docker image for gitbook

## Usage

### Initialize

Run the following command, to init your gitbook

```
$ docker run --rm -v $(pwd)/gitbook:/gitbook -p 4000:4000 hero/gitbook init
```

### Serve

Run the following command, to start gitbook server.

```bash
$ docker run -it -v $(pwd)/gitbook:/gitbook -p 4000:4000 --name my-gitbook hero/gitbook serve
```

## Docker compose

## License

MIT. see [LICENSE](./LICENSE)
