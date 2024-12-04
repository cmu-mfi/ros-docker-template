## PREREQUISITE - Docker Engine

```shell
# Check if docker is installed
$ docker version
Client: Docker Engine - Community
 Version:           20.10.7
...

# Check if docker is running
$ systemctl is-active docker
active
```

* If installation is needed, install docker enginer from here: \
[https://docs.docker.com/engine/install/](https://docs.docker.com/engine/install/)
* If docker is not running, followin troubleshooting steps: [https://docs.docker.com/engine/daemon/troubleshoot/](https://docs.docker.com/engine/daemon/troubleshoot/)

## BUILD AND RUN

1. Copy your ros package in ros-pkg folder
2. (optional) rename `ros-pkg`. Ensure to rename `ros-pkg` in Dockerfile and compose.yml
3. Build and run using the command below 

```
docker compose up --build
```

## EXECUTE ROSLAUNCH COMMANDS

In a new terminal:

```
docker exec -it ros-pkg-container bash
roslaunch ...
```


## MAKING CHANGES

1. Stop container by `docker compose down`
2. Make changes
3. Build and run again `docker compose up --build`
