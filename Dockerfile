FROM debian:jessie
MAINTAINER Michel Decima <michel.decima@orange.com>

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get -o Acquire::ForceIPv4=true upgrade -yq \
    && DEBIAN_FRONTEND=noninteractive apt-get -o Acquire::ForceIPv4=true install -yq --no-install-recommends \
        devscripts \
        build-essential \
        dh-make \
        lsb-release \
        fakeroot debian-keyring lintian sudo \
	curl gnupg \
    && apt-get clean

