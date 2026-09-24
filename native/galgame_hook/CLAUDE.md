# hibiki-hook Agent Rules

## 开工前

- 一次任务只处理一个游戏引擎；不同引擎必须拆成独立任务、worktree 和提交。
- 首次进入本模块读取本文件与更近层级规则；实现引擎能力时读取 `engine-support.yaml` 的目标条目及
  主仓 `docs/agent/galgame-hooking.md` 的相关契约。缺失必要契约时继续可完成的调查并报告缺口，不猜测实现。
- 先声明 worktree、目标引擎和所有权；不得在其他 agent 正在使用的 worktree 中修改。

## 证据门

- 本节在运行时诊断、验收或支持状态升级时适用；静态调查、离线修复与文档工作可先完成，
  没有运行证据不升级支持状态。游戏操作与完整构建按个人规则交接，已有适用证据可复用。
- 在用户原始启动路径复现，固定真实目标 PID、父子进程、架构、开始时间，以及 exe、目标
  module、实际 injector/helper EXE、注入 hook DLL 各自的规范路径和 SHA-256。
- 记录相对时间线：进程启动、attach/injection、helper 加载、Hook 安装、helper ready、
  IPC ready、目标 module 加载、首次文本、首次 resource/预取、首次 PCM。
  除引擎 module 可在 attach 前后加载外，必须保持实际因果顺序：
  `process_start ≤ attach/injection ≤ helper_loaded ≤ hook_installed ≤ helper_ready ≤ IPC ready`，
  且 `first_text/audio ≤ paired ≤ screenshot ≤ card_written`。
- 按 `process_found → helper_ready → ipc_ready → text_observed → text_thread_selected →
  resource_observed → pcm_observed → paired → loopback_observed → card_e2e` 逐门判断。
  只处理第一个失败边界；首个失败之后的边界保持 `not_run`，不得继续猜测。
- 静态 imports、模块名、引擎标签、一次 attach、`Hook installed` 或非静音 Loopback 都不是
  引擎 Hook 成功证据。Loopback 只证明降级链路可用。
- 用 `python tools/galhook.py evidence init <engine>` 建台账，用
  `verify-evidence` 校验；诊断位必须用 `explain-diag` 从 IPC 头文件符号化解释，禁止手拆十六进制。

## 实现边界

- 引擎特例放入独立 profile/adapter。共享中间件 Hook 必须同时有 profile 限定和跨引擎负向测试。
- 回调只做有界复制和入队；IO、解析、编码、配对和转码留在 worker。
- 修复真实生命周期、状态、调用约定或数据契约；不得用 sleep、盲重试、吞异常、扩大 Hook 面、
  fixture 特判或读取 fixture `expected` 来伪造实现。
- 不得提交游戏 exe、脚本、图片、音频、归档密钥或可还原载荷，只保留脱敏元数据和哈希。

## 验证与支持状态

- 阶段严格为 `observed → implemented → offline → runtime → e2e → release`，不得跨级。
- 日常候选按变更面执行 manifest/profile 检查、相关结构/状态机 replay 与定向测试；native
  adapter/hook 变更按构建规则验证 x86/x64。纯文档不触发构建，纯消费端不自动重编未变的 helper。
  声明完整 offline 阶段或升级支持状态前，仍须具备 manifest/profile、结构/workflow、生产
  replay、双架构构建与 CTest 的全部适用证据。未运行、跳过、崩溃或环境阻塞均不算通过。
- 没有真实游戏运行证据时只能标记 `implemented_unverified`；只有 Loopback 时只能称“降级可用”。
- 只有同一真实会话中“显示文本 → 对应引擎 resource/PCM → 配对 → 截图 → 真卡写入”的证据
  齐全后，才允许升级 `engine-support.yaml` 并宣称引擎支持。
- 新增或升级 `partial` / `verified` 状态或能力时，必须把 release-eligible 台账放在
  `evidence/*.json`，以 SHA-256 和 capability refs 接入 manifest 的 `support_evidence`
  列表；每个真实会话单独一项，可累积 resource/PCM 等不同层。refs 必须与对应哈希台账的
  `release.proved_capabilities` 及其 proof boundary 精确一致。新增 `verified_games` 必须
  由 `verified_game_ref` 绑定到同一台账的游戏名、版本、架构、exe hash 和日期。
  进程策略、family、text/audio contract 或整体状态变化必须以 `engine_claim_refs` 精确
  对应哈希台账中的 `release.proved_engine_claims` 和当前 claim value SHA-256；无关音频
  证据不能替代该语义的运行时证明。
  生成器拒绝未接证据、跨引擎、哈希漂移、错层或仅 Loopback 的升级。历史状态与支持语义
  仅由代码中的精确 hash allowlist 兼容，不得刷新 hash 来绕过新证据。
- 能力交接说明已证明、未证明和下一个证据门；运行诊断聚焦当前第一个未通过边界及最小动作。

## Git

- 修改必须在独立 worktree 中完成。提交前运行与改动相称的检查并记录退出码。
- 每个提交只包含一个清晰目标；不得混入构建产物、探针载荷或其他 agent 的改动。
