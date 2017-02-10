FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.3.1

RUN gem install fake_sqs --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["fake_sqs"]
CMD ["--help"]
