FROM paasmule/rbenv:2.3.6

RUN rbenv install 2.2.1
RUN rbenv global 2.2.1 && gem install bundler
RUN apt-get update && apt-get install -y --force-yes libtool libcurl3-dev libsqlite3-dev libpq-dev postgresql-server-dev-9.3

ADD . /github-notification-proxy
RUN cd /github-notification-proxy && bundle install
