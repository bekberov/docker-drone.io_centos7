# docker-drone.io_centos7
Dockerizing a Drone.io service on CentOS7

In order to run Drone you must setup at least one integration points between GitHub, GitHub Enterprise, Gitlab, Gogs, Bitbucket.  
And then put into your Dockerfile the value of your Client ID in CLIENT_TOKEN_HERE and Client Secret in CLIENT_SECRET_HERE.  


To build image:

docker build -t bekberov/docker-drone.io_centos7 .



To start container:

docker run  -p 9090:8080 -i -t bekberov/docker-drone.io_centos7

