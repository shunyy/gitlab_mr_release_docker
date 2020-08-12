FROM ruby:alpine3.12
RUN apk --update --no-cache add openssh git tzdata \
    && gem install -N gitlab_mr_release:1.1.1

WORKDIR /src

CMD ["gitlab_mr_release"]