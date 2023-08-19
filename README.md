# hosted-overleaf

This repository contains the necessary scripts to self-host the [Overleaf Community Edition](https://github.com/overleaf/toolkit/) on an x86-64 AWS EC2 instance. Although a poor practice, services are managed with [Supervisor](http://supervisord.org/) instead of [Docker Compose](https://docs.docker.com/compose/). At the minimum, the image takes ~7.25 GB of disk space and ~800 MB of RAM on idle.

## Development

You can spin up the server locally with the following.

```bash
docker build -f Dockerfile.build -t overleaf .
docker build -t hosted-overleaf .
docker run --rm --name overleaf -p 80:80 -it hosted-overleaf
```

Now, you can visit the web interface.

```bash
xdg-open http://localhost/launchpad
```
