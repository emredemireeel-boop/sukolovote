const fs = require('fs');
const path = require('path');

const targetFile = path.join('C:\\Users\\GAMER\\Desktop\\sukoyok\\lib\\data\\cloze_test_data.dart');
let content = fs.readFileSync(targetFile, 'utf8');

// The file might be missing ]; at the end.
if (!content.trim().endsWith('];')) {
    if (content.trim().endsWith(',')) {
        content = content.trim() + '\n];\n';
    } else if (content.trim().endsWith(')')) {
        content = content.trim() + ',\n];\n';
    }
}

// Append 15 new ones.
const newPassages = `
  ClozeTestPassage(
    title: 'Epigenetics and Cellular Aging',
    textSegments: [
      "The paradigm of cellular aging has evolved significantly with the advent of epigenetic studies, revealing that environmental factors can profoundly influence gene expression. Epigenetic modifications, such as DNA methylation and histone acetylation, act as a dynamic regulatory layer that dictates whether specific genes are ",
      " or silenced. Unlike genetic mutations, which permanently alter the underlying DNA sequence, these epigenetic changes are potentially reversible, ",
      " promising new avenues for therapeutic intervention. Recent longitudinal studies have demonstrated that lifestyle modifications—ranging from caloric restriction to sustained physical exercise—can ",
      " the progression of age-related epigenetic drift. Consequently, targeting these epigenetic markers represents a paradigm shift in gerontology. If researchers can develop pharmacological agents capable of ",
      " these age-induced alterations, it may become feasible to extend not only the human lifespan but also the healthspan, ensuring a higher quality of life during one's ",
      " years."
    ],
    questions: [
      ClozeTestOption(
        choices: ['activated', 'suppressed', 'discarded', 'mutated', 'ignored'],
        correctIndex: 0,
        explanation: '"Silenced" (susturulmuş) kelimesinin zıttı olarak genlerin "aktive edilip (activated)" edilmediğini belirlediği ifade edilmektedir.',
      ),
      ClozeTestOption(
        choices: ['offering', 'denying', 'depriving', 'preventing', 'concealing'],
        correctIndex: 0,
        explanation: 'Epigenetik değişimlerin geri döndürülebilir olması, terapötik müdahaleler için yeni yollar "sunmaktadır" (offering).',
      ),
      ClozeTestOption(
        choices: ['mitigate', 'accelerate', 'worsen', 'escalate', 'trigger'],
        correctIndex: 0,
        explanation: 'Kalori kısıtlaması ve egzersiz gibi olumlu yaşam tarzı değişikliklerinin, yaşa bağlı hücresel bozulmayı "hafiflettiği/azalttığı" (mitigate) mantıklıdır.',
      ),
      ClozeTestOption(
        choices: ['reversing', 'sustaining', 'ignoring', 'aggravating', 'complicating'],
        correctIndex: 0,
        explanation: 'Yaşın getirdiği bu epigenetik değişimleri "tersine çevirebilen" (reversing) ajanlar (ilaçlar) geliştirmek hedefleniyor.',
      ),
      ClozeTestOption(
        choices: ['advancing', 'declining', 'preceding', 'initial', 'adolescent'],
        correctIndex: 0,
        explanation: '"İlerleyen yıllarda" (during one\\'s advancing years) yaşam kalitesini artırmaktan bahsedilmektedir.',
      ),
    ],
  ),
  ClozeTestPassage(
    title: 'Gut-Brain Axis and Neuropsychiatric Disorders',
    textSegments: [
      "The gut-brain axis, a bidirectional communication network linking the enteric and central nervous systems, has emerged as a crucial determinant of neuropsychiatric health. An overwhelming body of evidence now indicates that the intestinal microbiome can modulate brain function through the production of neuroactive compounds, ",
      " serotonin and gamma-aminobutyric acid (GABA). Dysbiosis, an imbalance in this microbial community, has been increasingly implicated in the pathogenesis of conditions such as autism spectrum disorder and severe clinical depression. ",
      " , establishing causality remains exceptionally challenging due to the myriad of confounding variables inherent in human microbiome research. To circumvent these limitations, scientists frequently utilize germ-free animal models, ",
      " provide a sterile baseline to observe the isolated effects of specific microbial strains. Preliminary findings from these experimental models ",
      " that administering targeted probiotics could potentially ameliorate depressive symptoms, thereby revolutionizing the psychiatric ",
      " in the near future."
    ],
    questions: [
      ClozeTestOption(
        choices: ['including', 'excluding', 'rejecting', 'overlooking', 'excepting'],
        correctIndex: 0,
        explanation: 'Nöroaktif bileşiklerin örneği olarak serotonin ve GABA veriliyor. Bu nedenle "dahil olmak üzere / örneğin" anlamındaki "including" doğrudur.',
      ),
      ClozeTestOption(
        choices: ['Nevertheless', 'Consequently', 'Likewise', 'Similarly', 'Thus'],
        correctIndex: 0,
        explanation: 'Önceki cümlede mikrobiyom dengesizliğinin hastalıklara yol açtığına dair güçlü kanıtlar olduğu belirtilmiş, ancak bu cümlede "nedensellik kurmanın zor olduğu" vurgulanmıştır. Güçlü bir zıtlık bağlacı olan "Nevertheless" (Bununla birlikte) gereklidir.',
      ),
      ClozeTestOption(
        choices: ['which', 'who', 'where', 'whose', 'whom'],
        correctIndex: 0,
        explanation: 'Öncesindeki virgül ve insan dışı bir terim olan "germ-free animal models" kullanımı "which" relative pronoun\\'unu zorunlu kılar.',
      ),
      ClozeTestOption(
        choices: ['suggest', 'contradict', 'deny', 'conceal', 'refute'],
        correctIndex: 0,
        explanation: 'Deneysel bulguların, probiyotiklerin depresif semptomları iyileştirebileceğini "gösterdiği / öne sürdüğü" (suggest) belirtiliyor.',
      ),
      ClozeTestOption(
        choices: ['landscape', 'obstacle', 'hindrance', 'setback', 'dilemma'],
        correctIndex: 0,
        explanation: 'Bu gelişmelerin psikiyatri "alanını / manzarasını" (landscape) devrim niteliğinde değiştireceği ifade ediliyor.',
      ),
    ],
  ),
  ClozeTestPassage(
    title: 'Antimicrobial Stewardship and Superbugs',
    textSegments: [
      "Antimicrobial resistance (AMR) constitutes one of the most formidable threats to modern medicine, jeopardizing our ability to treat common infectious diseases. The relentless and often inappropriate prescription of broad-spectrum antibiotics has ",
      " the natural evolutionary processes of bacteria, selecting for multi-drug resistant strains colloquially known as superbugs. To combat this escalating crisis, hospitals worldwide are implementing stringent antimicrobial stewardship programs, which are designed to ",
      " the optimal use of these critical medications. These programs strictly regulate when and how antibiotics are administered, demanding rigorous diagnostic confirmation ",
      " therapy is initiated. Without such concerted global efforts, medical procedures ranging from major surgeries to routine dental work could become prohibitively ",
      " , plunging humanity back into a pre-antibiotic era where minor infections frequently proved ",
      " ."
    ],
    questions: [
      ClozeTestOption(
        choices: ['accelerated', 'halted', 'suppressed', 'reversed', 'diminished'],
        correctIndex: 0,
        explanation: 'Antibiyotiklerin yanlış kullanımının bakterilerin doğal evrim süreçlerini "hızlandırdığı" (accelerated) ve süper böceklerin ortaya çıkmasına sebep olduğu belirtiliyor.',
      ),
      ClozeTestOption(
        choices: ['ensure', 'prevent', 'deter', 'avoid', 'neglect'],
        correctIndex: 0,
        explanation: 'Hastanelerin uyguladığı sıkı programların, kritik ilaçların optimum kullanımını "sağlamak/güvenceye almak" (ensure) için tasarlandığı anlatılmaktadır.',
      ),
      ClozeTestOption(
        choices: ['before', 'although', 'unless', 'despite', 'whereas'],
        correctIndex: 0,
        explanation: 'Tedavi (therapy) başlatılmadan "önce" (before) titiz bir teşhis onayı istendiği vurgulanmaktadır.',
      ),
      ClozeTestOption(
        choices: ['hazardous', 'safe', 'beneficial', 'harmless', 'trivial'],
        correctIndex: 0,
        explanation: 'Antibiyotik direnci krizi kontrol altına alınmazsa basit cerrahi operasyonların bile "tehlikeli/riskli" (hazardous) hale geleceği söylenmektedir.',
      ),
      ClozeTestOption(
        choices: ['fatal', 'benign', 'curable', 'mild', 'insignificant'],
        correctIndex: 0,
        explanation: 'Antibiyotik öncesi dönemde (pre-antibiotic era) en ufak enfeksiyonların bile sıklıkla "ölümcül" (fatal) sonuçlandığı vurgulanıyor.',
      ),
    ],
  ),
`;

// Insert it right before ];
content = content.replace('];', newPassages + '\n];');
fs.writeFileSync(targetFile, content);
console.log('Successfully appended 15 new questions to cloze_test_data.dart');
