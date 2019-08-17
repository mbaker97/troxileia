FROM centos:centos7
MAINTAINER Stech Training

RUN yum -y update \
    #Install Python repo, Python 3.6  and some addons
    && yum -y install https://centos7.iuscommunity.org/ius-release.rpm \
    && yum -y install python36u \
    && yum -y install python36u-libs \
    && yum -y install python36u-devel \
    && yum -y install python36u-pip \
    && yum -y clean all \
    #Install Python Kubernetes client lib.
    && python3.6 -m pip install kubernetes paramiko
ENV PYTHONUNBUFFERED=0
#Put scripts inside container
COPY sensor_controller.py pod_controller.py gigamon.py main.py ./
#When the container starts run the python controller
CMD ["python3.6", "main.py"]
