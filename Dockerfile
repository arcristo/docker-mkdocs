FROM python

MAINTAINER Adiel Cristo <adielcristo@gmail.com>

RUN pip install mkdocs

RUN mkdir -p /workspace/docs
RUN mkdir /workspace/site

WORKDIR /workspace/docs

CMD ["mkdocs", "serve", "--dev-addr=0.0.0.0:80"]
