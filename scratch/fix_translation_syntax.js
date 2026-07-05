const fs = require('fs');
const path = require('path');

const filePath = path.join(__dirname, '../lib/data/translation_data.dart');
let content = fs.readFileSync(filePath, 'utf8');

// The file is currently broken because it's missing '];' at the end.
// First, let's fix 'options: [' to 'options: const [' for the newly added items.
// Newly added items might not have 'const' before '['.
content = content.replace(/options:\s*\[/g, 'options: const [');

// Some items are missing 'keyPhrases'. We'll insert 'keyPhrases: const [],' before the closing ')' of TranslationQuestion.
// A regex to find TranslationQuestion ending without keyPhrases:
// We look for 'explanation: "..."' or 'difficulty: "Zor"' and insert keyPhrases.
// Actually, it's safer to just replace 'explanation: (.*?)\n  \)' with 'explanation: $1,\n    keyPhrases: const [],\n  \)'
// Let's refine the regex for the end of a TranslationQuestion block:
content = content.replace(/(explanation:\s*['"][^'"]*['"])\n\s*\)/g, '$1,\n    keyPhrases: const [],\n  )');

// Check if '];' is at the very end. If not, add it.
if (!content.trim().endsWith('];')) {
    content = content.trim() + '\n];\n';
}

fs.writeFileSync(filePath, content, 'utf8');
console.log('Fixed translation_data.dart syntax issues.');
