FROM ubuntu:14.04

MAINTAINER Walter Tuholski <wtuholski@vigilent.com>

# Update apt
RUN apt-get -y update 

#------------------------------------------------
# Install python 
#------------------------------------------------
RUN apt-get -y install g++-4.8

#------------------------------------------------
# Install Valgrind
#------------------------------------------------
RUN apt-get -y install valgrind

#------------------------------------------------
# Copy the application 
#------------------------------------------------
COPY ./src/foo.cpp /foo.cpp

#------------------------------------------------
# Compile application
#------------------------------------------------
RUN g++-4.8 foo.cpp



# default command
CMD ["valgrind", "--leak-check=yes", "/a.out"]


