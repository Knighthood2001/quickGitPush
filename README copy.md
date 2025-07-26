
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

如果你是使用gp2.sh

结果如下
```bash
wu@wu:~/code/quickGitPush$ gp "添加gp2.sh"
🚀 开始 Git 快速提交推送流程...
▶ 执行: git add .
▶ 执行: git commit -m "添加gp2.sh"
[main 46f9e93] 添加gp2.sh
 3 files changed, 56 insertions(+), 1 deletion(-)
 create mode 100644 gp.sh
 create mode 100644 gp2.sh
▶ 执行: git push
枚举对象中: 7, 完成.
对象计数中: 100% (7/7), 完成.
使用 16 个线程进行压缩
压缩对象中: 100% (5/5), 完成.
写入对象中: 100% (5/5), 984 字节 | 984.00 KiB/s, 完成.
总共 5 （差异 1），复用 0 （差异 0）
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To https://github.com/Knighthood2001/quickGitPush.git
   f17c7c0..46f9e93  main -> main
🎉 所有操作成功完成！
```

如果你是使用gp3.sh


```bash
wu@wu:~/code/quickGitPush$ gp
🚀 开始 Git 快速提交推送流程...
▶ 执行: git add .
▶ 执行: git commit -m "Update at 2025-07-26 17:54:53"
[main ae73ddf] Update at 2025-07-26 17:54:53
 1 file changed, 1 insertion(+)
▶ 执行: git push
枚举对象中: 5, 完成.
对象计数中: 100% (5/5), 完成.
使用 16 个线程进行压缩
压缩对象中: 100% (3/3), 完成.
写入对象中: 100% (3/3), 363 字节 | 363.00 KiB/s, 完成.
总共 3 （差异 1），复用 0 （差异 0）
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To https://github.com/Knighthood2001/quickGitPush.git
   5d98ce7..ae73ddf  main -> main
🎉 所有操作成功完成！
```
