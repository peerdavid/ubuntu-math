#
# Ubuntu dockerfile with python and octave for some math things ;)
#
# Build and run local:
# docker build -t ubuntu-math .
# docker run -it --rm ubuntu-math:latest /bin/bash
#
# To create your own image based on ubuntu-math see README.md
#
FROM ubuntu

# Install octave
RUN apt-get update
RUN apt-get install -y octave

# Install python3
RUN apt-get install -y python3
RUN apt-get install -y python3-pip 
RUN pip3 install --upgrade pip

# Install all pip requirements when the child image is build
ONBUILD ADD requirements.txt /tmp/requirements.txt
ONBUILD RUN pip3 install -r /tmp/requirements.txt