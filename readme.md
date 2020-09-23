# Tutorial

Install docker on your instance. 
(instruction taken from https://docs.docker.com/engine/install/ubuntu/)

```
sudo apt-get update

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get install docker-ce docker-ce-cli containerd.io
```

To verify that everything is installed, run:

```
sudo docker run hello-world
```

If you get:
```
Got permission denied while trying to connect to the Docker daemon socket
```

Create the docker group and add your user to the docker group.

```
sudo groupadd docker
sudo usermod -aG docker ${USER}
```

then log out and log in again.


On your local machine or on the remote one, build the docker image

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
