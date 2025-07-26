gp() {
    # 彩色输出定义
    local GREEN='\033[0;32m'
    local BLUE='\033[0;34m'
    local NC='\033[0m' # No Color
    
    echo -e "${BLUE}🚀 开始 Git 快速提交推送流程...${NC}"
    
    # 1. git add
    echo -e "${GREEN}▶ 执行: git add .${NC}"
    git add .
    if [ $? -ne 0 ]; then
        echo -e "${RED}❌ git add 失败${NC}"
        return 1
    fi
    
    # 2. git commit
    if [ -z "$1" ]; then
        local commit_msg="Update at $(date '+%Y-%m-%d %H:%M:%S')"
        echo -e "${GREEN}▶ 执行: git commit -m \"${commit_msg}\"${NC}"
        git commit -m "$commit_msg"
    else
        echo -e "${GREEN}▶ 执行: git commit -m \"$1\"${NC}"
        git commit -m "$1"
    fi
    
    if [ $? -ne 0 ]; then
        echo -e "${RED}❌ git commit 失败${NC}"
        return 1
    fi
    
    # 3. git push
    echo -e "${GREEN}▶ 执行: git push${NC}"
    git push
    
    if [ $? -eq 0 ]; then
        echo -e "${BLUE}🎉 所有操作成功完成！${NC}"
    else
        echo -e "${RED}❌ git push 失败${NC}"
        return 1
    fi
}
