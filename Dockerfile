# Dockerfile for Rails
FROM ruby:2.2.1

MAINTAINER Herman Singh "kartstig@gmail.com"

# Installation Requirements
RUN apt-get update && apt-get install -y build-essential libpq-dev \
  libxml2-dev libxslt1-dev libqt4-webkit libqt4-dev xvfb nodejs

# Build Bundle and Start APp
EXPOSE 5000
WORKDIR /app
CMD bundle install && foreman start -c web=5
