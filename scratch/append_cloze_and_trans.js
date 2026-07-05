const fs = require('fs');

const clozeFile = 'c:/Users/GAMER/Desktop/sukoyok/lib/data/cloze_test_data.dart';
let clozeContent = fs.readFileSync(clozeFile, 'utf8');

const newCloze = `
  ClozeTestPassage(
    title: 'Sleep and Memory Consolidation',
    textSegments: [
      'Sleep is increasingly recognized as a vital component of memory consolidation. During sleep, particularly the rapid eye movement (REM) and slow-wave stages, the brain processes information acquired during the day. This active processing allows the brain to ',
      ' neural connections, making memories more stable. It is not merely a passive state of rest, ',
      ' many people used to believe. Sleep deprivation, on the other hand, impairs cognitive function and significantly reduces the ability to recall new facts. Research indicates that students who get adequate sleep perform better on exams ',
      ' their peers who pull all-nighters. Furthermore, chronic sleep disturbances have been linked to long-term memory deficits and a higher risk of developing neurodegenerative conditions ',
      ' Alzheimer\\'s disease. Therefore, public health campaigns should emphasize that prioritizing sleep is essential for maintaining both physical health and optimal cognitive ',
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
  ),`;

clozeContent = clozeContent.replace('  ...extraClozeTests,', newCloze + '\n  ...extraClozeTests,');
fs.writeFileSync(clozeFile, clozeContent, 'utf8');
console.log('Appended cloze tests.');

const transFile = 'c:/Users/GAMER/Desktop/sukoyok/lib/data/translation_data.dart';
let transContent = fs.readFileSync(transFile, 'utf8');

const newTrans = `
  TranslationQuestion(
    sourceText: "Prolonged exposure to psychological stress has been shown to elevate cortisol levels, which in turn can lead to impaired immune function and increased susceptibility to infectious diseases.",
    options: [
      "Psikolojik strese uzun süre maruz kalmanın kortizol seviyelerini yükselttiği, bunun da bağışıklık fonksiyonunun bozulmasına ve bulaşıcı hastalıklara karşı duyarlılığın artmasına yol açabildiği gösterilmiştir.",
      "Psikolojik stresin kortizol seviyelerini artırması, bağışıklık sisteminin bozulmasına yol açtığı için bulaşıcı hastalıklara yakalanma ihtimalini önemli ölçüde artırdığı kanıtlanmıştır.",
      "Uzun süreli psikolojik stresin kortizol seviyelerini yükselterek bağışıklık sistemini baskıladığı ve kişiyi enfeksiyonlara karşı daha zayıf hale getirdiği bilinen bir gerçektir.",
      "Bulaşıcı hastalıklara yatkınlığı artıran ve bağışıklık sistemini bozan başlıca etkenin, uzun süre maruz kalınan psikolojik strese bağlı olarak artan kortizol seviyeleri olduğu görülmüştür.",
      "Psikolojik strese uzun süre maruz kalanlarda kortizol seviyelerinin yükseldiği ve bunun da bulaşıcı hastalıklara yatkınlığı artırarak bağışıklık sistemini çökerttiği kanıtlanmıştır."
    ],
    correctIndex: 0,
    explanation: "'has been shown to' (gösterilmiştir), 'Prolonged exposure' (uzun süre maruz kalma), 'which in turn' (bunun da/sırasıyla). A şıkkı kelimesi kelimesine bir çeviridir.",
    difficulty: "Zor",
    isEnToTr: true,
    keyPhrases: ["Prolonged exposure (uzun süre maruz kalma)", "which in turn (bunun da)", "impaired immune function (bağışıklık fonksiyonunun bozulması)"],
  ),
  TranslationQuestion(
    sourceText: "Despite the significant advancements in targeted cancer therapies over the past decade, early detection through routine screening remains the most effective method for reducing mortality rates.",
    options: [
      "Son on yılda hedefe yönelik kanser tedavilerinde sağlanan önemli ilerlemelere rağmen, rutin taramalar yoluyla erken teşhis, ölüm oranlarını azaltmak için en etkili yöntem olmaya devam etmektedir.",
      "Kanser tedavilerinde son on yıldaki büyük gelişmelere karşın, ölüm oranlarını en çok düşüren yöntemin hala düzenli tarama testleri ve erken teşhis olduğu kabul edilmektedir.",
      "Hedefe yönelik kanser tedavilerindeki ciddi ilerlemelere rağmen, erken teşhisin ölüm oranlarını düşürmedeki en önemli yol olduğu son on yılda kanıtlanmıştır.",
      "Rutin taramalarla erken teşhis, kanserde ölüm oranlarını azaltmanın en etkili yolu olsa da, hedefe yönelik tedaviler son on yılda oldukça ilerlemiştir.",
      "Son on yılda hedefe yönelik tedaviler çok ilerlemiş olmasına rağmen, kanserde ölüm oranlarını azaltmanın en kesin çözümü erken teşhis ve rutin taramalardır."
    ],
    correctIndex: 0,
    explanation: "'Despite' (rağmen), 'advancements' (ilerlemeler), 'remains' (olmaya devam etmektedir). A şıkkı orijinal cümleye sadıktır.",
    difficulty: "Orta",
    isEnToTr: true,
    keyPhrases: ["Despite (rağmen)", "advancements (ilerlemeler)", "remains (olmaya devam etmektedir)"],
  ),
  TranslationQuestion(
    sourceText: "Because infants have an underdeveloped immune system, they rely heavily on the passive immunity acquired from maternal antibodies transferred during breastfeeding.",
    options: [
      "Bebekler az gelişmiş bir bağışıklık sistemine sahip oldukları için, büyük ölçüde emzirme sırasında aktarılan anne antikorlarından elde edilen pasif bağışıklığa güvenirler.",
      "Bebeklerin bağışıklık sistemleri yeterince gelişmemiştir, bu yüzden emzirme döneminde anneden geçen antikorlarla kazanılan pasif bağışıklığa ihtiyaç duyarlar.",
      "Bebeklerdeki bağışıklık sisteminin yetersiz olması, onların anne sütüyle geçen antikorların sağladığı pasif bağışıklığa muhtaç olmalarının temel nedenidir.",
      "Az gelişmiş bir bağışıklık sistemine sahip olan bebekler, emzirme yoluyla anneden aldıkları antikorlara dayanan pasif bir bağışıklık mekanizması kullanırlar.",
      "Bebekler yeterince gelişmiş bir bağışıklık sistemine sahip olmadıklarından, emzirme süresince anneden sağlanan antikorların sunduğu pasif bağışıklığa dayanmaktadırlar."
    ],
    correctIndex: 0,
    explanation: "'Because' (için/dolayı), 'rely heavily on' (büyük ölçüde ... güvenirler), 'acquired from' (... elde edilen). A şıkkı, yapıyı en doğru aktaran seçenektir.",
    difficulty: "Orta",
    isEnToTr: true,
    keyPhrases: ["Because (için/dolayı)", "rely heavily on (büyük ölçüde güvenirler)", "acquired from (elde edilen)"],
  ),
  TranslationQuestion(
    sourceText: "Surgical site infections not only increase the cost of healthcare due to extended hospitalization but also pose a life-threatening risk to elderly patients with comorbidities.",
    options: [
      "Cerrahi alan enfeksiyonları, uzamış hastanede yatış nedeniyle sadece sağlık bakım maliyetini artırmakla kalmaz, aynı zamanda ek hastalıkları olan yaşlı hastalar için hayati tehlike oluşturan bir risk teşkil eder.",
      "Cerrahi alan enfeksiyonlarının hastanede kalış süresini uzatarak maliyeti artırmasının yanı sıra, ek hastalığı bulunan yaşlılarda hayati riskler yarattığı da bilinmektedir.",
      "Hastanede yatış süresini uzatan cerrahi bölge enfeksiyonları sağlık maliyetini artırmakla beraber, kronik hastalığı olan yaşlılar için ölümcül bir risk oluşturur.",
      "Sadece sağlık harcamalarını artırmayan cerrahi alan enfeksiyonları, aynı zamanda ek rahatsızlıklara sahip olan yaşlı hastalarda yaşamı tehdit eden durumlara yol açar.",
      "Cerrahi müdahale sonrası gelişen enfeksiyonlar, hastane masraflarını artırmakla kalmayıp, eşlik eden hastalıkları olan yaşlı bireylerin yaşamlarını tehlikeye atar."
    ],
    correctIndex: 0,
    explanation: "'not only ... but also' (sadece ... kalmaz, aynı zamanda), 'due to extended hospitalization' (uzamış hastanede yatış nedeniyle). A şıkkı tam çeviridir.",
    difficulty: "Zor",
    isEnToTr: true,
    keyPhrases: ["not only ... but also (sadece ... kalmaz, aynı zamanda)", "due to (nedeniyle)", "pose a life-threatening risk (hayati tehlike oluşturan bir risk teşkil eder)"],
  ),
  TranslationQuestion(
    sourceText: "Medical professionals assert that incorporating mindful meditation into a daily routine can significantly alleviate the symptoms of generalized anxiety disorder.",
    options: [
      "Tıp uzmanları, bilinçli farkındalık meditasyonunu günlük bir rutine dahil etmenin yaygın anksiyete bozukluğunun semptomlarını önemli ölçüde hafifletebileceğini ileri sürmektedir.",
      "Uzman doktorlara göre, yaygın anksiyete bozukluğunun belirtilerini büyük oranda azaltmanın yolu, bilinçli farkındalık meditasyonunu her gün uygulamaktır.",
      "Tıbbi uzmanlar, yaygın anksiyete bozukluğu semptomlarını ciddi şekilde hafifleteceği için bilinçli farkındalık meditasyonunun günlük rutine alınması gerektiğini savunuyor.",
      "Tıp uzmanları, günlük yaşamın bir parçası haline getirilen bilinçli farkındalık meditasyonunun, anksiyete bozukluğu belirtilerini oldukça azalttığını ifade ediyor.",
      "Bilinçli farkındalık meditasyonunu günlük rutinlerine katanların yaygın anksiyete bozukluğu semptomlarından önemli ölçüde kurtuldukları tıp uzmanlarınca doğrulanmıştır."
    ],
    correctIndex: 0,
    explanation: "'assert that' (ileri sürmektedir/savunmaktadır), 'incorporating ... into' (... dahil etmenin), 'alleviate' (hafifletebileceğini). A şıkkı doğrudur.",
    difficulty: "Orta",
    isEnToTr: true,
    keyPhrases: ["assert that (ileri sürmektedir)", "incorporating (dahil etmenin)", "alleviate (hafifletebileceğini)"],
  ),
  TranslationQuestion(
    sourceText: "Aşırı şeker tüketimi insülin direncine yol açtığından, bireylerin diyetlerinde işlenmiş gıdalardan kaçınmaları diyabetin önlenmesinde hayati bir rol oynamaktadır.",
    options: [
      "Since excessive sugar consumption leads to insulin resistance, individuals' avoidance of processed foods in their diets plays a vital role in the prevention of diabetes.",
      "Because excessive sugar consumption leads to insulin resistance, to avoid processed foods plays an important role in preventing diabetes for individuals.",
      "As excessive sugar consumption is leading to insulin resistance, it is vital for individuals to avoid processed foods in their diets to prevent diabetes.",
      "Due to the fact that excessive sugar consumption causes insulin resistance, avoiding processed foods in the diet played a vital role in diabetes prevention.",
      "Individuals' avoidance of processed foods in their diets plays a vital role in preventing diabetes, since consuming too much sugar leads to insulin resistance."
    ],
    correctIndex: 0,
    explanation: "'-dığından' (Since/As/Because), 'bireylerin diyetlerinde işlenmiş gıdalardan kaçınmaları' (individuals\\' avoidance of processed foods in their diets). A şıkkı tam çeviridir.",
    difficulty: "Zor",
    isEnToTr: false,
    keyPhrases: ["yol açtığından (Since ... leads to)", "işlenmiş gıdalardan kaçınmaları (avoidance of processed foods)", "hayati bir rol oynamaktadır (plays a vital role)"],
  ),
  TranslationQuestion(
    sourceText: "Düzenli kardiyovasküler egzersiz, sadece kalp kasını güçlendirmekle kalmaz, aynı zamanda beyne giden kan akışını artırarak bilişsel fonksiyonları da geliştirir.",
    options: [
      "Regular cardiovascular exercise not only strengthens the heart muscle but also improves cognitive functions by increasing blood flow to the brain.",
      "Regular cardiovascular exercise does not only strengthen the heart muscle, but it also increases blood flow to the brain, which improves cognitive functions.",
      "Not only does regular cardiovascular exercise strengthen the heart muscle, it also improves cognitive functions because it increases blood flow to the brain.",
      "Regular cardiovascular exercise not only strengthens the heart muscle, it also improved cognitive functions by increasing the blood flow to the brain.",
      "By increasing blood flow to the brain, regular cardiovascular exercise not only strengthens the heart muscle but also improves cognitive functions."
    ],
    correctIndex: 0,
    explanation: "'sadece ... kalmaz, aynı zamanda' (not only ... but also), 'artırarak' (by increasing). A şıkkı en doğal ve birebir İngilizce çeviridir.",
    difficulty: "Orta",
    isEnToTr: false,
    keyPhrases: ["sadece ... kalmaz, aynı zamanda (not only ... but also)", "güçlendirmekle kalmaz (strengthens)", "artırarak (by increasing)"],
  ),
  TranslationQuestion(
    sourceText: "Her ne kadar genetik yatkınlık bazı bireyleri obeziteye daha eğilimli hale getirse de, çevresel faktörler ve yaşam tarzı seçimleri hastalığın nihai gelişimini belirler.",
    options: [
      "Although genetic predisposition makes some individuals more prone to obesity, environmental factors and lifestyle choices determine the ultimate development of the disease.",
      "Even though genetic predisposition makes some individuals more prone to obesity, the ultimate development of the disease is determined by environmental factors and lifestyle choices.",
      "While genetic predisposition makes some people more inclined to obesity, it is environmental factors and lifestyle choices that determine the final development of the disease.",
      "Genetic predisposition makes some individuals more prone to obesity; however, environmental factors and lifestyle choices determine the disease's ultimate development.",
      "Despite genetic predisposition making some individuals more prone to obesity, environmental factors and lifestyle choices are determining the ultimate development of the disease."
    ],
    correctIndex: 0,
    explanation: "'Her ne kadar ... -sa da' (Although/Even though/While), 'eğilimli' (prone to/inclined to), 'nihai gelişimini belirler' (determine the ultimate development). A şıkkı etken fiil yapısını eksiksiz korur.",
    difficulty: "Zor",
    isEnToTr: false,
    keyPhrases: ["Her ne kadar ... sa da (Although)", "daha eğilimli hale getirse de (makes ... more prone to)", "nihai gelişimini belirler (determine the ultimate development)"],
  ),
  TranslationQuestion(
    sourceText: "Yeni geliştirilen aşı, virüsün mutasyona uğramış suşlarına karşı bile yüksek bir etkinlik seviyesi sergilemiştir, bu da mevcut salgını kontrol altına alma umutlarını artırmaktadır.",
    options: [
      "The newly developed vaccine has exhibited a high level of efficacy even against mutated strains of the virus, which raises hopes of bringing the current pandemic under control.",
      "The newly developed vaccine showed a high level of efficacy against mutated virus strains, which is raising the hopes of bringing the current pandemic under control.",
      "Because the newly developed vaccine exhibited a high level of efficacy even against mutated strains of the virus, it increases hopes of controlling the current outbreak.",
      "The newly developed vaccine has exhibited a high efficacy level even against mutated strains of the virus, and this raises hopes for bringing the current pandemic under control.",
      "Showing a high level of efficacy even against mutated strains of the virus, the newly developed vaccine raises hopes of bringing the current pandemic under control."
    ],
    correctIndex: 0,
    explanation: "'sergilemiştir' (has exhibited), 'bu da' (which ...), 'kontrol altına alma' (bringing ... under control). Relative clause kullanan A şıkkı en ideal Akademik İngilizce cümlesidir.",
    difficulty: "Orta",
    isEnToTr: false,
    keyPhrases: ["sergilemiştir (has exhibited)", "bu da (which raises hopes)", "kontrol altına alma (bringing ... under control)"],
  ),
  TranslationQuestion(
    sourceText: "Uyku apne sendromu olan hastalar gece boyunca tekrar eden solunum durmaları yaşarlar; bu durum gündüz aşırı uyku haline ve uzun vadeli kalp problemlerine neden olur.",
    options: [
      "Patients with sleep apnea syndrome experience repetitive breathing pauses during the night; a condition which causes excessive daytime sleepiness and long-term heart problems.",
      "Patients who have sleep apnea syndrome experience repeated breathing pauses throughout the night, causing excessive daytime sleepiness and long-term heart problems.",
      "Experiencing repetitive breathing pauses during the night, patients with sleep apnea syndrome suffer from excessive daytime sleepiness and long-term heart problems.",
      "Patients with sleep apnea syndrome experience repetitive breathing pauses during the night; this condition causes excessive daytime sleepiness and long-term heart problems.",
      "Patients with sleep apnea syndrome experience repetitive breathing pauses throughout the night, which leads to excessive daytime sleepiness and long-term heart problems."
    ],
    correctIndex: 3,
    explanation: "'yaşarlar; bu durum ... neden olur' (experience ... ; this condition causes ...). D şıkkı (Index 3) noktalı virgüllü iki bağımsız cümleyi en doğru şekilde bağlayan seçenektir.",
    difficulty: "Orta",
    isEnToTr: false,
    keyPhrases: ["yaşarlar (experience)", "tekrar eden solunum durmaları (repetitive breathing pauses)", "bu durum ... neden olur (this condition causes)"],
  )
`;

transContent = transContent.replace('];', newTrans + '\n];');
fs.writeFileSync(transFile, transContent, 'utf8');
console.log('Appended translation tests.');
