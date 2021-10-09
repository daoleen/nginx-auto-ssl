#!/bin/bash

. "/scripts/util.sh"

symlink_user_templates


if [ 0 = "${SSL_ENABLED}" ]; then
    echo "Skipping SSL certificates generation because of SSL is not allowed"
    rm -rf /etc/nginx/templates/default_ssl.conf.template
    rm -rf /etc/nginx/conf.d/default_ssl.conf
    rm -rf /etc/nginx/conf.d/certbot.conf
    rm -rf /etc/nginx/conf.d/redirector.conf
else
    rm -rf /etc/nginx/templates/default.conf.template
    rm -rf /etc/nginx/conf.d/default.conf
fi

