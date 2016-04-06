FROM spectrum2/spectrum2

MAINTAINER Steffen Vogel <post@steffenvogel.de>

RUN	dnf install zlib-devel libjpeg-devel python-devel python-pip gcc redhat-rpm-config -y && \
	pip install --pre e4u protobuf python-dateutil yowsup2 && \
	dnf remove python-devel git gcc gcc-c++ redhat-rpm-config -y && \
	dnf clean all -y

ADD . /opt/transwhat

# ENTRYPOING was already set by parent image