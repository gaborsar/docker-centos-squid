# CentOS and Squid Proxy

## Example Usage

`Dockerfile`:
```
FROM gaborsar/docker-centos-squid

RUN mkdir /etc/squid/external
COPY squid.conf /etc/squid/external

COPY entrypoint.sh entrypoint.sh
RUN chmod +x entrypoint.sh

ENTRYPOINT [ "./entrypoint.sh" ]
```

`entrypoint.sh`:
```
#!/bin/bash
squid -NYC -d 1 -f /etc/squid/external/squid.conf
```

`squid.conf`:
```
http_port 3128
```
