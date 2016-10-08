# baixagram
#
# VERSION               0.0.1

FROM ruby:alpine
MAINTAINER Edson Samuel Jr <samuedson@gmail.com>

LABEL version="0.0.1" \
      description="How to deploy this baixagram thing in a hypey way."

WORKDIR /app

COPY Gemfile /app

RUN apk update
RUN apk add build-base \
            libxml2-dev \
            libxslt-dev

RUN bundle install

RUN rm /app/Gemfile

EXPOSE 9292
