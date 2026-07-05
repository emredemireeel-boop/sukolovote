const fs = require('fs');
const path = require('path');

const targetFile = path.join('C:\\Users\\GAMER\\Desktop\\sukoyok\\lib\\data\\cloze_test_data.dart');
let content = fs.readFileSync(targetFile, 'utf8');

const newPassages = `
  ClozeTestPassage(
    title: 'Immunotherapy in Oncology',
    textSegments: [
      "In recent years, immunotherapy has emerged as a groundbreaking approach in oncology, fundamentally altering the way we treat malignancies. Unlike traditional chemotherapy, which targets rapidly dividing cells indiscriminately, immunotherapy harnesses the body's own immune system to ",
      " recognize and destroy cancer cells. This paradigm shift has led to remarkable survival rates in patients with ",
      " untreatable conditions such as advanced melanoma. However, the efficacy of immunotherapy is not universal; a significant proportion of patients either do not respond or develop resistance over time. Consequently, researchers are ",
      " investigating the tumor microenvironment to identify predictive biomarkers. The ultimate goal is to personalize treatments, ensuring that ",
      " patient receives the most appropriate combination therapy to maximize clinical outcomes while ",
      " severe autoimmune-like side effects."
    ],
    questions: [
      ClozeTestOption(
        choices: ['specifically', 'barely', 'passively', 'reluctantly', 'arbitrarily'],
        correctIndex: 0,
        explanation: 'Bağışıklık sisteminin kanser hücrelerini "özellikle/spesifik olarak" (specifically) tanıması ve yok etmesinden bahsediliyor. Geleneksel kemoterapinin "indiscriminately" (rastgele/ayrım gözetmeksizin) saldırmasına zıt bir durumdur.',
      ),
      ClozeTestOption(
        choices: ['previously', 'rarely', 'hardly', 'barely', 'subsequently'],
        correctIndex: 0,
        explanation: 'Melanom gibi "daha önceden" (previously) tedavi edilemeyen durumlarda hayatta kalma oranlarını artırdığı ifade ediliyor.',
      ),
      ClozeTestOption(
        choices: ['extensively', 'scarcely', 'hesitantly', 'seldom', 'randomly'],
        correctIndex: 0,
        explanation: 'Araştırmacıların tümör mikroçevresini "kapsamlı/yoğun bir şekilde" (extensively) incelediği anlatılmaktadır.',
      ),
      ClozeTestOption(
        choices: ['every', 'all', 'both', 'none', 'neither'],
        correctIndex: 0,
        explanation: '"patient" kelimesi tekildir. "all" çoğul isim alır. Bu yüzden "her bir hasta" anlamında "every" kullanılmalıdır.',
      ),
      ClozeTestOption(
        choices: ['minimizing', 'aggravating', 'inducing', 'triggering', 'exacerbating'],
        correctIndex: 0,
        explanation: 'Klinik sonuçları maksimize ederken, otoimmün benzeri yan etkileri "en aza indirmek" (minimizing) hedeflenmektedir.',
      ),
    ],
  ),
  ClozeTestPassage(
    title: 'Neurological Impact of Chronic Stress',
    textSegments: [
      "The intricate relationship between chronic stress and neurological health has become a focal point of contemporary neuroscience. Prolonged exposure to elevated cortisol levels is known to induce structural changes in the hippocampus, a brain region that is ",
      " for memory consolidation and emotional regulation. This atrophy not only impairs cognitive function but also increases the individual's ",
      " to psychiatric disorders, particularly major depressive disorder and anxiety. ",
      " , recent studies utilizing advanced neuroimaging techniques have revealed that these stress-induced neuroplastic changes might be partially reversible. Interventions such as cognitive-behavioral therapy and targeted pharmacological treatments have shown promise in ",
      " neurogenesis in the adult brain. Thus, early identification of chronic stress is paramount to ",
      " long-term, irreversible neurological damage."
    ],
    questions: [
      ClozeTestOption(
        choices: ['crucial', 'detrimental', 'indifferent', 'immune', 'vulnerable'],
        correctIndex: 0,
        explanation: 'Hipokampusun hafıza konsolidasyonu için "hayati/çok önemli" (crucial) bir beyin bölgesi olduğu vurgulanmaktadır.',
      ),
      ClozeTestOption(
        choices: ['susceptibility', 'resistance', 'immunity', 'indifference', 'aversion'],
        correctIndex: 0,
        explanation: 'Kognitif fonksiyonu bozmakla kalmayıp, psikiyatrik hastalıklara olan "yatkınlığı/duyarlılığı" (susceptibility) artırdığı ifade edilmektedir.',
      ),
      ClozeTestOption(
        choices: ['Nevertheless', 'Furthermore', 'For instance', 'Therefore', 'Instead'],
        correctIndex: 0,
        explanation: 'Bir önceki cümlede stresin beyne verdiği zarardan bahsedilirken, bu cümlede bu değişikliklerin kısmen geri döndürülebilir olduğunun keşfedildiği söyleniyor. Bir zıtlık olduğu için "Bununla birlikte / Yine de" anlamına gelen "Nevertheless" doğrudur.',
      ),
      ClozeTestOption(
        choices: ['promoting', 'inhibiting', 'suppressing', 'hindering', 'deteriorating'],
        correctIndex: 0,
        explanation: 'Terapilerin ve ilaç tedavilerinin yetişkin beyninde nörojenezi (yeni nöron oluşumunu) "teşvik etmede" (promoting) umut vadettiği belirtiliyor.',
      ),
      ClozeTestOption(
        choices: ['prevent', 'sustain', 'accelerate', 'provoke', 'overlook'],
        correctIndex: 0,
        explanation: 'Kronik stresin erken teşhisinin, uzun vadeli ve geri döndürülemez nörolojik hasarı "önlemek" (prevent) için son derece önemli olduğu söylenmektedir.',
      ),
    ],
  ),
  ClozeTestPassage(
    title: 'Epidemiology of Airborne Pathogens',
    textSegments: [
      "The epidemiology of airborne respiratory pathogens relies heavily on understanding transmission dynamics in enclosed environments. Pathogens such as the influenza virus and SARS-CoV-2 are primarily disseminated through aerosolized respiratory droplets, which can remain suspended in the air for extended periods. The concentration of these infectious particles is significantly higher in poorly ventilated spaces, ",
      " the risk of nosocomial outbreaks in healthcare settings. To mitigate this threat, infection control protocols emphasize the necessity of high-efficiency particulate air (HEPA) filtration systems, ",
      " are capable of capturing viral particles with remarkable precision. Moreover, epidemiological surveillance data indicate that implementing strict environmental controls can drastically reduce transmission rates. It is ",
      " clear that behavioral interventions alone are insufficient without robust engineering solutions. Public health policies must therefore ",
      " integrate both strategies to effectively manage future respiratory pandemics."
    ],
    questions: [
      ClozeTestOption(
        choices: ['escalating', 'diminishing', 'neglecting', 'eliminating', 'underestimating'],
        correctIndex: 0,
        explanation: 'Kötü havalandırılan alanlarda enfeksiyöz partikül konsantrasyonunun yüksek olması, hastane kaynaklı (nosocomial) salgın riskini "artırmaktadır" (escalating).',
      ),
      ClozeTestOption(
        choices: ['which', 'that', 'who', 'where', 'when'],
        correctIndex: 0,
        explanation: 'Virgülle ayrılmış ve kendisinden önceki "HEPA filtration systems" ifadesini niteleyen bir non-defining relative clause söz konusudur. Virgül sonrası "that" kullanılamaz, bu nedenle cansız varlıklar için "which" tercih edilmelidir.',
      ),
      ClozeTestOption(
        choices: ['abundantly', 'scarcely', 'ambiguously', 'vaguely', 'hardly'],
        correctIndex: 0,
        explanation: 'Sadece davranışsal müdahalelerin yetersiz olduğunun "son derece / fazlasıyla" (abundantly) açık olduğu vurgulanıyor (abundantly clear kalıbı).',
      ),
      ClozeTestOption(
        choices: ['comprehensively', 'narrowly', 'hesitantly', 'rarely', 'partially'],
        correctIndex: 0,
        explanation: 'Halk sağlığı politikalarının, gelecekteki solunum yolu pandemilerini etkin bir şekilde yönetmek için her iki stratejiyi de "kapsamlı bir şekilde" (comprehensively) entegre etmesi gerektiği belirtilmiştir.',
      ),
    ],
  ),
`;

content = content.replace('  ...extraClozeTests,', '  ...extraClozeTests,' + newPassages);

fs.writeFileSync(targetFile, content);
console.log('Appended successfully');
