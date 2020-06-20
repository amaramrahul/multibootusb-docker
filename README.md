# multibootusb-docker

multibootusb requires root privileges. As granting root access is considered insecure, it makes sense in runing this in a container.

Here are the detailed instructions:

1. Checkout the repo and build the docker image
$ docker build -t amaramrahul/multibootusb .

2. Run multibootusb (set --device argument to your USB device absolute path ex./dev/sdd)
$ xhost 127.0.0.1
$ docker run -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY --device=<path-to-usb-device> amaramrahul/multibootusb
