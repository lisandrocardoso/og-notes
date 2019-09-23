FROM ubuntu:18.04
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y python2.7 python-pip python-virtualenv libmysqlclient-dev
RUN cd /opt && virtualenv notejam
COPY requirements.txt /tmp
RUN /opt/notejam/bin/pip install -r /tmp/requirements.txt
RUN /opt/notejam/bin/pip install mysql-python
COPY . /opt/notejam
