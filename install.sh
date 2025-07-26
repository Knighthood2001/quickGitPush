#!/bin/bash

# 检查 ~/.bashrc 是否已包含 gp 函数
if grep -q "gp() {" ~/.bashrc; then
    echo "⚠️ ~/.bashrc 中已存在 gp 函数，跳过添加。"
else
    # 将 gp3.sh 的内容追加到 ~/.bashrc
    echo "# Git 快速提交推送函数 (来自 gp3.sh)" >> ~/.bashrc
    cat gp3.sh >> ~/.bashrc
    echo "✅ gp3.sh 已成功添加到 ~/.bashrc"
    # 自动加载 ~/.bashrc
    source ~/.bashrc
    echo " ~/.bashrc 已自动加载，gp 命令现在可用！"
fi