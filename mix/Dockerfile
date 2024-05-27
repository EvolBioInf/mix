FROM ubuntu
RUN apt -y update && apt install -y sudo git
RUN useradd -m -p NbqDBxZy0F.tE -s /bin/bash jdoe \
    && usermod -aG sudo jdoe
COPY README /home/jdoe/
USER jdoe
WORKDIR /home/jdoe
ENV HOME /home/jdoe
ENV HOSTNAME mix
