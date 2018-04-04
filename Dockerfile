FROM ruby:2.4.1

MAINTAINER kazu20

ENV APP_ROOT /usr/src/webclipboard

WORKDIR $APP_ROOT

run apt-get update && \
    apt-get install -y nodejs sqlite3 --no-install-recommends

COPY . $APP_ROOT

RUN \
  echo 'gem: --no-document' >> ~/.gemrc && \
  cp ~/.gemrc /etc/gemrc && \
  chmod uog+r /etc/gemrc && \
  bundle install && \
  rake db:migrate && \
  rm -rf ~/.gem

EXPOSE  3000
CMD ["rails", "server", "-b", "0.0.0.0"]

