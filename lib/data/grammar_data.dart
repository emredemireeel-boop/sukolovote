class GrammarTopic {
  final String title;
  final String icon;
  final String description;
  final List<GrammarRule> rules;
  final List<String> yokdilTips;

  const GrammarTopic({
    required this.title,
    required this.icon,
    required this.description,
    required this.rules,
    required this.yokdilTips,
  });
}

class GrammarRule {
  final String name;
  final String explanation;
  final String formula;
  final List<String> examples;

  const GrammarRule({
    required this.name,
    required this.explanation,
    required this.formula,
    required this.examples,
  });
}

final List<GrammarTopic> grammarTopics = [
  // 1. PRESENT TENSES
  GrammarTopic(
    title: 'Present Tenses (Şimdiki ve Geniş Zaman)',
    icon: '⏳',
    description: 'Şu anı, genel gerçekleri ve şu ana kadar olan olayları anlatan zamanlar. Tıp bilimindeki "genel geçer doğrular" için en çok kullanılan zaman grubudur.',
    rules: [
      GrammarRule(
        name: 'Simple Present Tense',
        explanation: 'Bilimsel gerçekler, alışkanlıklar ve genellemeler. Sağlık makalelerinde "gerçekleri" bildirmek için standarttır.',
        formula: 'S + V1 (He/She/It + V1-s)',
        examples: [
          'The human heart beats approximately 100,000 times a day.',
          'Diabetes occurs when the body cannot produce enough insulin.',
          'Researchers often use mice in laboratory experiments.',
        ],
      ),
      GrammarRule(
        name: 'Present Continuous Tense',
        explanation: 'Şu anda veya bu aralar devam eden, değişmekte olan durumlar. "Currently, at present, nowadays" ile sık kullanılır.',
        formula: 'S + am/is/are + V-ing',
        examples: [
          'Scientists are currently developing a new vaccine for the mutated virus.',
          'The patient\'s condition is deteriorating rapidly.',
          'Obesity rates are increasing globally nowadays.',
        ],
      ),
      GrammarRule(
        name: 'Present Perfect Tense',
        explanation: 'Geçmişte başlayıp etkisi şu an devam eden veya geçmişte olup bitmiş ama zamanı belirtilmeyen önemli gelişmeler. YÖKDİL\'de en sık sorulan zamandır.',
        formula: 'S + have/has + V3',
        examples: [
          'Medical science has made significant progress in the last decade.',
          'The number of asthma cases has risen sharply since 2015.',
          'Several clinical trials have shown promising results recently.',
        ],
      ),
      GrammarRule(
        name: 'Present Perfect Continuous Tense',
        explanation: 'Geçmişte başlayıp şu ana kadar kesintisiz devam eden (veya yeni bitmiş) eylemler. Sürece vurgu yapar.',
        formula: 'S + have/has been + V-ing',
        examples: [
          'The patient has been coughing severely for three hours.',
          'Researchers have been studying this genetic mutation for years.',
        ],
      ),
    ],
    yokdilTips: [
      '"Recently, lately, so far, up to now, over the last few years" → Present Perfect ipuçlarıdır.',
      '"Currently, presently, nowadays" → Present Continuous veya Simple Present işaretidir.',
      'Eğer bir cümle bilimsel bir gerçekten veya bir hastalığın tanımından bahsediyorsa cevap %90 Simple Present\'tır.',
      'Since + (Geçmiş Zaman / Past Simple), Ana Cümle → Present Perfect',
    ],
  ),

  // 2. PAST TENSES
  GrammarTopic(
    title: 'Past Tenses (Geçmiş Zamanlar)',
    icon: '🕰️',
    description: 'Geçmişteki deneyleri, hastaların tıbbi öykülerini veya tarihi keşifleri anlatmak için kullanılır.',
    rules: [
      GrammarRule(
        name: 'Simple Past Tense',
        explanation: 'Geçmişte belirli bir zamanda tamamlanmış eylemler. Deneyin veya olayın ne zaman yapıldığı nettir.',
        formula: 'S + V2',
        examples: [
          'Alexander Fleming discovered penicillin in 1928.',
          'The patient experienced severe headaches yesterday.',
          'The study involved 500 participants and lasted for 6 months.',
        ],
      ),
      GrammarRule(
        name: 'Past Continuous Tense',
        explanation: 'Geçmişte devam eden eylemler. Genellikle başka bir olayın kesintiye uğrattığı "arka plan" bilgisidir.',
        formula: 'S + was/were + V-ing',
        examples: [
          'While the surgeon was operating, the patient\'s blood pressure dropped.',
          'The researchers were testing the drug when they noticed a rare side effect.',
        ],
      ),
      GrammarRule(
        name: 'Past Perfect Tense',
        explanation: 'Geçmişteki iki olaydan "daha önce" olanını vurgular. Zaman çizelgesinde en gerideki eylemdir.',
        formula: 'S + had + V3',
        examples: [
          'By the time the ambulance arrived, the patient had already lost consciousness.',
          'Before the introduction of antibiotics, minor infections had killed millions.',
          'The symptoms had worsened significantly before she finally consulted a doctor.',
        ],
      ),
      GrammarRule(
        name: 'Past Perfect Continuous Tense',
        explanation: 'Geçmişte başlayıp, geçmişteki başka bir olaya kadar devam eden süreci anlatır.',
        formula: 'S + had been + V-ing',
        examples: [
          'The man had been smoking for 20 years before he was diagnosed with lung cancer.',
          'Scientists had been trying to map the human genome long before it was completed.',
        ],
      ),
    ],
    yokdilTips: [
      '"In 1990, yesterday, last year, two centuries ago" → Simple Past kesin işaretidir.',
      '"By the time + Simple Past" yapısı varsa diğer cümle %99 Past Perfect (had V3) olur.',
      '"Before" ve "After" bağlaçları Past Perfect ile çok sık test edilir (After + Past Perfect, Simple Past).',
    ],
  ),

  // 3. FUTURE TENSES
  GrammarTopic(
    title: 'Future Tenses (Gelecek Zamanlar)',
    icon: '🚀',
    description: 'Gelecekte beklenen durumlar, öngörüler ve gelecekte tamamlanacak araştırmalar.',
    rules: [
      GrammarRule(
        name: 'Simple Future (Will)',
        explanation: 'Tahminler, anlık kararlar veya kesin olmayan beklentiler.',
        formula: 'S + will + V1',
        examples: [
          'Climate change will likely increase the spread of infectious diseases.',
          'The new hospital wing will open next month.',
          'Researchers believe that they will find a cure within a decade.',
        ],
      ),
      GrammarRule(
        name: 'Be Going To',
        explanation: 'Kanıta dayalı tahminler veya planlanmış eylemler.',
        formula: 'S + am/is/are going to + V1',
        examples: [
          'Look at those x-rays; the patient is going to need surgery.',
          'The organization is going to launch a massive vaccination campaign next week.',
        ],
      ),
      GrammarRule(
        name: 'Future Continuous Tense',
        explanation: 'Gelecekte belli bir noktada devam etmekte olacak eylemler.',
        formula: 'S + will be + V-ing',
        examples: [
          'This time tomorrow, the surgical team will be performing the transplant.',
          'In the next few years, scientists will be studying the long-term effects of the drug.',
        ],
      ),
      GrammarRule(
        name: 'Future Perfect Tense',
        explanation: 'Gelecekte belirli bir zamana kadar tamamlanmış olacak eylemler. YÖKDİL\'de çok popülerdir!',
        formula: 'S + will have + V3',
        examples: [
          'By the year 2050, the global population will have reached nearly 10 billion.',
          'By the end of this century, scientists will have eradicated several genetic disorders.',
        ],
      ),
    ],
    yokdilTips: [
      '"By 2050, By the end of this year, By the time you arrive" ifadelerini görürseniz cevap %90 Future Perfect (will have V3) tense\'tir.',
      '"Predict, forecast, expect, anticipate" fiillerinden sonra genellikle will gelir.',
    ],
  ),

  // 4. MODALS
  GrammarTopic(
    title: 'Modals (Kipler)',
    icon: '🛠️',
    description: 'Olasılık, zorunluluk, yetenek veya tavsiye bildiren yapılar. Tıbbi metinlerde olasılık (may/can) ve zorunluluk (must) kritiktir.',
    rules: [
      GrammarRule(
        name: 'Olasılık ve İhtimal (Possibility)',
        explanation: 'Tıpta kesin konuşmaktan kaçınmak için sıkça kullanılır.',
        formula: 'May / Might / Could / Can + V1',
        examples: [
          'Prolonged exposure to the sun may lead to skin cancer.',
          'The new strain could be more contagious than the previous one.',
          'Depression can affect physical health as well as mental well-being.',
        ],
      ),
      GrammarRule(
        name: 'Zorunluluk ve Gereklilik (Necessity)',
        explanation: 'Tıbbi kurallar ve kesin gereksinimler.',
        formula: 'Must / Have to / Need to + V1',
        examples: [
          'Surgical instruments must be sterilized before every procedure.',
          'Patients with hypertension have to monitor their blood pressure regularly.',
        ],
      ),
      GrammarRule(
        name: 'Tavsiye ve Öneri (Advice)',
        explanation: 'Hastalara verilen öneriler veya klinik rehberlik.',
        formula: 'Should / Ought to / Had better + V1',
        examples: [
          'Adults should consume at least 2 liters of water daily.',
          'You had better stop smoking if you want to improve your lung capacity.',
        ],
      ),
      GrammarRule(
        name: 'Geçmişe Yönelik Çıkarım & Pişmanlık (Perfect Modals)',
        explanation: 'Geçmişte olmuş bitmiş olaylara dair yorumlar. Çok sorulur!',
        formula: 'Modal + have + V3',
        examples: [
          'The patient must have forgotten to take his pills. (Güçlü tahmin: Kesin unuttu)',
          'She should have consulted a doctor earlier. (Pişmanlık: Danışmalıydı ama danışmadı)',
          'The virus could have spread through contaminated water. (Geçmiş ihtimal: Yayılmış olabilir)',
          'You needn\'t have brought the records; we already have them. (Gereksiz eylem: Gerek yoktu ama yaptın)',
        ],
      ),
    ],
    yokdilTips: [
      '"Should have V3" (yapmalıydı ama yapmadı) ile "Must have V3" (yapmış olmalı - kesinlik çıkarımı) farkı sürekli test edilir.',
      'Bilimsel metinlerde "may cause" veya "can result in" (neden olabilir) kalıpları, "will cause" (neden olacak) yapısından çok daha yaygındır.',
    ],
  ),

  // 5. PASSIVE VOICE
  GrammarTopic(
    title: 'Edilgen Çatı (Passive Voice)',
    icon: '🔄',
    description: 'Bilimsel, akademik ve tıbbi İngilizcenin temel taşıdır. Eylemi kimin yaptığından çok eylemin kendisi önemlidir.',
    rules: [
      GrammarRule(
        name: 'Tense\'lere Göre Passive Formülleri',
        explanation: 'Her zamanın "be + V3" uyarlaması vardır.',
        formula: 'Present: am/is/are + V3\nPast: was/were + V3\nPerfect: have/has been + V3\nModals: modal + be + V3',
        examples: [
          'Blood samples are collected daily. (Geniş Zaman)',
          'The tumor was successfully removed. (Geçmiş Zaman)',
          'A cure has not yet been discovered. (Present Perfect)',
          'The medication must be taken with meals. (Modal)',
        ],
      ),
      GrammarRule(
        name: 'Kişisel Olmayan Edilgen (Impersonal Passive)',
        explanation: 'Genel kanıları bildirmek için kalıplaşmış "It is..." başlangıçları.',
        formula: 'It is + believed/thought/known/reported + that + Cümle',
        examples: [
          'It is estimated that 1 in 10 adults suffers from diabetes.',
          'It is widely acknowledged that stress impairs the immune system.',
        ],
      ),
      GrammarRule(
        name: 'To Infinitive ile Passive',
        explanation: 'Özne cümlenin başındaysa, eylem "to" ile bağlanır.',
        formula: 'S + is thought/known/reported + to V1 (veya to have V3)',
        examples: [
          'The virus is known to mutate rapidly. (Bilinir ki mutasyona uğrar)',
          'The ancient Egyptians are believed to have practiced basic surgery. (Eskiden yaptıklarına inanılır: to have V3)',
        ],
      ),
    ],
    yokdilTips: [
      'Seçeneklerde aktif/pasif ayrımı yapmak için fiilden sonra bir "nesne" (neyi/kimi) var mı diye bakın. Nesne YOKSA ve fiil geçişli bir fiilse (örn: discover, treat, give) cevap %99 Passive\'dir.',
      '"to have V3" (Perfect Infinitive) geçmişteki bir eylemi passive ile bağlarken kullanılır (örn: is believed to have died = öldüğüne inanılıyor).',
    ],
  ),

  // 6. RELATIVE CLAUSES
  GrammarTopic(
    title: 'Sıfat Cümlecikleri (Relative Clauses)',
    icon: '🔗',
    description: 'Bir ismi (hastalık, hasta, organ, vb.) açıklayan cümleciklerdir.',
    rules: [
      GrammarRule(
        name: 'Temel İlgi Zamirleri (Relative Pronouns)',
        explanation: 'Açıklanacak ismin niteliğine göre pronoun seçilir.',
        formula: 'Who (insan), Which (cansız/hayvan), That (her ikisi), Whose (sahiplik), Where (yer)',
        examples: [
          'The physician who treated you is an expert in oncology.',
          'The medication which/that was prescribed has severe side effects.',
          'Patients whose immune systems are compromised must take extra care.',
          'The clinic where the trials were conducted is closed.',
        ],
      ),
      GrammarRule(
        name: 'Preposition + Relative Pronoun',
        explanation: 'Eğer kullanılan fiil bir edat (preposition) alıyorsa, edat "which" veya "whom" kelimesinin önüne gelebilir.',
        formula: 'in which, for whom, to which, on which...',
        examples: [
          'The disease against which this vaccine was developed is highly lethal.',
          'The conditions under which the virus thrives are humid and warm.',
          'The patients to whom the placebo was given showed no improvement.',
        ],
      ),
      GrammarRule(
        name: 'Relative Clause Reduction (Kısaltmalar)',
        explanation: 'Cümlecikteki "who/which/that" atılıp, fiile müdahale edilir. YÖKDİL\'de kesin sorudur!',
        formula: 'Aktif kısaltma: V-ing\nPassive kısaltma: V3\nZorunluluk/İlk/Son kısaltma: to V1',
        examples: [
          'Patients suffering from asthma should avoid this area. (Aktif: who suffer → suffering)',
          'The medicine prescribed by the doctor is expensive. (Passive: which was prescribed → prescribed)',
          'Fleming was the first scientist to discover antibiotics. (the first/last/only varsa → to V1)',
        ],
      ),
    ],
    yokdilTips: [
      'Virgül (,) varsa "that" kullanılamaz! "Dr. House, who is..." doğru, "Dr. House, that is..." YANLIŞ.',
      'Boşluktan önce "the first, the last, the only, the best" gibi kalıplar varsa %100 TO (to V1, to be V3) ile başlayan seçenekleri arayın.',
      'Edatlı relative (in which vb.) her zaman arkasından TAM CÜMLE (Özne + Fiil) alır.',
    ],
  ),

  // 7. NOUN CLAUSES
  GrammarTopic(
    title: 'İsim Cümlecikleri (Noun Clauses)',
    icon: '🧠',
    description: 'Bir cümlenin öznesi ya da nesnesi konumunda bulunan ve bir ismi temsil eden yan cümlelerdir.',
    rules: [
      GrammarRule(
        name: 'That Clauses (Düz Cümleler)',
        explanation: 'Bir gerçeklik veya iddia bildirir.',
        formula: 'S + V + that + Tam Cümle',
        examples: [
          'Research indicates that diet plays a huge role in heart disease.',
          'That the virus is airborne has been confirmed by the WHO. (Özne konumunda)',
          'The fact that smoking causes cancer is undisputed.',
        ],
      ),
      GrammarRule(
        name: 'Wh- Clauses (Soru Kelimeleri)',
        explanation: 'Soru bildiren ama soru işareti almayan, düz cümle dizilişine sahip yapılar.',
        formula: 'S + V + wh- word + S + V',
        examples: [
          'Scientists do not fully understand how the brain stores memories.',
          'What caused the sudden outbreak remains a mystery. (Özne konumunda)',
          'The dosage depends on how much the patient weighs.',
        ],
      ),
      GrammarRule(
        name: 'Whether / If Clauses',
        explanation: 'Belirsizlik, "olup olmadığı" anlamı katar.',
        formula: 'S + V + whether/if + S + V',
        examples: [
          'The doctors are debating whether the surgery is necessary (or not).',
          'It remains to be seen if the new policy will reduce infection rates.',
        ],
      ),
    ],
    yokdilTips: [
      '"Wh-" kelimelerinden sonra asla devrik soru cümlesi gelmez. "how does it work" YANLIŞ, "how it works" DOĞRU.',
      'Eğer boşluktan sonra "or not" varsa, tek seçenek "whether" olur.',
      'Özne konumunda cümlenin başında boşluk varsa "That" veya "What/Whether" en güçlü adaylardır. "If" cümlenin başına İSİM CÜMLECİĞİ (olup olmadığı anlamında) olarak GELEMEZ.',
    ],
  ),

  // 8. GERUND & INFINITIVE
  GrammarTopic(
    title: 'Gerunds & Infinitives (Fiilimsiler)',
    icon: '🏃',
    description: 'Fiilin isimleşmiş halleridir (-ing veya to). Ezber gerektiren ancak belirli kuralları olan bir konudur.',
    rules: [
      GrammarRule(
        name: 'Gerund (-ing) Alan Yapılar',
        explanation: 'Belirli fiillerden ve TÜM edatlardan (prepositions) sonra.',
        formula: 'Fiiller: admit, avoid, consider, delay, deny, enjoy, risk, suggest.\nEdatlar: in, of, for, about, by, without + V-ing',
        examples: [
          'The patient denied consuming alcohol before the test.',
          'Surgeons must wash their hands thoroughly before operating.',
          'The new therapy is effective in reducing inflammation.',
        ],
      ),
      GrammarRule(
        name: 'Infinitive (to V1) Alan Yapılar',
        explanation: 'Belirli fiillerden ve TÜM sıfatlardan sonra.',
        formula: 'Fiiller: agree, aim, attempt, claim, decide, expect, fail, plan, tend.\nSıfatlar: difficult to, easy to, important to, crucial to',
        examples: [
          'The immune system failed to recognize the mutated virus.',
          'It is crucial to administer the antidote within one hour.',
          'Many elderly patients tend to suffer from joint pain.',
        ],
      ),
      GrammarRule(
        name: 'Amaç Bildiren Infinitive',
        explanation: '"-mek, -mak için" anlamı verir.',
        formula: 'to V1 / in order to V1 / so as to V1',
        examples: [
          'To prevent the spread of the disease, quarantine was strictly enforced.',
          'The patient was sedated in order to minimize pain during the procedure.',
        ],
      ),
    ],
    yokdilTips: [
      'Preposition varsa arkası her zaman -ing: "capable OF treating", "responsible FOR managing", "used TO working".',
      'Cümle başında boşluk varsa ve bir eylem özne oluyorsa (Örn: Sigara içmek öldürür), genellikle "V-ing" (Smoking kills) kullanılır.',
      '"Stop, remember, forget" gibi fiiller hem -ing hem to alırlar ancak anlam değişir. (stop smoking: sigarayı bırakmak / stop to smoke: sigara içmek için durmak).',
    ],
  ),

  // 9. CONDITIONALS (IF CLAUSES)
  GrammarTopic(
    title: 'Conditionals (Koşul Cümlecikleri)',
    icon: '⚖️',
    description: 'Bir olayın gerçekleşmesinin başka bir koşula bağlı olduğu durumlar.',
    rules: [
      GrammarRule(
        name: 'Type 1 (Gerçekleşmesi Muhtemel)',
        explanation: 'Gelecek veya şu an için olası durumlar.',
        formula: 'If + Present Simple, will/can/may + V1',
        examples: [
          'If the tumor is benign, it will not spread to other organs.',
          'If the patient strictly follows the diet, blood sugar can be controlled.',
        ],
      ),
      GrammarRule(
        name: 'Type 2 (Hayali / Varsayımsal - Şu An)',
        explanation: 'Şu anki durumun tam tersi hayal edildiğinde.',
        formula: 'If + Past Simple, would/could/might + V1',
        examples: [
          'If a cure for HIV existed, millions of lives would be saved.',
          'If I were the doctor, I wouldn\'t prescribe that heavy medication.',
        ],
      ),
      GrammarRule(
        name: 'Type 3 (Hayali - Geçmiş)',
        explanation: 'Geçmişte olmuş bitmiş olaylara dair pişmanlık veya varsayım.',
        formula: 'If + Past Perfect (had V3), would/could/might have + V3',
        examples: [
          'If the emergency team had arrived five minutes later, the patient would have died.',
          'The infection wouldn\'t have spread if they had sterilized the equipment properly.',
        ],
      ),
      GrammarRule(
        name: 'Diğer Koşul Bağlaçları',
        explanation: '"If" dışında kullanılan ve koşul anlamı katan bağlaçlar.',
        formula: 'Unless (if not), Provided/Providing that (şartıyla), As long as (sürece), In case (durumunda, ihtimaline karşı)',
        examples: [
          'Unless the bleeding stops soon, he will need a transfusion. (Durmazsa)',
          'You can leave the hospital tomorrow provided that your fever goes down. (Düşmesi şartıyla)',
          'Keep the epinephrine auto-injector ready in case he has a severe allergic reaction. (Alerjik reaksiyon geçirmesi ihtimaline karşı)',
        ],
      ),
    ],
    yokdilTips: [
      'Type 3 devrik yapısı YÖKDİL\'de favoridir: "Had the diagnosis been made earlier, she would have survived." (If düşer, had başa gelir).',
      '"In case" cümlesi "öyle olursa diye önlem alma" mantığı taşır. "In case it rains, take an umbrella." (Yağmur yağarsa diye şemsiye al).',
      'Unless olan cümlede (yan cümlede) NOT kullanılmaz. Çünkü unless zaten "if not" demektir.',
    ],
  ),
];
