
[![Docker Automated build](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)](https://hub.docker.com/r/pigumergroup/docker-sbt/)

docker+sbt
===============

```
$ docker run -it --rm --privileged pigumergroup/docker-sbt:latest /bin/bash
```

```
# nohup /usr/bin/dockerd --host=unix:///var/run/docker.sock --host=tcp://0.0.0.0:2375 --storage-driver=overlay &
# timeout 15 sh -c "until docker info; do echo .; sleep 1; done"
```
