# Download docker image, It download a ubunto distro with Python 3.8
FROM python:3.8

# Install os dependences
RUN apt-get update && apt-get -y install \
    gettext hunspell hunspell-es

# Download requirements
RUN curl -O https://raw.githubusercontent.com/python/python-docs-es/3.8/requirements.txt

# Install python packages
RUN pip3 install -r requirements.txt

# Setup Volume and work directory
VOLUME /user/home/python-docs-es
WORKDIR /user/home/python-docs-es

