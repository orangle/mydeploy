gogs 
======


```
sudo adduser --disabled-login --gecos 'Gogs' git
su - git
mkdir -p /home/git/local
cd ~/local


wget https://dl.gogs.io/0.11.53/gogs_0.11.53_linux_amd64.tar.gz
tar zxvf gogs_0.11.53_linux_amd64.tar.gz
rm -rf gogs_0.11.53_linux_amd64.tar.gz

./gogs web  # web init

#config 
/home/git/local/gogs/custom/conf/app.ini
```

安全配置等
```
[service]
DISABLE_REGISTRATION   = true
REQUIRE_SIGNIN_VIEW    = true

[admin]
; Disable regular (non-admin) users to create organizations
DISABLE_REGULAR_ORG_CREATION = true
```

守护进程 root用户, 注意路径
```
curl https://raw.githubusercontent.com/gogs/gogs/master/scripts/systemd/gogs.service -o /lib/systemd/system/gogs.service

systemctl status gogs
systemctl status gogs
```

创建管理yuan git用户
```
./local/gogs/gogs admin create-user --name=orangleliu --password=xxx --email=orangleliu@gmail.com --admin=true
```


增加反向代理, 安装caddy 然后配置, 注意把gogs地址改到本地，或者做防火墙
```
git.xxx.com {
 gzip
 tls xxx@gmail.com
 log /tmp/git.access.log
 proxy / http://127.0.0.1:8000

}
```

gogs的配置重点
```
[server]
DOMAIN           = git.xxx.com
HTTP_PORT        = 8000
HTTP_ADDR        = 127.0.0.1
ROOT_URL         = https://git.xxx.com/
```