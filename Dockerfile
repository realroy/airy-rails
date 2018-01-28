FROM ruby:2.5.0
RUN curl -sL https://deb.nodesource.com/setup_9.x | bash - &&\
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - &&\
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list &&\
    apt-get update &&\
    apt-get install -y nodejs build-essential yarn
WORKDIR /usr/app
COPY Gemfile /usr/app/Gemfile
COPY Gemfile.lock /usr/app/Gemfile.lock
RUN bundle install