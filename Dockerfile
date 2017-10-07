FROM python

MAINTAINER Adiel Cristo <adielcristo@gmail.com>

EXPOSE 8000
RUN pip install mkdocs

RUN mkdir -p /workspace/docs
RUN mkdir /workspace/site

WORKDIR /workspace/docs

CMD ["mkdocs", "serve"]
