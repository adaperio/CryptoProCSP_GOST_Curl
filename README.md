# Ubuntu 12.04 (amd64) with installed CryptoPro CSP 3.6R4 + GOST curl

## What?
We created Docker image that you can run in 5 seconds. Just like that:

```
docker run -t -i adaperio/cryptopro_gost_curl /bin/bash
```
You are inside the container. Now you are able to use 'curl' command to access GOST encrypted web-sites.

## Where to get the image?
Just go to DockerHub [here](https://hub.docker.com/r/adaperio/cryptopro_gost_curl/).

## Why do i need included (here) Dockerfile?
Dockerfile is a file that was used to create DockerHub image. You don't need it. File is provided for clarity.

## Installed CryptoPro CSP
*files* directory contains **linux-amd64.tar** that was downloaded from [CryptoPro](https://www.cryptopro.ru) web-site.This archive was used to create DockerHub image. Please see https://www.cryptopro.ru/products/csp/downloads
You can check MD5: 30bcdbd0f0447f3775df63fca02b832e
