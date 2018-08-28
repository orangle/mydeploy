
```
wget -N --no-check-certificate https://raw.githubusercontent.com/orangle/mydeploy/master/shell/caddy/caddy_install.sh && chmod +x caddy_install.sh && bash caddy_install.sh install http.filemanager,http.cache,http.prometheus
```

配置文件 `/usr/local/caddy/Caddyfile`
```
g.orangleliu.info {
 gzip
 tls orangleliu@gmail.com
 basicauth / china china
 log /tmp/google.access.log
 proxy / https://www.google.ca {
 header_upstream X-Real-IP {remote}
 header_upstream User-Agent {>User-Agent}
 header_upstream Accept-Language en-US
 header_upstream Accept-Encoding identity
 }
```

启动
```
/etc/init.d/caddy status
```

ufw开启 443 端口
```
sudo ufw status
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw reload
```
