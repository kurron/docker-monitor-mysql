#Overview
This project creates a Docker container that houses the [MySQL Service](https://github.com/kurron/monitor-mysql). 
It provides a convenient distribution mechanism for the application and is intended to used in concert with the other 
Docker containers that comprise the application monitoring simulation.

#Prerequisites

* [Ubuntu Linux](http://www.ubuntu.com/) installed and working
* [Docker](https://www.docker.com/) installed and working

#Building
Execute `./build.sh` create the Docker image. It will reach out to [Bintray](https://bintray.com/kurron/maven/monitor-mysql/view) 
and install the application into the Docker image.

#Installation
Execute `./start.sh` to install and run the Docker image.  The image will run in the background and the service, by default, will 
be listening on port 8300. The script is configured to automatically tail the logs as the container starts up.  Hit `ctrl-c` to 
stop watching the logs.   When you wish to uninstall the container, execute `./stop.sh` and the container will be stopped and removed.
**NOTE:** Docker does a great job of restricting the visibility of the processes running inside it which means that `start.sh` script 
will likely have to be changed to match your environment.

#Tips and Tricks

##Verifying The Setup
Execute `./check-health.sh` to connect to the service and ask for its health status.

##Configuration
TODO

#Troubleshooting

##Checking The Logs
Execute `./logs.sh` to see the application's logs.  Type `ctrl-c` to stop watching the logs.

##Inspecting The Container
Execute `./inspect.sh` to peer into the container's environment and start up arguments.

#License and Credits
This project is licensed under the [Apache License Version 2.0, January 2004](http://www.apache.org/licenses/).

#List of Changes
