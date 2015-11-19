#!/bin/bash

set -eo pipefail
export ETCD_ENDPOINT=${ETCD_ENDPOINT:-$(/sbin/ip route|awk '/default/ { print $3 }'):4001}
#/usr/bin/curl -L http://${ETCD_ENDPOINT}/v2/keys

echo "[elasticsearch] booting container"
echo "[elasticsearch] setting publish ip ${HOST_PRIVATE_IPV4}"

sed -i "s/<HOST_IP>/${HOST_PRIVATE_IPV4}/g" /etc/confd/templates/elasticsearch.yml.tmpl
echo "ETCD_ENDPOINT is: ${ETCD_ENDPOINT}"
echo "[elasticsearch] elasticsearch configuration template is now:"
cat /etc/confd/templates/elasticsearch.yml.tmpl

# Try to make initial configuration every 5 seconds until successful
until confd -onetime -node $ETCD_ENDPOINT -config-file /etc/confd/conf.d/elasticsearch.toml; do
    echo "[elasticsearch] waiting for confd to create initial elasticsearch configuration."
    sleep 5
done

echo "[elasticsearch] elasticsearch configuration is now:"
cat /data/elasticsearch.yml

# Put a continual polling `confd` process into the background to watch
# for changes every 10 seconds
confd -interval 10 -node $ETCD_ENDPOINT -config-file /etc/confd/conf.d/elasticsearch.toml &
echo "[elasticsearch] confd is now monitoring etcd for changes..."

# Start the HAProxy service using the generated config
echo "[elasticsearch] starting elasticsearch service..."
/usr/share/elasticsearch/bin/elasticsearch -Des.config=/data/elasticsearch.yml

tail -f /data/log/*.log
