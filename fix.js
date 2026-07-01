// Bozuk key'leri düzelt ve scripti tekrar yaz
const fs = require('fs');
const p = require('path');
const f = p.join(__dirname, 'add_examples.js');
let c = fs.readFileSync(f, 'utf8');

// Pattern: EX["  + newlines + word"] -> EX["word"]
// Multiline key düzelt
c = c.replace(/EX\["[\s\n\r]+/g, 'EX["');

fs.writeFileSync(f, c, 'utf8');
console.log('Duzeltildi! Simdi node add_examples.js calistirin.');
