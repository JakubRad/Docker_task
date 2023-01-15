# pull image
FROM python:3

# sets the user that will run the commands
USER root

# set work direction
WORKDIR /app

# configure Python to run in unbuffered mode 
# output are sent straight to terminal without being first buffered
ENV PYTHONUNBUFFERED 1

# copy files to the image
COPY . /app

RUN apt update
RUN apt install python3 -y

# run app
CMD ["python3", "app.py"]