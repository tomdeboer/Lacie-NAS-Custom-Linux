
FROM ubuntu:14.04


RUN apt-get update && apt-get install -y git bc ncurses-dev make gcc-arm-linux-gnueabi u-boot-tools g++ wget python unzip


