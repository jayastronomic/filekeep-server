FROM ruby:3.0.0

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /api
WORKDIR /api

RUN gem install bundler

COPY Gemfile* ./

RUN bundle install 

ADD . /api