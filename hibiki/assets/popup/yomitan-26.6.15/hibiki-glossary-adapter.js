/*
 * Hibiki adapter for Yomitan 26.6.15's glossary export pipeline.
 *
 * Copyright (C) 2026 Hibiki Authors
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 */

import {sanitizeCSS, addScopeToCssLegacy} from './js/core/utilities.js';
import {StructuredContentGenerator} from './js/display/structured-content-generator.js';
import {CssStyleApplier} from './js/dom/css-style-applier.js';
import {AnkiTemplateRendererContentManager} from './js/templates/anki-template-renderer-content-manager.js';

const STRUCTURED_CONTENT_DATASET_KEY_PATTERN = /^sc([^a-z]|$)/;

function escapeHtml(value) {
    return String(value)
        .replaceAll('&', '&amp;')
        .replaceAll('<', '&lt;')
        .replaceAll('>', '&gt;')
        .replaceAll('"', '&quot;')
        .replaceAll("'", '&#039;');
}

function stringToMultiLineHtml(value) {
    return escapeHtml(value).replaceAll('\n', '<br>');
}

function escapeDictionarySelectorValue(value) {
    return String(value)
        .replace(/\\/g, '\\\\')
        .replace(/"/g, '\\"');
}

function parseGlossaryContent(content) {
    if (typeof content !== 'string') {
        return content;
    }
    const trimmed = content.trim();
    if (!(trimmed.startsWith('{') || trimmed.startsWith('['))) {
        return content;
    }
    try {
        return JSON.parse(content);
    } catch {
        return content;
    }
}

function hasMismatchedAspectRatio(width, height, inverseAspectRatio) {
    if (width <= 0 || height <= 0 || inverseAspectRatio <= 0) {
        return false;
    }
    const naturalInverseAspectRatio = height / width;
    return Math.abs(Math.log(naturalInverseAspectRatio / inverseAspectRatio)) > Math.log(1.5);
}

function fitNaturalImageInsideDeclaredBounds(data, naturalSize) {
    const widthLimit = typeof data.preferredWidth === 'number'
        ? data.preferredWidth
        : (typeof data.width === 'number' ? data.width : null);
    const heightLimit = typeof data.preferredHeight === 'number'
        ? data.preferredHeight
        : (typeof data.height === 'number' ? data.height : null);
    let scale = 1;
    if (widthLimit !== null && heightLimit !== null) {
        scale = Math.min(widthLimit / naturalSize.width, heightLimit / naturalSize.height);
    } else if (widthLimit !== null) {
        scale = widthLimit / naturalSize.width;
    } else if (heightLimit !== null) {
        scale = heightLimit / naturalSize.height;
    }
    return {
        width: naturalSize.width * scale,
        height: naturalSize.height * scale,
    };
}

function applyNaturalImageSize(data, dictionary, getNaturalImageSize) {
    if (
        typeof getNaturalImageSize !== 'function' ||
        typeof data.path !== 'string'
    ) {
        return data;
    }
    const nodeData = data?.data;
    const isGaiji = (
        nodeData?.class === 'gaiji' ||
        Object.prototype.hasOwnProperty.call(nodeData || {}, 'gaiji')
    );
    const naturalSize = getNaturalImageSize(dictionary, data.path);
    if (
        !naturalSize ||
        !Number.isFinite(naturalSize.width) ||
        naturalSize.width <= 0 ||
        !Number.isFinite(naturalSize.height) ||
        naturalSize.height <= 0
    ) {
        return data;
    }

    const hasInvalidDeclaredDimensions = [
        data.preferredWidth,
        data.preferredHeight,
        data.width,
        data.height,
    ].some((value) => typeof value === 'number' && value <= 0);
    const hasPreferredDimensions = (
        typeof data.preferredWidth === 'number' ||
        typeof data.preferredHeight === 'number'
    );
    // HoshiDicts keeps Sanseido's em dimensions in width/height, while
    // Yomitan's exporter expects them in preferredWidth/preferredHeight to
    // activate the data-size-units=em CSS rule.
    if (
        data.sizeUnits === 'em' &&
        !hasPreferredDimensions &&
        typeof data.width === 'number' &&
        data.width > 0 &&
        typeof data.height === 'number' &&
        data.height > 0
    ) {
        return {
            ...data,
            preferredWidth: data.width,
            preferredHeight: data.height,
        };
    }
    // Some dictionary term banks encode inline SVGs as 0x0 even though the
    // media has a valid viewBox. Export them as one em of width, preserving
    // the SVG aspect ratio; otherwise Anki receives an invisible 0x0 image.
    if (
        /.svg$/i.test(data.path) &&
        hasInvalidDeclaredDimensions &&
        (!isGaiji || data.sizeUnits === 'em') &&
        naturalSize.width > 0 &&
        naturalSize.height > 0
    ) {
        return {
            ...data,
            preferredWidth: 1,
            preferredHeight: naturalSize.height / naturalSize.width,
            sizeUnits: 'em',
        };
    }

    // Yomitan's dictionary gaiji records carry source metrics (normally
    // 150x150) which are independent of the SVG viewBox (often 1024x1024).
    // HoshiDicts may omit those metrics, so never turn the internal viewBox
    // into a 1024em card image. Recreate Yomitan's 150px source default while
    // preserving non-square aspect ratios.
    const hasPositiveDeclaredDimensions = [
        data.preferredWidth,
        data.preferredHeight,
        data.width,
        data.height,
    ].some((value) => typeof value === 'number' && value > 0);
    if (
        isGaiji &&
        data.sizeUnits !== 'em' &&
        !hasPositiveDeclaredDimensions &&
        naturalSize.width > 0 &&
        naturalSize.height > 0
    ) {
        const gaijiWidth = 150;
        return {
            ...data,
            width: gaijiWidth,
            height: gaijiWidth * naturalSize.height / naturalSize.width,
        };
    }

    const hasPreferredWidth = typeof data.preferredWidth === 'number';
    const hasPreferredHeight = typeof data.preferredHeight === 'number';
    const hasDimensions = (
        hasPreferredWidth ||
        hasPreferredHeight ||
        typeof data.width === 'number' ||
        typeof data.height === 'number'
    );
    if (!hasDimensions) {
        return {...data, width: naturalSize.width, height: naturalSize.height};
    }

    const width = typeof data.width === 'number' ? data.width : 100;
    const height = typeof data.height === 'number' ? data.height : 100;
    const inverseAspectRatio = (
        hasPreferredWidth && hasPreferredHeight
            ? data.preferredHeight / data.preferredWidth
            : height / width
    );
    if (!hasMismatchedAspectRatio(naturalSize.width, naturalSize.height, inverseAspectRatio)) {
        return data;
    }
    const fittedSize = fitNaturalImageInsideDeclaredBounds(data, naturalSize);
    const result = {...data, width: fittedSize.width, height: fittedSize.height};
    delete result.preferredWidth;
    delete result.preferredHeight;
    return result;
}

function prepareContentImages(content, dictionary, getNaturalImageSize) {
    if (Array.isArray(content)) {
        return content.map((item) => prepareContentImages(item, dictionary, getNaturalImageSize));
    }
    if (!(typeof content === 'object' && content !== null)) {
        return content;
    }
    let result = content;
    if (content.type === 'image' || content.tag === 'img') {
        result = applyNaturalImageSize(content, dictionary, getNaturalImageSize);
    }
    if (Object.prototype.hasOwnProperty.call(result, 'content')) {
        result = {
            ...result,
            content: prepareContentImages(result.content, dictionary, getNaturalImageSize),
        };
    }
    return result;
}

function repairZeroSizedImageIntrinsicDimensions(element) {
    if ((element?.tagName || '').toLowerCase() !== 'img') {
        return;
    }
    const container = element.parentElement;
    const widthEm = Number.parseFloat(container?.style?.width || '');
    const source = String(
        element.src ||
        element.getAttribute?.('src') ||
        container?.parentElement?.dataset?.path ||
        '',
    );
    const isInlineEmSvg = /\.svg(?:$|[?#])/i.test(source) && widthEm > 0 && widthEm <= 2;
    if (container && isInlineEmSvg && Number.isFinite(widthEm)) {
        const styleText = container.getAttribute('style') || container.style.cssText || '';
        if (!/font-size:\s*1em/.test(styleText)) {
            container.setAttribute('style', `${styleText}font-size:1em;`);
        }
    }
    const width = Number(element.width);
    const height = Number(element.height);
    const shouldNormalizeInlineSvg = isInlineEmSvg && Number.isFinite(widthEm);
    if (!shouldNormalizeInlineSvg && Number.isFinite(width) && width > 0 && Number.isFinite(height) && height > 0) {
        return;
    }
    const sizer = container?.firstElementChild || container?.children?.[0];
    const inverseAspectRatio = Number.parseFloat(sizer?.style?.paddingTop || '') / 100;
    // Yomitan's Anki export uses a 24px em estimate and a 2x backing scale.
    // Use that same positive backing size when the host WebView reports DPR 0.
    const emPixels = shouldNormalizeInlineSvg && widthEm > 0 ? widthEm * 48 : 48;
    const ratio = Number.isFinite(inverseAspectRatio) && inverseAspectRatio > 0
        ? inverseAspectRatio
        : 1;
    element.width = Math.max(1, Math.round(emPixels));
    element.height = Math.max(1, Math.round(element.width * ratio));
}

// BUG-1085 遗留：vendored StructuredContentGenerator.createDefinitionImage 对非 SVG
// 图片的 `<img>` width/height 属性只用词典声明的 usedWidth 推算（sizeUnits=em 时是
// usedWidth*emSize*2*dpr，其余是 usedWidth 本身），拿不到图片真实像素。Yomitan 浏览器
// 插件在弹窗里图片真实加载后以 naturalWidth/Height 导出，所以卡片里图片尺寸正确；
// Mizore 在独立查词窗制卡（bare WebView2）没有这个加载事件，只能靠 host 的
// getDictionaryMediaNaturalSizes 桥 hydrate 出真实尺寸。这里在 createDefinitionImage
// 生成节点后把非 SVG 图片的 `<img>` 覆盖成 hydrate 到的真实像素；外层容器 em 尺寸
// 仍由词典声明（preferredWidth/usedWidth）决定，与 Yomitan 一致，不被改动。
// （GPT 候选已把 applyNaturalImageSize 扩展覆盖 SVG 零尺寸/gaiji/em；本 patch 与之
// 互补，只负责非 SVG 常规图在 img 层落到真实像素。）
function findGlossImage(node) {
    for (const child of node?.children ?? []) {
        if (typeof child?.className === 'string' && child.className.split(/\s+/).includes('gloss-image')) {
            return child;
        }
        const found = findGlossImage(child);
        if (found) { return found; }
    }
    return null;
}

const _origCreateDefinitionImage = StructuredContentGenerator.prototype.createDefinitionImage;
StructuredContentGenerator.prototype.createDefinitionImage = function(data, dictionary) {
    const node = _origCreateDefinitionImage.call(this, data, dictionary);
    // 修复：词典 structured-content 声明 sizeUnits='em' 但把 em 尺寸放在 width/height
    // 字段（preferredWidth/Height 为 null，如「語彙力・二字熟語の百科事典」谚语图
    // w=6.92 h=10）。vendored createDefinitionImage 只在 (hasPreferredWidth ||
    // hasPreferredHeight) 时才设 node.dataset.sizeUnits，于是 data-sizeUnits 缺失 →
    // CSSOM [data-size-units=em] 的 font-size:1em 不应用 → 容器停留在基础 font-size:1px
    // → 6.92em 按 1px 算 = 6.92px，卡片图极小（用户对照 Yomitan 卡复测，BUG-1085 系列）。
    // 这里按声明的 sizeUnits 无条件补 data-sizeUnits，让 1em 规则生效（对齐 Yomitan）。
    if (typeof data?.sizeUnits === 'string' && !node.dataset.sizeUnits) {
        node.dataset.sizeUnits = data.sizeUnits;
    }
    const query = _activeNaturalSizeQuery;
    let natural = null;
    if (
        query &&
        typeof data?.path === 'string' &&
        !/\.svg$/i.test(data.path)
    ) {
        natural = query(dictionary, data.path);
        if (
            natural &&
            Number.isFinite(natural.width) &&
            natural.width > 0 &&
            Number.isFinite(natural.height) &&
            natural.height > 0
        ) {
            const img = findGlossImage(node);
            if (img) {
                img.width = natural.width;
                img.height = natural.height;
            }
        }
    }
    return node;
};

// 制卡导出当前一次 render 要用的 natural-size 查询回调（options.getNaturalImageSize），
// 供 [StructuredContentGenerator.prototype.createDefinitionImage] 的 patch 读取。
let _activeNaturalSizeQuery = null;

function createStyleApplier(rawStyleData) {
    const styleApplier = new CssStyleApplier('');
    styleApplier._styleData = rawStyleData.map(({selectors, styles}) => ({
        selectors: selectors.join(','),
        styles: styles.map(([property, value]) => ({property, value})),
    }));
    return styleApplier;
}

class HibikiYomitanMediaProvider {
    constructor(getMediaFilename) {
        this._getMediaFilename = getMediaFilename;
    }

    getMedia(_data, path, args) {
        if (
            !Array.isArray(path) ||
            path.length !== 2 ||
            path[0] !== 'dictionaryMedia' ||
            typeof path[1] !== 'string' ||
            typeof args?.dictionary !== 'string'
        ) {
            return args?.default ?? null;
        }
        return this._getMediaFilename(args.dictionary, path[1]);
    }
}

export class HibikiYomitanGlossaryRenderer {
    constructor(document, window, rawStyleData) {
        this._document = document;
        this._window = window;
        this._styleApplier = createStyleApplier(rawStyleData);
    }

    render(entry, options) {
        const previousQuery = _activeNaturalSizeQuery;
        _activeNaturalSizeQuery = (
            options && typeof options.getNaturalImageSize === 'function'
                ? options.getNaturalImageSize
                : null
        );
        try {
            const definitions = this._createDefinitions(entry, options);
            const glossaryItems = definitions.map((definition) => this._renderDefinition(definition, options));
            const glossary = this._wrapGlossary(glossaryItems.join(''));

            const singleItems = new Map();
            for (let i = 0; i < definitions.length; ++i) {
                const definition = definitions[i];
                let items = singleItems.get(definition.dictionary);
                if (typeof items === 'undefined') {
                    items = [];
                    singleItems.set(definition.dictionary, items);
                }
                items.push(glossaryItems[i]);
            }
            const singleGlossaries = {};
            for (const [dictionary, items] of singleItems) {
                singleGlossaries[dictionary] = this._wrapGlossary(items.join(''));
            }
            return {glossary, singleGlossaries};
        } finally {
            _activeNaturalSizeQuery = previousQuery;
        }
    }

    _createDefinitions(entry, options) {
        const hiddenDictionaries = new Set(options.hiddenDictionaryNames || []);
        const definitions = [];
        for (const glossary of entry?.glossaries || []) {
            const dictionary = typeof glossary?.dictionary === 'string' ? glossary.dictionary : '';
            if (dictionary.length === 0 || hiddenDictionaries.has(dictionary)) {
                continue;
            }
            let content = parseGlossaryContent(glossary.content);
            content = prepareContentImages(content, dictionary, options.getNaturalImageSize);
            const parsedTags = typeof options.parseTags === 'function'
                ? options.parseTags(glossary.definitionTags)
                : [];
            const tags = Array.isArray(parsedTags)
                ? parsedTags.filter((tag) => (
                    typeof tag === 'string' &&
                    !(options.numericTagPattern instanceof RegExp && options.numericTagPattern.test(tag))
                ))
                : [];
            definitions.push({dictionary, content, tags});
        }
        return definitions;
    }

    _renderDefinition(definition, options) {
        const dictionaryAttribute = escapeHtml(definition.dictionary);
        const labelParts = [...definition.tags, definition.dictionary];
        const label = labelParts.length > 0
            ? `<i>(${labelParts.map(escapeHtml).join(', ')})</i> `
            : '';
        const content = this._formatGlossary(
            definition.content,
            definition.dictionary,
            options.getMediaFilename,
        );
        const scopedStyles = this._createScopedStyles(definition.dictionary, options);
        const style = scopedStyles.length > 0 ? `<style>${scopedStyles}</style>` : '';
        return `<li data-dictionary="${dictionaryAttribute}">${label}${content}</li>${style}`;
    }

    _formatGlossary(content, dictionary, getMediaFilename) {
        if (typeof content === 'string') {
            return stringToMultiLineHtml(content);
        }
        // HoshiDicts keeps Yomitan's glossary array around each individual
        // glossary record, so structured entries arrive as
        // [{type: "structured-content", content: [...]}]. Passing that outer
        // array directly to StructuredContentGenerator treats the wrapper as a
        // structured node (it has no tag) and produces an empty <span>. Render
        // only this top-level glossary-wrapper shape item-by-item; raw
        // structured-content arrays (tables, links, form-of pairs, etc.) still
        // go through Yomitan unchanged below.
        if (
            Array.isArray(content) &&
            content.some((item) => (
                typeof item === 'object' &&
                item !== null &&
                (
                    item.type === 'structured-content' ||
                    item.type === 'image' ||
                    item.type === 'text'
                )
            ))
        ) {
            return content
                .map((item) => this._formatGlossary(item, dictionary, getMediaFilename))
                .join('');
        }
        if (!(typeof content === 'object' && content !== null)) {
            return '';
        }

        const mediaProvider = new HibikiYomitanMediaProvider(getMediaFilename);
        const contentManager = new AnkiTemplateRendererContentManager(mediaProvider, {});
        const generator = new StructuredContentGenerator(
            contentManager,
            this._document,
            this._window,
        );
        let node = null;
        switch (content.type) {
            case 'image':
                node = generator.createDefinitionImage(content, dictionary);
                break;
            case 'structured-content':
                node = generator.createStructuredContent(content.content, dictionary);
                break;
            case 'text':
                return stringToMultiLineHtml(content.text);
            default:
                // HoshiDicts preserves older Yomitan entries as their raw structured
                // content array/tag instead of wrapping them in
                // {type:"structured-content", content:...}.
                node = generator.createStructuredContent(content, dictionary);
                break;
        }
        if (node === null) {
            return '';
        }
        const container = this._document.createElement('div');
        container.appendChild(node);
        this._normalizeHtml(container);
        return container.innerHTML;
    }

    _normalizeHtml(root) {
        const nodeFilter = this._window.NodeFilter || globalThis.NodeFilter;
        const treeWalker = this._document.createTreeWalker(
            root,
            nodeFilter.SHOW_ELEMENT | nodeFilter.SHOW_TEXT,
        );
        const elements = [];
        const textNodes = [];
        while (true) {
            const node = treeWalker.nextNode();
            if (node === null) {
                break;
            }
            if (node.nodeType === this._document.ELEMENT_NODE) {
                elements.push(node);
            } else if (node.nodeType === this._document.TEXT_NODE) {
                textNodes.push(node);
            }
        }
        this._styleApplier.applyClassStyles(elements);
        for (const element of elements) {
            repairZeroSizedImageIntrinsicDimensions(element);
            for (const key of Object.keys(element.dataset)) {
                if (STRUCTURED_CONTENT_DATASET_KEY_PATTERN.test(key)) {
                    continue;
                }
                delete element.dataset[key];
            }
        }
        for (const textNode of textNodes) {
            this._replaceNewlines(textNode);
        }
    }

    _replaceNewlines(textNode) {
        const parts = String(textNode.nodeValue).split('\n');
        if (parts.length <= 1 || textNode.parentNode === null) {
            return;
        }
        const fragment = this._document.createDocumentFragment();
        for (let i = 0; i < parts.length; ++i) {
            if (i > 0) {
                fragment.appendChild(this._document.createElement('br'));
            }
            fragment.appendChild(this._document.createTextNode(parts[i]));
        }
        textNode.parentNode.replaceChild(fragment, textNode);
    }

    _createScopedStyles(dictionary, options) {
        const dictionaryCss = options.dictionaryStyles?.[dictionary];
        let result = '';
        if (typeof dictionaryCss === 'string' && dictionaryCss.length > 0) {
            const sanitized = sanitizeCSS(dictionaryCss);
            const dictionarySelector = `[data-dictionary="${escapeDictionarySelectorValue(dictionary)}"]`;
            result = addScopeToCssLegacy(
                addScopeToCssLegacy(sanitized, dictionarySelector),
                '.yomitan-glossary',
            );
        }
        if (options.compactGlossaries && options.compactGlossaryCss) {
            result += addScopeToCssLegacy(options.compactGlossaryCss, '.yomitan-glossary');
        }
        return result;
    }

    _wrapGlossary(items) {
        return `<div style="text-align: left;" class="yomitan-glossary"><ol>${items}</ol></div>`;
    }
}
