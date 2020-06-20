FROM debian:buster
MAINTAINER Rahul Amaram

RUN apt-get update \
 && apt-get install -y ca-certificates wget

WORKDIR /root
RUN wget "https://github.com/mbusb/multibootusb/releases/download/v9.2.0/python3-multibootusb_9.2.0-1_all.deb" \
 && dpkg -i python3-multibootusb_9.2.0-1_all.deb || apt-get -fy install \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD multibootusb
