# Fushi 个人护栏的公共函数。由 tool/personal/flow.ps1 install-hooks 复制到
# <git-common-dir>/hooks/，被同目录下的钩子 source；不要直接改已安装的副本。
#
# 同意标记：用户在聊天里明确同意某个动作后，agent 在执行该命令时设置
# FUSHI_APPROVE=<动作>（可用逗号组合，例如 push,pr-personal）。每次同意只用于一次操作。

# 真实仓库对 upstream 是 blob:none 部分克隆；钩子里的检查不允许触发网络懒拉取，
# 缺对象时让命令失败，由调用处按失败处理。
GIT_NO_LAZY_FETCH=1
export GIT_NO_LAZY_FETCH

fushi_is_zero_oid() {
  case "$1" in
    *[!0]*) return 1 ;;
    *) return 0 ;;
  esac
}

fushi_approved() {
  case ",${FUSHI_APPROVE:-}," in
    *",$1,"*) return 0 ;;
  esac
  return 1
}

# 用法：fushi_block <英文一行摘要> <中文标题> [中文说明行...]
# 英文摘要保证在终端编码不是 UTF-8 时 agent 仍能读懂要做什么。
fushi_block() {
  summary=$1
  title=$2
  shift 2
  {
    echo ""
    echo "==== FUSHI GUARD BLOCKED: $summary"
    echo "==== Fushi 护栏拦截：$title"
    for line in "$@"; do
      echo "  $line"
    done
    echo "  规则见 docs/personal/PERSONAL_FORK_RULES.md 第 6 节「护栏」。"
    echo "  禁止用 --no-verify、-c core.hooksPath=、删除或改写钩子来绕过；拿不准就停下来问用户。"
    echo "===================================================="
  } >&2
  exit 1
}

# 用法：fushi_block_need_approval <动作> <英文摘要> <中文标题> [中文说明行...]
# 用于“用户同意后可以做”的操作，末尾附上带标记重试的方法。
fushi_block_need_approval() {
  action=$1
  shift
  fushi_block "$@" \
    "Ask the user in chat first; only after explicit consent retry with FUSHI_APPROVE=$action." \
    "先在聊天里向用户说明要做什么，得到明确同意后再带标记重新执行：" \
    "  bash:       FUSHI_APPROVE=$action git ..." \
    "  PowerShell: \$env:FUSHI_APPROVE='$action'; git ...; \$env:FUSHI_APPROVE = \$null"
}
