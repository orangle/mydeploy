nuitika
======

python to c++, http://nuitka.net/pages/download.html 

主要是还是说把py编译成二进制文件吧

```
sudo yum install -y http://download.opensuse.org/repositories/home:/kayhayen/CentOS_7/noarch/nuitka-0.5.32.7-5.1.noarch.rpm

python -m nuitka

#you can install 
sudo pip3.6 install nuitka

python3.6 -m nuitka
```

how using

module 

```
python3.6 -m nuitka --module parser.py
```

whole 
```
time python3.6 -m nuitka --recurse-all run.py
```





