## BUILD AND RUN

```
docker compose up --build
```

## EXECUTE ROSLAUNCH COMMANDS

In a new terminal:

```
docker exec -it ros-pkg-container bash
roslaunch ...
```


### MAKING CHANGES

1. Stop container by `docker compose down`
2. Make changes
3. Build and run again `docker compose up --build`
