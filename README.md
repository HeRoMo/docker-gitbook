# docker-gitbook

A Docker image for gitbook

## Usage

This Docker image for gitbook is manage markdown files in *gitbook* directory.

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

More easly usage is to use docker compose.<br>


```bash
$ docker-compose up
```

Access to http://localhost:4000, after docker containers are started.

If you want to use uml in your gitbook,
add the following configuration to your *book.json*

```json
{
    "plugins": ["plantuml-cloud"],
    "pluginsConfig": {
      "plantuml-cloud": {
        "protocol": "http",
        "host": "plantuml",
        "port": 1608
      }
    }
}
```


## PDF output

Run the following command, output PDF file as *book.pdf*

```bash
$ docker-compose -f docker-compose.yml -f docker-compose-pdf.yml up --abort-on-container-exit
```

## License

MIT. see [LICENSE](./LICENSE)
