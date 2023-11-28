FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y shellinabox && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN echo 'root:abc123abc@#!' | chpasswd

EXPOSE 22

CMD ["/usr/bin/shellinaboxd", "-t" "-s", "/:LOGIN"]
