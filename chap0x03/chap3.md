作业3


## 实验要求： 
- 学习了解"systemd"动手实践相关命令并录制asciinema


## 实验环境
- Ubuntu 18.04.4-server
- Asciinema recorder




## 实验录像
# 命令篇
- [systemd版本，概述，系统管理](https://asciinema.org/a/YXDZb0bqgIRVQme07Vc6XnO2c)
- [systemd UNIT](https://asciinema.org/a/S3UxRM4UGIjnqUbl26LIWqtEH)
- [systemd 配置文件](https://asciinema.org/a/4w0nJgqLvTfLlpIp8QlKxlgC5)
- [systemd TARGET](https://asciinema.org/a/htchyyXJVLAQ4fLb5RCFClgtI)
- [systemd 日志管理](https://asciinema.org/a/SHxz1abm3Pf4BTywCBCWv5cEy)

# 实战篇
- [systemd实战](https://asciinema.org/a/R6ja3LvUD3X7MU5AycvqYC6qo)




## 回答自查清单
- 1.如何添加一个用户并使其具备sudo执行成簇的权限？

* `sudo adduser username`添加用户
* 执行命令 `root@ubuntu:~# sudo vim /etc/sudoers`
* 修改以下文件
`# User privilege specification`
`root ALL=(ALL) ALL`
`db ALL=(ALL) ALL`保存退出，db用户就拥有了root权限。



- 2.如何将一个用户添加到一个用户组

* 执行命令`usermod -a -G groupname username`



- 3.如何查看当前系统的分区表和文件系统详细信息

* 执行命令`fdisk -l`查看分区表
* 通过`df -a`或者`stat -f`查看文件系统详细信息



- 4.如何实现开机自动挂载virtualbox的共享目录分区

* 在vbox中打开添加共享文件夹,打开自动挂载和固定分配
* 执行命令`sudo /media/cdrom/./VBoxLinuxAdditions.run`安装增强功能
* 执行命令`sudo mount -t vboxsf shared ~/shared`将共享文件夹挂载到share目录
*  编写文件`my_mount-src_host.automount`
	```bash
	[Unit]
	Description=Auto mount shared "src" folder
	
	[Automount]
	Where=~/shared
	DirectoryMode=0775
	Type=vboxsf
	
	[Install]
	WantedBy=multi-user.target

	```
* 执行`systemd enable my_mount-src_host.automount`



- 5.基于LVM（逻辑分卷管理）的分区如何实现动态扩容和缩减容量

* `lvextend --size size dir`扩充容量
* `lvreduce --size size dir`缩减容量



- 6.如何通过systemd设置实现在网络连通时运行一个指定脚本，在网络断开时运行另一个脚本

*  [unit]Description=After network up
       After=network.target network-online.target
       [service]
       Type=oneshot
       ExecStart=_YOUR_SCRIPT_

       [Install]
       WantedBy=multi-user.target  连通是运行脚本
    
*  [unit]Description=Before network up
       After=network.target network-online.target
       [service]
       Type=oneshot
       ExecStart=_YOUR_SCRIPT_

       [Install]
       WantedBy=multi-user.target 断开时运行脚本




- 7.如何使用stsyemd设置实现一个脚本在任何情况下被杀死之后会立即启动？实现杀不死

* 修改[Service]区块中对重启的定义
   Restant = always





## 参考资料
[systemd入门教程](http://www.ruanyifeng.com/blog/2016/03/systemd-tutorial-commands.html)
                (http://www.ruanyifeng.com/blog/2016/03/systemd-tutorial-part-two.html)
