
FROM ubuntu:16.10

RUN apt-get update \
 && apt-get install -y shadowsocks-libev \
 && apt-get install -y python-pip 

RUN pip install shadowsocks

CMD exec ssserver -p 443 -k Hello1128 -m rc4-md5