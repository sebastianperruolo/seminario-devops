FROM debian:latest

RUN apt-get update

RUN apt-get install -y \
    python \
    apache2

RUN service apache2 start

CMD tail -f /dev/null