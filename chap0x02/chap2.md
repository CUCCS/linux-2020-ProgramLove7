作业2

实验要求：
- 在asciinema注册一个账号，并在本地安装配置好asciinema

- 确保本地已经完成asciinema auth，并在asciinema成功关联了本地账号和在线账号

- 上传本人亲自动手完成的vimtutor操作全程录像

- 在自己的github仓库上新建markdown格式纯文本文件附上asciinema的分享URL

- 提醒 避免在终端操作录像过程中暴漏密码、个人隐私等任何机密数据


## 1安装asciinema 关联账号
sudo apt-add-repository ppa:zanchey/asciinema
sudo apt-get update
sudo apt-get install asciinema
asciinema auth

## 2录像
- [operate1](https://asciinema.org/a/1jD9wEDUPiLtjW8H4WSHw9MbS)
- [operate2](https://asciinema.org/a/RpXkD6X0HQu2LDEDWxc0gDrL4)
- [operate3](https://asciinema.org/a/BY52rw8SVXnEy3xrSxcdXIZcG)
- [operate4](https://asciinema.org/a/dQVW5FGgT5GI76MYtzNoHvIyV^C)
- [operate5](https://asciinema.org/a/wJkW3moGJjZMBTYxxv60PsIBu)
- [operate6](https://asciinema.org/a/Dq7roSYcPvXDpaa8vrb0u0t5d)
- [operate7](https://asciinema.org/a/EiuW0l6zi5mzyDDXVENk7VaPy)

## 3回答自查清单

- 1你了解vim有几种工作模式

* v可视模式
* i可输入文本模式
* <esc>正常模式


- 2Normal模式下，从当前行开始，一次向下移动光标10行的操作方法？如何快速移动到文件开始行和结束行？如何快速跳转到文件中的第N行？

* 一次向下10行 10j
* 快速到达开始于结束行 gg和G
* 快速跳到底n行 n<enter>


- 3Normal模式下，如何删除单个字符、单个单词、从当前光标位置一直删除到行尾、单行、当前行开始向下数N行？

* 删除单个字符 x
* 单个单词 dw
* 单行 dd
* 从当前坐标一直删除到行尾 d$


- 4如何在vim中快速插入N个空行？如何在vim中快速输入80个-？

* n个空行 N i <esc>
* 输入80个- 80 - i<esc>


- 5如何撤销最近一次编辑操作？如何重做最近一次被撤销的操作？

* 撤销最近一次编辑操作 u
* 重做最近一次被撤销的操作 CTRL+R


- 6vim中如何实现剪切粘贴单个字符？单个单词？单行？如何实现相似的复制粘贴操作呢？

* 剪切单个字符 x
* 单个单词 dw
* 单行 dd 
* 粘贴 p 
* 复制粘贴类似  yw yy p


- 7为了编辑一段文本你能想到哪几种操作方式（按键序列）？

* 选择文本 vim[名称]
* 删除字符 x
* 切换可输入文本模式 i
* 撤销最近一次编辑操作 u
* 剪切单个字符 x 单个单词 dw 单行 dd 粘贴 p 
* 保存退出 正常模式下 :q!


- 8查看当前正在编辑的文件名的方法？查看当前光标所在行的行号的方法？

* 在正常模式下  CTRL+g
* 当前光标所在行号 ：set nu


- 9在文件中进行关键词搜索你会哪些方法？如何设置忽略大小写的情况下进行匹配搜索？如何将匹配的搜索结果进行高亮显示？如何对匹配到的关键词进行批量替换？

* 在后面的文本中正向查找 <esc> :\keyword
*  在前面的文本中反向查找 <esc> :?keyword
* 同一方向查找下一个 n  相反方向查找下一个 N
* 设置忽略大小写的情况下匹配  <ESC> :set ic
* 匹配的搜索结果进行高亮显示  <ESC> :set hls is
* 匹配到的关键词进行批量替换: 
* 替换一行中的第一个字符 <ESC> :s/old/new 
* 替换一行中的所有字符 <esc> :s/old/new/g
* 替换m和n行间的所有字符 <esc> :m,n/old/new/g
* 全文替换 <esc>:%s/old/new/g
* 全文替换时，每一个都要询问，如要替换加c  <esc>:%s/old/new/gc


- 10在文件中最近编辑过的位置来回快速跳转的方法？

* 返回上一次编辑位置 CTRL+o
* 返回下一次编辑位置 CTRL+i

- 11如何把光标定位到各种括号的匹配项？例如：找到(, [, or {对应匹配的),], or }

* 光标放在该字符处 按%


- 12在不退出vim的情况下执行一个外部程序的方法？

* 不退出vim执行外部命令   <ESC> :!command

- 13如何使用vim的内置帮助系统来查询一个内置默认快捷键的使用方法？如何在两个不同的分屏窗口中移动光标？

* 如何使用vim的内置帮助系统来查询一个内置默认快捷键的使用方法 <esc>:help [快捷键名] <enter>
* 两个分屏之间移动 CTRL+w

## 参考资料
[百度](https://www.baidu.com/)
[vimtutor中文版](https://www.jianshu.com/p/4e59c605183a)
[asciinema文档](https://asciinema.org/docs/installation)




