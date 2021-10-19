FROM python:3.8.12

RUN useradd -ms /bin/bash django

USER django

ENV PYTHONUNBUFFERED 1

WORKDIR /home/django/app

ENV PATH $PATH:/home/django/.local/bin

COPY . /home/django/app

RUN pip install -r requirements-dev.txt

# run entrypoint.prod.sh
ENTRYPOINT ["/home/django/app/entrypoint.sh"]

