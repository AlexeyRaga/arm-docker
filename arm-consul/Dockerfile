FROM 		mkaczanowski/archlinux
MAINTAINER 	Alexey Raga <alexey.raga@gmail.com>

ADD ./bin/* /bin/
ADD ./ui/ui.tar.gz /ui/

ADD ./config /config/
ONBUILD ADD ./config /config/

ADD ./start /bin/start
ADD ./check-http /bin/check-http
ADD ./check-cmd /bin/check-cmd

RUN pacman -Syy && pacman --noconfirm -S iproute2 

EXPOSE 8300 8301 8301/udp 8302 8302/udp 8400 8500 53 53/udp
VOLUME ["/data"]

ENV SHELL /bin/bash

ENTRYPOINT ["/bin/start"]
CMD []
