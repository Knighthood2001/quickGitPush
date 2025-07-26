
```bash
# Git 快速提交推送函数 git push简称为gp
gp() {
    git add .
    if [ -z "$1" ]; then
        git commit -m "Update at $(date '+%Y-%m-%d %H:%M:%S')"
    else
        git commit -m "$1"
    fi
    git push
}
```

结果如下

```shell
wu@wu:~/code/pythonDemo/​​AutoBabelDocTranslator​​$ gp "update README.md"
[main 2586c80] update README.md
 1 file changed, 2 insertions(+)
枚举对象中: 5, 完成.
对象计数中: 100% (5/5), 完成.
使用 16 个线程进行压缩
压缩对象中: 100% (3/3), 完成.
写入对象中: 100% (3/3), 388 字节 | 388.00 KiB/s, 完成.
总共 3 （差异 2），复用 0 （差异 0）
remote: Resolving deltas: 100% (2/2), completed with 2 local objects.
To https://github.com/Knighthood2001/AutoBabelDocTranslator.git
   a996a52..2586c80  main -> main
```

