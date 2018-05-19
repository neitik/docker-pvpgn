FROM ubuntu:18.04

RUN apt-get update
RUN apt-get -y install unzip wget
RUN apt-get -y install pvpgn
RUN wget https://datapacket.dl.sourceforge.net/project/pvpgn.berlios/Support%20files/pvpgn-support-1.2.zip -O /tmp/pvpgn-support-1.2.zip
RUN unzip -j /tmp/pvpgn-support-1.2.zip -d /var/lib/pvpgn/files
RUN rm -rf /var/lib/apt/lists/*

# ADD ./users /var/lib/pvpgn/users

WORKDIR /root

CMD ["bnetd","-f","-D"]
