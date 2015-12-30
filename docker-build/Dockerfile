FROM ubuntu:trusty

RUN apt-get update
RUN apt-get install -y git wget \
  gcc g++ zlib1g-dev libmpc-dev libmpfr-dev libgmp-dev

RUN git clone --depth=1 https://github.com/tpoechtrager/osxcross

WORKDIR /osxcross
RUN ./tools/get_dependencies.sh

RUN wget -P tarballs/ https://github.com/CRogers/osxcross-docker/releases/download/osx-sdk/MacOSX10.9.sdk.tar.xz

RUN adduser --disabled-password --gecos "" osxcross

ADD build-everything.sh /osxcross/
RUN chmod +x build-everything.sh

RUN chown -R osxcross .

USER osxcross