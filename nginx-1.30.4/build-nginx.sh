#!/bin/sh

PREFIX="C:/msys64/home/lleafs/nginx-rtmp-build"

./configure \
  --prefix=$PREFIX \
  --with-pcre=/home/eabar/pcre2-10.47 \
  --with-zlib=/home/eabar/zlib-1.3.1 \
  --with-openssl=/home/eabar/openssl-4.0.1 \
  --add-module=/home/eabar/nginx-rtmp-module-1.2.2-r1 \
  --add-module=/home/eabar/ngx_brotli \
  --add-module=/home/eabar/headers-more-nginx-module \
  --add-module=/home/eabar/ngx_http_geoip2_module \
  --add-module=/home/eabar/naxsi/naxsi_src \
  --with-http_ssl_module \
  --with-http_v2_module \
  --with-http_gzip_static_module \
  --with-http_flv_module \
  --with-http_mp4_module \
  --with-http_secure_link_module \
  --with-http_stub_status_module \
  --with-http_auth_request_module

make -j$(nproc)
make install
