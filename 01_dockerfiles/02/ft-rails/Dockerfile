FROM ruby:2.5.1
RUN apt-get update && apt-get install -y nodejs sqlite3
RUN gem install rails --version 5.0.0 
RUN mkdir -p /opt/app
ONBUILD ADD ft-rails/rlg /opt/app
WORKDIR /opt/app
ONBUILD RUN bundle install
ONBUILD RUN rake db:setup
ONBUILD RUN rake db:seed
