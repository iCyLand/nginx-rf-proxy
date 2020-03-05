# Setting for NGINX reverse to forward proxy

## Environment variable

* NGX_FPROXY_HOST is proxy server address
* NGX_FPROXY_PORT is proxy server port
* NGX_FPROXY_RESOLVER_IP is public or internal DNS server
* NGX_FPROXY_DEST_HOST is destination domain or ip address
* NGX_FPROXY_DEST_PROTO is destination protocol [http|https]
* NGX_FPROXY_DEST_PORT is destination port 80, 443 or etc.

## Referrence

* socat and reverse proxy example
  * <https://stackoverflow.com/questions/46803431/nginx-proxy-pass-over-https-proxy>

* nginx docker environment inspiration
  * <https://github.com/omidraha/atlassian>
  * <https://serverfault.com/questions/577370/how-can-i-use-environment-variables-in-nginx-conf>
