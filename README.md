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

### PDF output

Run the following command, output PDF file as *book.pdf*

```bash
$ docker run --rm -v $(pwd)/gitbook:/gitbook hero/gitbook pdf
```

You can make epub and mobi file like pdf.

## How to use more easly way

See [HeRoMo/gitbook\-template: A gitbook project template](https://github.com/HeRoMo/gitbook-template)

## License

MIT. see [LICENSE](./LICENSE)
