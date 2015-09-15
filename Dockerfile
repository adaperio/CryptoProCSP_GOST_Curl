FROM ubuntu:12.04
MAINTAINER Anton Akentyev <anthony.akentiev@gmail.com>

# 1 - install prereqs
RUN apt-get -y update && apt-get install -y alien build-essential lsb-core lsb-base wget htop linux-headers-$(uname -r)

# 2 - download CryptoPro
RUN wget --no-check-certificate "https://raw.githubusercontent.com/adaperio/CryptoProCSP_GOST_Curl/master/files/linux-amd64.tar" && tar -xvf linux-amd64.tar

# 3 - Install
# Will install CURL in /opt/cprocsp/bin/amd64/curl
RUN cd linux-amd64 && alien -kci lsb-cprocsp-base-3.6.1-4.noarch.rpm && alien -kci lsb-cprocsp-rdr-64-3.6.1-4.x86_64.rpm && alien -kci lsb-cprocsp-capilite-64-3.6.1-4.x86_64.rpm && alien -kci lsb-cprocsp-kc1-64-3.6.1-4.x86_64.rpm && alien -kci lsb-cprocsp-kc1-64-3.6.1-4.x86_64.rpm && alien -kci cprocsp-curl-64-3.6.1-4.x86_64.rpm

# 4 - Make link to new CURL (with GOST support)
# Do not backup original CURL
RUN  ln -s /opt/cprocsp/bin/amd64/curl /usr/bin/curl




