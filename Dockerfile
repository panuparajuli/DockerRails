FROM ruby:2.2.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /VueCMS 
WORKDIR /VueCMS
ADD Gemfile /VueCMS/Gemfile
ADD Gemfile.lock /VueCMS/Gemfile.lock
RUN bundle install 

ADD . /VueCMS