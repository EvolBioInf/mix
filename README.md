# [`mix`](https://owncloud.gwdg.de/index.php/s/jaad6p11lXvNKC4)
## Description
Minimal Unix box for testing software in a [Docker container](https://hub.docker.com/r/haubold/mix).
## Get Compiled Container and Run It
```
docker pull haubold/mix
docker run -it --hostname=mix --detach-keys="ctrl-@" mix
```

## Make and Run the Container
```
make
bash scripts/start.sh
```

