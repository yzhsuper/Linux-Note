  
- 查看所有任务(进程):ps aux
- 查看某一具体任务:ps aux | grep 程序名
- 修改ubuntu终端显示路径:export PS1='[\u@\h \W]\$ ',这个是临时的,重启后没有,可以添加到用户的.bashrc文件里或者系统的profile文件里,或者直接修改.bashrc 将/w改为大写的/W export PS1="\[\e[35;1m\]\u@\h:\W$ \[\e[0m\]"这个是有颜色的
- jobs 查看所有后台运行的程序，然后可以通过 fg %N 使得后台的程序在前台运行。使用bg %N 使得程序回到后台运行
- 查看某一端口的占用情况： lsof -i:8080
- sudo -s 不用每次都输入sudo了
- lsb_release -a 查看Linux版本 或者cat /proc/version 或者uname -a
- 查看所有安装的内核dpkg --get-selections |grep linux-image，配合7查看当前版本，然后通过sudo apt-get purge linux-image-3.5.0-17-generic删除多余
- 使用nautilus， 可以在命令行直接打开文件夹
- ar xvpf Redis-1.972.tar Redis-1.972/Changes 只压某一个文件
- limit -a 查看文件与线程最大值 
- 用root用户，编辑/etc/sudoers ,添加youuser            ALL=(ALL)                NOPASSWD: ALL	可以为用户添加sudo权限
- sudo dpkg --clear-avail var/lib/dpkg/available' for reading: No such file or directory 解决
- 设置鼠标灵敏度 xinput --set-prop "pointer:Rapoo gaming mouse" "Device Accel Constant Deceleration" 1.5
- xwininfo 查看窗口信息
- date -s 18:54:10 设置时间，clock --systohc同步时间
- 屏幕分辨率，
```
cvt 1918 888
xrandr 查看设备connected primary 这2个单词前面就是设备
xrandr --newmode "1918x888_60.00"  140.50  1918 2032 2232 2544  888 891 901 922 -hsync +vsync
xrandr --addmode Virtual1 "1918x888_60.00"
这个时临时生效，重启消失，将上面放在.profile里面即可
```
