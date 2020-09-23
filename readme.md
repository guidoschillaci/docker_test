# Tutorial

On your local machine or on the remote onez, build the docker image

```
docker build -f docker/Dockerfile .  -t <projectname>/<imagename>:<tag>
```

For instance:

```
docker build -f docker/Dockerfile . -t guidoski/dockertest:tf2-pybullet
```


A better solution is to set an automatic build rule in to dockerhub, 
and then simply use *docker run* to pull it from docker hub

```
docker run -it guidoski/myexperiment:py3 bash
``` 

This starts a bash from the docker container.

You may want to share a folder between your remote machine and the docker instance.

```
docker run -it --rm \
      -e DISPLAY=$DISPLAY \
      --name "$DOCKER_CONTAINER_NAME" \
      --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
      --volume="/home/guido/code:/code/:rw"  \
      -w /code \
      guidoski/myexperiment:py3 bash
```

Display and X11 are needed if you want to show GUIs or images from your docker container to your local machine. Beware, running this on a remote machine, like a cloud instance, require more instructions (not covered here).
