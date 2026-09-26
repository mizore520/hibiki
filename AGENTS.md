# Fushi 个人版本 Agent 入口

用中文协作。本文件只是指针，Codex 与 Claude Code 共用同一套规则：

1. [CLAUDE.md](CLAUDE.md)：技术、数据与平台约束。
2. [个人工作规则](docs/personal/PERSONAL_FORK_RULES.md)：协作方式、授权边界、分支、采用与护栏。
3. [场景手册](docs/personal/WORKFLOWS.md)：开任务、采用、同步作者、提 PR、备份、收尾的具体步骤。

- 开场先运行 `pwsh -File tool/personal/flow.ps1 status`。首次进入任务读前两份，按场景查第三份；编辑某目录前再读其祖先链上更近的 `AGENTS.md` / `CLAUDE.md`。专项文档只在任务触发时读，已读未变的不重读。
- 接手未完成任务：按场景手册 S0 找到 claim 和交接单，再按个人规则第 7 节核对基线与阶段；交接单是调查入口，当前源码和可核验证据才是事实依据。
- git 钩子拦下操作时按拦截提示处理；禁止用 `--no-verify`、`-c core.hooksPath=`、修改或删除钩子来绕过。
