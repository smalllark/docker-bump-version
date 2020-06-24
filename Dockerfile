FROM python:3.8-alpine

# Metadata params
ARG BUILD_DATE
ARG VCS_REF

RUN apk --update --no-cache add \
        ca-certificates \
        git \
        make && \
    pip3 install --no-cache-dir bumpversion

WORKDIR /app


CMD [ "bumpversion", "-h" ]