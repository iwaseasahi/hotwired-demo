# Debian
FROM ruby:3.0.0

# install required libraries
RUN apt-get update -qq && apt-get install -y build-essential nodejs

RUN mkdir /usr/src/app/
WORKDIR /usr/src/app/
ADD Gemfile /usr/src/app/Gemfile
ADD Gemfile.lock /usr/src/app/Gemfile.lock
RUN bundle install --jobs=4
COPY . /usr/src/app/

