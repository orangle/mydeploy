Tian Ti
==========

Ubuntu

```
wget https://github.com/shadowsocks/shadowsocks-go/releases/download/1.2.1/shadowsocks-server.tar.gz
tar zxvf shadowsocks-server.tar.gz

mv shadowsocks-server /usr/local/bin/shadowsocks-server
curl https://raw.githubusercontent.com/orangle/mydeploy/master/shell/ss/ss.conf -o /etc/ss.conf

curl https://raw.githubusercontent.com/orangle/mydeploy/master/shell/ss/ss.service -o /lib/systemd/system/ss.service

systemctl enable ss
systemctl start ss
systemctl status ss
```

别忘了修改配置里面的默认密码和端口