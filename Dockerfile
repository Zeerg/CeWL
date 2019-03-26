FROM ruby:2

RUN apt-get update && \
    apt-get upgrade -yq && \
    gem install bundler:2.0.1

COPY . /CeWL
WORKDIR /CeWL
RUN bundle install

ENTRYPOINT ["/CeWL/cewl.rb"]