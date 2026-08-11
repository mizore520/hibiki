# Yomitan glossary renderer source

The files under `js/` and `data/structured-content-style.json` are copied
verbatim from Yomitan 26.6.15 (Chrome extension
`likgccmbimhjbgkjambclfkhldnlhbnn`, version directory `26.6.15.0_0`).

Upstream: https://github.com/yomidevs/yomitan

Copyright (C) 2023-2026 Yomitan Authors
Copyright (C) 2021-2022 Yomichan Authors

They are distributed under the GNU General Public License, version 3 or (at
your option) any later version. Each JavaScript source file retains its
upstream copyright and license header.

`fushi-glossary-adapter.js` is Fushi's small data adapter around those
upstream classes. The generated, unminified
`../yomitan-glossary-renderer.js` is rebuilt with:

```powershell
node tool/build_yomitan_glossary_renderer.mjs
```
