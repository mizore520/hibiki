# Fushi 个人版场景手册

每个场景写清：用户会怎么说 → 开始前 → 步骤 → **必须停下来问用户** → 完成标准。协作原则、授权边界、护栏见 [个人工作规则](PERSONAL_FORK_RULES.md)；技术约束见根 [CLAUDE.md](../../CLAUDE.md)。

命令都在任一 worktree 的仓库根执行，入口是 `pwsh -File tool/personal/flow.ps1 <命令>`，下文简写为 `flow <命令>`。需要用户同意的操作，同意后在**那一条命令**上加标记：

```powershell
$env:FUSHI_APPROVE='adopt'; <命令>; Remove-Item Env:FUSHI_APPROVE
```

git 钩子拦下操作时，照拦截提示处理；禁止绕过。

## S0 进入或接手任务（每次开场先做）

- **用户会说**：任何开场白、“继续”、“接着上次”。
- **步骤**：
  1. 运行 `flow status`，看护栏、`custom` 与 GitHub 和作者的差距、进行中的任务、PR、备份。首行报护栏有问题时，先在主 checkout 运行 `flow install-hooks`。
  2. 用户指向已有任务时，在 `.worktrees/coordination/claims/` 找它的 claim，读 `handoffs/<任务>.md` 交接单；按个人规则第 7 节核对分支、基线和当前差异。
  3. 用户说的是新需求时，走 S1。
- **停下来问**：交接单与 git 实际状态对不上（分支不存在、基线变了、有未说明的改动）时。

## S1 个人需求或修 bug

- **用户会说**：“开始改”“帮我修”“按你说的做”。先按个人规则第 2 节判断意图：“解释一下”“先别动”只调查；“先记下”只登记问题。
- **步骤**：
  1. `flow start <任务名> -Description "<一句话>" -Agent "<Codex/Claude Code>"`。需要应用依赖或本机真值时加 `-Setup`。任务名用小写加连字符，日期会自动补上。
  2. 在新 worktree 里调查、实现、按个人规则第 5 节做定向验证；只暂存本轮文件并提交。
  3. 随时更新交接单（阶段、已确认事实、未解决项、证据位置、下一步）。
  4. 需要用户构建或实机验证时，按个人规则第 3 节交接：先提交，再一次说清目标提交、要运行的 BAT、操作顺序、预期和失败停止条件。
- **停下来问**：需要选路线时；交用户构建时；验证失败但根因不明时。
- **完成**：用户验收通过后走 S3。测试通过不等于验收通过。

## S3 采用进 custom，推送备份

- **用户会说**：“可以合了”“采用”“合进去”。“继续改”“测试绿了”都不算同意。
- **开始前**：任务 worktree 已提交且干净；按改动类型完成验证（`flow adopt` 预览会列出需要核对的项）。
- **步骤**：
  1. 运行 `flow adopt <分支>` 预览，把分支尖端提交号、提交列表、改动文件、冲突和核对项**原样给用户看**。
  2. 有冲突时，先在任务 worktree 里 `git merge custom` 解冲突、提交，再重新预览。
  3. 用户明确同意后，照预览末尾给出的命令执行 `flow adopt <分支> -Apply -Expect <尖端提交号> -Message "<合并说明>"`，带 `adopt` 标记。`-Expect` 锁定用户看过的那个提交：分支在预览后有新提交就会被拒绝，这时要重新预览给用户看。它会检查主 checkout 在 `custom` 且干净，然后合入这个提交；如果改了钩子，会从主 checkout 自动重装；claim 和交接单会归档。任务还要继续做时，加 `-KeepClaim`。
  4. 问用户要不要推送备份；同意后运行 `git push origin custom`，带 `push` 标记。
  5. 收尾走 S9 的第一步。
- **停下来问**：合入前（出示预览）；推送前。
- **完成**：`custom` 上出现合并提交，`flow status` 里这个任务已不在进行中，并且用户对是否推送给了答复。

## S7 撤回已采用的改动

- **用户会说**：“刚合的有问题，撤掉”。
- **步骤**：
  1. `flow start revert-<主题>`。
  2. 在新 worktree 里 `git revert -m 1 <合并提交>`，需要时解冲突、做验证。
  3. 走 S3 采用。
- **禁止**：在 `custom` 上 reset、rebase、amend 或强推。护栏会拦下这些操作，带同意标记也不行。

## S8 作者更新带数据库迁移

- **何时**：同步作者更新（S2）或采用的改动动了 `packages/fushi_core/lib/src/database/`，并且 schema 版本变化。
- **步骤**：
  1. 请用户关闭 Fushi，再运行 `flow backup -Reason "<原因>"`。它按应用自己的逻辑定位数据库（读取 `flutter.data_root`），把数据库和设置打包到 `%LOCALAPPDATA%\FushiBackups`，只保留最近 2 份。`flow backup -List` 可以查看已有备份。
  2. 交用户构建时说明这次有数据库迁移，第一次启动后数据库就不能再给旧版本用。
- **恢复**（只在用户明确要求时做）：
  1. 请用户关闭 Fushi。
  2. 把现有数据库改名留底。
  3. 从备份 zip 里把 `support/` 下的文件复制回数据位置的 `support/`，把 `shared_preferences.json` 复制回 `%APPDATA%\Fushi\Fushi\`。
  4. 清单 `manifest.json` 里有每个文件的来源路径和 SHA-256，复制完用它核对。
- **停下来问**：找不到数据库时，不要猜位置；恢复之前。

## S9 收尾与整理

- **用户会说**：任务完成后自动做；“整理一下”“收尾”时做一次全面整理。
- **步骤**：
  1. 运行 `flow cleanup` 列出清单。每项会标注“可清理”或“只报告”，并在 ⚠ 行写明风险，例如删除时会一并删掉哪些被忽略的本机文件（`.codex-test` 证据、`*.local.md` 等）。
  2. 把清单**原样给用户看**，让用户确认要清理哪些。
  3. 运行 `flow cleanup -Apply -Items '<编号>=<目标>,<编号>=<目标>'`，目标照抄清单里的路径或名字；编号和目标对不上（清单已变化）时会被拒绝，这时要重新列清单给用户看。删除 worktree、分支或目录要带 `cleanup` 标记；只归档 claim 不需要标记。
- **判断“可清理”的依据**：
  - 分支内容已全部在 `custom` 或作者仓库里（按合并预演的结果判断，squash 合并也能识别），或者分支上没有自己的提交；
  - 分支属于 `codex/*` 或 `pr/*`；
  - 没有未提交改动；
  - 没有进行中的 claim。

  “PR 已合并”只作为提示，不能单独让一项变成可清理。claim 还在进行中的 worktree，要等任务确实结束、先归档 claim（清单里的 C 项）后才能清理。
- **不清理**：`_candidate-build`（编译缓存）；有未合入内容或未提交改动的项目（只报告）；`.worktrees` 下非空的非 worktree 目录（只报告）。
- **删除失败**（例如文件被占用）：请用户关闭占用程序，运行 `git worktree prune`，再重新列清单。
- **停下来问**：每一次删除前。

## S10 集中体验、先记问题

- **用户会说**：“先记下”“全部测完再一起解决”。
- **步骤**：把问题写进当前任务交接单的同一个问题清单（现象、预期、证据），体验结束后统一归因；要登记 bug 时用 `tool/bug.dart`。按个人规则第 3 节推进，不逐条开工。

## 与作者相关的场景（P3 将提供脚本，先按以下手工步骤）

### S2 同步作者更新

- **用户会说**：“拉一下作者更新”。
- **步骤**：
  1. `flow start sync-upstream`。
  2. 在新 worktree 里 `git fetch upstream`，然后 `git merge upstream/develop`。
  3. 解冲突的原则：
     - 规则文件（`CLAUDE.md`、`AGENTS.md`、`docs/agent/*`）保留个人版，只吸收作者新增的技术事实；
     - 生成文件重新生成，不手工解；
     - bug 编号用 `tool/bug.dart check`、`renumber`、`reindex` 处理；
     - 其他代码拿不准时问用户。
  4. 检查 `packages/fushi_core/lib/src/database/database.dart` 的 `schemaVersion` 有没有变化，有变化就走 S8。
  5. 验证后走 S3。
- **停下来问**：个人功能与作者改动冲突、需要取舍时。

### S4 给作者提 PR / S5 作者提意见 / S6 PR 合并后收尾

- **S4 提 PR**：
  1. 从 `upstream/develop` 新建 `pr/<主题>` 分支，放在独立 worktree 里（不要从 `custom` 拉）。
  2. 用 cherry-pick 挑需要的提交。
  3. 推送前确认不含个人专属路径（见 `tool/personal/githooks/personal-paths.txt`，推送时钩子也会检查）。
  4. 推送和 `gh pr create` 各自需要用户同意；建 PR 前把标题和描述给用户看。
- **S5 作者提意见**：在原 `pr/*` 分支上修改；需要时 rebase 到最新的 `upstream/develop`，然后带 `push` 标记强推 `pr/*`。`custom` 永不强推。
- **S6 PR 合并后收尾**：`flow status` 会标出已合并的 PR，以及本地是否还有提交没进作者仓库。遗留提交怎么处理问用户；分支和 worktree 用 `flow cleanup` 收尾。之后同步作者更新时，以作者版本为准，退役个人重复实现。
