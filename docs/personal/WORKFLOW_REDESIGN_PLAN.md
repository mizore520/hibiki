# 个人版流程改造方案（2026-09-26，待用户审阅）

> 状态：方案草稿，尚未实施。用户审阅同意后按第 8 节分阶段实现。
> 基线：`custom` = `41945e82d1`；作者 `upstream/develop` = `fb3f209f35`；任务分支 `codex/workflow-redesign-20260926`。

## 1. 目标与不做的事

**目标**：只用 Codex 和 Claude Code。不论换哪个 agent，都能按同一套流程把常见场景跑通，而且不会犯以下几类大错：

1. 改写或破坏 `custom` 历史，或者未经你同意就合入、推送；
2. 把个人内容（规则、样本、本机路径、密钥）带进给作者的 PR；
3. 同步作者更新时，误删你的功能，或者把作者的新改动覆盖回旧版；
4. 数据库迁移后你的数据无法回退；
5. 删掉了还没合入的成果；
6. 任务状态过期，把后来的 agent 引到错误的交接单。

**不做的事**：不保证 agent 的判断质量（冲突怎么解、根因找得对不对，仍取决于模型本身），流程只规定它什么时候必须停下来问你。这次不改应用代码，不改作者已有的技术规则内容，也不碰 `upstream`。

**设计原则**（借鉴作者做法，见第 2 节）：

- 能用脚本和钩子做的就不写成文字，文字规则只保留需要判断的部分；
- 规则入口只有一个；
- 状态从 git 和登记文件实时算出来，不靠手写；
- 个人工具放在作者不会碰的目录，避免同步时冲突。

## 2. 调研结论

### 现状问题

| 问题 | 证据 |
|---|---|
| 入口有三份，而且内容不一致 | Codex 会优先读 `AGENTS.override.md`，这个文件把所有任务都指向内嵌查词交接单；Claude 读 `CLAUDE.md`；`AGENTS.md` 的内容又是第三个版本 |
| 规则只讲原则，没有分场景的步骤 | 例如“拉作者更新”的做法要从 5 个以上的文件里自己拼出来 |
| 规则之间有矛盾 | 个人规则写“不 force-push”，但给作者的 PR 在 rebase 后必须 force-push（上次是临时破例） |
| 状态过期 | 39 个 claim 挂在进行中，其中 35 个对应的分支和 worktree 早已不存在；`ousama-opus-voice-upstream` 实际已合并，claim 仍写着 `pr-open` |
| 护栏只是文字 | 两边的 `.claude/settings.json` 都是 `bypassPermissions`，AI 执行任何命令都不会弹窗问你；目前唯一的机械护栏只有 `upstream` 的 push URL = `DISABLED` |
| PR 合并后没有收尾步骤 | PR #1625 的本地分支上遗留 1 个提交（`0f74a46995`），没推送，也没人跟进（用户已决定不跟进） |

### 作者做法中借鉴的部分

- `AGENTS.md` 只是一句“去读 `CLAUDE.md`”，规则只有一个真相源；
- integration owner 负责收尾：统一合并、跑合并后检查、关闭 claim；
- `tool/pr_sweep.sh`、`tool/ci_sweep.sh` 用脚本发现问题，判断类工作才交给 AI；
- 用 `git cherry`（补丁内容等价）判断改动“是否已经合进去”，不按 SHA 判断；
- 用 CI 检查和守卫脚本固定硬规矩（`pr-merge-gate.yml`、`check_release_policy.ps1`）。

### 不照搬的部分

- 直推主线、小改默认合并；
- 强制并行派发子代理；
- vibe-coxswain 看板；
- 把大量历史事故细节写进规则正文。

## 3. 总体结构（四层）

```
第 1 层 硬护栏   .git/hooks（所有 worktree 共用） + Claude/Codex 命令禁止规则 + （可选）GitHub 分支保护
第 2 层 场景手册 docs/personal/WORKFLOWS.md：每个场景一节，写清触发、步骤、停下来问你的节点、完成标准
第 3 层 流程脚本 tool/personal/flow.ps1：把固定步骤做成子命令，AI 只负责判断
第 4 层 状态     flow.ps1 status 实时汇总；入口统一；个人补丁清单
```

### 文件布局（新增的全部放在作者不会碰的目录）

| 路径 | 作用 |
|---|---|
| `AGENTS.md` | 改成像作者那样的一句话指针：先读 `CLAUDE.md` + 个人规则 + `WORKFLOWS.md` |
| `AGENTS.override.md` | **删除**（Codex 会优先读它，是入口分叉的根源） |
| `CLAUDE.md` | 只保留技术规则；协作和流程内容移出去，改为链接 |
| `docs/personal/PERSONAL_FORK_RULES.md` | 精简为协作原则（意图识别、授权边界、汇报方式）；具体步骤改为链接 `WORKFLOWS.md` |
| `docs/personal/WORKFLOWS.md` | **新增**：场景手册 |
| `docs/personal/PATCHES.md` | **新增**：个人补丁清单 |
| `tool/personal/flow.ps1` | **新增**：流程脚本入口 |
| `tool/personal/githooks/` | **新增**：钩子源码，由 `flow.ps1 install-hooks` 复制到 `.git/hooks` |
| `tool/personal/tests/` | **新增**：钩子和脚本的自测（在临时仓库里跑，不碰真仓库） |
| `.worktrees/coordination/handoffs/<task>.md` | **新增约定**：进行中任务的交接单放这里（本地、不入库，随 claim 一起归档） |

交接单规则：进行中的状态不再提交进 `custom`。只有长期有用的结论（例如 `LOOKUP_CALIBRATION_SAMPLES.md`）才放进 `docs/personal/` 并提交。

## 4. 第 1 层：硬护栏

### 4.1 同意标记

你在聊天里明确说同意后，AI 执行命令时带上环境变量 `FUSHI_APPROVE=<动作>`。取值只有下面几种：

| 值 | 放行的操作 |
|---|---|
| `adopt` | 在 `custom` 上产生新提交（合入候选、回滚、解决采用冲突） |
| `push` | 向 `origin` 推送任何分支 |
| `cleanup` | 删除尚未合入 `custom`、也没有推送到远端的本地分支 |
| `pr-personal` | 与 `push` 组合使用（`push,pr-personal`），允许 `pr/*` 带个人专属路径（P1 实施时新增） |
| `asset` | 提交超过 10MB 的文件、音频或游戏封包（P1 实施时新增） |

多个标记可以用逗号组合。每次同意只对应一次操作，下一次要重新问。钩子拦下操作时会输出中文提示，说明被拦的原因、应该先问用户什么、同意后怎么带标记重新执行。**不管哪个 agent 读到这段提示，都能照着做对。**

限制（你已接受）：同意标记是 AI 自己加的，它能防住误操作和理解错，防不住故意乱来的 AI。第 4.4 节的措施用来补这个缺口。

### 4.2 钩子清单

钩子装在 `.git/hooks`。这个目录由所有 worktree 共用，包括从作者代码建的 PR worktree，那里没有 `tool/personal/`，所以钩子必须自包含。钩子用 POSIX sh 写，只调用 git。

| 编号 | 钩子 | 规则 | `--no-verify` 能否绕过 |
|---|---|---|---|
| G1 | `reference-transaction` | 更新 `refs/heads/custom` 需要 `FUSHI_APPROVE=adopt`；**非快进更新（改写历史）一律拒绝，带标记也不行**；删除 `custom` 一律拒绝 | 不能 |
| G2 | `reference-transaction` | 删除 `refs/heads/codex/*`、`refs/heads/pr/*` 时，如果它的提交既没进 `custom`、也没进任何远端分支，需要 `FUSHI_APPROVE=cleanup` | 不能 |
| G3 | `pre-push` | 推到 `upstream` 一律拒绝（与 push URL 双保险）；推到 `origin` 需要 `FUSHI_APPROVE=push`；`custom` 禁止强推和删除 | 能（见 4.4） |
| G4 | `pre-push` | 推 `pr/*` 分支时：(a) `upstream/develop..分支` 超过 100 个提交就拒绝（说明是从 `custom` 拉出来的）；(b) 改动里出现个人路径就拒绝。`pr/*` 允许强推（带 `push` 标记） | 能（见 4.4） |
| G5 | `pre-commit` | 暂存区不能包含：`.codex-test/`、`*.local.md`、skip-worktree 的密钥文件、超过 10MB 的文件、游戏素材类扩展名（确需提交时用户同意后加 `asset`） | 能 |

G4 的个人路径清单：`docs/personal/`、`tool/personal/`、`AGENTS.override.md`、启动 BAT、`tool/*windows_candidate*`、`.worktrees/`。

P1 实施调整：清单的唯一来源改为 `tool/personal/githooks/personal-paths.txt`（`PATCHES.md` 链接它，不再从 `PATCHES.md` 生成），另外加入个人改写过的 `CLAUDE.md`、`AGENTS.md` 和拆分出的 `docs/agent/*` 规则文档。被拦的 merge、cherry-pick、revert 会停在进行中状态，拦截提示会要求先 `--abort`。

说明：

- 给作者的 PR 分支统一命名为 `pr/<主题>`，钩子靠这个前缀识别；
- 候选分支仍然叫 `codex/<任务>`；
- G1 覆盖 `git commit`、`merge`、`reset`、`branch -f`、`rebase`、`update-ref` 等会移动 `custom` 的操作，比只拦 `pre-commit` 可靠。唯一已知例外是 `git branch -C/-M <源> custom`：git 写入新名字时不经过事务。不过 `custom` 常驻主 checkout 时 git 本身会拒绝覆盖，远端还有 GitHub 分支保护兜底。

独立审查后的修正（P1）：

- 只检查 `refs/heads/custom` 自身，不再把裸 `HEAD` 解析成 `custom`。原来的写法会把“在 `custom` 上分离 HEAD”（包括候选构建脚本 `worktree add --detach`）误判为改写历史。
- `git gc`、`git pack-refs` 清理松散引用时上报的“删除”会被识别并放行，真删除仍然会拦。
- 被拦后的恢复提示改为：先 `git status`，有进行中的操作就 `--abort`，否则 `git reset --merge HEAD`。
- 真实仓库的 origin 只抓取 `custom`，`install-hooks` 会补上 `codex/*`、`pr/*` 的抓取规则，这样 G2 才能认出已推送的分支。
- 作者仓库的识别改为不区分大小写，也能认出 Windows 反斜杠路径；pre-push 列不出改动文件时一律拦截，不会静默放行；钩子内禁止网络懒拉取，并跳过子模块指针；函数库缺失时，所有引用更新都会明确拦下并提示重新安装。
- 改名未合入的分支（`branch -m`）会被当作删除，需要 `cleanup` 同意，或者先推送。
- 性能：每次提交多 0.6–0.8 秒。rebase 会被明显放大，实测 40 个提交从 1.2 秒变成约 30 秒，主要花在每次启动 sh 上，精简脚本也省不掉。同步作者更新用 merge，不受影响。
- 以前给作者的分支叫 `codex/...-upstream-...`，不在 G4 的检查范围内。今后一律用 `pr/*`；旧分支在 P4 清理。

### 4.3 安装与自检

- `flow.ps1 install-hooks` 负责复制钩子，并写入版本戳；
- P1 用 `flow.ps1 check-hooks` 检查钩子是否已安装、是否是最新版，以及 origin 的抓取规则是否齐全；P2 的 `status` 会把这项检查放在输出第一行；
- 自测放在 `tool/personal/tests/`：在临时仓库里逐项模拟 G1–G5 的放行和拒绝场景，不碰真仓库。

### 4.4 补上“能被绕过”的缺口

| 措施 | 做法 | 需要谁操作 |
|---|---|---|
| Claude 禁止规则 | `.claude/settings.local.json`（已被 git 忽略，不会和作者冲突）的 `deny` 加入 `git push --no-verify`、`git commit --no-verify`、`git push --force`（到 `custom`）、`git config core.hooksPath` 等 | 我来做；`settings*.json` 被项目 deny 规则保护，AI 改不了，需要你手动粘贴一段 |
| Codex 禁止规则 | 在 `~/.codex/rules/` 加对应的 `forbidden` 规则（该目录已存在；具体语法实施时对照 Codex 当前文档核实） | 我来写，你确认 |
| GitHub 分支保护（**可选，推荐**） | 给 `origin` 的 `custom` 设置“禁止强推、禁止删除”。这是服务器端规则，任何 agent 都绕不过；普通推送不受影响 | 修改 GitHub 设置需要你单独同意 |

P1 实施调整：

- **Claude 禁止规则放到用户级 `~/.claude/settings.json`。** `.claude/settings.local.json` 不会进 git，新建的 worktree 里没有这个文件，而 worktree 里的会话读不到主 checkout 的本地设置。
- **Codex 不加规则。** Codex 的 `prefix_rule` 只能按命令开头匹配，而 Codex 通常用 `pwsh -Command "..."` 包一层来执行命令，这种规则基本匹配不上，加了反而给人“有保护”的错觉。Codex 这边依靠三点：`--no-verify` 跳不过的 G1、G2，GitHub 分支保护，以及入口文件里的禁止条款。剩下的缺口是：Codex 如果用 `--no-verify` 推送，可以跳过“推送需同意”和“PR 个人内容检查”；强推和删除远端 `custom` 仍会被服务器拒绝。Claude 在用户粘贴禁止规则之前也有同样的缺口。

## 5. 第 2 层：场景手册（`WORKFLOWS.md` 的目录）

每个场景都按固定格式写：**你会怎么说 → 开始前检查 → 步骤（对应的 flow 命令）→ 必须停下来问你 → 完成标准**。下表是提纲，正文在实施阶段写。

| # | 场景 | 你会怎么说 | 关键步骤 | 必须停下问你 |
|---|---|---|---|---|
| S0 | 进入或接手任务 | 任何开场、“继续” | `flow status`，找到自己的 claim 和交接单，核对基线 | 状态和交接单对不上时 |
| S1 | 个人需求或修 bug | “开始改”“帮我修” | `flow start` → 实现 → 定向验证 → 提交 → 交给你构建验收 | 路线选择；交你构建时 |
| S2 | 同步作者更新 | “拉一下作者更新” | `flow sync-upstream`：建同步 worktree → 合并 → 按类别处理冲突 → 对照补丁清单 → 检测数据库迁移 | 补丁清单里的功能与作者改动冲突、需要取舍时 |
| S3 | 采用进 `custom` | “可以合了”“采用” | 前置检查 → 带 `adopt` 标记合入 → 合并后检查 → 自己收尾 → 问要不要推送备份 | 合入前（出示差异摘要）；推送前 |
| S4 | 给作者提 PR | “提给作者” | `flow pr-branch`：从 `upstream/develop` 建 `pr/*` → 挑选提交 → 个人内容检查 → 推送 → `gh pr create` | 选哪些提交；推送前；建 PR 前（出示标题和描述） |
| S5 | 作者对 PR 提意见或 CI 失败 | “作者说要改” | 在原 `pr/*` 分支修改 → 需要时 rebase → 强推 `pr/*` | 推送前 |
| S6 | PR 被作者合并后收尾 | `flow status` 提示“PR 已合并” | 用 `git cherry` 核对有没有遗留提交 → 补丁清单标记“已被作者收录” → 列出可删的分支和 worktree | 遗留提交怎么处理；删除前 |
| S7 | 撤回已采用的改动 | “刚合的有问题，撤掉” | 从 `custom` 建分支 → `git revert -m 1 <merge>` → 走 S3 | 同 S3 |
| S8 | 作者更新带数据库迁移 | 由 S2 自动触发 | `flow backup` → 交给你构建 → 你验收通过后清理旧备份 | 交你构建时说明这次有迁移 |
| S9 | 收尾和整理 | 任务结束（自动）；“整理一下”（兜底） | `flow cleanup` 列出清单 → 你确认 → 执行 | 每次删除前 |
| S10 | 集中体验、先记问题 | “先记下”“测完一起改” | 沿用现有个人规则第 2、3 节，问题写进当前任务交接单 | — |

### S2 冲突处理分类（写进手册，也让脚本打标签）

| 冲突类型 | 默认处理 |
|---|---|
| 规则文件（`CLAUDE.md`、`AGENTS.md`、`docs/agent/*`） | 保留个人版本；逐条看作者新增的**技术事实**，需要的就合进来 |
| 生成文件（i18n、`strings.g.dart`） | 不手动解冲突，重新生成 |
| `docs/BUGS.md`、`docs/bugs/*` 编号 | 用 `tool/bug.dart check`、`renumber`、`reindex` |
| 补丁清单登记的功能 | 按清单写的策略处理；清单写“已被作者收录”的，用作者版本，并退役个人重复代码 |
| 其他代码 | 按现有技术规则处理；拿不准就停下来问你 |

## 6. 第 3 层：`flow.ps1` 子命令

| 命令 | 做什么 | 会不会改东西 |
|---|---|---|
| `status` | 汇总：钩子状态；`custom` 相对 `origin/custom` 未推送的提交数；落后作者多少（先 fetch）；进行中任务（claim + 分支 + worktree + 是否已合入）；过期 claim；PR 状态（`gh`）及合并后遗留提交（`git cherry`）；待处理的迁移和备份 | 只读（fetch 除外） |
| `start <任务名>` | 从 `custom` 建 `codex/<任务>-<日期>` worktree，写 claim 和交接单模板；可选运行 `setup_worktree.ps1` | 新建 |
| `sync-upstream` | fetch → 建 `codex/sync-upstream-<日期>` worktree → 合并 `upstream/develop` → 给冲突打标签 → 输出补丁清单中受影响的条目 → 比较 `packages/fushi_core/lib/src/database/database.dart` 的 `schemaVersion`，有变化就标记“需要备份” | 只动新 worktree |
| `adopt <分支>` | 检查：分支已提交、干净、基于当前 `custom`；打印差异摘要；带 `adopt` 标记后在主 checkout 执行 `merge --no-ff`；按改动范围提示需要跑的合并后检查；claim 移到 `done/`；列出可清理项；提示推送 | 改 `custom`（需要标记） |
| `pr-branch <主题> <提交...>` | 从 `upstream/develop` 建 `pr/<主题>` worktree → cherry-pick → 个人内容检查 | 只动新 worktree |
| `backup [--prune]` | 复制数据库和设置（不含词典资源和缓存）到 `%LOCALAPPDATA%\FushiBackups\<时间>-<sha>`，只保留最近 2 份 | 写备份目录 |
| `cleanup [--apply <编号>]` | 列出：已合入且干净的 worktree、已合并 PR 的分支、过期 claim、空目录。每一项注明“是否已合入 / 有无未提交改动 / 有无本机证据”。`--apply` 需要 `cleanup` 标记，未合入的内容只报告不删；远端分支删除另需 `push` 标记 | 需要标记 |
| `install-hooks` | 安装或更新钩子 | 写 `.git/hooks` |

P2 实施结果（2026-09-26）：

- **数据位置**：`backup` 按 `fushi/lib/src/storage/app_paths.dart` 的逻辑定位。先读 `%APPDATA%\Fushi\Fushi\shared_preferences.json` 中的 `flutter.data_root`，有值时数据库在 `<data_root>\support`，否则在默认支持目录。本机的 `data_root` 是仓库根下的 `date\`（已由 `.git/info/exclude` 忽略），当前数据库 `fushi.db` 约 128MB。原方案按旧版 Hibiki 数据库估算的“几 MB”是错的：实际每份备份是一个 zip，只保留 2 份。
- **备份范围**：只备份数据库（含 `-wal`、`-shm`）和 SharedPreferences。`local_audio_*.db`（约 7GB）、OCR 模型、校准样本等都不受 schema 迁移影响且体积大，不在备份范围内。Fushi 运行时拒绝备份。
- `date\` 里另有前几轮手动做的备份（`backup-before-pr1625-20260925`、`backup-schema-v112-20260924`，以及 `support\hibiki-db-backup-20260806-003605`），它们属于用户数据，只在 P4 报告，不自动删除。
- **实现方式**：`flow.ps1` 只负责接收参数和分发，功能放在 `tool/personal/lib/{Common,Hooks,Status,Tasks,Backup}.ps1`；自测放在 `tool/personal/tests/flow.tests.ps1`。
- **状态判断**：`status` 和 `cleanup` 只拿“比作者多 100 个以内提交”的分支去和作者仓库比；基于 `custom` 的分支比作者多上万个提交，只和 `custom` 比。
- **独立审查后的修正**：
  - 判断“内容是否已落地”改为合并预演的树比对，不再用 `git cherry`。“PR 已合并”只作为提示，不能单独让一项变成可清理（原来会把带未落地提交的分支标成可清理）。
  - 进行中 claim 的 worktree 只报告；没有自己提交的分支，只有在没有 claim 时才算可清理。
  - 清理必须写成“编号=目标”，防止清单变化后编号指向别的项。
  - `adopt -Apply` 必须带 `-Expect <预览时的尖端提交>`，合入的就是这个提交。
  - 钩子一律从主 checkout 的源码安装。
  - 证据提示扩大到所有被忽略的非构建文件。
  - 其他：输出改为 UTF-8；多余的位置参数直接拒绝；合并撤回的结果要核实；只删 `codex/*` 和 `pr/*` 分支；备份失败时删掉半成品，并逐个文件校验哈希；归档时同名文件不覆盖。
  - 复核后补修：备份文件名加上毫秒和随机后缀。原来同一秒内连跑两次，第二次失败时会删掉第一次的好备份。
- **已知限制（暂不修）**：
  - 钩子源码取的是主 checkout 当前工作区的文件。主 checkout 不在 `custom` 上、或钩子源码有未提交改动时，装上的就是那一份。
  - 树比对依赖 git 的默认合并规则。如果将来给某些文件配了 `merge=ours` 之类的自定义合并驱动，“内容已落地”可能误判。目前仓库里没有任何 merge 驱动配置。
  - 快进合入的分支会显示为“尖端已在主线上”，不会显示为“已合入”。删除不会丢提交，只是标签不够具体。作者仓库的 PR 通过 `gh repo view` 解析仓库现在的正式名后再查询（作者仓库已从 hibiki 改名为 Fushi，用旧名查询 PR 返回空）。

## 7. 第 4 层：状态与个人补丁清单

### `PATCHES.md` 的格式

| 列 | 内容 |
|---|---|
| 名称 | 例如“游戏内查词校准” |
| 类型 | 功能 / 修复 / 构建 / 规则 |
| 主要路径 | 目录或文件 |
| 状态 | 仅个人 / 已提 PR / 已被作者收录-待退役 / 已退役 |
| 同步冲突时怎么处理 | 保留个人版 / 用作者版 / 需要问你 |

另有一节“个人专属路径”，供 G4 钩子使用。清单按“先搭框架，每次同步时补全”的方式建立，这次先填已知条目：

- 游戏内查词校准（PR #1625，作者已合并）；
- 王様 Opus 语音（PR #1644，作者已合并）；
- 启动 BAT 和候选构建脚本（仅个人）；
- 个人规则和文档（仅个人，永不进 PR）；
- `docs/bugs/` 个人 bug（同步时注意编号冲突）；
- `hibiki/` 平台目录（`custom` 有、作者没有，疑似改名遗留，待核实）。

`flow.ps1 patches` 会按目录汇总 `merge-base..custom` 的差异，作为补全清单时的参考。

## 8. 实施阶段与验证

| 阶段 | 内容 | 验证 | 你需要做的 |
|---|---|---|---|
| P1 护栏 + 入口 | G1–G5 钩子、`install-hooks`、自测；`AGENTS.md` 改为指针，删除 `AGENTS.override.md`；Claude 和 Codex 禁止规则 | 临时仓库自测覆盖每条放行和拒绝；核对链接 | 粘贴 `settings.local.json` 片段；决定要不要开 GitHub 分支保护 |
| P2 核心流程 | `status`、`start`、`adopt`、`cleanup`、`backup`；`WORKFLOWS.md`（S0、S1、S3、S7、S8、S9、S10）；精简个人规则和 `CLAUDE.md` 的流程部分 | 脚本 dry-run；在临时仓库演练 start → adopt → cleanup | — |
| P3 作者相关 | `sync-upstream`、`pr-branch`、`patches`；`WORKFLOWS.md`（S2、S4、S5、S6）；`PATCHES.md` 初版 | 临时仓库模拟作者更新和 PR | — |
| P4 清理与演练 | 按第 9 节清单清理；用下一次真实的“拉作者更新”做首次演练 | 演练结果写进交接单 | 确认清理清单；演练时照常验收 |

- 每个阶段结束都在本分支提交一次（只是检查点，不代表验收通过）；
- 护栏涉及 git 数据安全，P1 完成后会新开一个 Opus 代理，对实际 diff 和自测结果做独立审查（个人规则第 7 节）；
- 全部完成后，再按 S3 请你同意把本分支合入 `custom`。

## 9. 待清理清单（P4 执行，删除前会再请你确认一次）

| 类别 | 项目 | 现状 | 建议 |
|---|---|---|---|
| claim | 35 个分支和 worktree 都已不存在的 claim（`astra-instruction-audit`、`integrate-upstream-*`、`round14-*`、`lookup-*-root-*` 等） | 有的状态写着 active，但实际已无对应分支 | 移到 `done/`（不删除） |
| claim | `ousama-opus-voice-upstream-20260925`、`ousama-voice-20260925`、`gal-lookup-optimize-20260925` | PR 已被作者合并，或已合入 `custom` | 收尾后移到 `done/` |
| worktree | `gal-lookup-integration-20260925`、`gal-lookup-optimize-20260925`、`ousama-voice-20260925` | 已合入 `custom`，无未提交改动 | 检查本机证据后删除 |
| worktree | `gal-lookup-pr1625`、`ousama-opus-voice-upstream-20260925` | PR 已被作者合并；#1625 的遗留提交用户已决定不跟进 | 删除 worktree 和本地分支（需要 `cleanup` 标记）；远端分支另问 |
| 空目录 | `.worktrees/attached-lookup-author-pr-20260923`、`.worktrees/personal-rules-20260924` | 没有文件，也不是 worktree | 删除 |
| 文档 | `GAL_LOOKUP_HANDOFF.md`、`GAL_LOOKUP_FEEDBACK_20260925.md`、`gal-lookup-feedback-20260918.md`、`ASTRA_INSTRUCTION_AUDIT.md` | 对应任务已结束 | 移到 `docs/personal/archive/`（git 中可找回） |
| 文档 | `LOOKUP_CALIBRATION_SAMPLES.md` | 长期有用的校准资料 | 保留 |
| 入口 | `AGENTS.override.md` | 入口分叉的根源 | P1 删除 |

`_candidate-build` 是编译缓存，不在清理范围内。

## 10. 需要你决定的

1. **GitHub 分支保护**：要不要给 `origin/custom` 开启“禁止强推、禁止删除”？推荐开启。操作可以你自己点，也可以同意后由我用 `gh` 设置。
2. **PR 分支命名**：以后给作者的 PR 分支统一叫 `pr/<主题>`，可以吗？
3. 其他细节我会按本方案的默认做法执行，实施中如果遇到需要你决定的事再问。
