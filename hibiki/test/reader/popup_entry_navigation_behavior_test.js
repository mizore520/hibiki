// Alt+wheel entry-navigation behavior harness. It executes the real popup.js
// navigation code against a small DOM stand-in so the tests cover both the
// visible entry position and the transition from the first entry to page top.
// The Dart wrapper runs this file with node when node is available.

const assert = require('assert');
const fs = require('fs');
const path = require('path');
const vm = require('vm');

const popupPath = path.resolve(__dirname, '../../assets/popup/popup.js');
const popupSrc = fs.readFileSync(popupPath, 'utf8');

class FakeClassList {
  constructor() {
    this.values = new Set();
  }

  add(name) {
    this.values.add(name);
  }

  remove(name) {
    this.values.delete(name);
  }

  contains(name) {
    return this.values.has(name);
  }
}

class FakeEntry {
  constructor(label) {
    this.label = label;
    this.nodeType = 1;
    this.classList = new FakeClassList();
    this.attributes = {};
    this.scrollIntoViewCalls = [];
  }

  setAttribute(name, value) {
    this.attributes[name] = String(value);
  }

  scrollIntoView(options) {
    this.scrollIntoViewCalls.push(options);
  }
}

function makeContext(entryCount) {
  const listeners = {};
  const entries = Array.from(
    {length: entryCount},
    (_, index) => new FakeEntry('entry-' + index),
  );
  const container = {
    querySelectorAll(selector) {
      assert.equal(selector, ':scope > .entry');
      return entries;
    },
  };
  const documentElement = {style: {zoom: '1'}, scrollTop: 0};
  const body = {
    nodeType: 1,
    style: {},
    scrollHeight: 1000000,
    clientHeight: 400,
    scrollTop: 0,
  };
  const noopElement = () => ({
    tagName: 'DIV',
    nodeType: 1,
    style: {},
    dataset: {},
    children: [],
    classList: new FakeClassList(),
    appendChild() {},
    append() {},
    addEventListener() {},
    setAttribute() {},
    querySelector() { return null; },
  });
  let scrollY = 0;
  const win = {
    devicePixelRatio: 1,
    innerWidth: 360,
    innerHeight: 640,
    scrollTo(x, y) {
      scrollY = typeof x === 'object' ? (x.top || 0) : (y || 0);
    },
    scrollBy(options) {
      scrollY += options && typeof options.top === 'number' ? options.top : 0;
    },
    get scrollY() {
      return scrollY;
    },
    getSelection() {
      return {toString() { return ''; }, removeAllRanges() {}};
    },
    getComputedStyle() {
      return {overflowY: 'visible', fontSize: '15px'};
    },
    flutter_inappwebview: {
      callHandler() { return Promise.resolve(true); },
    },
  };
  const document = {
    body,
    documentElement,
    addEventListener(type, handler) {
      (listeners[type] = listeners[type] || []).push(handler);
    },
    createElement() { return noopElement(); },
    createTextNode(text) {
      return {nodeType: 3, textContent: String(text)};
    },
    createRange() {
      return {setStart() {}, setEnd() {}};
    },
    caretRangeFromPoint() { return null; },
    querySelector() { return null; },
    getElementById(id) {
      return id === 'entries-container' ? container : null;
    },
  };
  const context = {
    console,
    document,
    window: win,
    performance: {now() { return 1000; }},
    getComputedStyle() {
      return {overflowY: 'visible', fontSize: '15px'};
    },
    setTimeout() { return 0; },
    clearTimeout() {},
    requestAnimationFrame() { return 0; },
    Node: {TEXT_NODE: 3},
    Image: class { addEventListener() {} set src(_value) {} },
    event: null,
  };
  context.globalThis = context;
  win.window = win;
  context.__listeners = listeners;
  context.__entries = entries;
  context.__win = win;
  context.__documentElement = documentElement;
  context.__body = body;
  return context;
}

function loadPopup(entryCount = 3) {
  const context = makeContext(entryCount);
  vm.runInNewContext(popupSrc, context, {filename: popupPath});
  return context;
}

function currentIndex(context) {
  return context.__entries.findIndex(
    (entry) => entry.classList.contains('entry-current'),
  );
}

function fireAltWheel(context, deltaY) {
  let prevented = false;
  const target = context.__body;
  const event = {
    deltaY,
    deltaX: 0,
    deltaMode: 0,
    altKey: true,
    ctrlKey: false,
    shiftKey: false,
    metaKey: false,
    target,
    preventDefault() { prevented = true; },
    composedPath() { return [target]; },
  };
  for (const handler of context.__listeners.wheel || []) handler(event);
  return prevented;
}

const tests = [];
const test = (name, fn) => tests.push([name, fn]);

test('each target entry is aligned from its opening position', () => {
  const context = loadPopup(3);
  const move = context.__win.hoshiFocusDictionaryEntryMove;

  assert.equal(move('next'), 'moved');
  assert.equal(currentIndex(context), 0);
  assert.deepEqual(context.__entries[0].scrollIntoViewCalls[0], {
    block: 'start', inline: 'nearest',
  });

  assert.equal(move('next'), 'moved');
  assert.equal(currentIndex(context), 1);
  assert.deepEqual(context.__entries[1].scrollIntoViewCalls[0], {
    block: 'start', inline: 'nearest',
  });

  assert.equal(move('next'), 'moved');
  assert.equal(currentIndex(context), 2);
  assert.deepEqual(context.__entries[2].scrollIntoViewCalls[0], {
    block: 'start', inline: 'nearest',
  });
});

test('first entry + Alt+up returns to true top and Alt+down re-enters first entry', () => {
  const context = loadPopup(3);

  assert.equal(fireAltWheel(context, 120), true);
  assert.equal(currentIndex(context), 0);

  // Simulate the user having the current first entry below the document top.
  context.__win.scrollTo(0, 240);
  context.__documentElement.scrollTop = 240;
  context.__body.scrollTop = 240;

  assert.equal(fireAltWheel(context, -120), true);
  assert.equal(currentIndex(context), -1,
    'top state must not leave the triangle on the first entry');
  assert.equal(context.__win.scrollY, 0);
  assert.equal(context.__documentElement.scrollTop, 0);
  assert.equal(context.__body.scrollTop, 0);

  assert.equal(fireAltWheel(context, 120), true);
  assert.equal(currentIndex(context), 0,
    'down from true top must start at the first entry, not skip it');
});

test('last entry keeps the normal boundary path instead of creating bottom padding', () => {
  const context = loadPopup(2);
  const move = context.__win.hoshiFocusDictionaryEntryMove;

  assert.equal(move('next'), 'moved');
  assert.equal(move('next'), 'moved');
  assert.equal(currentIndex(context), 1);
  assert.equal(move('next'), 'blocked');
  assert.equal(currentIndex(context), 1,
    'the last entry remains the current entry at the normal bottom boundary');
  assert.equal(context.__win.scrollY, 0,
    'navigation must not synthesize an extra scroll range');
});

let failed = 0;
for (const [name, fn] of tests) {
  try {
    fn();
    console.log('  ok - ' + name);
  } catch (error) {
    failed++;
    console.error('  FAIL - ' + name + ': ' + (error && error.message));
  }
}
if (failed) {
  console.error(failed + ' assertion group(s) failed');
  process.exit(1);
}
console.log('all assertions passed');
