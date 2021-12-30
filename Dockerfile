FROM balenalib/raspberry-pi:buster

ENV UDEV=1
ENV USER=root

RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    python3 \
    python3-pip \
    rpi.gpio \
    vim

RUN apt-get install -y \
    lirc \
    ir-keytable

COPY ./lirc_options.conf /etc/lirc/lirc_options.conf
COPY ./lircd.conf.d/* /etc/lirc/lircd.conf.d/

# Install pipenv
# RUN pip3 install pipenv

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install python dependencies
# COPY ./Pipfile /usr/src/app
# RUN pipenv install --skip-lock

# Copy application source and configuration files
# COPY ./src /usr/src/app/src
COPY ./start.sh ./

## Enable udevd if you need plugged dynamic hardware devices to show up in your container.
ENV UDEV=1

# We're just making it so you can enter the device for now.
# ENTRYPOINT ["tail", "-f", "/dev/null"]

CMD ["bash", "start.sh"]
