// Regression test for dictionary-image export: the Yomitan renderer must use
// native media dimensions supplied by the host before writing Anki HTML.
//
// Run: node hibiki/test/pages/popup_glossary_image_natural_size_test.js

const assert = require('assert');
const fs = require('fs');
const path = require('path');
const vm = require('vm');

const dictMediaPath = path.resolve(__dirname, '../../assets/popup/dict-media.js');
const yomitanRendererPath = path.resolve(
  __dirname,
  '../../assets/popup/yomitan-glossary-renderer.js',
);
const popupPath = path.resolve(__dirname, '../../assets/popup/popup.js');
const source = fs.readFileSync(dictMediaPath, 'utf8') + '\n' +
  fs.readFileSync(yomitanRendererPath, 'utf8') + '\n' +
  fs.readFileSync(popupPath, 'utf8');

function serialize(element) {
  if (element._textNode) return String(element.textContent);
  const attrs = [];
  if (element.className) attrs.push(`class="${element.className}"`);
  if (element.style?.cssText) attrs.push(`style="${element.style.cssText.trim()}"`);
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
    className: '',
    id: '',
    textContent: '',
    _attrs: {},
    _textNode: false,
    style: {
      cssText: '',
      setProperty(name, value) { this.cssText += `${name}: ${value}; `; },
      setPropertyValue() {},
      removeProperty() {},
    },
    dataset: {},
    children: [],
    attributes: [],
    classList: {
      _set: new Set(),
      add(name) { this._set.add(name); },
      remove(name) { this._set.delete(name); },
      contains(name) { return this._set.has(name); },
    },
    appendChild(child) { this.children.push(child); return child; },
    append(...nodes) { this.children.push(...nodes); },
    setAttribute(name, value) { this._attrs[name] = value; },
    getAttribute(name) { return this._attrs[name] ?? null; },
    hasAttribute(name) { return this._attrs[name] !== undefined; },
    removeAttribute(name) { delete this._attrs[name]; },
    addEventListener() {},
    querySelectorAll() { return []; },
    querySelector() { return null; },
    closest() { return null; },
    get firstChild() { return this.children.length ? this.children[0] : null; },
  };
  for (const name of ['width', 'height', 'src', 'href', 'alt', 'title']) {
    Object.defineProperty(element, name, {
      get() { return this._attrs[name]; },
      set(value) { this._attrs[name] = value; },
    });
  }
  Object.defineProperty(element, 'innerHTML', {
    get() { return serialize(element); },
    set(value) { element._inner = value; },
  });
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
  const windowObj = {
    audioSources: [],
    needsAudio: false,
    lookupEntries: [],
    dictionaryStyles: {},
    hiddenDictionaryNames: [],
    collapsedDictionaryNames: [],
    compactGlossariesAnki: false,
    embedMedia: true,
    devicePixelRatio: 2,
    innerWidth: 400,
    NodeFilter: {SHOW_ELEMENT: 1, SHOW_TEXT: 4},
    flutter_inappwebview: {callHandler() { return Promise.resolve(false); }},
    getSelection() { return {toString() { return ''; }}; },
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
  return sandbox;
}

function renderImage(imageData, naturalSize) {
  const sandbox = makeSandbox();
  vm.createContext(sandbox);
  vm.runInContext(source, sandbox, {filename: 'popup.js'});
  const renderer = sandbox.__hibikiYomitanGlossaryRenderer;
  const entry = {
    glossaries: [{
      dictionary: 'ImgDict',
      content: [{type: 'image', ...imageData}],
      definitionTags: '',
      termTags: '',
    }],
  };
  return renderer.render(entry, {
    dictionaryStyles: {},
    hiddenDictionaryNames: [],
    compactGlossaries: false,
    compactGlossaryCss: '',
    parseTags: () => [],
    numericTagPattern: /^\d+$/,
    getNaturalImageSize: () => naturalSize,
    getMediaFilename: (dictionary, mediaPath) =>
      `hoshi_dict_0.${mediaPath.split('.').pop()}`,
  }).glossary;
}

function renderContent(content) {
  const sandbox = makeSandbox();
  vm.createContext(sandbox);
  vm.runInContext(source, sandbox, {filename: 'popup.js'});
  return sandbox.__hibikiYomitanGlossaryRenderer.render({
    glossaries: [{
      dictionary: 'StructuredDict',
      content,
      definitionTags: '',
      termTags: '',
    }],
  }, {
    dictionaryStyles: {},
    hiddenDictionaryNames: [],
    compactGlossaries: false,
    compactGlossaryCss: '',
    parseTags: () => [],
    numericTagPattern: /^\d+$/,
    getNaturalImageSize: () => null,
    getMediaFilename: () => null,
  }).glossary;
}

(function run() {
  {
    const html = renderImage(
      {path: 'img/pic.png', width: 6, height: 8},
      {width: 339, height: 489},
    );
    assert.match(html, /<img[^>]*width="339"[^>]*height="489"/);
    assert.doesNotMatch(html, /<img[^>]*width="6"/);
  }

  {
    const html = renderImage(
      {
        path: 'img/pic.png',
        width: 6,
        height: 8,
        preferredWidth: 6.92,
        preferredHeight: 10,
        sizeUnits: 'em',
      },
      {width: 339, height: 489},
    );
    assert.match(html, /<img[^>]*width="339"[^>]*height="489"/);
  }

  {
    const html = renderImage({path: 'img/pic.png', width: 6, height: 8}, null);
    assert.match(html, /<img[^>]*width="6"[^>]*height="8"/);
  }

  {
    const html = renderImage({path: 'img/pic.png'}, {width: 339, height: 489});
    assert.match(html, /<img[^>]*width="339"[^>]*height="489"/);
  }

  {
    // HoshiDicts wraps structured content in a JSON string containing an outer
    // structured-content record. The wrapper must be unwrapped without losing
    // nested table structure or ordinary text.
    const html = renderContent(JSON.stringify([{
      type: 'structured-content',
      content: [
        {tag: 'div', content: '说明文字'},
        {tag: 'table', content: [{
          tag: 'tr',
          content: [{tag: 'td', content: '单元格'}],
        }]},
      ],
    }]));
    assert.match(html, /说明文字/);
    assert.match(html, /<table/);
    assert.match(html, /<td[^>]*>单元格/);
  }

  console.log('popup_glossary_image_natural_size_test.js: all assertions passed');
})();
