FROM python:3.6
ENV PYTHONUNBUFFERED 1
RUN mkdir /chatboot
WORKDIR /chatboot
ADD requirements.txt /chatboot/
RUN pip install -U pip && pip install -r requirements.txt
ADD . /chatboot/