const fs = require('fs');
const path = require('path');
const FILE = path.join(__dirname, 'assets', 'oxford3000.json');
let raw = fs.readFileSync(FILE, 'utf8');
raw = raw.replace(/^\uFEFF/, '');
const words = JSON.parse(raw);

let emptyE = 0, emptyT = 0, emptyBoth = 0, ok = 0;
for (const w of words) {
  const e = (w.e || '').trim();
  const t = (w.t || '').trim();
  if (!e && !t) emptyBoth++;
  else if (!e) emptyE++;
  else if (!t) emptyT++;
  else ok++;
}
console.log('Toplam: ' + words.length);
console.log('Gecerli (e+t dolu): ' + ok);
console.log('e bos: ' + emptyE);
console.log('t bos: ' + emptyT);
console.log('ikisi de bos: ' + emptyBoth);

// Kategorilere gore say
const cats = {};
for (const w of words) {
  const e = (w.e || '').trim();
  const t = (w.t || '').trim();
  if (!e || !t) continue;
  const l = (w.l || 'B1').trim();
  const cat = 'Oxford ' + l + ' Seviyesi';
  cats[cat] = (cats[cat] || 0) + 1;
}
console.log('\nKategoriler:');
for (const [k, v] of Object.entries(cats)) {
  console.log('  ' + k + ': ' + v);
}
