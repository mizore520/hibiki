# Fushi 快捷键清单（TODO-048a 统计）

> ⚠️ **2026-08-02 增补：「返回上一级」已统一，本文与之冲突的行以本段为准。**
>
> Esc / Alt+← / 手柄 B 现在全部绑在**唯一一个**可改键动作
> `ShortcutAction.globalBack`（新 `ShortcutScope.universal`，设置页分组「返回·退出」）
> 上，退出书籍 / 退出漫画 / 退出视频 / 退出设置页 / 关闭词典弹窗共用它。
> 每个表面在自己 scope 未命中后**兜底解析** universal，再按各自阶梯执行：
> 阅读器与漫画「有词典先关词典，否则退出」，视频「控件编辑 → 字幕列表 → 剧集列表
> → 侧栏 → 沉浸锁 → 全屏 → 浮层 → 退页」，其它页 `maybePop`。
>
> 随之删除的动作：`readerExitBook`（原 Ctrl+W）、`videoEscape`（原 Esc）；
> `readerDismissDict` / `mangaDismissDict` 降级为**默认空绑定**的可选动作
> （「只关词典、不退出」，典型用法是绑鼠标侧键）。`global_navigation.dart` 里那条
> **硬编码 Escape**（旧 `_handleGlobalEscape`）已并入注册表驱动的 `_handleGlobalBack`，
> 现在改键真的能改。schema v7 → v8 迁移见 `shortcut_registry.dart`，
> 不变式守卫见 `test/shortcuts/universal_back_test.dart`。
>
> 生成：2026-06-11，base develop@d94197419。本文件是「当前实际生效的快捷键 + 手柄
> + 鼠标绑定」的盘点，供 TODO-048（统计并优化快捷键）使用。**本清单只统计，不改任何
> 绑定行为**；发现的冲突/重复/缺失列在末尾「待优化」，改绑定属行为变更，须用户确认。
>
> 快捷键分两类来源：
> 1. **可配置注册表**（`ShortcutAction` + `ShortcutDefaults` + `FushiShortcutRegistry`，
>    用户可在「快捷键设置」页改键）—— reader / home / global / universal / audiobook /
>    video / manga / dictionaryPopup 等 scope。reader、home、video、manga 的页面入口
>    支持鼠标按键与滚轮；WebView 页面分别由 Flutter Listener 或 DOM bridge 接收。
> 2. **仍有硬编码的上下文输入**（全局焦点/方向键补救、有声书 Space 覆写、阅读方向翻页
>    覆写、漫画内部手势等）——这些不代表对应 scope 的普通快捷键，用户不能直接改。

---

## 1. 可配置注册表（桌面默认，`shortcut_defaults.dart` `_desktop`）

> macOS 把所有 `Ctrl` 自动换成 `Cmd`（`_macOS`）；移动端只保留手柄/鼠标绑定，去键盘
> （`_mobile`）。下表是桌面键盘 + 手柄默认值。

### reader scope（阅读器页面解析 reader + audiobook）

| Action | 键盘默认 | 手柄默认 | 功能 |
|---|---|---|---|
| readerPageForward | PageDown / → / ↓ / Space | RB, D-pad右 | 下一页 |
| readerPageBackward | PageUp / ← / ↑ / Shift+Space | LB, D-pad左 | 上一页 |
| readerToggleChrome | M | Y | 切换底栏 |
| readerDismissDict | ~~Esc~~ →（无默认，见顶部增补） | — | 只关词典弹窗，绝不退出 |
| globalBack（universal） | Esc / Alt+← | B | 返回上一级：有弹窗关弹窗，否则退出书 |
| readerToggleBookmark | Ctrl+D | X | 切换书签 |
| readerToggleFurigana | （无键盘默认） | R3 | 切换振假名 |

### home scope（首页解析 home + global）

| Action | 键盘默认 | 手柄默认 | 功能 |
|---|---|---|---|
| homeTabBooks | Ctrl+1 | — | 跳「书架」tab |
| homeTabDict | Ctrl+2 | — | 跳「查词」tab |
| homeTabSettings | Ctrl+3 | — | 跳「设置」tab |
| homeTabPrev | （无键盘默认） | LT | 上一个 tab |
| homeTabNext | （无键盘默认） | RT | 下一个 tab |
| homeFocusSearch | Ctrl+F | Y | 聚焦搜索框 |

### global scope（非阅读器页通用）

| Action | 键盘默认 | 手柄默认 | 功能 |
|---|---|---|---|
| globalBack | Alt+← | —（手柄留空，避免被 reader B 遮蔽） | 返回上一级 |
| globalScrollPageDown | （无键盘默认） | RB | 整页下滚 |
| globalScrollPageUp | （无键盘默认） | LB | 整页上滚 |

### audiobook scope（有声书激活时，在 reader scope 之后解析）

| Action | 键盘默认 | 手柄/鼠标默认 | 功能 |
|---|---|---|---|
| audiobookPlayPause | Ctrl+Space | L3（手柄） | 播放/暂停 |
| audiobookNextSentence | Ctrl+→ | —（RB/LB 已被 reader 翻页占用会被遮蔽） | 下一句 |
| audiobookPrevSentence | Ctrl+← | — | 上一句 |
| audiobookSeekToClickedSentence | — | 鼠标中键（位置型，走 onPointerSeek） | 点句跳转并播放 |

> scope 解析顺序的关键约束（`shortcut_action.dart` coactiveScopes）：reader 页按
> `[reader, audiobook]` 顺序解析，home 页按 `[home, global]`。同一物理键在共活 scope
> 里只会触发一个，后面的 scope 会被静默遮蔽——所以默认值刻意给被遮蔽位置留空（注释
> 已说明，如 audiobookNextSentence 不绑 RB/LB、globalBack 不绑手柄）。

### video scope（视频页与内置网页视频页）

视频动作（播放、跳句、音量、倍速、字幕、全屏等）已进入 `ShortcutAction` 注册表，
键盘和手柄沿用原有动作表；鼠标按钮与滚轮也可以在设置页为这些动作添加绑定。普通视频
页的 Flutter `Listener` 负责解析，`WebVideoFushiPage` 的 InAppWebView 则使用共享
WebView 鼠标 bridge 与方向/修饰键全等的滚轮 bridge。视频鼠标/滚轮默认均为空，因此
不改变原有点击、拖动、滚动和站点播放器行为；只有用户明确绑定后才会消费对应事件。

### manga scope（漫画阅读器）

漫画页支持键盘、手柄、鼠标按钮和滚轮绑定。未命中自定义动作时保留原有拖动、缩放、
滚动和翻页手势；绑定左键采用非阻塞策略，绑定右键/侧键或滚轮才会抑制相应浏览器默认
行为。

---

## 2. 仍有硬编码的上下文输入（不进普通动作注册表）

### 2a. 视频播放器仍保留的上下文输入

> 视频动作本身已迁入上面的 `video scope`；本节只列不能由普通动作注册表表达的上下文/兼容
> 输入。它们仍由 `video_player_shortcuts.dart`、页面 Focus 或播放器手势层处理，不应与
> 可配置动作表混为一谈。

| 输入 | 功能 |
|---|---|
| videoEnterCaret 激活期间的方向键 / Enter / Esc | 选词光标移动、确认与退出，优先于普通 video scope |
| videoHoldSpeed 的 keydown / keyup 边沿 | 按住临时倍速，松开恢复原速；普通 activator 无法表达 keyup |
| 有声书 Space 覆写 | 有声书激活时把无修饰 Space 从翻页改为 audiobookPlayPause |
| 阅读方向翻页覆写 | 竖排 RTL 下左右方向按页序语义校正 |

### 2b. 全局焦点/导航（`global_navigation.dart`，仅实验性焦点导航开启时）

| 键 | 功能 |
|---|---|
| Esc（在 Navigator 之上） | 退出全页路由层级。**已不再硬编码**：现按注册表解析 `globalBack`（`_handleGlobalBack`），Esc 落在弹层上仍让给框架的 barrierDismissible 契约 |
| 方向键（单行文本框聚焦时按上/下，press 边） | 逃出文本框焦点（框架把方向键全吞成 caret intent 的补救） |
| 方向键（无文本框聚焦，OS 自动重复 KeyRepeat） | 持续移动焦点（带面板几何 + 阅读顺序回退） |
| 裸 Space | 中和为 DoNothingIntent（不触发激活，焦点确认统一走 Enter / 手柄 A） |

### 2c. 有声书 Space 覆写（`reader_space_override.dart`）

| 条件 | 覆写 |
|---|---|
| 有声书激活 + 无修饰 + Space | 翻页 → 改为 audiobookPlayPause（媒体播放器惯例） |

### 2d. 阅读方向翻页覆写（`reader_space_override.dart` resolveReaderArrowPageTurn，BUG-098）

| 条件 | 覆写 |
|---|---|
| 竖排 RTL（日文默认）+ 无修饰 ← | readerPageForward（下一页在左） |
| 竖排 RTL + 无修饰 → | readerPageBackward |
| 横排 LTR + 无修饰 ←/→ | 后退 / 前进（默认方向） |

### 2e. 查词弹窗

弹窗自身（`assets/popup/popup.js`）无键盘快捷键；关闭走 Flutter 层（reader 的 Esc→
readerDismissDict 关栈顶弹窗 / 全局 Navigator pop / 手柄 B）。

阅读器**选字光标**在弹窗上时另有一组硬编码键（`reader_caret_router.dart`，只在光标
模式生效）：`]` / `[` 跳下/上一本词典段，`.` / `,` 跳下/上一个词条，RT / LT 是它们的
手柄同义键。

**滚轮（可配置，见下）**：`dictionaryPopup` scope 的「上/下一个词条」默认 Alt+滚轮
下/上，鼠标悬在任何查词弹窗上即生效，不需要先进光标模式。

---

## 1b. 可配置注册表（滚轮通道，`dictionaryPopup` scope）

> 后加的第四条绑定通道（键盘 / 手柄 / 鼠标按钮 / **滚轮**）。滚轮绑定不经
> `resolveKeyboard` 或页面派发：弹窗内容是 WebView，滚轮事件先到它的 JS，故
> `popup_settings_injection` 把绑定序列化成 `window.__fushiEntryWheelBindings` 注入给
> `popup.js`，命中即调 `fushiFocusDictionaryEntryMove`（TODO-1325 #5 part1 的词条焦点）。
> 浏览器扩展没有注入通道，吃 popup.js 里的同款默认值。

| 动作 | 默认绑定 | 说明 |
|---|---|---|
| `popup_next_entry` | Alt+滚轮下 | 多词条结果里跳到下一个词条并滚进视口（Yomitan Next entry） |
| `popup_prev_entry` | Alt+滚轮上 | 上一个词条 |

约束：默认裸滚轮留给内容滚动；用户在设置页明确选择空修饰键后，才会覆盖该默认语义。
修饰键必须**全等**匹配，故 Ctrl+Alt+滚轮不会误触 Alt+滚轮；到首/末条时返回
`blocked`，该帧照常滚动内容。设置页对这个 scope 只渲染滚轮章节
（`ShortcutScope.channels`），不给键盘/手柄/鼠标入口——那些通道在这里绑了也永不触发。

---

## 3. 待优化（发现的冲突/重复/缺失，报 PM，不擅自改）

### 冲突（视频默认值；需用户确认后再调整）

- **视频 `F` 双绑**：`F` = 切换全屏（line 88），`Shift+F` = seekForward（line 69-71）。
  Shift+F 与裸 F 不是同一 activator 故不会硬撞，但 `F`/`Shift+F` 语义割裂（一个全屏一个
  快进）容易误触，建议 048b 统一。
- **视频 seek 键重复**：`←`/`A`/`J` 三键都是 seekBackward，`→`/`D`/`I` 三键都是
  seekForward。功能正确但键位冗余，asbplayer 兼容性保留可，048b 决定是否精简。

### 重复（同 scope 多键绑同一动作，属设计，非 bug）

- reader 翻页：PageDown/→/↓/Space 四键都前进、PageUp/←/↑/Shift+Space 四键都后退——
  这是注册表里的设计冗余（覆盖多种习惯），非冲突。

### 缺失（注册表里手柄默认刻意留空，因 scope 遮蔽）

- audiobookNextSentence / audiobookPrevSentence 无手柄默认（RB/LB 被 reader 翻页占用，
  绑了也会被遮蔽，注释已说明）。这是正确的「不绑被遮蔽位」，非缺陷。
- globalBack 无手柄默认（reader B 已是 readerDismissDict）。同上。

### 注册表外仍无统一入口的上下文输入

- 视频选词光标激活期方向键、按住倍速的 keyup 边沿，以及有声书/阅读方向的覆写仍由
  上下文路由处理，不属于普通动作绑定。若要调整这些输入，必须先确认不会破坏上下文
  消费顺序，不能简单再接一套硬编码表。
