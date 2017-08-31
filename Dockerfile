FROM progrium/busybox
MAINTAINER Mayank Tahilramani emial: mayank.tahilramani@citrix.com
LABEL Python3 Base Image
RUN opkg-install bash bzip2 nano
ADD ./python-image/* /root/
RUN ["bash", "/root/conda_install.sh"]
RUN	/root/bin/conda install pip
ENV PATH="/root/bin:${PATH}"
