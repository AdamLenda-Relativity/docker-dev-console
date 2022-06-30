FROM ubuntu:latest

# Ensure app-get is up to date
RUN apt-get update -y
RUN apt-get upgrade -y

# Install local character sets
RUN apt-get install -y locales
RUN localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.utf8

# Install vim
RUN apt-get install -y vim

# Install git
RUN apt-get install -y git

# Copy file system folder to root path
COPY ./file-system/ /

# Clean up app repository list
#RUN rm -rf /var/lib/apt/lists/*

WORKDIR /root