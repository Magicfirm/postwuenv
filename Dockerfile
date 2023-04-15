# ------------------------------------------------------------------------------
# This image used in magicfirm spark cloud running enviroment.
# ------------------------------------------------------------------------------
# Pull base image.
FROM python:3.9
MAINTAINER JIN TAO <jeffkyjin@magicfirm.com>

COPY requirements.txt /tmp
WORKDIR /tmp
RUN pip install -r requirements.txt

RUN apt update
RUN apt install -y htop

# setting timezone
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
