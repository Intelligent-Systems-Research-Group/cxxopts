FROM nvidia/cuda:9.2-base
ADD . /cxxopts/
WORKDIR /cxxopts/
RUN apt-get update && apt-get install -y cmake g++ && \
mkdir build && mkdir ../install
WORKDIR /cxxopts/build
RUN cmake .. && make && cmake -DCMAKE_INSTALL_PREFIX=/cxxopts/install -P cmake_install.cmake
#MKDIR build
#WORKDIR build
