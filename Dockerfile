############################################################################
# Dockerfile to build AWS deployment node-app-template container image
FROM python:2-onbuild

# Update the sources list
# RUN apt-get update

# Install basic applications
# RUN apt-get install -y tar git curl nano wget dialog net-tools build-essential

WORKDIR app

EXPOSE 5000

# Set the default command to execute    
# when creating a new container
# i.e. using CherryPy to serve the application
CMD pwd
CMD python app.py

