#!/bin/bash
set -e

PROXY_USER="${PROXY_USER:?PROXY_USER env is required}"
PROXY_PASS="${PROXY_PASS:?PROXY_PASS env is required}"

htpasswd -cb /etc/squid/passwd "$PROXY_USER" "$PROXY_PASS"

squid -z

exec squid -N -f /etc/squid/squid.conf
