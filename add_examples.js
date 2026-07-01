const fs = require('fs');
const path = require('path');

const FILE = path.join(__dirname, 'assets', 'oxford3000.json');
let raw = fs.readFileSync(FILE, 'utf8');
// BOM karakterini temizle
raw = raw.replace(/^\uFEFF/, '');
const words = JSON.parse(raw);
console.log('Toplam kelime: ' + words.length);

// Kelime turune gore cumle uretici
function mkEx(w) {
  const lo = w.toLowerCase().trim();
  const len = lo.length;
  let h = 0;
  for (let i = 0; i < lo.length; i++) { h = ((h << 5) - h) + lo.charCodeAt(i); h &= h; }
  h = Math.abs(h);

  // Tur tahmin
  const isNoun = lo.endsWith('tion') || lo.endsWith('ment') || lo.endsWith('ness') || lo.endsWith('ity') || lo.endsWith('ence') || lo.endsWith('ance') || lo.endsWith('ure') || lo.endsWith('age') || lo.endsWith('ism');
  const isAdj = lo.endsWith('ful') || lo.endsWith('less') || lo.endsWith('ous') || lo.endsWith('ive') || lo.endsWith('able') || lo.endsWith('ible') || lo.endsWith('al') || lo.endsWith('ent') || lo.endsWith('ant') || lo.endsWith('tic');
  const isAdv = lo.endsWith('ly');
  const isVerb = lo.endsWith('ate') || lo.endsWith('ize') || lo.endsWith('ise') || lo.endsWith('ify') || lo.endsWith('en');

  const nounT = [
    "Good " + w + " is essential for a healthy and productive life.",
    "The importance of " + w + " in modern medicine cannot be overstated.",
    "Researchers are studying the role of " + w + " in disease prevention.",
    "A lack of " + w + " can lead to serious health complications.",
    "Understanding " + w + " helps medical professionals provide better care.",
    "The concept of " + w + " has evolved significantly over the past decade.",
    "Proper " + w + " contributes to the overall well-being of patients.",
    "The doctor emphasized the significance of " + w + " during the consultation.",
    "Advances in " + w + " have transformed the healthcare industry.",
    "Every hospital recognizes the value of " + w + " in patient recovery.",
    "The study revealed a strong connection between " + w + " and quality of life.",
    "Without adequate " + w + ", treatment outcomes may be compromised.",
    "Experts agree that " + w + " plays a critical role in public health.",
    "The decline in " + w + " among patients has raised concerns.",
    "Investing in " + w + " is one of the most effective strategies for long-term health.",
  ];

  const adjT = [
    "The patient felt " + w + " after receiving the proper treatment.",
    "A " + w + " approach to healthcare can lead to better outcomes.",
    "It is important to remain " + w + " when dealing with a medical emergency.",
    "The doctor described the results as " + w + " and reassuring.",
    "Maintaining a " + w + " lifestyle reduces the risk of chronic diseases.",
    "The " + w + " nature of the treatment surprised the medical team.",
    "Patients who are " + w + " tend to recover more quickly.",
    "The " + w + " effects of regular exercise on health are well documented.",
    "She was " + w + " about the possibility of a full recovery.",
    "The surgeon used a " + w + " technique to minimize scarring.",
    "Being " + w + " is a quality that every healthcare worker should have.",
    "The " + w + " atmosphere in the hospital made patients feel safe.",
    "A " + w + " diet can help prevent many common illnesses.",
    "The research findings were " + w + " and supported the hypothesis.",
    "The patient remained " + w + " throughout the entire procedure.",
  ];

  const advT = [
    "The wound healed " + w + " after the treatment was applied.",
    "She " + w + " followed the doctor's instructions for a speedy recovery.",
    "The medication works " + w + " for patients with this condition.",
    "The surgeon " + w + " completed the complex operation.",
    "The patient was " + w + " improving after starting the new therapy.",
    "The team " + w + " responded to the medical emergency.",
    "The research " + w + " demonstrates the benefits of early intervention.",
    "He was " + w + " grateful for the care he received at the hospital.",
    "The disease " + w + " affects elderly patients more than younger ones.",
    "The nurse " + w + " monitored the patient throughout the night.",
    "The hospital " + w + " upgraded its facilities to serve more patients.",
    "The results " + w + " confirmed what the doctors had suspected.",
    "She " + w + " adapted to the new treatment routine.",
    "The infection " + w + " spread through the community before being contained.",
    "The patient " + w + " recovered and returned to his normal activities.",
  ];

  const verbT = [
    "The doctor decided to " + w + " the patient immediately.",
    "It is important to " + w + " every symptom carefully before diagnosing.",
    "The medical team worked together to " + w + " the problem effectively.",
    "Nurses are trained to " + w + " patients with compassion and skill.",
    "The hospital plans to " + w + " its services to reach more communities.",
    "Researchers continue to " + w + " new methods for treating the disease.",
    "You should " + w + " your health by eating well and exercising regularly.",
    "The surgeon was able to " + w + " the damaged tissue during the operation.",
    "Patients are encouraged to " + w + " their concerns with the medical staff.",
    "The new technology allows doctors to " + w + " diseases earlier than ever.",
    "Regular check-ups help " + w + " potential health issues before they worsen.",
    "The treatment aims to " + w + " the underlying cause of the condition.",
    "Scientists hope to " + w + " a breakthrough in the fight against cancer.",
    "The clinic was established to " + w + " the needs of the local population.",
    "The program helps patients " + w + " their strength after a serious illness.",
  ];

  const genT = [
    "The doctor explained the importance of " + w + " in maintaining good health.",
    "Understanding the meaning of " + w + " is essential for medical students.",
    "The word " + w + " frequently appears in academic health publications.",
    "She used the word " + w + " correctly in her medical examination essay.",
    "In healthcare, " + w + " is a concept that every professional should understand.",
    "The professor asked students to write a paragraph using the word " + w + ".",
    "The term " + w + " is commonly used in both everyday and medical language.",
    "Knowing the word " + w + " will help you understand scientific articles better.",
    "Many patients encounter the word " + w + " in their health information leaflets.",
    "The lecture covered the various contexts in which " + w + " is used.",
    "During the examination, students were asked to define " + w + " in a medical context.",
    "The article discussed how " + w + " relates to patient care and treatment.",
    "A clear understanding of " + w + " can improve communication in healthcare settings.",
    "The researcher mentioned " + w + " several times in the published study.",
    "Learning the word " + w + " is part of building a strong medical vocabulary.",
    "The meaning of " + w + " varies depending on the context in which it is used.",
    "She looked up the definition of " + w + " in the medical dictionary.",
    "The patient asked the doctor to explain the meaning of " + w + " in simple terms.",
    "In the context of public health, " + w + " has significant implications.",
    "The study highlighted the relevance of " + w + " in modern medicine.",
  ];

  let pool;
  if (isNoun) pool = nounT;
  else if (isAdj) pool = adjT;
  else if (isAdv) pool = advT;
  else if (isVerb) pool = verbT;
  else pool = genT;

  return pool[h % pool.length];
}

// Islemi yap
let count = 0;
for (const w of words) {
  const e = (w.e || '').trim();
  if (!e) continue;
  w.x = mkEx(e);
  count++;
}

console.log('Ornek cumleler eklendi: ' + count);
fs.writeFileSync(FILE, JSON.stringify(words), 'utf8');
console.log('Tamamlandi! oxford3000.json guncellendi.');
