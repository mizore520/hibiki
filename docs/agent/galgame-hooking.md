# Galgame Hook 引擎适配 SOP

本流程用于 Fushi 的日语学习制卡功能：从用户本地、合法取得的游戏中采集当前文本、逐句语音和画面，供用户制作 Anki 卡片。它不用于复制或分发游戏内容。

总设计见 [design.md](../specs/galgame-mining/design.md)，阶段计划与完成证据见 [engine-adapter-plan.md](../specs/galgame-mining/engine-adapter-plan.md)，当前支持状态以 `native/galgame_hook/engine-support.yaml` 为唯一真相源。

## 0. 因果证据优先：新引擎快速决策入口

### 核心规则

**权威因果关系优先于时间相关性。** `ReadFile`、解码器或播放 API 的时间只能证明“某个资源被观察到/捕获到”，不能证明它属于当前台词。生产归属应优先使用脚本 opcode、voice ID、资源索引、引擎请求对象或其他同一调用链上的稳定身份。时间窗口、FIFO、`next-text` 只能作为诊断线索；无法证明归属时必须不绑定。资源请求或 member 本身正确，也不等于文本行归属正确。

首次运行必须先枚举所有候选文本线程和 Hook surface，再选择生产 lane：对候选线程/面记录 source、sink、body、无 speaker 样式、候选线程数、创建数、输出数和噪声比，并覆盖首句/载入、重复文本和控制码样本。一个普通句子命中单一线程不足以授权生产 Hook；只有比较候选的生命周期、输出和噪声后，才能把某一面定为 authoritative text seam。

### 分层与证明边界

| 层 | 可以证明 | 不能单独证明 |
| --- | --- | --- |
| identity | 目标版本、架构、进程、模块和实际加载对象 | 当前文本或语音语义 |
| text capture | 原始文本事件、seq、线程/上下文和生命周期 | 对应的音频资源 |
| text normalization/routing | 清理、speaker 路由、选中的逻辑文本 lane | 原文脚本的 voice key |
| audio resource capture | 归档、member、偏移/长度、原始 Ogg/PCM 字节 | 该资源属于哪一句台词 |
| audio ownership | 由脚本/请求对象/显式 ID 建立的文本-资源关系 | Fushi UI 是否正确消费或用户是否听到 |
| Fushi indexing/UI | 文件、事件元数据和制卡链路已消费 | 资源内容与台词语义相符 |
| E2E | 用户实际看到、听到并完成制卡链路 | 不能替代前面的可复核身份记录 |

每一层都只能把证据推进到下一层；不要用低层“看起来接近”的结果跳过 ownership 证明。

### 文本适配首轮矩阵

首轮文本运行应覆盖多个边界，而不是只走一条普通对白：

| 场景 | 至少核对 | 主要风险 |
| --- | --- | --- |
| 载入后的第一句 | 初始线程、首个 seq、空上下文 | 初始化/基线误判 |
| 存档、读档和场景切换 | seq、线程重建、旧事件清理 | stale event 或旧资源串线 |
| 相同文本重复出现 | 每次 seq/事件身份独立 | 仅按文本 hash 去重 |
| 有 speaker / 无 speaker | speaker 前缀和旁白路由 | 把旁白当角色语音 |
| glossary、annotation、特殊控制码 | 原文、清理后文本、控制码边界 | 以显示字符串代替事件身份 |
| 线程选择与过滤 | selected thread、候选资格、取消选择 | 把产品前置条件误判为 native 失败 |

一次运行应按可控顺序组合其中数项，并在日志中记录每项的预期结果；不要为每个单字段猜测单独重建和重跑。

### 语音发现顺序

1. 先离线检查脚本 metadata/opcode、voice key 语义。若引擎暴露可识别且可合法/技术上解析的脚本或资源 archive、index、member 表，必须先验证其结构、边界和压缩/解码格式。
2. 存在可解析的 ID 表时，用已知 ID 做离线定位、边界检查和原始资源解析；ID 可寻址时优先精确 ID 查找，不从读时刻反推台词。若没有静态容器/metadata，或无法合法/技术上解析，明确记录该事实，并转向最早的权威 decoder、engine API 或 request-object seam，不假定每个引擎都有 archive/member 语义。
3. 尽早阅读成熟适配器的架构和测试，例如 KiriKiri、Elf/AI6、Leaf/Aquaplus、Siglus 等；只复用分层、生命周期和证据模式，不机械复制引擎专属字段或兼容假设。
4. 只有静态证据无法闭合时才做运行时追踪，并把追踪目标限定为缺失的权威字段。API、loopback 和混音是最后的观察层，不能替代脚本/引擎 ownership。

### 静态先行与运行时预算

向用户请求运行前，若存在可解析的归档/index/member 表，必须先完成其离线验证；否则要记录静态容器/metadata 不存在或不可解析，并把运行时转移目标限定为最早的权威 decoder/engine API/request object。无论哪条路线，都要先写清竞争假设和区分字段。例如“读取是预取还是按需请求”需要同时记录请求角色、脚本 voice key、member 身份和对象/任务关系，而不是只记录 tick。

运行前使用以下最小假设表；每一行都必须能在一次 bounded run 中得到决定，不要跑完后才发现缺一个字段：

| 假设 | 权威/区分字段 | 一次运行的预期观察 | 停止/决策条件 |
| --- | --- | --- | --- |
| 文本事件携带稳定 voice key | opcode、record/request object、voice key、事件 seq | 同一 invocation 同时留下文本身份和 key | key 缺失或无法绑定 invocation：停在诊断，不做生产归属 |
| 资源读取可能是预取 | request role、cache/task 状态、archive/member、producer-consumer 关系 | 可观察到预取与按需请求的结构差异 | 只有时间/顺序差异：拒绝生产 ownership，回到更高层 seam |
| 线程选择/过滤是工作流前置条件 | thread create/select、候选资格、输出计数 | 选择状态改变可观察的文本 lane，且不误改其他线程 | 前置条件未验证：先补 UI/工作流证据，不修改 native ownership |

- 一次 bounded capture 应一次性覆盖所有能排除主要假设的字段、成功条件和停止条件；禁止 field-by-field 的“改一项、重建、再跑几分钟”循环。
- 两轮运行仍不能排除主要假设时，停止继续扩大测试，回到脚本/资源/引擎权威层重新评估模型。
- 诊断记录要有硬性的记录数、字节数和生命周期上限，不记录原始对白、音频或任意内存；如确需更小范围的本机内容，遵守授权、仓库外和不分享边界。

### 运行与重建预算：一次性闭合证据

真实游戏运行和完整 Windows Release 构建都是昂贵预算，不是默认的探索工具。每个未闭合的证据层默认最多请求一次合并运行；第二次只有在第一次暴露了真正无法预见的事实，或证明某个必要字段当时不可用时才允许。请求第二次前必须写明第一次无法确定的事实、缺失字段和为什么第二次能解决它；获准的第二次仍受“两轮后停止”规则约束。

在请求用户运行前，代理必须能回答：“如果这次失败，采集结果是否足以区分主要失败分支？”如果答案是否定的，先补静态分析、日志字段、确定性测试或观测器，不请求探索式运行。一次 runtime acceptance pack 应尽量合并：普通有声样本、明确无声样本（引擎有此概念时）、有声 -> 无声 -> 有声转换、载入首句、重复文本和控制码边界；不要为每个案例各建一次、各跑一次。

先批量完成静态分析、完整诊断字段、纯/回放测试和 native 验证，再重建。候选逻辑尚未基本闭合前，延后完整 Windows Release 打包；Fushi/游戏仍打开时继续只读分析和安全的非覆盖源码构建，只有最终需要替换 bundle 时才请用户一次性关闭，并执行文件锁预检。不得绕过锁检查，也不得把“能复制文件”当成“运行时已加载”。

每次 runtime/build handoff 必须预先写出：用户唯一的具体动作、样本矩阵、采集的字段/日志、成功标准、各失败分支及停止条件。不得发送“先试试看”式请求；若无法把这些内容写清楚，就回到静态或 instrumentation 阶段。

### 声明 native 失败前的 UI/工作流清单

在修改 Hook 或 ownership 逻辑前逐项核对：

- [ ] 用户是否已选择正确的文本线程，或该产品是否明确要求手动选择？
- [ ] 当前是否处于文本捕获/语音监听/制卡所需状态？
- [ ] 使用的是精确版本、profile 和 H-code，且 H-code 已实际生效？
- [ ] 当前 bundle 的 helper、本体和 manifest hash 是否正确？
- [ ] 进程实际加载的 DLL 路径和 hash 是否与待测产物一致？
- [ ] 当前事件是否明确标记为 no-voice，而不是“资源缺失”？

手动选择文本线程可以是合法的产品前置条件；必须先验证该前置条件的存在与否，再决定是否修改 native ownership。没有 selected thread 不自动等于 native Hook 失效。

### 验收证据层级

文件存在、`OggS`、长度和 hash 只能证明字节可用；`fushi_textseq<seq>` 等 event-owned 文件名只能证明标签已写入；两者都不能证明语义归属。最终运行验收至少要：

1. 听到已知有声对白，并确认音频内容属于当前显示行；
2. 验证明确 no-voice 行不出现资源、不误接邻近语音；
3. 验证“有声 -> 无声 -> 有声”转换，以及读档/重复文本后的 seq 独立性；
4. 将原始资源、事件身份、UI/制卡结果和操作顺序一起归档，才可进入 `e2e_verified`。

### 反模式与停止规则

| 反模式 | 停止规则 |
| --- | --- |
| 未验证的固定 RVA/偏移 | 先做版本、字节、布局和 callsite 校验；不能闭合就停止安装 |
| 调 delay、时间窗、FIFO、next-line | 立即拒绝为生产 ownership；回到脚本或引擎请求边界 |
| 资源失败时猜邻居、latest、PCM 或 loopback | 对精确事件 fail closed；人工复录/人工指定除外 |
| 因“同一厂商/同一 middleware”而启用宽泛路径 | 限定 exact profile，并为非目标引擎加负向测试 |
| 使用旧/中断构建产物 | 从审阅过的当前源重新构建，不能只按时间戳/hash 事后补 stage |
| 仅凭日志、UI badge 或“Hook installed”宣称完成 | 必须继续完成资源语义和真实听感的 E2E 验收 |

### 推荐快车道与每轮交付物

通用决策树：

`baseline identity -> authoritative text seam -> text edge-case matrix -> authoritative voice key -> offline resource validation -> exact ownership bridge -> one combined runtime acceptance -> UI/E2E -> final build/merge`

每次请求用户运行前，交付物至少包括：目标版本/进程身份、当前已闭合和未闭合的证据层、竞争假设及一次性采集字段、日志路径与上限、用户唯一操作和预期结果、失败即停止条件。进入最终打包前再增加源构建产物、bundle 和实际加载对象的 hash 链。

### 产物完整性与诊断/生产隔离

产物必须形成可追溯链：`source build output -> packaged bundle -> loaded runtime`。中断构建可能留下更新但未 stage 的二进制；即使它“看起来更新”，也必须从已审阅源重新构建后才能进入 bundle。诊断可以观察更多候选信号，生产绑定只能使用已证明的不变量并 fail closed；临时 calibration 的时间/FIFO/邻近启发式永远不能自动升级为生产 ownership 规则。

### 游戏内查词适配快车道

#### 复用既有架构

新引擎的查词是 adapter/provider 问题，不是第二套产品栈。必须复用现有 `LookupHit`、input/frame 通道、Fushi popup/`galCard`/mining context、geometry provider registry 和 input shielding；禁止另建字典、popup、IPC 或制卡链。实现前先阅读 Siglus、SGRE、HUNEX GGE、Leaf/Aquaplus、Smash/FZMedia、Ren'Py 等成熟适配器及其测试，按已证明的数据流和失败边界选择最近架构，不按厂商或引擎名称机械套用。

#### 参考实现行为契约（新增适配的前置门）

“参考 Anemoi/Fushi”不能只理解为“看起来类似”，也不能用用户记忆、截图或旧任务书代替当前代码事实。开始写新适配器前，必须在任务记录或 PR 描述中冻结参考实现的版本、源码路径和行为契约；没有完成这张表，只能做只读调查和诊断，不能写生产快捷键或输入所有权逻辑。

| 项目 | 必须写清的事实 |
| --- | --- |
| 参考身份 | 游戏/版本、exe 架构、参考提交或当前 checkout、实际源码路径/行号 |
| 文本前提 | 当前台词的 authoritative occurrence 从哪里来；若文本已经验证，直接复用其身份，不重新猜线程 |
| 点击触发 | 鼠标按钮、命中区域、按下/抬起时机、命中和空白处的行为 |
| 键盘触发 | 具体按键、物理/逻辑边沿、按住是否重复、释放如何收尾、是否与游戏冲突 |
| 坐标与窗口 | 字形矩形的坐标空间、完整变换链、窗口/client 身份、缩放/窗口模式影响 |
| 公共体验 | 查词提交入口、弹窗/卡片、点外关闭、弹窗内输入、下一次查词和窗口切换 |
| 证据边界 | 哪些是源码确认、纯测试确认、真机确认；哪些仍未验证 |

必须把应用级快捷键和游戏内快捷键分开记录。例如 `Ctrl+Alt+F` 这类“打开 Fushi 查词页”的全局快捷键，不能凭名称或用户回忆改写成游戏内裸 `F`；游戏内 `Shift`、鼠标点击或其他按键都必须回到参考适配器的实际代码确认。参考行为未确认时，结论写 `reference_unverified`，不得写“与参考游戏相同”。

#### 适配器与公共查词体验边界

适配器只负责把“当前 occurrence 上的当前字形命中”提交为现有查词协议。其最小输出概念必须能冻结：`occurrence identity`、文本/字符索引、字形矩形、矩形坐标空间、geometry/layout generation、窗口与 client 身份、provider 身份以及命中原因。具体字段必须对齐当前 `LookupHit`/provider 类型，不得为单个游戏另造一份 payload。

- 点击、键盘和其他触发路径最终都必须进入公共 `LookupHit`/`GalIngameLookupController` 链路；适配器不得另建 popup、字典查询、IPC、制卡入口或窗口管理。
- 只有 provider 已准入且命中有效时才能消费游戏输入；miss、空白和失效快照必须透传。消费了 physical down 就必须持有匹配的 up/hold tail，直到事务回到 neutral。
- 每个触发器单独写状态机。对 `GetAsyncKeyState` 轮询得到的快捷键，要明确高位 down、低位短按、rising edge、held repeat 和 reset 条件；按住 `Shift` 不能重复查同一个词，也不能让快捷键改变游戏推进状态。
- 适配器提交成功与否不能由“popup 看起来出现”推断；必须能追踪 `hit -> submit -> common popup/card`，并确认当前词、当前行和游戏输入所有权仍一致。

#### 独立证据链

查词必须逐层闭合：

`current text occurrence identity -> current layout/glyph snapshot -> text-to-glyph index mapping -> coordinate-space transform -> hit-test -> input transaction ownership/shield -> Fushi lookup/popup/mining E2E`

每层只证明自己。正确的 glyph 矩形不能证明它属于当前台词；已消费的点击不能证明命中已发布；popup 出现也不能证明当前词、当前行或游戏未推进。

#### 文本 occurrence 与几何 identity 分离

- text event/occurrence ID 必须来自 session 已验证的权威文本 producer；geometry generation/layout epoch 是另一套编号。
- 同一 occurrence 的重绘可以改变几何，但不得伪造新的 text event；相同字符串的新 occurrence 必须使旧 press/layout ownership 失效。
- 不得用 layout generation、latest text、字符串相等或时间接近代替 occurrence identity。查词点击 payload 必须同时冻结 occurrence、geometry/layout generation、window/client identity。

#### 几何与坐标空间纪律

- 优先读取引擎 renderer 的 glyph/layout 数据；按 lookup policy，生产 OCR 禁止。
- 把完整变换链写进设计和诊断，例如 `glyph/layer-local -> engine design/viewport -> client physical -> screen -> popup-local`；每一段都要有来源和方向。
- 引擎关系可以测量或求解时，不得用一张截图拟合 magic scale/offset 冒充 exact。原点或变换无法证明时 fail closed，或退回既有 `attached_calibrated` fallback，并明确它不是精确引擎几何。
- 在一次会话中尽量覆盖至少两个 client size/scale，避免固定 4K、固定 DPI 或固定比例的假通过。
- invisible space、ruby/control markup、surrogate/cluster、换行和标点必须纳入 text<->glyph 映射；字符数、字形数或索引关系不一致就拒绝命中。

#### snapshot、重绘与生命周期

- partial redraw 或暂时不完整的 glyph transport 不得单独撤销已证明的 provider 认领，也不得因此销毁已显示 popup；要区分“捕获前沿尚未到达”的 pending 与“语义布局已失效”。
- 新文本 occurrence、profile/window/client/view 改变、session reset 或真正无效的几何必须使旧 click/layout 失效。
- 用 generation、snapshot 和明确状态传递生命周期；不得用任意 delay 或 retry 次数掩盖竞态，也不得在 pending 与 semantic invalid 之间互相伪装。

#### 输入所有权必须是一次交易

- 在游戏提交自身点击动作之前，找到最早的 semantic input boundary；事后清 `GetAsyncKeyState` 已经太晚。
- hit 与 miss 分开：miss 保持透传；只有 provider 已准入且 hit 有效时才取得所有权。
- 一旦消费 physical down，就必须持有匹配的 up/hold tail 直到回到 neutral，不能只吞半个点击；“点击已消费但没有发布 lookup”是一级失败结果，必须有明确 reason。
- host provider admission 与 native input permission 必须是同一序列的 coherent transaction；host 拒绝时 native 不得消费。popup/card 内部输入和点外 dismiss 也要有明确 owner，不能泄漏给游戏。

#### 诊断先行的一次运行设计

请求运行前，为每个主要 fail-closed gate 提供稳定 reason token/counter；不要把二十个拒绝点压成一个 `noGlyphClusters`。一次有界诊断应尽量覆盖：

| 领域 | 最小标量元数据 |
| --- | --- |
| text/geometry | occurrence/thread identity、glyph count/char indices、logical/layer coordinates、viewport/design/client/window dimensions、transform state |
| provider/input | provider admission/owner、input poll 与 semantic submit 顺序、shield readiness/request/applied state |
| transaction/result | hit target、press/down owner、up/submission、worker publication result、terminal rejection reason |

可分享/脱敏诊断仍不得含游戏 payload；运行次数和采集上限沿用上面的运行/重建预算。运行前先填写：

| 假设 | 区分字段 | 一次 bounded run 的预期 | 停止/决策 |
| --- | --- | --- | --- |
| 当前 hit 属于当前 occurrence | occurrence ID、layout epoch、glyph index | 点击 payload 与当前文本/布局身份一致 | 任一身份缺失或多解：不发布 hit |
| 坐标投影是可证明的 | 每段 transform、尺寸/scale、窗口身份 | 两种尺寸/scale 仍得到同一逻辑命中 | 只能靠拟合：降级或停在诊断 |
| 点击所有权闭合 | semantic submit、admission、down/up shield | hit 吞完整事务且 miss/点外透传 | 任一侧先消费：修交易边界，不调 delay |

#### 一次合并验收包

用户运行前只安排一个有界会话，按引擎能力尽量合并：普通日文词命中；空格/标点/ruby/control 边界；换行/多行；同一句重绘与同 occurrence 稳定性；下一句新 occurrence；点字弹查词且游戏不推进；点空白 miss 仍按游戏行为；popup/card 内部交互；点外关闭不穿透；窗口模式或至少两种 client size/scale；若含制卡，再验证 occurrence -> 查词 -> 正确句子/语音/截图/card identity。每项提前写出期望结果，避免一个 case 一次重建/运行。

#### 游戏内查词最低验收矩阵

下表是新增游戏查词的最低行为门，不是“可选测试清单”。引擎不适用的项目必须写出原因和降级状态，不能静默跳过。

| 场景 | 必须观察到的结果 |
| --- | --- |
| 普通文字点击 | 命中正确字符，公共查词窗口出现，游戏不推进 |
| 空白/未命中点击 | 查词不提交，游戏保持原有透传行为 |
| 键盘查词 | 使用契约中确认的按键和边沿；按住不重复，释放后可再次触发 |
| occurrence 更新 | 下一句或同字符串的新 occurrence 不会复用旧几何/旧命中 |
| 重绘/换行/标点/ruby | 字符索引和字形命中与当前布局一致，无法证明时拒绝命中 |
| popup 生命周期 | 打开、点内交互、点外关闭、再次查词均走公共窗口链路，点外不穿透 |
| 窗口与缩放 | 至少验证目标支持的窗口/client 尺寸或缩放，不依赖单一固定比例 |
| 产物身份 | 候选 manifest 绑定源码提交、source fingerprint、架构产物和实际加载对象 |

报告中固定使用以下证据标签：`source-confirmed`、`pure-test`、`native-compiled`、`candidate-built`、`real-game-tested`、`user-accepted`。前一标签不能自动升级后一标签；尤其是“native 编译成功”“Hook 已安装”或“popup 出现”都不能单独写成“已支持”。

#### 查词反模式与停止规则

| 反模式 | 立即停止/处理 |
| --- | --- |
| 用截图拟合的固定 offset/scale 宣称精确几何 | 找 renderer/layout 或可求解的投影关系；否则 fail closed/明确降级 |
| 生产 OCR | 禁止；回到引擎字形/布局 seam |
| 用 geometry generation 冒充 text event ID | 分离两个 generation，并回到权威文本 producer |
| 用字符串、latest、时间或 FIFO 认 occurrence | 不发布 ownership，补稳定事件身份 |
| provider 未准入就吞输入 | 先统一 admission 与 native permission 交易 |
| 吞 down 后取消 lookup、漏掉 matching release | 保留 tail ownership，直到 neutral |
| 只按模块名放行整个引擎家族 | exact profile + 结构验证 + 负向测试 |
| 只看到 popup/UI badge 就宣称完成 | 必须核对当前词/当前行/游戏未推进及 E2E |
| 每发现一个字段就重建再跑一次 | 停止循环，补齐 instrumentation 后做一次合并运行 |

如果某引擎的文本捕获已经验证，后续 lookup 必须复用该 session 已有的 authoritative occurrence identity；除非新证据推翻它，不要重新打开文本源选择。这个前置判断与是否需要用户手动选择文本线程一样，属于工作流/产品条件，不能未经核对就改写 native ownership。

## 1. 边界与开工条件

- native 采集组件在本仓 `native/galgame_hook/`（源码已合仓）。**进程/链接边界不变且是硬规则：绝不链接进 `fushi.exe`**。`tools/build_distribution.ps1` 单独构建 `voice_hook_<arch>.zip`；两架构 zip 由 `tools/install_into_bundle.ps1` 在**构建期**解压进 `fushi.exe` 同级 `voice_hook/<arch>/`（BUG-1449），与本体同一次构建产出、同一个安装包落地；运行期不下载任何组件（helper 的在线发布通道 `voice-hook-helper` release 已于 2026-08-11 连同其 workflow 一并删除）。helper 仍以隔离子进程/DLL 运行。
- 合仓的依据：迁出独立仓库的真正根因是「主仓库那份 workflow 不在默认分支、无法 workflow_dispatch」，合仓后 workflow 就在 develop 上，问题消失；而「必被杀软报毒」经实测证伪（Defender 签名 1.455.357.0 对全部文件与 zip 零检出，同轮 EICAR 阳性对照正常报出，见 hibiki-hook#8）。国产杀软未验证，若被拦按误报处理。
- 消费端（IPC 消费、文本与音频配对、制卡 UI）与 native 采集实现现在同仓，**改 IPC 契约必须两侧在同一个 PR 里落地**——这正是合仓要消除的版本不同步。引擎支持矩阵唯一真相源是 `native/galgame_hook/docs/engine-support.md`（由同目录 `engine-support.yaml` 自动生成），不得另存副本。
- 一引擎一任务、一独立 worktree；批量引擎任务只负责排队和汇总，不在同一实现任务里交叉试错。worktree 先运行 `tool/setup_worktree.ps1`，并按根 `CLAUDE.md` 登记 ownership。
- 先记录游戏名、版本、exe 架构、启动器与真实游戏进程关系、原始失败路径；没有真实样本证据时只能标记 `implemented_unverified`，不得写成“已支持”。
- 仓库 fixture 和可分享/脱敏诊断包不得含真实对白、语音字节、任意内存或其他受版权保护的游戏 payload。用户明确授权的本机临时诊断可以采集区分假设所需的最小内容，但必须留在仓库外、有硬性上限、不得上传或分享，也不能事后直接作为提交素材。

下文命令均在 `native/galgame_hook/` 下运行。Windows 入口统一为：

```powershell
powershell -ExecutionPolicy Bypass -File tool/galhook.ps1 <command> ...
```

## 2. 身份、阶段与证据台账

写任何 Hook 或配对代码前，先按用户报告的原始安装目录、原始启动入口和原始操作顺序跑一遍，并为本次会话保存以下台账。路径可在对外诊断包中脱敏，但本机验证时必须能据此确认实际加载对象。

| 类别 | 必填事实 |
|---|---|
| 样本身份 | 游戏/版本、原始启动入口、exe SHA-256、x86/x64 |
| 进程身份 | 启动器 PID → 实际承载窗口/文本/音频的游戏 PID、父子关系、最终镜像路径 |
| 组件身份 | 实际加载的 helper、Hook DLL、关键引擎/中间件 module 的绝对路径、版本与 SHA-256 |
| 生命周期 | 启动、发现真实 PID、注入/附着、helper ready、IPC ready、module load、首次资源访问、首次文本与首次音频的单调时间 |
| 原始失败路径 | 用户从哪里启动、何时 attach/早注入、执行哪句/哪个动作、预期与实际停在哪一阶段 |

会话阶段固定分开记录，不能用一个 `ready` 或十六进制总状态代替：

| 阶段 | 最小通过证据 |
|---|---|
| `process_found` | 已确认真实游戏 PID/镜像/架构，不是 relay、launcher 或即将退出的父进程 |
| `helper_ready` | 对应架构和哈希的 helper/DLL 已在目标会话就绪 |
| `ipc_ready` | IPC 契约/版本匹配且生产者、消费者仍存活 |
| `text_ready` | 真实台词从选定线程到达，系统/UI 伪影已排除 |
| `resource/pcm_ready` | 真实播放动作产生资源事件或非静音 PCM；模块/imports/Hook installed 不算 |
| `paired` | 同一个稳定 event ID 的文本与对应语音完成配对，未用 latest/string fallback 冒充 |
| `e2e_verified` | 原始路径完成台词、对应语音、画面与真卡写入；原始资源另有字节哈希一致性 |

能力证据也要逐级写清：`candidate`（仅静态特征）→ `observed`（真实运行事件）→ `captured`（取得可验证字节/PCM）→ `voice_classified`（证明是角色语音、混音或 BGM/SE）→ `hash_verified`（适用时与源 entry 一致）→ `e2e_verified`。这些是台账证据等级，不替代 `engine-support.yaml` 的状态枚举；在原始路径 E2E 前，manifest 仍只能是 `implemented_unverified`。

每轮只处理原始路径上**第一个未通过阶段**：先复现并冻结其上游证据，只修改该边界所需的 profile/adapter/消费状态机，随后从原始路径重跑。不得同时根据 imports、引擎名或相似 DLL 猜多个下游 Hook；共享中间件只有在 profile 明确限定数据契约并有跨引擎负向测试时才能启用特例。

## 3. 从用户报告到脱敏诊断包

先在用户原始安装路径运行静态 probe：

```powershell
powershell -ExecutionPolicy Bypass -File tool/galhook.ps1 probe 'D:\Games\Title\game.exe' --output build\title-probe.zip
```

默认 ZIP 只包含 `diagnostic.json` 与 `README.txt`。`diagnostic.json` 记录相对且脱敏的文件清单、大小/扩展名、PE 架构与 imports、能力摘要；不会复制 exe、脚本、图片、语音或其他游戏载荷，根路径写为 `<game-root>`。交付诊断包前仍要人工检查 ZIP 成员和 JSON，确认没有用户名、绝对路径或游戏内容。

需要动态证据时，可在用户明确同意且游戏已运行后追加进程或现有 trace：

```powershell
powershell -ExecutionPolicy Bypass -File tool/galhook.ps1 probe 'D:\Games\Title\game.exe' --pid 1234 --trace build\capture-trace.json --output build\title-live-probe.zip
```

动态 probe 只归纳进程树、已加载模块、线程/资源/音频格式和能力状态。Hook Code、文本内容、资源字节不会进入默认包；若排障确实需要内容，应在仓库外单独取得用户授权并做最小化脱敏，绝不提交真实内容。

分析顺序：

1. 确认实际承载游戏的进程与 PE 架构，而非只看启动器。
2. 用 imports、运行时模块、资源扩展名和哈希与 `engine-support.yaml` 比对。
3. 按“原始逐句资源 → 解码器/中间件 → 引擎 API → XAudio2/DirectSound → 进程 Loopback”选择最靠前的可行音频层。
4. 文本优先复用 LunaHook；引擎特例必须收在独立 bridge/profile/adapter，不把逻辑塞回 worker 主干。

其中 imports、文件名和模块存在只用于产生候选，必须用运行时事件、捕获字节和原始路径动作逐级升级证据。相同中间件 DLL 不代表不同引擎具有相同 datasource、回读、加密或生命周期契约。

## 4. 创建一个适配骨架

引擎 id 使用小写字母、数字和下划线：

```powershell
powershell -ExecutionPolicy Bypass -File tool/galhook.ps1 new example_engine --fushi-root 'C:\src\Fushi'
```

命令会拒绝覆盖已有文件，并生成或注册：

- `profiles/example_engine.json`
- `hook/adapters/example_engine_profile.h`
- `hook/adapters/example_engine_adapter.inc`
- native CTest 与合成 replay fixture
- registry 的受管 include/startup/shutdown/module/fields 片段
- 指定 `--fushi-root` 时的 Dart fixture 与测试骨架

生成后结构守卫自动执行，没有跳过验证的命令行开关；适配器也自动进入 CMake/CTest。骨架只是待实现状态，先在 profile 与 `engine-support.yaml` 标记 `implemented_unverified`，再完成 `probe/install/capabilities/onModuleLoaded/shutdown/diagnostics` 所需实现。不要在回调里做文件 IO、解析、编码、IPC 等阻塞操作：回调只能向有界事件复制固定大小或有上限的数据并立即返回，队列满时丢弃；重组、读取、配对和转码放到 worker。

## 5. 离线 replay

把最小化、合成或获准脱敏的事件保存成 JSON 后运行：

```powershell
powershell -ExecutionPolicy Bypass -File tool/galhook.ps1 replay tests\fixtures\workflow_replay.json
```

fixture 包含 `config`、按时间排序的 `events` 和 `expected`。至少覆盖：

- 选中线程之外的文本被过滤；
- 相同文本在去重窗口内只产生一次；
- 配对优先级为 resource、PCM、loopback；
- resource 晚到仍能替换较低优先级候选；
- `session_end` 清理未配对状态，后续会话不串数据。

不要把真实台词、语音字节或可还原游戏内容放进 fixture。失败时修 profile、adapter 或公共配对状态机，不通过延时、重试、吞异常或 fixture 特判绕过。

## 6. native 与 Fushi 验证门

在 `native/galgame_hook/` 下至少执行：

```powershell
python tools/generate_engine_support.py --check
python tools/generate_luna_profiles.py --check
python tests/engine_support_manifest_test.py
python tests/adapter_structure_test.py
python tests/galhook_workflow_test.py
cmake -S . -B build-x64 -A x64
cmake --build build-x64 --config Release
ctest --test-dir build-x64 -C Release --output-on-failure
cmake -S . -B build-x86 -A Win32
cmake --build build-x86 --config Release
ctest --test-dir build-x86 -C Release --output-on-failure
```

若改动 Fushi 的 Dart/Flutter 消费端，则在 `fushi/` 下按根规则执行 `dart format .`、相关定向测试，再执行完整 `flutter test` 与 `flutter analyze`。工具自身崩溃要原样记录，不能当作代码通过；可补充 `dart analyze` 的有效结果，但不能伪装成完整 analyze。

任何必需命令、双架构构建、replay、定向测试或完整测试被跳过、崩溃或因环境阻塞时，逐项记录命令和原因；该能力只能停在 `implemented_unverified`。Loopback 通过只证明降级链可用，不能替代引擎 Hook、逐句配对或纯人声验证。

## 7. 真实游戏验收与证据

离线测试通过后，回到用户报告的原始路径和启动方式验证。启动器型游戏同时验证子进程发现；带保护壳的游戏若只能“正常启动后附着”，要记录为明确的进程策略，不能改写成随启动注入成功。

每个支持声明至少记录：

- 游戏、引擎、版本、exe/module SHA-256 和 x86/x64；
- 原始启动路径、注入/附着方式、实际游戏 PID 与子进程关系；
- 文本来源/线程选择，以及音频命中层；
- 一次完整“显示台词 → 捕获对应语音 → 截图 → 真卡写入”的结果；
- 原始逐句资源时的格式、大小/哈希一致性证据；否则明确说明是否含混音；
- 失败、降级与已知限制，以及证据日期。

证据只保存元数据、哈希、结构化事件和必要截图；截图先检查个人信息与版权范围，禁止把游戏素材作为测试资产提交。随后更新 `native/galgame_hook/engine-support.yaml`，运行生成器更新 `native/galgame_hook/docs/engine-support.md`（唯一真相源，不得另存副本）。状态只能按证据从 `implemented_unverified` 提升为已验证。

## 8. 提交与交接

native 能力、Fushi 消费端和进度文档可按审查边界拆提交，但同一 IPC 契约变更必须在一个 PR 内同时落两侧；不要把无行为变化重构与能力扩展混成一个提交。交接报告列出主仓提交哈希、全部验证命令、真实样本证据、仍未验证项和后续候选。许可方面，文本优先复用隔离运行的 LunaHook（GPLv3）；资源格式可参考 GARbro（MIT），保留必要署名与许可证；禁止 vendoring NonCommercial 或其他受限许可的二进制和数据。
