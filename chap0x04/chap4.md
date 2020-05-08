作业4

## 实验环境
- Ubuntu 18.04.4-server
- Asciinema recorder
- imagemagick



##  实验要求

* 任务一：用bash编写一个图片批处理脚本，实现以下功能：
- 支持命令行参数方式使用不同功能
-  支持对指定目录下所有支持格式的图片文件进行批处理
-  支持以下常见图片批处理功能的单独使用或组合使用
-  支持对jpeg格式图片进行图片质量压缩
-  支持对jpeg/png/svg格式图片在保持原始宽高比的前提下压缩分辨率
-  支持对图片批量添加自定义文本水印
-  支持批量重命名（统一添加文件名前缀或后缀，不影响原始文件扩展名）
-  支持将png/svg图片统一转换为jpg格式图片
* 任务二：用bash编写一个文本批处理脚本，对*worldcupplayerinfo.tsv*进行批量处理完成相应的数据统计任务
-  统计不同年龄区间范围（20岁以下、[20-30]、30岁以上）的球员数量、百分比
-  统计不同场上位置的球员数量、百分比
-  名字最长的球员是谁？名字最短的球员是谁？
-  年龄最大的球员是谁？年龄最小的球员是谁？
* 任务三：用bash编写一个文本批处理脚本，对*web_log.tsv*进行批量处理完成相应的数据统计任务
-  统计访问来源主机TOP 100和分别对应出现的总次数
-  统计访问来源主机TOP 100 IP和分别对应出现的总次数
-  统计最频繁被访问的URL TOP 100
-  统计不同响应状态码的出现次数和对应百分比
-  分别统计不同4XX状态码对应的TOP 10 URL和对应出现的总次数
-  给定URL输出TOP 100访问来源主机


## 实验数据

- 实验数据.txt




## 参考资料
- [ImageMagick官方参考文档](https://imagemagick.org/)
- [b站视频](https://space.bilibili.com/388851616?from=search&seid=6397223225123693016)
- [ubuntu convert 命令](https://blog.csdn.net/HUXINY/article/details/87879249)
- [awk 数组排序多种实现方法](https://www.cnblogs.com/chengmo/archive/2010/10/09/1846696.html)
- [linux](https://github.com/CUCCS)
- [Linux shell脚本中shift的用法说明](https://blog.csdn.net/zhu_xun/article/details/24796235?utm_medium=distribute.pc_relevant.none-task-blog-BlogCommendFromBaidu-2&depth_1-utm_source=distribute.pc_relevant.none-task-blog-BlogCommendFromBaidu-2)
