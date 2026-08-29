#!/bin/sh

# Directorio base donde guardaremos los módulos
BASE_DIR="/home/lleafs"

# Brotli module (Google)
cd $BASE_DIR
if [ ! -d "$BASE_DIR/ngx_brotli" ]; then
  git clone https://github.com/google/ngx_brotli.git
  cd ngx_brotli
  git submodule update --init
fi

# Headers-More module
cd $BASE_DIR
if [ ! -d "$BASE_DIR/headers-more-nginx-module" ]; then
  git clone https://github.com/openresty/headers-more-nginx-module.git
fi

# GeoIP2 module
cd $BASE_DIR
if [ ! -d "$BASE_DIR/ngx_http_geoip2_module" ]; then
  git clone https://github.com/leev/ngx_http_geoip2_module.git
fi

# NAXSI (WAF)
cd $BASE_DIR
if [ ! -d "$BASE_DIR/naxsi" ]; then
  git clone https://github.com/nbs-system/naxsi.git
fi

echo "Extra modules downloaded into $BASE_DIR"
