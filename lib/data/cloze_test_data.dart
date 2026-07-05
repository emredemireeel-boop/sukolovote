import 'cloze_test_extra_data.dart';

class ClozeTestOption {
  final List<String> choices;
  final int correctIndex;
  final String explanation;

  const ClozeTestOption({
    required this.choices,
    required this.correctIndex,
    required this.explanation,
  });
}

class ClozeTestPassage {
  final String title;
  final List<String> textSegments; // Paragrafın parçalanmış hali (boşluklardan öncesi ve sonrası)
  final List<ClozeTestOption> questions;

  const ClozeTestPassage({
    required this.title,
    required this.textSegments,
    required this.questions,
  });
}

const List<ClozeTestPassage> _originalClozeTestData = [
  ClozeTestPassage(
    title: 'Vitamin D and Bone Health',
    textSegments: [
      'Vitamin D plays a critical role in maintaining bone health. It is essential for the absorption of calcium from the diet, ',
      ' is vital for bone mineralization. Without sufficient Vitamin D, bones can become thin, brittle, or misshapen. In children, this condition is known as rickets, ',
      ' in adults, it manifests as osteomalacia. Although the body can synthesize Vitamin D when the skin is exposed to sunlight, many people still suffer from deficiency ',
      ' limited sun exposure, dietary choices, or geographic location. Therefore, healthcare providers often recommend supplementation, ',
      ' during the winter months. ',
      ' the growing awareness, Vitamin D deficiency remains a global health issue affecting millions.'
    ],
    questions: [
      ClozeTestOption(
        choices: ['who', 'where', 'which', 'whom', 'whose'],
        correctIndex: 2,
        explanation: "'calcium' kelimesini niteleyen bir relative clause gereklidir. İnsan dışı bir varlık olduğu için 'which' kullanılır.",
      ),
      ClozeTestOption(
        choices: ['whereas', 'therefore', 'however', 'because', 'as if'],
        correctIndex: 0,
        explanation: "Çocuklarda 'rickets' iken yetişkinlerde 'osteomalacia' olduğu belirtiliyor. Burada bir karşılaştırma/zıtlık durumu vardır, bu yüzden 'whereas' (oysa, iken) kullanılır.",
      ),
      ClozeTestOption(
        choices: ['in spite of', 'due to', 'instead of', 'as well as', 'rather than'],
        correctIndex: 1,
        explanation: "Eksiklik yaşanmasının sebepleri (sınırlı güneşe çıkma vb.) sayıldığı için 'den dolayı' anlamına gelen 'due to' kullanılmalıdır.",
      ),
      ClozeTestOption(
        choices: ['particularly', 'barely', 'merely', 'scarcely', 'hardly'],
        correctIndex: 0,
        explanation: "Takviyenin 'özellikle' kış aylarında önerildiği vurgulanmak isteniyor. Bu nedenle 'particularly' uygundur.",
      ),
      ClozeTestOption(
        choices: ['Because of', 'Despite', 'Thanks to', 'In addition to', 'Similar to'],
        correctIndex: 1,
        explanation: "Artan farkındalığa 'rağmen' hala küresel bir sağlık sorunu olmaya devam ettiği belirtiliyor. Zıtlık belirten 'Despite' doğru cevaptır.",
      ),
    ],
  ),
  ClozeTestPassage(
    title: 'Antibiotic Resistance',
    textSegments: [
      'Antibiotic resistance occurs when bacteria change in response to the use of these medicines. Bacteria, not humans or animals, become antibiotic-resistant. These bacteria may infect humans and animals, and the infections they cause are harder to treat ',
      ' those caused by non-resistant bacteria. Antibiotic resistance leads to higher medical costs, prolonged hospital stays, and increased mortality. The world urgently needs to change the way it prescribes and uses antibiotics. Even if new medicines are developed, without behaviour change, antibiotic resistance will ',
      ' remain a major threat. Behaviour changes must also include actions to reduce the spread of infections, ',
      ' vaccination, hand washing, practising safer sex, and good food hygiene. ',
      ' urgent action is taken, we will soon head for a post-antibiotic era, in which common infections and minor injuries can once again kill. ',
      ', a global action plan on antimicrobial resistance was endorsed at the World Health Assembly in 2015.'
    ],
    questions: [
      ClozeTestOption(
        choices: ['as', 'from', 'than', 'to', 'with'],
        correctIndex: 2,
        explanation: "Cümlede 'harder' (daha zor) comparative yapısı kullanılmış. Karşılaştırma yaparken 'than' kullanılır.",
      ),
      ClozeTestOption(
        choices: ['rarely', 'undoubtedly', 'barely', 'seldom', 'never'],
        correctIndex: 1,
        explanation: "Davranış değişikliği olmazsa antibiyotik direncinin 'şüphesiz/kesinlikle' büyük bir tehdit olmaya devam edeceği vurgulanıyor. 'undoubtedly' (şüphesiz) en uygun kelimedir.",
      ),
      ClozeTestOption(
        choices: ['such as', 'in case of', 'as opposed to', 'regardless of', 'in terms of'],
        correctIndex: 0,
        explanation: "Enfeksiyon yayılımını azaltacak eylemlere (aşılama, el yıkama vb.) örnekler veriliyor. Örnekleme yaparken 'such as' (gibi) kullanılır.",
      ),
      ClozeTestOption(
        choices: ['Unless', 'If', 'Provided that', 'As long as', 'Since'],
        correctIndex: 0,
        explanation: "Acil önlem 'alınmazsa' antibiyotik sonrası döneme gireceğimiz söyleniyor. 'If...not' anlamına gelen 'Unless' (medikçe/madıkça) bağlacı gerekir.",
      ),
      ClozeTestOption(
        choices: ['On the contrary', 'For instance', 'However', 'Therefore', 'Otherwise'],
        correctIndex: 3,
        explanation: "Önceki cümlede acil önlem alınması gerektiği söylendi. Bu yüzden ('bu nedenle' / 'Therefore'), 2015'te küresel bir eylem planı onaylandı.",
      ),
    ],
  ),

  ClozeTestPassage(
    title: 'Sleep and Memory Consolidation',
    textSegments: [
      'Sleep is increasingly recognized as a vital component of memory consolidation. During sleep, particularly the rapid eye movement (REM) and slow-wave stages, the brain processes information acquired during the day. This active processing allows the brain to ',
      ' neural connections, making memories more stable. It is not merely a passive state of rest, ',
      ' many people used to believe. Sleep deprivation, on the other hand, impairs cognitive function and significantly reduces the ability to recall new facts. Research indicates that students who get adequate sleep perform better on exams ',
      ' their peers who pull all-nighters. Furthermore, chronic sleep disturbances have been linked to long-term memory deficits and a higher risk of developing neurodegenerative conditions ',
      ' Alzheimer\'s disease. Therefore, public health campaigns should emphasize that prioritizing sleep is essential for maintaining both physical health and optimal cognitive ',
      '.'
    ],
    questions: [
      ClozeTestOption(
        choices: ['strengthen', 'weaken', 'diminish', 'erase', 'ignore'],
        correctIndex: 0,
        explanation: 'Uyku sırasındaki aktif sürecin nöral bağlantıları güçlendirmesi beklenir. "Strengthen" (güçlendirmek) doğru cevaptır.',
      ),
      ClozeTestOption(
        choices: ['as', 'although', 'despite', 'whereas', 'unless'],
        correctIndex: 0,
        explanation: 'Birçok insanın inandığı GİBİ pasif bir dinlenme hali olmadığını belirtmek için "as" bağlacı kullanılır.',
      ),
      ClozeTestOption(
        choices: ['compared to', 'instead of', 'due to', 'in spite of', 'as well as'],
        correctIndex: 0,
        explanation: 'Yeterli uyuyan öğrenciler ile sabahlayan öğrenciler karşılaştırılıyor. "Compared to" (kıyasla) bağlacı uygundur.',
      ),
      ClozeTestOption(
        choices: ['such as', 'regardless of', 'in contrast to', 'on behalf of', 'resulting from'],
        correctIndex: 0,
        explanation: 'Nörodejeneratif durumlara bir örnek olarak Alzheimer hastalığı veriliyor. Örnekleme yaparken "such as" kullanılır.',
      ),
      ClozeTestOption(
        choices: ['function', 'barrier', 'decline', 'failure', 'symptom'],
        correctIndex: 0,
        explanation: 'Uykunun fiziksel sağlık ve optimal bilişsel "işlev" (function) için gerekli olduğu vurgulanıyor.',
      ),
    ],
  ),
  ClozeTestPassage(
    title: 'The Role of the Gut Microbiome',
    textSegments: [
      'The human gut microbiome consists of trillions of microorganisms that reside primarily in the intestines. These microbes play a fundamental role in maintaining overall health. They are responsible for breaking down complex carbohydrates that the body cannot digest on its own, ',
      ' producing essential vitamins like Vitamin K and some B vitamins. Recent studies have revealed a strong connection between the gut microbiome and the immune system. A diverse microbiome helps the immune system to distinguish between harmless antigens and harmful pathogens. ',
      ', an imbalance in the gut bacteria, a condition known as dysbiosis, is associated with a variety of inflammatory diseases. Factors that negatively affect the microbiome include poor diet, stress, and the overuse of antibiotics. To maintain a healthy gut flora, dietitians ',
      ' recommend consuming foods rich in dietary fibers and probiotics. If people pay more attention to their gut health, they will ',
      ' experience improved digestion, enhanced immunity, and better mental well-being in the long run. Scientists are now investigating whether targeted microbiome therapies could ',
      ' treat autoimmune disorders in the future.'
    ],
    questions: [
      ClozeTestOption(
        choices: ['besides', 'instead of', 'in contrast to', 'regardless of', 'despite'],
        correctIndex: 0,
        explanation: 'Kompleks karbonhidratları parçalamanın YANI SIRA vitamin ürettikleri belirtiliyor. "Besides" (bunun yanı sıra/ek olarak) uygundur.',
      ),
      ClozeTestOption(
        choices: ['Consequently', 'However', 'For instance', 'Similarly', 'Otherwise'],
        correctIndex: 1,
        explanation: 'Önceki cümlede sağlıklı bir mikrobiyomun faydasından bahsedilirken, bu cümlede dengesizliğin hastalıklara yol açtığı söyleniyor. Zıtlık belirten "However" uygundur.',
      ),
      ClozeTestOption(
        choices: ['frequently', 'rarely', 'seldom', 'hardly', 'scarcely'],
        correctIndex: 0,
        explanation: 'Sağlıklı bir bağırsak florasını korumak için diyetisyenlerin lif ve probiyotik tüketimini "sıklıkla" (frequently) önermesi beklenir.',
      ),
      ClozeTestOption(
        choices: ['likely', 'barely', 'unlikely', 'impossibly', 'doubtfully'],
        correctIndex: 0,
        explanation: 'İnsanlar bağırsak sağlığına daha fazla dikkat ederlerse, fayda görmeleri "muhtemeldir" (likely).',
      ),
      ClozeTestOption(
        choices: ['potentially', 'hardly', 'rarely', 'never', 'unwillingly'],
        correctIndex: 0,
        explanation: 'Bilim insanlarının bu tedavilerin gelecekte otoimmün hastalıkları "potansiyel olarak" (potentially) tedavi edip edemeyeceğini araştırdığı ifade ediliyor.',
      ),
    ],
  ),
  ...extraClozeTests,
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
        explanation: '"İlerleyen yıllarda" (during one\'s advancing years) yaşam kalitesini artırmaktan bahsedilmektedir.',
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
        explanation: 'Öncesindeki virgül ve insan dışı bir terim olan "germ-free animal models" kullanımı "which" relative pronoun\'unu zorunlu kılar.',
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
  ClozeTestPassage(
    title: 'Pathogenesis of Type 2 Diabetes',
    textSegments: [
      "The pathogenesis of Type 2 Diabetes Mellitus (T2DM) is characterized by a complex interplay between peripheral insulin resistance and progressive pancreatic beta-cell dysfunction. Initially, target tissues such as skeletal muscle and adipose tissue exhibit a blunted response to circulating insulin, ",
      " forces the pancreas to secrete increasing amounts of the hormone to maintain euglycemia. Over time, this compensatory hyperinsulinemia places significant stress on the beta cells. Ultimately, the relentless demand exceeds their secretory capacity, culminating in cellular exhaustion and apoptosis. ",
      " , the resultant insulin deficiency leads to unchecked hepatic glucose production and chronic hyperglycemia. Current pharmacological interventions primarily focus on enhancing insulin sensitivity or stimulating its secretion; ",
      " , there is a growing interest in novel therapeutic strategies aimed at preserving beta-cell mass. Early lifestyle interventions, encompassing dietary modifications and weight management, remain the cornerstone of ",
      " , capable of delaying or even halting the onset of overt diabetes in high-risk ",
      " ."
    ],
    questions: [
      ClozeTestOption(
        choices: ['which', 'who', 'whom', 'where', 'whose'],
        correctIndex: 0,
        explanation: 'Kendisinden önceki cümlenin tamamını niteleyen bir relative clause yapısıdır. İnsüline verilen körelmiş yanıt (durum), pankreası daha fazla hormon salgılamaya zorlar. Bu nedenle "which" kullanılır.',
      ),
      ClozeTestOption(
        choices: ['Consequently', 'Nevertheless', 'Similarly', 'Otherwise', 'Instead'],
        correctIndex: 0,
        explanation: 'Beta hücrelerinin tükenmesinin bir "sonucu olarak" (Consequently) insülin eksikliğinin ortaya çıktığı ve bunun da hiperglisemiye yol açtığı ifade ediliyor.',
      ),
      ClozeTestOption(
        choices: ['however', 'therefore', 'moreover', 'hence', 'thus'],
        correctIndex: 0,
        explanation: 'Mevcut ilaçların insülin duyarlılığını artırmaya odaklandığı belirtildikten sonra, "bununla birlikte / ancak" (however) beta hücresi kütlesini korumaya yönelik yeni stratejilere de artan bir ilgi olduğu vurgulanarak zıtlık/farklı bir yönelim ifade ediliyor.',
      ),
      ClozeTestOption(
        choices: ['prevention', 'diagnosis', 'infection', 'deterioration', 'complication'],
        correctIndex: 0,
        explanation: 'Diyet değişiklikleri ve kilo yönetimini içeren yaşam tarzı müdahalelerinin, hastalığı geciktirme ve durdurma özelliğinden bahsedildiği için bu durum "önleme" (prevention) stratejisidir.',
      ),
      ClozeTestOption(
        choices: ['individuals', 'pathogens', 'symptoms', 'medications', 'hospitals'],
        correctIndex: 0,
        explanation: 'Diyabetin ortaya çıkması "yüksek riskli bireylerde" (high-risk individuals) geciktirilir veya durdurulur.',
      ),
    ],
  ),
  ClozeTestPassage(
    title: 'Role of Telomeres in Senescence and Cancer',
    textSegments: [
      "Telomeres, the protective nucleoprotein structures at the ends of eukaryotic chromosomes, play an indispensable role in maintaining genomic stability. With each successive cycle of cell division, these telomeric sequences progressively shorten due to the end-replication problem inherent in DNA polymerase. Once telomeres reach a critical length, they trigger a DNA damage response that halts further proliferation, ",
      " the cell into a state of irreversible growth arrest known as replicative senescence. This mechanism effectively acts as a biological clock and a potent barrier against tumorigenesis by preventing the propagation of genetically unstable cells. ",
      " , many malignant cells manage to bypass this cellular roadblock. They achieve this immortality by reactivating telomerase, a specialized ribonucleoprotein enzyme that ",
      " telomeric DNA. By maintaining telomere length, cancer cells can divide indefinitely. Consequently, telomerase has emerged as a highly attractive target for antineoplastic therapies, with researchers ",
      " exploring various inhibitors to safely dismantle this protective mechanism without ",
      " healthy stem cells."
    ],
    questions: [
      ClozeTestOption(
        choices: ['driving', 'rescuing', 'protecting', 'shielding', 'withdrawing'],
        correctIndex: 0,
        explanation: 'DNA hasar yanıtının hücreyi geri döndürülemez bir yaşlanma durumuna "sürüklediği/ittiği" (driving) belirtilmektedir.',
      ),
      ClozeTestOption(
        choices: ['However', 'Accordingly', 'In addition', 'Consequently', 'Therefore'],
        correctIndex: 0,
        explanation: 'Bir önceki cümlede telomer kısalmasının tümör oluşumuna karşı bir bariyer olduğu söylenirken, bu cümlede kötü huylu (kanser) hücrelerin bu engeli aşmayı başardığı söyleniyor. Bu net bir "Ancak" (However) zıtlık durumudur.',
      ),
      ClozeTestOption(
        choices: ['elongates', 'shortens', 'degrades', 'ignores', 'destroys'],
        correctIndex: 0,
        explanation: 'Kanser hücrelerinin "ölümsüzlüğe" ulaşması için telomeraz enziminin telomerik DNA\'yı "uzatması" (elongates) gerekir.',
      ),
      ClozeTestOption(
        choices: ['actively', 'barely', 'passively', 'reluctantly', 'rarely'],
        correctIndex: 0,
        explanation: 'Telomeraz enzimi çekici bir hedef haline geldiği için araştırmacıların çeşitli inhibitörleri "aktif bir şekilde" (actively) araştırdığı vurgulanıyor.',
      ),
      ClozeTestOption(
        choices: ['harming', 'healing', 'nurturing', 'fostering', 'cultivating'],
        correctIndex: 0,
        explanation: 'Antineoplastik tedavilerin amacı, "sağlıklı kök hücrelere zarar vermeden" (without harming) kanser hücrelerinin bu koruyucu mekanizmasını yıkmaktır.',
      ),
    ],
  ),
  ClozeTestPassage(
    title: 'Autoimmune Mechanisms in Multiple Sclerosis',
    textSegments: [
      "Multiple Sclerosis (MS) is a chronic, immune-mediated inflammatory disease of the central nervous system (CNS) characterized by demyelination and neurodegeneration. The prevailing hypothesis suggests that autoreactive T cells, which mistakenly recognize myelin-derived antigens as foreign, ",
      " the blood-brain barrier and initiate a cascade of inflammatory responses. Once inside the CNS, these lymphocytes recruit macrophages and secrete pro-inflammatory cytokines, leading to the systematic destruction of the myelin sheath that insulates axonal fibers. This demyelination disrupts the saltatory conduction of action potentials, ",
      " resulting in a diverse array of neurological deficits, ranging from motor weakness to cognitive impairment. Although the exact etiology of MS remains elusive, it is widely accepted that it arises from a complex interaction between genetic susceptibility and environmental triggers, ",
      " viral infections and vitamin D deficiency. Disease-modifying therapies currently available aim to dampen this aberrant immune response, thereby reducing the frequency of relapses and ",
      " the progression of long-term disability in affected ",
      " ."
    ],
    questions: [
      ClozeTestOption(
        choices: ['infiltrate', 'defend', 'construct', 'reinforce', 'bypass'],
        correctIndex: 0,
        explanation: 'T hücrelerinin kan-beyin bariyerine "sızdığı" (infiltrate) ve inflamatuar yanıtları başlattığı ifade edilmektedir.',
      ),
      ClozeTestOption(
        choices: ['ultimately', 'initially', 'rarely', 'scarcely', 'hesitantly'],
        correctIndex: 0,
        explanation: 'Miyelin kılıfının yıkımının "nihayetinde/sonuç olarak" (ultimately) motor zayıflıktan bilişsel bozukluğa kadar çeşitli nörolojik eksikliklere yol açtığı anlatılıyor.',
      ),
      ClozeTestOption(
        choices: ['such as', 'rather than', 'in spite of', 'regardless of', 'due to'],
        correctIndex: 0,
        explanation: 'Çevresel tetikleyicilere örnek olarak (such as) viral enfeksiyonlar ve D vitamini eksikliği verilmiştir.',
      ),
      ClozeTestOption(
        choices: ['slowing', 'accelerating', 'ignoring', 'worsening', 'aggravating'],
        correctIndex: 0,
        explanation: 'Mevcut tedavilerin amacı, anormal bağışıklık yanıtını baskılamak ve uzun vadeli sakatlığın ilerlemesini "yavaşlatmaktır" (slowing).',
      ),
      ClozeTestOption(
        choices: ['patients', 'viruses', 'antigens', 'therapies', 'symptoms'],
        correctIndex: 0,
        explanation: 'Hastalığın ilerlemesi etkilenen "hastalarda" (affected patients) yavaşlatılır.',
      ),
    ],
  ),
  ClozeTestPassage(
    title: 'Advancements in Gene Editing (CRISPR-Cas9)',
    textSegments: [
      "The advent of CRISPR-Cas9 technology has inaugurated a new epoch in molecular biology, offering unprecedented precision in genetic engineering. Originally identified as an adaptive immune mechanism in bacteria to fend off viral invaders, this system has been ingeniously adapted to ",
      " target and modify specific DNA sequences in human cells. One of the most promising applications of CRISPR is in the treatment of monogenic disorders, such as cystic fibrosis and sickle cell anemia. By precisely excising the defective gene and inserting a functional copy, scientists hope to ",
      " these debilitating conditions rather than merely managing their symptoms. ",
      " , the translation of this technology from the laboratory to the clinic is fraught with significant hurdles. Off-target effects, where the Cas9 nuclease inadvertently cleaves unintended genomic loci, remain a paramount concern because they can ",
      " oncogenic mutations. Therefore, rigorous safety and efficacy trials are absolutely essential before widespread clinical ",
      " can be achieved."
    ],
    questions: [
      ClozeTestOption(
        choices: ['selectively', 'randomly', 'haphazardly', 'reluctantly', 'barely'],
        correctIndex: 0,
        explanation: 'CRISPR sisteminin insan hücrelerindeki spesifik DNA dizilerini "seçici olarak" (selectively) hedeflemek ve değiştirmek için uyarlandığı anlatılmaktadır.',
      ),
      ClozeTestOption(
        choices: ['cure', 'worsen', 'diagnose', 'transmit', 'conceal'],
        correctIndex: 0,
        explanation: 'Kusurlu genin çıkarılıp işlevsel bir kopyasının eklenmesiyle, bilim insanları hastalıkların semptomlarını yönetmekten ziyade tamamen "tedavi etmeyi / iyileştirmeyi" (cure) ummaktadır.',
      ),
      ClozeTestOption(
        choices: ['However', 'Therefore', 'Furthermore', 'Consequently', 'Likewise'],
        correctIndex: 0,
        explanation: 'Bir önceki cümlede hastalığı tamamen tedavi etme umudundan bahsedilirken, bu cümlede laboratuvardan kliniğe geçişin büyük engellerle dolu olduğu söyleniyor. Güçlü bir zıtlık bağlacı olan "However" uygundur.',
      ),
      ClozeTestOption(
        choices: ['induce', 'prevent', 'suppress', 'inhibit', 'diminish'],
        correctIndex: 0,
        explanation: 'Hedef dışı etkilerin (off-target effects) kanserojenik mutasyonları "tetikleyebileceği / yol açabileceği" (induce) endişesinden bahsedilmektedir.',
      ),
      ClozeTestOption(
        choices: ['implementation', 'rejection', 'abandonment', 'prohibition', 'withdrawal'],
        correctIndex: 0,
        explanation: 'Titiz güvenlik ve etkinlik denemelerinin, yaygın klinik "uygulamaya / hayata geçirmeye" (implementation) ulaşılmadan önce şart olduğu vurgulanıyor.',
      ),
    ],
  ),
  ClozeTestPassage(
    title: 'The Endocrine System and Metabolic Syndrome',
    textSegments: [
      "Metabolic syndrome is a multifaceted disorder characterized by a constellation of interconnected physiological abnormalities, including central adiposity, dyslipidemia, hypertension, and insulin resistance. The central driver of this syndrome is thought to be visceral fat accumulation, which, unlike subcutaneous fat, is highly metabolically active. Visceral adipocytes continuously secrete pro-inflammatory adipokines that ",
      " the normal signaling pathways of insulin in peripheral tissues. This chronic state of low-grade inflammation not only exacerbates insulin resistance but also ",
      " endothelial dysfunction, paving the way for advanced atherosclerosis. To counteract these detrimental effects, physicians advocate for comprehensive lifestyle overhauls, ",
      " emphasize substantial weight loss and regular aerobic exercise. Unfortunately, adherence to such demanding regimens is notoriously poor among the general population. In cases where lifestyle modifications prove insufficient, pharmacological agents must be prescribed to ",
      " cardiovascular risk factors and prevent the onset of fatal myocardial ",
      " ."
    ],
    questions: [
      ClozeTestOption(
        choices: ['disrupt', 'facilitate', 'enhance', 'regulate', 'support'],
        correctIndex: 0,
        explanation: 'Pro-inflamatuar adipokinlerin, periferik dokulardaki normal insülin sinyal yollarını "bozduğu / engellediği" (disrupt) belirtiliyor.',
      ),
      ClozeTestOption(
        choices: ['promotes', 'hinders', 'reverses', 'prevents', 'masks'],
        correctIndex: 0,
        explanation: 'Kronik düşük dereceli inflamasyonun insülin direncini kötüleştirmekle kalmayıp aynı zamanda endotel disfonksiyonunu (damar iç yüzeyi bozukluğunu) "teşvik ettiği" (promotes) söylenmektedir.',
      ),
      ClozeTestOption(
        choices: ['which', 'who', 'whose', 'whom', 'where'],
        correctIndex: 0,
        explanation: 'Virgülden sonra gelen ve cansız bir kavram olan "lifestyle overhauls" (yaşam tarzı revizyonları) kelimesini tanımlayan non-defining relative clause "which" ile başlamalıdır.',
      ),
      ClozeTestOption(
        choices: ['mitigate', 'aggravate', 'ignore', 'amplify', 'trigger'],
        correctIndex: 0,
        explanation: 'Yaşam tarzı değişikliklerinin yetersiz kaldığı durumlarda farmakolojik ajanların kardiyovasküler risk faktörlerini "hafifletmek / azaltmak" (mitigate) için reçete edildiği belirtiliyor.',
      ),
      ClozeTestOption(
        choices: ['infarction', 'regeneration', 'surgery', 'circulation', 'bypass'],
        correctIndex: 0,
        explanation: '"Myocardial infarction" (kalp krizi), tıp dilinde çok yaygın kullanılan kalıplaşmış bir ifadedir ve metnin bağlamına tam uyar.',
      ),
    ],
  ),
  ClozeTestPassage(
    title: 'Pharmacogenomics and Personalized Medicine',
    textSegments: [
      "Pharmacogenomics, the study of how an individual's genetic makeup influences their response to drugs, is rapidly transforming the landscape of modern pharmacotherapy. Traditionally, medications have been prescribed based on a \"one-size-fits-all\" approach, an empirical method that often results in unpredictable efficacy and adverse drug reactions. By analyzing specific genetic variants, particularly single nucleotide polymorphisms (SNPs) in hepatic cytochrome P450 enzymes, clinicians can now ",
      " how rapidly a patient will metabolize a given therapeutic agent. For instance, individuals classified as poor metabolizers may experience toxic accumulation of a drug at standard dosages, ",
      " ultra-rapid metabolizers might not reach therapeutic concentrations, rendering the treatment ineffective. The integration of pharmacogenomic testing into routine clinical practice holds the potential to ",
      " both the safety and efficacy of pharmaceutical interventions. Despite its immense promise, widespread adoption is currently impeded by substantial costs and a lack of clear clinical guidelines ",
      " the interpretation of complex genetic ",
      " ."
    ],
    questions: [
      ClozeTestOption(
        choices: ['predict', 'forget', 'conceal', 'ignore', 'manipulate'],
        correctIndex: 0,
        explanation: 'Genetik varyantların analiz edilmesi sayesinde klinisyenlerin, bir hastanın ilacı ne kadar hızlı metabolize edeceğini artık "tahmin edebildiği / öngörebildiği" (predict) ifade ediliyor.',
      ),
      ClozeTestOption(
        choices: ['whereas', 'because', 'so that', 'unless', 'even if'],
        correctIndex: 0,
        explanation: 'Zayıf metabolize edenlerde toksik birikim olurken, aşırı hızlı metabolize edenlerde tedavi etkisiz kalır. İki farklı grubun zıt durumları karşılaştırıldığı için "oysa / iken" anlamındaki "whereas" kullanılır.',
      ),
      ClozeTestOption(
        choices: ['optimize', 'compromise', 'jeopardize', 'undermine', 'worsen'],
        correctIndex: 0,
        explanation: 'Farmakogenomik testlerin klinik uygulamaya entegrasyonu, ilaç tedavisinin hem güvenliğini hem de etkinliğini "optimize etme" (optimize) potansiyeline sahiptir.',
      ),
      ClozeTestOption(
        choices: ['regarding', 'despite', 'instead of', 'apart from', 'without'],
        correctIndex: 0,
        explanation: 'Klinik kılavuz eksikliğinin, karmaşık genetik verilerin yorumlanmasıyla "ilgili / hususunda" (regarding) olduğu belirtilmektedir.',
      ),
      ClozeTestOption(
        choices: ['data', 'diseases', 'surgeries', 'symptoms', 'infections'],
        correctIndex: 0,
        explanation: 'Farmakogenomik bağlamında hastaların DNA profilleri incelendiği için yorumlanması zor olan şey karmaşık genetik "veriler" (data) olacaktır.',
      ),
    ],
  ),
];

final List<ClozeTestPassage> clozeTestData = [
  ..._originalClozeTestData,
  ...extraClozeTests,
];
