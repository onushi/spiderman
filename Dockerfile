FROM ruby:2.7.3

# TODO: build時にだけ必要なものをまとめて最後に削除してimage sizeの軽量化(curlがいらない)
RUN apt-get update -qq && apt-get install -y \
    nodejs \
    postgresql-client \
    curl \
  && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
  && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
  && apt-get update -qq && apt-get install -y \
    yarn \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY Gemfile .
COPY Gemfile.lock .

RUN bundle install && rm -rf /usr/local/bundle/cache/*