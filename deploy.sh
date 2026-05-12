#!/usr/bin/env bash
# Seedance Skills 部署脚本
# 用法：
#   ./deploy.sh local   - 部署到当前项目 .claude/skills/
#   ./deploy.sh global  - 部署到全局 ~/.claude/skills/

set -e

# 颜色输出
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# 获取脚本所在目录
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_DIR="$SCRIPT_DIR/skills"

# 检查 skills 目录是否存在
if [ ! -d "$SOURCE_DIR" ]; then
    echo -e "${RED}错误: skills/ 目录不存在${NC}"
    exit 1
fi

# 确定目标目录
if [ "$1" = "global" ]; then
    TARGET_DIR="$HOME/.claude/skills"
    SCOPE="全局"
elif [ "$1" = "local" ]; then
    TARGET_DIR="$SCRIPT_DIR/.claude/skills"
    SCOPE="当前项目"
else
    echo "用法: $0 {local|global}"
    echo "  local  - 部署到当前项目 .claude/skills/"
    echo "  global - 部署到全局 ~/.claude/skills/"
    exit 1
fi

echo -e "${YELLOW}开始部署 Seedance Skills 到 ${SCOPE}...${NC}"
echo "源目录: $SOURCE_DIR"
echo "目标目录: $TARGET_DIR"
echo ""

# 创建目标目录
mkdir -p "$TARGET_DIR"

# 复制 _shared 目录
if [ -d "$SOURCE_DIR/_shared" ]; then
    echo -e "${GREEN}[1/2] 复制共享资源 _shared/${NC}"
    rm -rf "$TARGET_DIR/_shared"
    cp -r "$SOURCE_DIR/_shared" "$TARGET_DIR/_shared"
    cp "$SCRIPT_DIR/AGENTS.md" "$TARGET_DIR/_shared/AGENTS.md"
    echo "  ✓ _shared/ 已复制"
    echo "  ✓ AGENTS.md 规则源已复制到 _shared/AGENTS.md"
else
    echo -e "${YELLOW}警告: _shared/ 目录不存在，跳过${NC}"
fi

# 复制各个 skill
echo -e "${GREEN}[2/2] 复制 skill 文件${NC}"
SKILL_COUNT=0

for skill_dir in "$SOURCE_DIR"/*/; do
    # 跳过 _shared 目录
    if [ "$(basename "$skill_dir")" = "_shared" ]; then
        continue
    fi

    skill_name=$(basename "$skill_dir")

    # 检查是否有 SKILL.md
    if [ ! -f "$skill_dir/SKILL.md" ]; then
        echo -e "${YELLOW}  ⚠ 跳过 $skill_name (缺少 SKILL.md)${NC}"
        continue
    fi

    # 创建目标 skill 目录
    mkdir -p "$TARGET_DIR/$skill_name"

    # 复制 SKILL.md
    cp "$skill_dir/SKILL.md" "$TARGET_DIR/$skill_name/"

    # 复制 references 目录（如果存在）
    if [ -d "$skill_dir/references" ]; then
        rm -rf "$TARGET_DIR/$skill_name/references"
        cp -r "$skill_dir/references" "$TARGET_DIR/$skill_name/"
    fi

    # 复制 agents 目录（如果存在）
    if [ -d "$skill_dir/agents" ]; then
        rm -rf "$TARGET_DIR/$skill_name/agents"
        cp -r "$skill_dir/agents" "$TARGET_DIR/$skill_name/"
    fi

    echo "  ✓ $skill_name"
    ((SKILL_COUNT++))
done

echo ""
echo -e "${GREEN}✅ 部署完成！${NC}"
echo "已部署 $SKILL_COUNT 个 skills 到 ${SCOPE}"
echo ""
echo "现在可以在 Claude Code 中使用斜杠命令调用，例如："
echo "  /seedance-mechbox 龙年主题"
echo "  /seedance-zodiac-beast 虎"
echo "  /seedance-world-cup-mechbox 巴西"
