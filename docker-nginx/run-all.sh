#!/bin/sh

service memcached start
nginx -g 'daemon off;'
