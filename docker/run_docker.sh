# in macos, run socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\"
xhost - 127.0.0.1

docker run -it  --rm \
  --env DISPLAY=$DISPLAY:0 \
  --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
  --volume="/home/cloudsigma/docker_test/:/docker_test:rw" \
  -w /docker_test \
  guidoski/dockertest:tf2-pybullet /bin/bash

#xhost -local:root
xhost - 127.0.0.1

# use  -v="/home/user/code/:/code:rw"  to share folders between local machine and docker container
# macos host: use --env DISPLAY=docker.for.mac.host.internal:0 \
# ubuntu host: use --env DISPLAY=$DISPLAY \