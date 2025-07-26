# Git 快速提交推送函数 git push简称为gp
gp() {
    # 颜色定义
    local RED='\033[0;31m'
    local GREEN='\033[0;32m'
    local BLUE='\033[0;34m'
    local YELLOW='\033[1;33m'
    local NC='\033[0m'
    
    # 显示当前分支
    local branch=$(git branch --show-current 2>/dev/null)
    if [ -z "$branch" ]; then
        echo -e "${RED}❌ 当前目录不是 Git 仓库${NC}"
        return 1
    fi
    
    echo -e "${BLUE}🚀 Git 快速提交推送 (分支: ${YELLOW}${branch}${BLUE})${NC}"
    
    # 1. git add
    echo -e "${GREEN}▶ 添加变更: git add .${NC}"
    git add .
    local add_status=$?
    
    # 显示暂存区状态
    echo -e "${BLUE}▷ 变更状态:${NC}"
    git status -s
    
    if [ $add_status -ne 0 ]; then
        echo -e "${RED}❌ 添加变更失败${NC}"
        return 1
    fi
    
    # 2. git commit
    local commit_msg
    if [ -z "$1" ]; then
        commit_msg="Update at $(date '+%Y-%m-%d %H:%M:%S')"
        echo -e "${GREEN}▶ 自动提交: git commit -m \"${commit_msg}\"${NC}"
    else
        commit_msg="$1"
        echo -e "${GREEN}▶ 自定义提交: git commit -m \"${commit_msg}\"${NC}"
    fi
    
    git commit -m "$commit_msg"
    local commit_status=$?
    
    if [ $commit_status -ne 0 ]; then
        echo -e "${RED}❌ 提交失败${NC}"
        return 1
    fi
    
    # 3. git push
    echo -e "${GREEN}▶ 推送变更: git push origin ${branch}${NC}"
    git push origin "${branch}"
    local push_status=$?
    
    if [ $push_status -eq 0 ]; then
        echo -e "${BLUE}🎉 成功推送到 ${YELLOW}origin/${branch}${BLUE}${NC}"
    else
        echo -e "${RED}❌ 推送失败${NC}"
        return 1
    fi
}
