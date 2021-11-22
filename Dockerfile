FROM ruby:2.6.5

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - && apt-get update && \
    apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev

RUN apt-get update && apt-get install -y curl apt-transport-https wget && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && apt-get install -y yarn

RUN apt-get update -qq && \
    apt-get install -y build-essential \
    libpq-dev \
    sudo

RUN yarn add node-sass

WORKDIR /app
RUN mkdir -p tmp/sockets
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install
COPY . /app

# COPY entrypoint.sh /usr/bin/
# RUN chmod +x /usr/bin/entrypoint.sh
# ENTRYPOINT ["entrypoint.sh"]

ENV RAILS_ENV=production

CMD bash -c "rm -f tmp/pids/server.pid && bundle exec puma -C config/puma.rb"
