// Regression test for the Anki mining path: popup.js must use the Fushi
// Yomitan renderer and hydrate dictionary-media dimensions before the final
// glossary HTML is written.
//
// Run: node fushi/test/pages/popup_glossary_mine_media_wiring_test.js

const assert = require('assert');
const fs = require('fs');
const path = require('path');
const vm = require('vm');

const asset = (name) => path.resolve(__dirname, '../../assets/popup', name);
const source = [
    fs.readFileSync(asset('dict-media.js'), 'utf8'),
    fs.readFileSync(asset('yomitan-glossary-renderer.js'), 'utf8'),
    fs.readFileSync(asset('popup.js'), 'utf8'),
].join('\n');

function serialize(element) {
    if (element._textNode) return String(element.textContent);
    const attrs = [];
    if (element.className) attrs.push(`class="${element.className}"`);
    if (element.style?.cssText) attrs.push(`style="${element.style.cssText}"`);
    for (const name of ['width', 'height', 'src', 'href', 'alt', 'title']) {
        if (element._attrs?.[name] !== undefined) {
            attrs.push(`${name}="${element._attrs[name]}"`);
        }
    }
    const tag = String(element.tagName).toLowerCase();
    const inner = element.children.map(serialize).join('');
    return `<${tag}${attrs.length ? ` ${attrs.join(' ')}` : ''}>${inner}</${tag}>`;
}

function makeElement(tag) {
    const element = {
        tagName: (tag || 'div').toUpperCase(),
        textContent: '',
        _textNode: false,
        _innerHTML: null,
        _attrs: {},
        style: {
            cssText: '',
            setProperty(name, value) { this.cssText += `${name}:${value};`; },
            removeProperty() {},
        },
        dataset: {},
        children: [],
        classList: {
            _set: new Set(),
            add(name) { this._set.add(name); },
            remove(name) { this._set.delete(name); },
            contains(name) { return this._set.has(name); },
        },
        appendChild(child) { this.children.push(child); return child; },
        append(...nodes) { this.children.push(...nodes); },
        setAttribute(name, value) { this._attrs[name] = String(value); },
        getAttribute(name) { return this._attrs[name] ?? null; },
        hasAttribute(name) { return this._attrs[name] !== undefined; },
        removeAttribute(name) { delete this._attrs[name]; },
        addEventListener() {},
        querySelectorAll() { return []; },
        querySelector() { return null; },
        closest() { return null; },
        get firstChild() { return this.children[0] || null; },
    };
    Object.defineProperty(element, 'innerHTML', {
        get() { return this._innerHTML ?? serialize(element); },
        set(value) { this._innerHTML = String(value); },
    });
    for (const name of ['width', 'height', 'src', 'href', 'alt', 'title']) {
        Object.defineProperty(element, name, {
            get() { return this._attrs[name]; },
            set(value) { this._attrs[name] = value; },
        });
    }
    return element;
}

function makeSandbox() {
    const documentObj = {
        documentElement: {style: {}, classList: makeElement().classList},
        ELEMENT_NODE: 1,
        TEXT_NODE: 3,
        head: {appendChild() {}},
        body: makeElement('body'),
        getElementById() { return null; },
        querySelector() { return null; },
        querySelectorAll() { return []; },
        createElement(tag) { return makeElement(tag); },
        createTextNode(text) {
            const node = makeElement('#text');
            node._textNode = true;
            node.textContent = text;
            return node;
        },
        createTreeWalker() { return {nextNode() { return null; }}; },
        addEventListener() {},
    };
    const calls = [];
    const windowObj = {
        audioSources: [],
        needsAudio: false,
        lookupEntries: [],
        dictionaryStyles: {},
        hiddenDictionaryNames: [],
        compactGlossariesAnki: false,
        embedMedia: true,
        useAnkiConnect: true,
        devicePixelRatio: 2,
        innerWidth: 800,
        NodeFilter: {SHOW_ELEMENT: 1, SHOW_TEXT: 4},
        getSelection() { return {toString() { return ''; }}; },
        addEventListener() {},
        flutter_inappwebview: {
            callHandler(name, payload) {
                calls.push({name, payload});
                if (name === 'getDictionaryMediaNaturalSizes') {
                    return Promise.resolve([{
                        dictionary: 'ImgDict',
                        path: 'img/pic.png',
                        width: 339,
                        height: 489,
                    }]);
                }
                return Promise.resolve(false);
            },
        },
    };
    documentObj.defaultView = windowObj;
    const sandbox = {
        Node: {TEXT_NODE: 3, ELEMENT_NODE: 1},
        NodeFilter: {SHOW_ELEMENT: 1, SHOW_TEXT: 4},
        Date, Math, URL, JSON, RegExp, Set, Map, Object, Array, console,
        performance: {now() { return 0; }},
        setTimeout, clearTimeout,
        DOMParser: class {
            parseFromString() {
                return {body: makeElement('body'), querySelectorAll() { return []; }};
            }
        },
        document: documentObj,
        window: windowObj,
        getComputedStyle() { return {}; },
    };
    sandbox.globalThis = sandbox;
    return {sandbox, calls};
}

(async function run() {
    const {sandbox, calls} = makeSandbox();
    vm.createContext(sandbox);
    const entry = {
        expression: '猫',
        reading: 'ねこ',
        glossaries: [{
            dictionary: 'ImgDict',
            content: [{type: 'image', path: 'img/pic.png', width: 6, height: 8}],
            definitionTags: '',
            termTags: '',
        }],
        frequencies: [],
        pitches: [],
    };
    vm.runInContext(source + `
        window.lookupEntries = [${JSON.stringify(entry)}];
        window.__testBuildMinePayload = () => buildMinePayload(
            '猫', 'ねこ', [], [], [], 'matched', 0, '');
    `, sandbox, {filename: 'popup.js'});

    const payload = await vm.runInContext('window.__testBuildMinePayload()', sandbox);
    assert.ok(
        calls.some((call) => call.name === 'getDictionaryMediaNaturalSizes'),
        'mining must hydrate native dictionary-media dimensions',
    );
    assert.match(
        payload.glossary,
        /width="339"[^>]*height="489"/,
        'final glossary must use native media dimensions',
    );
    assert.doesNotMatch(
        payload.glossary,
        /width="6"[^>]*height="8"/,
        'the first-pass declared fallback must not survive final export',
    );
    assert.deepStrictEqual(
        JSON.parse(payload.dictionaryMedia),
        [{dictionary: 'ImgDict', path: 'img/pic.png', filename: 'fushi_dict_0.png'}],
        'native hydration must keep the media upload manifest',
    );
    console.log('popup_glossary_mine_media_wiring_test.js: all assertions passed');
})();
