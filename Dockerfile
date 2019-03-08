FROM ubuntu:16.04
# This is to run the charts for class7-hwk
MAINTAINER Luigi Clerici <Clercy.github.io>


RUN apt-get update
RUN cat /etc/lsb-release
#RUN apt-get install -y python
RUN apt-get install -y python3-pip
RUN pip3 install numpy pandas
RUN pip3 install matplotlib
RUN pip3 install datetime

# Set the working directory to /app
#WORKDIR /app

# Copy the current directory contents into the container at /app
ADD generate_charts_hw7.py housing.data.txt /

# Run script when the container launches
CMD ["python3", "./generate_charts_hw7.py"]
