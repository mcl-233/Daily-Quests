#!/bin/bash

# 日志提交信息
COMMIT_MESSAGES=(
  "feat: 记录了今天学到的新东西 ✨"
  "docs: 更新了日常日志，保持活跃度 🏃‍♂️"
  "chore: 自动提交，确保今天的脚印留下 🐾"
  "refactor: 整理了日志，让它更清晰 🧹"
  "build: 自动脚本运行成功！🚀"
  "ci: 日常维护，系统一切正常 👌"
  "perf: 优化了日志写入速度 (只是开玩笑的 😂)"
  "style: 格式化了一下日志文件，看起来更舒服了 😎"
)

# PR 标题
PR_TITLES=(
  "feat: 每日 PR 提交 🎉"
  "chore: 日常维护日志 📝"
  "docs: 新增一点点内容 ✍️"
  "refactor: 小小的修改，大大的进步 💪"
  "build: 自动提交日志，请审核 😊"
)

# PR 描述
PR_BODIES=(
  "随机生成每日 PR，只是为了保持活跃度，大佬请忽略 😅"
  "一个简单的自动提交，测试自动化流程，欢迎 Review！👍"
  "我是一个 bot，这是我今天的贡献，希望没有打扰到你🤖"
  "自动 PR 日志，请随意合并，或者... 拒绝我也可以 🤷‍♂️"
  "这是我的日常打卡，感谢审核~ 🙏"
)

# 随机选择一个提交信息
get_random_commit_message() {
  echo "${COMMIT_MESSAGES[$RANDOM % ${#COMMIT_MESSAGES[@]}]}"
}

# 随机选择一个 PR 标题
get_random_pr_title() {
  echo "${PR_TITLES[$RANDOM % ${#PR_TITLES[@]}]}"
}

# 随机选择一个 PR 描述
get_random_pr_body() {
  echo "${PR_BODIES[$RANDOM % ${#PR_BODIES[@]}]}"
}

# 根据传入的参数执行对应的函数
case "$1" in
  get_random_commit_message)
    get_random_commit_message
    ;;
  get_random_pr_title)
    get_random_pr_title
    ;;
  get_random_pr_body)
    get_random_pr_body
    ;;
  *)
    echo "Usage: $0 {get_random_commit_message| get_random_pr_title| get_random_pr_body}"
    exit 1
    ;;
esac
