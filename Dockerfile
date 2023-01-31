FROM timeloopaccelergy/accelergy-timeloop-infrastructure

MAINTAINER Sudhakar M K <sudhakar.mkulkarni@gmail.com>
RUN apt-get update
RUN apt-get --yes --allow-unauthenticated install sudo wget build-essential git byobu bash-completion cmake
RUN pip3 install jupyterlab

ENTRYPOINT ["bash", "docker-entrypoint.sh"]

WORKDIR /home/workspace
CMD ["bash"]
