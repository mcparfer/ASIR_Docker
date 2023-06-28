FROM alpine
RUN apk add --update --no-cache openssh curl tcpdump
RUN echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config
RUN sed 's/\(AllowTcpForwarding\) no/\1 yes/' /etc/ssh/sshd_config > /etc/ssh/sshd_config
RUN echo 'AllowTcpForwarding yes' >> /etc/ssh/sshd_config
RUN echo 'TCPKeepAlive yes' >> /etc/ssh/sshd_config
RUN echo 'PermitTTY yes' >> /etc/ssh/sshd_config
RUN echo 'PermitTunnel yes' >> /etc/ssh/sshd_config
RUN echo 'GatewayPorts yes' >> /etc/ssh/sshd_config
RUN echo 'PermitOpen any' >> /etc/ssh/sshd_config
RUN adduser -h /srv -s /bin/sh -D userssh
RUN echo -n 'userssh:12345' | chpasswd
ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 22
EXPOSE 80
COPY entrypoint.sh /
