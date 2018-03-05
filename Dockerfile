FROM rails
MAINTAINER Denley Hsiao <denley@justtodo.com>

ARG APP_DIR=/app/

RUN mkdir -p $APP_DIR
COPY Gemfile* $APP_DIR
WORKDIR $APP_DIR

RUN bundle install --jobs 20 --retry 5 --without development test
EXPOSE 4000