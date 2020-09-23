FROM tensorflow/tensorflow:2.1.0-py3

RUN apt-get update
RUN apt-get install -y wget git

RUN wget https://files.pythonhosted.org/packages/66/52/6ae1b6d2e38de3a0dddbdc7297fea0f2c41def3ceb53390fa4a305fe0efe/pybullet-3.0.4-cp36-cp36m-manylinux1_x86_64.whl && \
    pip install pybullet-3.0.4-cp36-cp36m-manylinux1_x86_64.whl

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
