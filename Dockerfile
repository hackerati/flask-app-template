############################################################################
# Dockerfile to build AWS deployment node-app-template container image
# 
###########################################################################


FROM ubuntu 
# From here, we load our application's code so the previous docker "layer"dd the application resources URL
RUN echo "deb http://archive.ubuntu.com/ubuntu/ $(lsb_release -sc) main universe" >> /etc/apt/sources.list

# Update the sources list
RUN apt-get update

# Install basic applications
RUN apt-get install -y tar git curl nano wget dialog net-tools build-essential

# Install Python and Basic Python Tools
RUN apt-get install -y python python-dev python-distribute python-pip
RUN pip install flask

# Copy the application folder inside the container
ADD app /my_application
# Get pip to download and install requirements:
#RUN pip install -r requirements.txt
# Set the default directory where CMD will execute
WORKDIR app

#RUN python setup.py install
# Expose ports
EXPOSE 80

# Set the default command to execute    
# when creating a new container
# i.e. using CherryPy to serve the application
CMD python app/app.py

