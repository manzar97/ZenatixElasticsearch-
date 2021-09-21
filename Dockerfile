FROM python:3.6

ENV PYTHONUNBUFFERED 1

ARG build_env
ENV BUILD_ENV ${build_env}


RUN pip install --no-cache-dir -r  requirements.txt
