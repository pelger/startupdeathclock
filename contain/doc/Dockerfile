# DOCKER-VERSION 0.8.0

FROM             base-0.0.0

ADD . /startupdeathclock

WORKDIR /startupdeathclock/srv
CMD node doc-srv.js --seneca.log.all >> /var/log/startupdeathclock/doc.log 2>&1
