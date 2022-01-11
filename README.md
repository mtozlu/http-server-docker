# Http-Server-Docker

Serve any local directory over http/https using docker without any dependencies.

Uses http-server (https://www.npmjs.com/package/http-server) inside container.

This repository uses same version with http-server (https://github.com/http-party/http-server).

## Running

Running this command in any directory serves its contents:
``` bash
docker run -d -p 8080:8080 -v "$(PWD):/public" tozlu/http-server
```
Visit: `http://127.0.0.1:8080` or `http://localhost:8080`

### Options

You can use available options on https://github.com/http-party/http-server#available-options as the last argument of `docker run` command.

``` bash
docker run -d -p 8080:8080 -v "$(PWD):/public" tozlu/http-server "-c-1"
```
`-c-1` command at the end is passed to http-server options. It disables caching of served files.
There many more options such as enabling https, using brotli compression, etc.
