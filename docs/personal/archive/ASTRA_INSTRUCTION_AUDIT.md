# Astra 持久指令审计（2026-09-18）

## 基线与依据

在用户指定的 `.worktrees/lookup-calibration-samples-20260917` 工作区完成，分支 `codex/lookup-calibration-samples-20260917`，起点 `2e6e5c9abb`。本轮仅修改规则/文档，保留已有 BUG 索引、校准记录和四份未提交 bug 文件；未合入 `custom`、未推送。

已搜索并完整阅读以下原文（官方指南的 GPT-6 Astra 全部内容、Eric 文章全文）：

- [OpenAI Model guidance — GPT-6 Astra](https://developers.openai.com/api/docs/guides/latest-model)：明确用户授权与技能优先级、避免过早停工、委派按实际工作流调整；测试通过后，只有新变化、失败或未解决疑点才扩大/重复。
- [Eric Provencher：Rethinking skills and prompts for GPT-6 Astra](https://developers.openai.com/blog/rethinking-skills-and-prompts-for-gpt-6-astra)（2026-09-11）：描述精准触发条件，按需披露资料，移除固定行程式指令，重新审视边界并定义任务完成范围。

这些建议用于调整执行方式，不构成取消项目数据、平台、发布和真实验收约束的依据。

## 实际指令面

| 来源 | 本次核对与处理 |
| --- | --- |
| 根 `AGENTS.override.md` → `AGENTS.md` | 指定 worktree 的 override 为 Codex 入口；精简为单一路由，消除每阶段重新完整阅读。 |
| 根 `CLAUDE.md`、个人规则 | 根入口显式加载。会话提供的入口/主 checkout 个人规则较新，目标 worktree 仍有旧流程；按较新协作偏好统一，技术地图移到按需文档。 |
| `fushi/CLAUDE.md`、六份 `packages/*/CLAUDE.md`、native Hook 两份入口 | 依目录触发。模块地图保留，Hook 的重复阅读、运行门和验证范围同步收窄。一个 Luna 只读子任务检查模块/专项文档，主代理负责全部修改。 |
| `.claude/skills/run-hibiki/SKILL.md` | 项目唯一检出的自有技能；属于 Claude 侧技能目录，本会话 Codex 技能目录未列出它，不声称它已自动启用。缩短描述和正文，按场景链接已有 SOP。 |
| `docs/agent/` 中验证、审查、构建、集成、Hook 流程 | 根规则/模块/技能按任务引用。修正会重新引入全量测试、固定委派或运行前置条件的条款。 |
| 本机与应用配置 | 全局 Codex `AGENTS.md` 为空；配置选择 Astra/xhigh，未发现额外自定义指令文件设置。项目 `.codex/environments/environment.toml` 是自动生成的动作配置；`.claude/settings.json` 是权限/插件配置，均未改动。 |
| 应用注入技能、全局通用技能、第三方 vendored 指令 | 当前任务需要的 OpenAI Docs、Skill Creator 已读取；未批量加载或修改无关技能和第三方仓库规则。应用/系统注入指令不由项目文件控制。 |

## 删除、调整与保留

- 删除固定 S/A/B/C 并行时间线、30 秒“一律后台”、疑点数量触发派发、强制自动 push/PR、每次审查写持续日报，以及追踪历史测试数量变化的通用要求。搜索、拆分、复核方式交给模型按当前目标判断。
- 将技术/模块地图与 develop 合并守卫拆为 [repository-map.md](../../agent/repository-map.md) 和 [merge-guards.md](../../agent/merge-guards.md)，相关任务才读取；合并守卫表原样迁移，纯文档不触发。
- 委派保留 Luna max、服务不可用时 Terra 的偏好，增加收益/独立性条件；不要求一定派发，也不重复执行子代理完成的验证。
- 测试按真实变更面与目标阶段选取，保留结果复用和明确停止条件。删除 Hook SOP 中与根规则冲突的本地完整 Flutter 测试，Android 本地集成示例使用 `--only`。
- 初始化改为实际需要依赖或真值时执行；纯文档不复制密钥。技能移除其他机器的 SDK/代理路径、通用强制终止应用命令，并按当前 runner 修正“退出码恒为 0”和“清理先前进程”的旧描述。
- Hook 的运行台账改为运行诊断/验收/支持升级时触发，离线工作可先完成。保留逐层证据、精确 identity/hash/ref、双架构 native 要求、跨引擎负向测试、输入所有权和真实 E2E 门槛，不把未验证候选升级为支持。
- 保留独立 worktree、已有改动保护、持久数据/迁移、秘密与游戏素材限制、Windows-only、i18n 工具、命名/持久化契约、PR 作者门、发布通道及 `custom` 明确采用/推送授权。完整应用构建与游戏操作仍默认由用户负责。

## 验证与范围

- 内容和规则互引检查完成；15 份修改/新增规则文件中的 65 个本地 Markdown 链接均存在，合并守卫表与原文一致。
- Skill Creator 的 `quick_validate.py` 对 run-hibiki 返回 `Skill is valid!`、退出码 0。最初本机 Python 缺 PyYAML，使用临时目录中的校验依赖完成检查，未修改项目依赖。
- 提交前执行 `git diff --cached --check`。纯文档不运行 Flutter/native 测试、不构建 EXE、不操作游戏。
- 常驻入口与个人规则的合计字符数减少约 58%；包括迁出参考文档在内，本次 15 个规则文件总字符数净减约 23%。这是文字量对比，不是实测 Token、延迟或质量评测；后续实际任务仍应观察是否有必要约束遗漏。
