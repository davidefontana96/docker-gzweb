# derived from http://github.com/osrf/docker_images/blob/master/gazebo/gazebo7/gzweb7/Dockerfile

FROM gazebo:libgazebo7
# originally from MAINTAINER Steven Peters scpeters+buildfarm@osrfoundation.org
MAINTAINER Fontana Davide davidefontana96.df@gmail.com

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

# install gazebo packages
RUN apt-get install -q -y \
    libgazebo7-dev \
    && rm -rf /var/lib/apt/lists/*

# clone gzweb
RUN hg clone https://bitbucket.org/osrf/gzweb ~/gzweb
