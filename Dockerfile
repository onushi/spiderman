FROM ruby:2.7.3

RUN apt-get update -qq && apt-get install -y \
    nodejs \
    yarn \
    postgresql-client \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY Gemfile .
COPY Gemfile.lock .

RUN bundle install && rm -rf /usr/local/bundle/cache/*