#!/bin/bash

# Windows Git Bash 安装脚本
# 适用于 Git for Windows 的 Git Bash 环境

# 检查是否在 Git Bash 环境中
if [[ "$OSTYPE" != "msys" && "$OSTYPE" != "cygwin" ]]; then
    echo "⚠️ 此脚本需要在 Git Bash 中运行"
    echo "请打开 Git Bash 并重新运行此脚本"
    exit 1
fi

# Windows 下的 .bashrc 路径通常在用户主目录
BASHRC_PATH="$HOME/.bashrc"

# 如果 .bashrc 不存在，创建它
if [ ! -f "$BASHRC_PATH" ]; then
    touch "$BASHRC_PATH"
    echo "✅ 已创建 $BASHRC_PATH"
fi

# 检查是否已包含 gp 函数
if grep -q "gp() {" "$BASHRC_PATH"; then
    echo "⚠️ $BASHRC_PATH 中已存在 gp 函数，跳过添加。"
else
    # 将 gp3.sh 的内容追加到 ~/.bashrc
    echo "" >> "$BASHRC_PATH"
    echo "# Git 快速提交推送函数 (来自 gp3.sh) - Windows 版本" >> "$BASHRC_PATH"
    cat gp3.sh >> "$BASHRC_PATH"
    echo "✅ gp3.sh 已成功添加到 $BASHRC_PATH"
    
    # 自动加载 ~/.bashrc
    source ~/.bashrc
    echo " ~/.bashrc 已自动加载，gp 命令现在可用！"

fi