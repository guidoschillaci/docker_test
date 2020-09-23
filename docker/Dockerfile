FROM tensorflow/tensorflow:2.1.0-py3

RUN apt-get update
RUN apt-get install -y wget git

RUN wget https://files.pythonhosted.org/packages/58/fb/97fad71561f2255e7708959ffd42eb98016a5c13dc7f3b3351b01627c57b/pybullet-3.0.4-cp27-cp27m-manylinux1_x86_64.whl && \
    pip install pybullet-3.0.4-cp27-cp27m-manylinux1_x86_64.whl

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
