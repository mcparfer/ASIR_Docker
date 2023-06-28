# syntax=docker/dockerfile:1
FROM debian:latest
RUN apt update && apt install openssh-server sudo openssl gpg rsync -y
RUN service ssh start
EXPOSE 22
CMD ["/usr/sbin/sshd","-D"]