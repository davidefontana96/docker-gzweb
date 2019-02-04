# This is an auto generated Dockerfile for ros:robot
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:indigo-ros-base-trusty

# install ros packages
RUN apt-get update && apt-get install -y \
    ros-indigo-robot=1.1.6-0* \
    && rm -rf /var/lib/apt/lists/*

MAINTAINER davidefontana96 davidefontana96.df@gmail.com

# ROS configuration
RUN export ROS_MASTER_URI="http://127.0.0.1:11311" && export ROS_HOSTNAME="127.0.0.1" && export ROS_IP="127.0.0.1"

# install packages
RUN apt-get update && apt-get upgrade -q -y && apt-get install -q -y \
    build-essential \
    cmake \
    imagemagick \
    libboost-all-dev \
    libgts-dev \
    libjansson-dev \
    libtinyxml-dev \
    mercurial \
    nodejs \
    nodejs-legacy \
    npm \
    pkg-config \
    psmisc\
    && rm -rf /var/lib/apt/lists/*

# setup environment
EXPOSE 8080
EXPOSE 7681
