---
title: lua-bindings环境配置
comments: true
abbrlink: 26463
date: 2016-03-01 17:45:55
tags: lua-bindings
categories: cocos2dx
permalink: lua-bindings环境配置
updated:
---
1.下载[python2.7](http://www.python.org/ftp/python/2.7.3/python-2.7.3.msi)安装它并设置C:\Python27\到path环境变量中。

2.安装easy_install(可选)
使用[ez_setup.py](http://peak.telecommunity.com/dist/ez_setup.py)进行安装
下载完成后双击执行安装文件，即可在C:\Python27\scripts下安装easy_install
添加C:\Python27\scripts到环境变量path中
打开cmd执行下面命令：
```
easy_install virtualenv
```

安装了easy_install之后安装python的库就很简单了，以后需要安装python的库的话则直接在命令行使用
easy_install + libname

3.安装Cheetah
自动安装：
打开cmd执行下面命令：
```
easy_install cheetah
```
手动安装:
下载[Cheetah.zip](https://raw.github.com/dumganhar/my_old_cocos2d-x_backup/download/downloads/Cheetah.zip)并解压到C:\Python27\Lib\site-packages
然后进入C:\Python27\Lib\site-packages\Cheetah目录，命令行运行: python setup.py install

4.下载[PyYAML-3.12.win32-py2.7.exe](http://pyyaml.org/download/pyyaml/PyYAML-3.12.win32-py2.7.exe)并安装它。

5.下载[android-ndk-r10d](https://developer.android.com/ndk/downloads/index.html)并设置NDK_ROOT环境变量。

6.进入到cocos2d-x/tools/tolua文件夹，运行genbindings.py自动生成代码到cocos\scripting\auto-generated\lua-bindings。