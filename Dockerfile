FROM ruby:2.7

WORKDIR /root/workdir

RUN apt-get update -qq
RUN gem update --system

RUN gem install activesupport

ENTRYPOINT ["ruby"]
