// Bu script add_examples.js dosyasını düzeltir ve çalıştırır
const fs = require('fs');
const path = require('path');

const scriptPath = path.join(__dirname, 'add_examples.js');
let content = fs.readFileSync(scriptPath, 'utf8');

// Hatalı key pattern'lerini düzelt: "\n\n\nword" -> "word"
// Pattern: tırnak + newline'lar + kelime + tırnak
content = content.replace(/"\s*\n+\s*/g, '"');

fs.writeFileSync(scriptPath, content, 'utf8');
console.log('add_examples.js düzeltildi, şimdi çalıştırılıyor...');

// Düzeltilmiş scripti çalıştır
require('./add_examples.js');
