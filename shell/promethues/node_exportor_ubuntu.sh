#!/bin/bash
wget https://github.com/prometheus/node_exporter/releases/download/v0.16.0/node_exporter-0.16.0.linux-amd64.tar.gz
tar zxvf node_exporter-0.16.0.linux-amd64.tar.gz
mv node_exporter-0.16.0.linux-amd64 node_exporter
sudo mv node_exporter /usr/local/

sudo groupadd prometheus
sudo useradd -g prometheus -s /sbin/nologin prometheus

/bin/cat <<EOM > node_exporter.service
[Unit]
Description=node_exporter
Documentation=https://prometheus.io/
After=network.target

[Service]
Type=simple
User=prometheus
ExecStart=/usr/local/node_exporter/node_exporter
Restart=on-failure

[Install]
WantedBy=multi-user.target
EOM

sudo mv node_exporter.service /etc/systemd/system/
sudo chown prometheus:prometheus /etc/systemd/system/node_exporter.service
sudo systemctl start node_exporter
sudo systemctl enable node_exporter
# rm -f node_exporter-0.16.0.linux-amd64.tar.gz