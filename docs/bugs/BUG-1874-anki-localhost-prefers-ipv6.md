## BUG-1874 · AnkiConnect 使用 localhost 时优先连接 IPv6，导致本机请求延迟或失败
- **报告**：2026-08-10（用户：制卡偶发提示连接失败；同一句稍后再操作又能正常取得数据）
- **真实性**：✅ 真 bug。本机 AnkiConnect 只监听 `127.0.0.1:8765`，而 `localhost` 的地址顺序是 `::1` 在前；用户当前 Fushi 设置正是 `localhost:8765`。修复前 `packages/fushi_anki/lib/src/ankiconnect/ankiconnect_service.dart:242-249` 把配置名原样交给 socket。只读实测同一个 `version` 请求走 `127.0.0.1` 约 30ms，走 `localhost` 约 2.2s；本机错误日志另有 13 次 `AnkiConnect connection failed before the HTTP request started`，首个业务调用均落在 `mediaFileExists`。这会让所有制卡/查重请求先付失败的 IPv6 尝试，网络栈没有顺利回落时则直接报连接失败。
- **[x] ① 已修复** — `packages/fushi_anki/lib/src/ankiconnect/ankiconnect_service.dart:242-249,745-754` 构造结构化 URI，并仅把含糊的 `localhost` 传输目标固定为 `127.0.0.1`；保存的用户设置、显式 `::1`、显式 IPv4、局域网地址与 HTTPS 地址均不改。
- **[x] ② 已加自动化测试** — `packages/fushi_anki/test/ankiconnect_service_test.dart:62-84` 钉住「设置仍是 localhost，但真实请求 URI 的 host 必须是 127.0.0.1」；既有远端 HTTPS、API key、连接超时和重试测试继续通过。
- **备注**：这项修复消除的是本机地址族不一致，不会掩盖 Anki 未启动、端口改错、防火墙或远端主机离线等真实连接错误。
