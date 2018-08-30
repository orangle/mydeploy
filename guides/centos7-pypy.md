pypy
====

https://bitbucket.org/squeaky/portable-pypy/downloads/

```
wget https://bitbucket.org/squeaky/portable-pypy/downloads/pypy3.5-6.0.0-linux_x86_64-portable.tar.bz2
tar xvf pypy3.5-6.0.0-linux_x86_64-portable.tar.bz2

$ ./pypy3.5-6.0.0-linux_x86_64-portable/bin/pypy --version
Python 3.5.3 (fdd60ed87e941677e8ea11acf9f1819466521bf2, Apr 27 2018, 15:39:57)
[PyPy 6.0.0 with GCC 7.2.0]
```

为了和其他py的环境兼容，使用 virtualenv
```
$ ./pypy3.5-6.0.0-linux_x86_64-portable/bin/virtualenv-pypy ~/pypy
$ /home/liuzz/pypy/bin/pip3 list

$ /home/liuzz/pypy/bin/pypy --version
Python 3.5.3 (fdd60ed87e941677e8ea11acf9f1819466521bf2, Apr 27 2018, 15:39:57)
[PyPy 6.0.0 with GCC 7.2.0]
```

记得使用pypy的全路径，或者加入到 `PATH`