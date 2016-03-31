FROM antik486/centos71

MAINTAINER bekberov <bekberovkerim@gmail.com>

RUN yum -y update \
    yum clean all

RUN yum -y install sqlite-devel  http://downloads.drone.io/master/drone.rpm &&\
    yum clean all

ENV DRONE_SERVER_PORT 0.0.0.0:8080
ENV DRONE_DATABASE_DATASOURCE /var/lib/drone/drone.sqlite

# Define our GitHub oAuth keys below
ENV DRONE_GITHUB_CLIENT <CLIENT_TOKEN_HERE>
ENV DRONE_GITHUB_SECRET <CLIENT_SECRET_HERE>


EXPOSE 8080

VOLUME /var/lib/drone

CMD /usr/local/bin/droned
