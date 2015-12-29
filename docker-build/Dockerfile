FROM ubuntu:trusty

RUN apt-get update
RUN apt-get install -y git g++ wget

RUN git clone --depth=1 https://github.com/tpoechtrager/osxcross

WORKDIR /osxcross
RUN ./tools/get_dependencies.sh
COPY tarballs/* tarballs/

RUN UNATTENDED=1 ./build.sh

RUN apt-get install -y gcc g++ zlib1g-dev libmpc-dev libmpfr-dev libgmp-dev

RUN UNATTENDED=1 ./build_gcc.sh

ADD build-everything.sh .
RUN chmod +x build-everything.sh

ENV JOBS 2