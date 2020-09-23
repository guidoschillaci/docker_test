FROM tensorflow/tensorflow:2.1.0-py3

RUN pip install pybullet
RUN apt-get update
RUN apt-get install -y git

# opengl, HW Acceleration
RUN apt-get install -y \
        libgl1-mesa-glx \
        libgl1-mesa-dri \
        mesa-utils \
        libglu1-mesa-dev \
        freeglut3-dev \
        mesa-common-dev

#RUN mkdir code && \
#    cd code && \
#    git clone https://github.com/guidoschillaci/docker_test
