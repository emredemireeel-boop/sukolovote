class TranslationQuestion {
  final String sourceText;
  final List<String> options;
  final int correctIndex;
  final String explanation;
  final String difficulty; // 'Kolay', 'Orta', 'Zor'
  final bool isEnToTr; // true ise İngilizce -> Türkçe, false ise Türkçe -> İngilizce
  final List<String> keyPhrases; // Önemli ipucu kelimeler

  const TranslationQuestion({
    required this.sourceText,
    required this.options,
    required this.correctIndex,
    required this.explanation,
    required this.difficulty,
    required this.isEnToTr,
    required this.keyPhrases,
  });
}

const List<TranslationQuestion> translationQuestions = [
  // ─── İNGİLİZCE -> TÜRKÇE (EN -> TR) ──────────────────────────────────
  TranslationQuestion(
    sourceText: "Regular exercise is known to reduce the risk of cardiovascular diseases, but its effect on mental health is often underestimated by many patients.",
    options: const [
      "Düzenli egzersizin kalp damar hastalıkları riskini azalttığı bilinmektedir, ancak ruh sağlığı üzerindeki etkisi birçok hasta tarafından genellikle hafife alınır.",
      "Pek çok hasta, düzenli egzersizin kalp damar hastalıkları riskini azalttığını bilse de ruh sağlığına olan etkilerini çoğu zaman önemsemez.",
      "Düzenli egzersiz sayesinde kalp damar hastalıkları riskinin azaldığı bilinmektedir ve ruh sağlığı üzerindeki etkileri hastalar tarafından dikkate alınmaktadır.",
      "Düzenli egzersizin kalp damar hastalıklarını azaltması bilinmektedir, bununla beraber ruh sağlığına etkisi hastalarca abartılmaktadır.",
      "Birçok hasta düzenli egzersizin kalp damar hastalıkları riskini düşürdüğünü bilir, ancak bunun ruh sağlığı üzerindeki etkisini genellikle yanlış değerlendirir."
    ],
    correctIndex: 0,
    explanation: "Cümle 'Regular exercise is known to...' (Düzenli egzersizin ... olduğu bilinmektedir) pasif yapısı ile başlıyor. 'but' (ancak) bağlacı ile devam edip 'is often underestimated' (genellikle hafife alınır) pasif yapısı ile bitiyor. Şıklar arasında iki pasif yapıyı da koruyan ve 'underestimate' kelimesini doğru çeviren seçenek A'dır.",
    difficulty: "Orta",
    isEnToTr: true,
    keyPhrases: ["is known to reduce (azalttığı bilinmektedir)", "but (ancak)", "is often underestimated (genellikle hafife alınır)"],
  ),
  TranslationQuestion(
    sourceText: "Since vaccines have been proven to be highly effective against severe viral infections, public health campaigns emphasize the importance of early immunization.",
    options: const [
      "Halk sağlığı kampanyalarının erken aşılamanın önemini vurgulaması, aşıların şiddetli viral enfeksiyonlara karşı yüksek derecede etkili olduğunun kanıtlanmasındandır.",
      "Aşıların şiddetli viral enfeksiyonlara karşı son derece etkili olduğu kanıtlandığı için, halk sağlığı kampanyaları erken aşılamanın önemini vurgulamaktadır.",
      "Aşılar şiddetli viral enfeksiyonlara karşı etkili olduğunu kanıtlayınca, halk sağlığı kampanyaları erken aşılamanın ne kadar önemli olduğunu vurguladı.",
      "Erken aşılamanın önemini vurgulayan halk sağlığı kampanyaları, aşıların şiddetli viral enfeksiyonlara karşı çok etkili olduğunu kanıtlamıştır.",
      "Aşıların şiddetli viral enfeksiyonlara karşı etkili olduğu bilinmektedir, bu yüzden halk sağlığı kampanyaları erken aşılamanın öneminin altını çizer."
    ],
    correctIndex: 1,
    explanation: "'Since' (için/den dolayı) bağlacı sebep bildiriyor. 'have been proven' (kanıtlandığı için). Ana cümle: 'public health campaigns emphasize...' (halk sağlığı kampanyaları vurgulamaktadır). B seçeneği bu neden-sonuç ilişkisini ve zaman/özne yapısını tam karşılıyor.",
    difficulty: "Kolay",
    isEnToTr: true,
    keyPhrases: ["Since (...dığı için)", "have been proven (kanıtlandığı)", "emphasize (vurgulamaktadır)"],
  ),
  TranslationQuestion(
    sourceText: "Although antibiotic resistance is a growing global threat, many physicians continue to prescribe antibiotics for viral respiratory tract infections.",
    options: const [
      "Antibiyotik direnci büyüyen küresel bir tehdit olmasına rağmen, birçok doktor viral solunum yolu enfeksiyonları için antibiyotik yazmaya devam etmektedir.",
      "Antibiyotik direnci artan küresel bir tehdit olduğu için, birçok doktor viral solunum yolu enfeksiyonlarına antibiyotik reçete etmeye devam ediyor.",
      "Birçok doktor viral solunum yolu enfeksiyonlarında antibiyotik yazmaya devam ettiği sürece, antibiyotik direnci büyüyen küresel bir tehdit olmaya devam edecektir.",
      "Antibiyotik direnci küresel bir tehdit haline gelmesine rağmen, doktorların çoğu viral solunum enfeksiyonlarında antibiyotik yazmayı sürdürüyor.",
      "Giderek büyüyen küresel bir tehdit olan antibiyotik direncine rağmen, pek çok hekim viral solunum yolu enfeksiyonlarını antibiyotikle tedavi etmektedir."
    ],
    correctIndex: 0,
    explanation: "'Although' (-e rağmen) bir zıtlık bağlacıdır. 'a growing global threat' (büyüyen/artan küresel bir tehdit). 'continue to prescribe' (yazmaya/reçete etmeye devam etmektedir). Tüm öğeleri eksiksiz barındıran seçenek A'dır.",
    difficulty: "Orta",
    isEnToTr: true,
    keyPhrases: ["Although (...-e rağmen)", "growing global threat (büyüyen küresel tehdit)", "continue to prescribe (yazmaya devam etmektedir)"],
  ),
  TranslationQuestion(
    sourceText: "The symptoms of Alzheimer's disease progress so slowly that the patients' relatives usually fail to notice the cognitive decline in the initial stages.",
    options: const [
      "Alzheimer hastalığının semptomları yavaşça ilerlediği için hastaların yakınları başlangıç evrelerindeki bilişsel gerilemeyi genellikle fark edemezler.",
      "Hastaların yakınları başlangıç evrelerinde bilişsel gerilemeyi genellikle fark edemeseler de, Alzheimer hastalığının belirtileri çok yavaş ilerler.",
      "Alzheimer hastalığının belirtileri o kadar yavaş ilerler ki, hastaların yakınları başlangıç evrelerindeki bilişsel gerilemeyi genellikle fark edemezler.",
      "Alzheimer hastalığının semptomlarının çok yavaş ilerlemesi, hastaların yakınlarının başlangıç evresindeki bilişsel gerilemeyi fark edememesine neden olur.",
      "Hastaların yakınlarının başlangıç evrelerinde bilişsel gerilemeyi genellikle fark edememesi, Alzheimer hastalığının belirtilerinin çok yavaş ilerlemesindendir."
    ],
    correctIndex: 2,
    explanation: "'so ... that' kalıbı 'o kadar ... ki' anlamına gelir. 'so slowly that' (o kadar yavaş ilerler ki). 'fail to notice' (fark edemezler). C seçeneği 'so...that' yapısını tam olarak yansıtmaktadır.",
    difficulty: "Zor",
    isEnToTr: true,
    keyPhrases: ["so slowly that (o kadar yavaş ... ki)", "fail to notice (fark edemezler)", "initial stages (başlangıç evrelerinde)"],
  ),
  TranslationQuestion(
    sourceText: "If left untreated, chronic hypertension can lead to severe organ damage, particularly affecting the kidneys, heart, and brain over time.",
    options: const [
      "Tedavi edilmeyen kronik hipertansiyon şiddetli organ hasarına yol açarak, zamanla özellikle böbrekleri, kalbi ve beyni etkiler.",
      "Eğer tedavi edilmezse, kronik hipertansiyon şiddetli organ hasarına yol açabilir, özellikle de zamanla böbrekleri, kalbi ve beyni etkiler.",
      "Kronik hipertansiyon tedavi edilmediği takdirde, zaman içinde böbrekleri, kalbi ve beyni etkileyen şiddetli organ hasarına yol açması muhtemeldir.",
      "Kronik hipertansiyonun tedavi edilmemesi şiddetli organ hasarına neden olabilir ve bu durum zamanla böbrekleri, kalbi ve beyni daha çok etkiler.",
      "Eğer kronik hipertansiyon tedavi edilmezse, şiddetli organ hasarı meydana gelebilir ve zamanla özellikle böbrekler, kalp ve beyin bundan etkilenir."
    ],
    correctIndex: 1,
    explanation: "'If left untreated' (eğer tedavi edilmezse / tedavi edilmediği takdirde), 'can lead to' (yol açabilir), 'particularly affecting' (özellikle ... etkileyerek / etkiler). Seçenek B gramatikal yapıyı (koşul cümlesi + modal + participial phrase) en iyi koruyandır.",
    difficulty: "Orta",
    isEnToTr: true,
    keyPhrases: ["If left untreated (Eğer tedavi edilmezse)", "can lead to (yol açabilir)", "particularly affecting (özellikle etkileyerek/etkiler)"],
  ),

  // ─── TÜRKÇE -> İNGİLİZCE (TR -> EN) ──────────────────────────────────
  TranslationQuestion(
    sourceText: "Diyabet prevalansı son yıllarda önemli ölçüde arttığı için, sağlık uzmanları beslenme alışkanlıklarında acil değişiklikler önermektedir.",
    options: const [
      "Because the prevalence of diabetes significantly increased in recent years, healthcare professionals have recommended urgent changes in dietary habits.",
      "Since the prevalence of diabetes has increased significantly in recent years, healthcare professionals recommend urgent changes in dietary habits.",
      "As the prevalence of diabetes is increasing significantly in recent years, healthcare professionals recommended urgent changes in dietary habits.",
      "Healthcare professionals recommend urgent changes in dietary habits, but the prevalence of diabetes has increased significantly in recent years.",
      "The prevalence of diabetes having increased significantly in recent years, healthcare professionals recommended urgent changes to dietary habits."
    ],
    correctIndex: 1,
    explanation: "'-dığı için' sebep bağlacı 'Since/Because/As' ile karşılanır. 'son yıllarda' (in recent years) ifadesi Present Perfect Tense gerektirir ('has increased'). Ana cümle: 'önermektedir' (recommend - Geniş zaman). B seçeneği zaman uyumuna ve kelime karşılıklarına tam uymaktadır.",
    difficulty: "Orta",
    isEnToTr: false,
    keyPhrases: ["arttığı için (Since/Because... has increased)", "son yıllarda (in recent years)", "önermektedir (recommend)"],
  ),
  TranslationQuestion(
    sourceText: "Yeni geliştirilen ilaç sadece kanser hücrelerini hedef almakla kalmaz, aynı zamanda sağlıklı dokulara verilen zararı da en aza indirir.",
    options: const [
      "The newly developed drug targets not only cancer cells but also minimizes the damage to healthy tissues.",
      "Not only does the newly developed drug target cancer cells, it also minimizes the damage done to healthy tissues.",
      "The newly developed drug not only targets cancer cells but also minimizes the damage caused to healthy tissues.",
      "The newly developed drug targets cancer cells, and it also minimizes the damage which is caused to healthy tissues.",
      "Not only the newly developed drug targets cancer cells, but it also minimizes the damage caused to healthy tissues."
    ],
    correctIndex: 2,
    explanation: "'sadece ... kalmaz, aynı zamanda ... da' kalıbı İngilizce'de 'not only ... but also' yapısıdır. Özne ortak olduğu için (The newly developed drug), eylemler (targets ve minimizes) arasına bu kalıp girmelidir. C seçeneği bu paralelliği mükemmel sağlar.",
    difficulty: "Zor",
    isEnToTr: false,
    keyPhrases: ["sadece... kalmaz, aynı zamanda (not only... but also)", "hedef alır (targets)", "en aza indirir (minimizes)"],
  ),
  TranslationQuestion(
    sourceText: "Genetik yatkınlığa ek olarak, çevresel faktörler de otoimmün hastalıkların gelişiminde kritik bir rol oynamaktadır.",
    options: const [
      "In addition to genetic predisposition, environmental factors also play a critical role in the development of autoimmune diseases.",
      "Besides genetic predisposition, environmental factors are playing a critical role in developing autoimmune diseases.",
      "Along with genetic predisposition, environmental factors have played a critical role in the development of autoimmune diseases.",
      "Environmental factors play a critical role in the development of autoimmune diseases, as well as genetic predisposition.",
      "As well as genetic predisposition, environmental factors also play a critical role in developing autoimmune diseases."
    ],
    correctIndex: 0,
    explanation: "'-e ek olarak' ifadesi en iyi 'In addition to' veya 'Besides' ile çevrilir. 'rol oynamaktadır' genel bir durumu ifade ettiği için Present Simple (play a critical role) kullanılır. A seçeneği Türkçe cümlenin yapısını aynen kopyalayan en doğru çeviridir.",
    difficulty: "Kolay",
    isEnToTr: false,
    keyPhrases: ["-e ek olarak (In addition to)", "rol oynamaktadır (play a role)", "gelişiminde (in the development of)"],
  ),
  TranslationQuestion(
    sourceText: "Cerrahi müdahale ne kadar karmaşık olursa olsun, hastanın ameliyat sonrası bakımı iyileşme sürecinin en önemli parçasıdır.",
    options: const [
      "No matter how complex the surgical intervention is, the patient's postoperative care is the most important part of the recovery process.",
      "However complex the surgical intervention may be, the postoperative care of the patient is the most important part in the recovery process.",
      "Although the surgical intervention is complex, the patient's postoperative care remains the most important part of the recovery process.",
      "Regardless of the complexity of the surgical intervention, the patient's postoperative care is a very important part of the recovery process.",
      "No matter how complex the surgical intervention was, the patient's postoperative care is the most important part of the recovery process."
    ],
    correctIndex: 0,
    explanation: "'Ne kadar ... olursa olsun' kalıbı 'No matter how + adjective' veya 'However + adjective' ile çevrilir. A ve B şıkları birbirine yakındır ancak A şıkkı 'is' kullanarak genel bir doğruyu en yalın haliyle ifade eder ve YÖKDİL çeviri mantığına en uygun, en doğrudan çeviridir.",
    difficulty: "Zor",
    isEnToTr: false,
    keyPhrases: ["ne kadar karmaşık olursa olsun (No matter how complex... is)", "ameliyat sonrası bakım (postoperative care)", "iyileşme sürecinin (of the recovery process)"],
  ),
  TranslationQuestion(
    sourceText: "Araştırmacılar, stres hormonlarının bağışıklık sistemini baskılayarak vücudu enfeksiyonlara karşı daha duyarlı hale getirdiğini buldular.",
    options: const [
      "Researchers have found that stress hormones suppress the immune system, making the body more susceptible to infections.",
      "Researchers found that stress hormones make the body more susceptible to infections by suppressing the immune system.",
      "Researchers found that by suppressing the immune system, stress hormones are making the body more susceptible to infections.",
      "Researchers have found that suppressing the immune system by stress hormones makes the body more susceptible to infections.",
      "Researchers discovered that stress hormones, which suppress the immune system, make the body more susceptible to infections."
    ],
    correctIndex: 1,
    explanation: "Cümle 'Araştırmacılar ... buldular' (Researchers found that) ile başlıyor. 'baskılayarak' kelimesi '-arak/-erek' anlamı veren 'by + V-ing' yapısını (by suppressing) gerektirir. 'duyarlı hale getirdiğini' (make the body more susceptible). En uyumlu seçenek B'dir.",
    difficulty: "Orta",
    isEnToTr: false,
    keyPhrases: ["baskılayarak (by suppressing)", "duyarlı hale getirdiğini (make ... susceptible)"],
  ),
  // --- 10 NEW EN -> TR QUESTIONS ---
  TranslationQuestion(
    sourceText: "Although significant progress has been made in understanding the underlying mechanisms of autoimmune diseases, developing targeted therapies that do not compromise the entire immune system remains a formidable challenge.",
    options: const [
      "Otoimmün hastalıkların altında yatan mekanizmaları anlamada önemli ilerlemeler kaydedilmiş olmasına rağmen, tüm bağışıklık sistemini tehlikeye atmayan hedefe yönelik tedaviler geliştirmek zorlu bir engel olmaya devam etmektedir.",
      "Tüm bağışıklık sistemini zayıflatmayan hedefe yönelik tedavilerin geliştirilmesi zorlu bir süreç olsa da, otoimmün hastalıkların temel mekanizmalarını anlamada büyük ilerlemeler sağlanmıştır.",
      "Otoimmün hastalıkların temel mekanizmaları anlaşıldığından beri önemli ilerlemeler kaydedildi, ancak bütün bağışıklık sistemine zarar vermeyen tedaviler geliştirmek hala çok zordur.",
      "Otoimmün hastalıkların mekanizmalarını anlamak için büyük adımlar atılmasına rağmen, bağışıklık sistemini tamamen koruyan hedefe yönelik tedaviler bulmak oldukça zordur.",
      "Otoimmün hastalıkların altında yatan mekanizmaların anlaşılmasında önemli aşamalar kaydedilse de, bağışıklık sistemini tehlikeye atmadan tedavi geliştirmek büyük bir zorluktur."
    ],
    correctIndex: 0,
    explanation: "'Although' (olmasına rağmen) ile başlayan bir zıtlık cümlesi. 'underlying mechanisms' (altında yatan mekanizmalar), 'targeted therapies' (hedefe yönelik tedaviler), 'compromise' (tehlikeye atmak/zayıflatmak), 'remains a formidable challenge' (zorlu bir engel/zorluk olmaya devam etmektedir). A şıkkı kelime kelime en sadık çeviridir.",
    difficulty: "Zor",
    isEnToTr: true,
    keyPhrases: ["Although (olmasına rağmen)", "underlying mechanisms (altında yatan mekanizmalar)", "remains a formidable challenge (zorlu bir engel olmaya devam etmektedir)"],
  ),
  TranslationQuestion(
    sourceText: "Epidemiological studies indicate that long-term exposure to fine particulate matter significantly increases the risk of chronic respiratory conditions and cardiovascular events in urban populations.",
    options: const [
      "Epidemiyolojik çalışmalar, kentsel nüfuslarda ince partikül maddeye uzun süreli maruz kalmanın kronik solunum rahatsızlıkları ve kalp damar hastalıkları riskini önemli ölçüde artırdığını göstermektedir.",
      "Şehirlerde yaşayan insanların ince partikül maddeye uzun süre maruz kalmasının, kronik solunum yolu ve kalp damar hastalıkları riskini ciddi şekilde artırdığı epidemiyolojik olarak kanıtlanmıştır.",
      "Epidemiyolojik araştırmalara göre, kentsel bölgelerdeki ince partikül maddeye uzun süre maruz kalmak, kronik solunum rahatsızlıkları ile kardiyovasküler olayların riskini artırmaktadır.",
      "Epidemiyolojik çalışmalar, ince partikül maddenin uzun süreli etkisinin kentsel nüfusta kronik solunum yolu rahatsızlıkları ve kardiyovasküler olaylara neden olduğunu belirtmektedir.",
      "İnce partikül maddeye uzun süreli maruz kalmanın, kentsel alanlarda kronik solunum yolu ve kardiyovasküler rahatsızlık riskini önemli ölçüde artırdığı epidemiyolojik olarak belirtilmiştir."
    ],
    correctIndex: 0,
    explanation: "Ana cümle 'Epidemiological studies indicate that...' (Epidemiyolojik çalışmalar ... göstermektedir). 'long-term exposure to fine particulate matter' (ince partikül maddeye uzun süreli maruz kalmanın). A şıkkı, özne-yüklem uyumu ve kelime karşılıkları bakımından en doğru çeviridir.",
    difficulty: "Orta",
    isEnToTr: true,
    keyPhrases: ["indicate that (göstermektedir)", "long-term exposure to (uzun süreli maruz kalmanın)", "significantly increases (önemli ölçüde artırdığını)"],
  ),
  TranslationQuestion(
    sourceText: "Given the rapid mutation rate of the virus, researchers stress that updating the vaccine composition annually is imperative to maintain optimal population immunity.",
    options: const [
      "Araştırmacılar, virüsün hızlı mutasyon oranı göz önüne alındığında, optimum toplumsal bağışıklığı korumak için aşı içeriğinin her yıl güncellenmesinin zorunlu olduğunu vurgulamaktadır.",
      "Virüsün hızlı mutasyon oranından dolayı, araştırmacılar aşı bileşiminin optimum toplum bağışıklığı için her yıl güncellenmesi gerektiğine dikkat çekiyor.",
      "Virüs hızla mutasyona uğradığı için, araştırmacılar toplum bağışıklığının korunması adına aşının içeriğinin yıllık olarak yenilenmesinin şart olduğunu belirtmektedir.",
      "Araştırmacılar, virüsün yüksek mutasyon hızı düşünüldüğünde, toplumsal bağışıklığı optimum düzeyde tutmak amacıyla aşıların her yıl yenilenmesini zorunlu kılıyor.",
      "Virüsün çok hızlı mutasyon geçirmesi nedeniyle, araştırmacılar optimum bağışıklığı sağlamak için aşı formülünü her sene güncellemenin elzem olduğunu söylüyor."
    ],
    correctIndex: 0,
    explanation: "'Given' (... göz önüne alındığında / dikkate alındığında), 'stress that' (vurgulamaktadır), 'imperative' (zorunlu/elzem), 'vaccine composition' (aşı içeriği/bileşimi). A şıkkı tam çeviriyi vermektedir.",
    difficulty: "Zor",
    isEnToTr: true,
    keyPhrases: ["Given the rapid mutation rate (hızlı mutasyon oranı göz önüne alındığında)", "stress that (vurgulamaktadır)", "is imperative to maintain (korumak için zorunlu olduğunu)"],
  ),
  TranslationQuestion(
    sourceText: "Patients presenting with persistent abdominal pain, unexplained weight loss, and fatigue should be thoroughly evaluated for potential gastrointestinal malignancies.",
    options: const [
      "Geçmeyen karın ağrısı, açıklanamayan kilo kaybı ve halsizlik ile başvuran hastalar, olası mide-bağırsak kanserleri açısından kapsamlı bir şekilde değerlendirilmelidir.",
      "Sürekli karın ağrısı, sebepsiz kilo kaybı ve yorgunluk şikayetiyle gelen hastalar, potansiyel gastrointestinal kötü huylu tümörlere karşı dikkatle incelenmelidir.",
      "Süregelen karın ağrısı, nedeni bilinmeyen kilo kaybı ve halsizliği olan hastaların gastrointestinal maligniteler için tamamen değerlendirilmesi gerekir.",
      "Geçmeyen karın ağrısı, açıklanamayan kilo kaybı ve yorgunluk ile başvuran hastalar, gastrointestinal kanser ihtimaline karşı acilen tedavi edilmelidir.",
      "Eğer bir hasta sürekli karın ağrısı, kilo kaybı ve halsizlik ile gelirse, potansiyel gastrointestinal maligniteler açısından iyice değerlendirilmelidir."
    ],
    correctIndex: 0,
    explanation: "'Patients presenting with...' (... ile başvuran hastalar), 'persistent abdominal pain' (geçmeyen/sürekli karın ağrısı), 'thoroughly evaluated' (kapsamlı bir şekilde değerlendirilmelidir), 'malignancies' (kötü huylu tümörler/kanserler). A şıkkı YÖKDİL sağlık metinlerinin standart çevirisine en uygun olanıdır.",
    difficulty: "Orta",
    isEnToTr: true,
    keyPhrases: ["Patients presenting with (ile başvuran hastalar)", "unexplained weight loss (açıklanamayan kilo kaybı)", "should be thoroughly evaluated (kapsamlı bir şekilde değerlendirilmelidir)"],
  ),
  TranslationQuestion(
    sourceText: "Despite the widespread use of broad-spectrum antibiotics in intensive care units, hospital-acquired infections caused by multidrug-resistant pathogens continue to pose a severe threat to patient survival.",
    options: const [
      "Yoğun bakım ünitelerinde geniş spektrumlu antibiyotiklerin yaygın kullanımına rağmen, çoklu ilaca dirençli patojenlerin neden olduğu hastane kaynaklı enfeksiyonlar hasta hayatta kalımı için ciddi bir tehdit oluşturmaya devam etmektedir.",
      "Geniş spektrumlu antibiyotiklerin yoğun bakım ünitelerinde yaygın kullanılmasına karşın, çoklu ilaca dirençli mikroorganizmaların yol açtığı enfeksiyonlar hastaların hayatını tehlikeye atmaya devam ediyor.",
      "Yoğun bakım ünitelerindeki hastalar geniş spektrumlu antibiyotikleri yaygın kullansa da, hastane enfeksiyonlarına yol açan çoklu ilaca dirençli patojenler hasta sağlığı için büyük bir tehdittir.",
      "Çoklu ilaca dirençli patojenlerin neden olduğu hastane kaynaklı enfeksiyonlar, yoğun bakım ünitelerinde geniş spektrumlu antibiyotiklerin kullanılmasına rağmen ölümcül bir tehdit olmayı sürdürüyor.",
      "Yoğun bakımda çok fazla geniş spektrumlu antibiyotik kullanılmasına rağmen, hastaneden kapılan çoklu ilaca dirençli enfeksiyonlar hastaların yaşamasını ciddi şekilde tehdit etmektedir."
    ],
    correctIndex: 0,
    explanation: "'Despite...' (... rağmen), 'broad-spectrum' (geniş spektrumlu), 'hospital-acquired infections' (hastane kaynaklı enfeksiyonlar), 'multidrug-resistant' (çoklu ilaca dirençli), 'continue to pose a severe threat' (ciddi bir tehdit oluşturmaya devam etmektedir). A şıkkı yapıyı ve kelimeleri en eksiksiz karşılayan seçenektir.",
    difficulty: "Zor",
    isEnToTr: true,
    keyPhrases: ["Despite the widespread use (yaygın kullanımına rağmen)", "hospital-acquired infections (hastane kaynaklı enfeksiyonlar)", "continue to pose a severe threat (ciddi bir tehdit oluşturmaya devam etmektedir)"],
  ),
  TranslationQuestion(
    sourceText: "Cognitive behavioral therapy has emerged as the gold standard for treating anxiety disorders, primarily because it equips patients with practical coping strategies rather than just relying on pharmacological interventions.",
    options: const [
      "Bilişsel davranışçı terapi, anksiyete bozukluklarının tedavisinde altın standart haline gelmiştir; temel nedeni, hastaları sadece farmakolojik müdahalelere güvenmek yerine pratik başa çıkma stratejileriyle donatmasıdır.",
      "Anksiyete bozukluklarını tedavi etmede bilişsel davranışçı terapi altın standarttır çünkü hastalara sadece ilaç tedavisi vermek yerine onlara pratik başa çıkma stratejileri sunar.",
      "Sadece farmakolojik müdahalelere dayanmak yerine hastaları pratik başa çıkma yollarıyla donattığı için, bilişsel davranışçı terapi anksiyete bozuklukları için altın standart olarak öne çıkmıştır.",
      "Bilişsel davranışçı terapinin anksiyete bozukluklarında altın standart olmasının başlıca nedeni, hastalara ilaçlardan ziyade pratik baş etme stratejileri kazandırmasıdır.",
      "Bilişsel davranışçı terapi anksiyete bozuklukları tedavisinde altın standart olarak ortaya çıkmıştır, çünkü sadece ilaç tedavilerine güvenmekten çok hastalara pratik baş etme yöntemleri öğretir."
    ],
    correctIndex: 0,
    explanation: "'has emerged as' (haline gelmiştir / olarak öne çıkmıştır), 'primarily because' (temel nedeni / başlıca sebebi ... olmasıdır), 'equips patients with' (hastaları ... ile donatmasıdır), 'rather than just relying on' (sadece ... güvenmek yerine). A şıkkı cümlenin iki parçalı yapısını en doğru ve akademik dille çeviren seçenektir.",
    difficulty: "Orta",
    isEnToTr: true,
    keyPhrases: ["primarily because (temel nedeni ... olmasıdır)", "equips patients with (hastaları ... ile donatmasıdır)", "rather than just relying on (sadece ... güvenmek yerine)"],
  ),
  TranslationQuestion(
    sourceText: "Recent clinical trials have demonstrated that early administration of antiviral drugs significantly decreases the duration of symptoms and lowers the probability of hospitalization in high-risk individuals.",
    options: const [
      "Son klinik deneyler, antiviral ilaçların erken verilmesinin semptomların süresini önemli ölçüde azalttığını ve yüksek riskli bireylerde hastaneye yatış olasılığını düşürdüğünü göstermiştir.",
      "Antiviral ilaçların erken dönemde uygulanmasının, semptom süresini kısalttığı ve yüksek riskli hastalarda hastaneye yatış ihtimalini önemli ölçüde azalttığı son klinik çalışmalarla kanıtlanmıştır.",
      "Son klinik çalışmalara göre, yüksek riskli kişilere antiviral ilaçların erken verilmesi semptom süresini kısaltmakta ve hastaneye yatış ihtimalini azaltmaktadır.",
      "Son klinik çalışmalar, yüksek riskli bireylerde antiviral ilaçların erken uygulamasının hastalık belirtilerinin süresini azalttığını ve hastaneye yatma olasılığını büyük ölçüde düşürdüğünü ortaya koymuştur.",
      "Klinik deneyler yeni göstermiştir ki, antiviral ilaçları erken almak yüksek riskli bireylerde semptomları kısaltır ve hastaneye yatış olasılığını ciddi oranda azaltır."
    ],
    correctIndex: 0,
    explanation: "Özne 'Recent clinical trials' (Son klinik deneyler). Yüklem 'have demonstrated that' (göstermiştir ki / ... göstermiştir). 'early administration' (erken verilmesi / uygulanması). 'significantly decreases' (önemli ölçüde azalttığını). A şıkkı, bağlaçlara, özneye ve fiile tamamen sadık bir çeviridir.",
    difficulty: "Orta",
    isEnToTr: true,
    keyPhrases: ["have demonstrated that (göstermiştir)", "early administration (erken verilmesi/uygulanması)", "lowers the probability of hospitalization (hastaneye yatış olasılığını düşürdüğünü)"],
  ),
  TranslationQuestion(
    sourceText: "If the global community fails to take coordinated action against antimicrobial resistance, routine surgical procedures could become incredibly dangerous due to untreatable bacterial infections.",
    options: const [
      "Küresel toplum antimikrobiyal dirence karşı koordineli bir eylem planı uygulamazsa, tedavi edilemeyen bakteriyel enfeksiyonlar nedeniyle rutin cerrahi prosedürler inanılmaz derecede tehlikeli hale gelebilir.",
      "Eğer küresel toplum antimikrobiyal dirence karşı koordineli bir eylemde bulunmayı başaramazsa, tedavi edilemeyen bakteriyel enfeksiyonlar yüzünden rutin cerrahi işlemler inanılmaz derecede tehlikeli hale gelebilir.",
      "Küresel toplumun antimikrobiyal dirence karşı ortak hareket etmemesi durumunda, tedavi edilemez bakteriyel enfeksiyonlardan dolayı rutin ameliyatlar son derece tehlikeli olacaktır.",
      "Eğer dünyadaki ülkeler antimikrobiyal dirence karşı birlikte hareket edemezse, tedavi edilemeyen enfeksiyonlar rutin cerrahi müdahaleleri çok tehlikeli bir duruma getirecektir.",
      "Antimikrobiyal dirence karşı küresel düzeyde koordineli önlem alınmadığı takdirde, rutin cerrahi operasyonlar tedavi edilemeyen enfeksiyonlar sebebiyle inanılmaz derecede riskli hale gelir."
    ],
    correctIndex: 1,
    explanation: "'If the global community fails to take...' (Eğer küresel toplum ... başaramazsa / eylemde bulunmazsa), 'coordinated action' (koordineli eylem), 'could become' (hale gelebilir), 'due to' (yüzünden / nedeniyle). B şıkkı 'fails to' (başaramazsa) ifadesini en net şekilde veren ve 'could become' (hale gelebilir) olasılık kipini doğru yansıtan şıktır.",
    difficulty: "Orta",
    isEnToTr: true,
    keyPhrases: ["If ... fails to take (Eğer ... eylemde bulunmayı başaramazsa)", "could become incredibly dangerous (inanılmaz derecede tehlikeli hale gelebilir)", "due to untreatable bacterial infections (tedavi edilemeyen bakteriyel enfeksiyonlar yüzünden)"],
  ),
  TranslationQuestion(
    sourceText: "The integration of artificial intelligence into radiology has the potential not only to accelerate the diagnostic process but also to identify subtle anomalies that the human eye might easily overlook.",
    options: const [
      "Yapay zekanın radyolojiye entegrasyonu, sadece teşhis sürecini hızlandırma potansiyeline sahip olmakla kalmaz, aynı zamanda insan gözünün kolayca gözden kaçırabileceği ince anormallikleri de tespit edebilir.",
      "Yapay zekanın radyolojiye entegre edilmesi, yalnızca teşhis sürecini hızlandırmakla kalmayıp, insan gözünün gözden kaçırabileceği küçük anormallikleri de tespit etme potansiyeline sahiptir.",
      "Radyoloji alanında yapay zeka kullanımı, tanı sürecini hızlandırmanın yanı sıra insan gözünün rahatlıkla gözden kaçıracağı ufak anomalileri fark etme potansiyelini barındırır.",
      "Yapay zekanın radyolojiye dahil edilmesi, teşhisi hızlandırmak ve insan gözünün kolayca atlayabileceği ince anormallikleri belirlemek gibi bir potansiyele sahiptir.",
      "Yapay zekanın radyolojiyle birleşimi, yalnızca tanı koyma sürecini hızlandırmakla kalmaz, insan gözünden kolayca kaçan ince ayrıntıları da yakalama yeteneğine sahiptir."
    ],
    correctIndex: 1,
    explanation: "'The integration of ... into ...' (Yapay zekanın ... entegre edilmesi/entegrasyonu), 'has the potential not only to ... but also to ...' (sadece ... değil aynı zamanda ... potansiyeline de sahiptir). 'subtle anomalies' (ince/küçük anormallikler), 'might easily overlook' (kolayca gözden kaçırabileceği). B şıkkı bu yapıyı eksiksiz bir şekilde Türkçeye aktarır.",
    difficulty: "Zor",
    isEnToTr: true,
    keyPhrases: ["has the potential not only to ... but also to ... (yalnızca ... kalmayıp ... potansiyeline de sahiptir)", "subtle anomalies (ince anormallikleri)", "might easily overlook (kolayca gözden kaçırabileceği)"],
  ),
  TranslationQuestion(
    sourceText: "Vaccines stimulate the immune system to produce antibodies, thereby providing long-lasting protection against specific pathogens without exposing the individual to the dangers of the actual disease.",
    options: const [
      "Aşılar bağışıklık sistemini antikor üretmesi için uyarır, böylece bireyi asıl hastalığın tehlikelerine maruz bırakmadan belirli patojenlere karşı uzun süreli koruma sağlar.",
      "Aşıların bağışıklık sistemini antikor üretmek üzere uyarması, bireyi gerçek hastalığın tehlikeleriyle karşı karşıya bırakmadan patojenlere karşı uzun ömürlü koruma sağlamasına yol açar.",
      "Bağışıklık sistemini uyararak antikor ürettiren aşılar, bireyi hastalığın gerçek tehlikelerinden uzak tutarak belirli patojenlere karşı uzun süreli bir koruma oluşturur.",
      "Aşılar bağışıklık sisteminin antikor üretmesini uyarır ve bireyin gerçek hastalığa maruz kalmasını önleyerek belirli patojenlere karşı uzun vadeli korunmasını sağlar.",
      "Bireyi asıl hastalığın tehlikelerine maruz bırakmadan bağışıklık sistemini antikor üretmeye teşvik eden aşılar, belirli patojenlere karşı uzun süreli koruma sunar."
    ],
    correctIndex: 0,
    explanation: "Ana cümle: 'Vaccines stimulate...' (Aşılar uyarır). 'thereby' (böylece) bağlacı eylemin sonucunu bildirir: 'böylece ... koruma sağlar'. 'without exposing' (maruz bırakmadan). A şıkkı bağlaç sıralamasına ve cümlenin öğelerine tamamen uymaktadır.",
    difficulty: "Orta",
    isEnToTr: true,
    keyPhrases: ["stimulate (uyarır)", "thereby providing (böylece ... sağlar)", "without exposing (maruz bırakmadan)"],
  ),

  // --- 10 NEW TR -> EN QUESTIONS ---
  TranslationQuestion(
    sourceText: "Yeni geliştirilen kanser ilacının umut verici sonuçlar göstermesine rağmen, araştırmacılar ilacın uzun vadeli yan etkilerini belirlemek için daha fazla klinik çalışmaya ihtiyaç duyulduğu konusunda uyarıyor.",
    options: const [
      "Although the newly developed cancer drug has shown promising results, researchers warn that further clinical trials are needed to determine its long-term side effects.",
      "Even though the new cancer drug shows promising results, researchers are warning that more clinical trials will be needed to establish its long-term side effects.",
      "Despite showing promising results for the newly developed cancer drug, researchers warn that further clinical trials are required to identify the long-term side effects.",
      "While the newly developed cancer drug showed promising results, researchers warned that further clinical studies were needed to determine the long-term side effects.",
      "The newly developed cancer drug has shown promising results, but researchers warn that further clinical trials are needed to determine its long-term side effects."
    ],
    correctIndex: 0,
    explanation: "'-mesine rağmen' zıtlık bağlacı cümlenin başında 'Although' ile verilmelidir. 'yeni geliştirilen' (newly developed), 'umut verici sonuçlar göstermesine rağmen' (has shown promising results). 'araştırmacılar ... uyarıyor' (researchers warn that), 'daha fazla klinik çalışmaya ihtiyaç duyulduğu' (further clinical trials are needed). A seçeneği en kusursuz çeviridir.",
    difficulty: "Orta",
    isEnToTr: false,
    keyPhrases: ["göstermesine rağmen (Although ... has shown)", "uyarıyor (warn that)", "belirlemek için (to determine)"],
  ),
  TranslationQuestion(
    sourceText: "Obezite sıklığındaki artış, sadece kötü beslenme alışkanlıklarına değil, aynı zamanda modern toplumdaki hareketsiz yaşam tarzına da bağlanmaktadır.",
    options: const [
      "The increase in the prevalence of obesity is attributed not only to poor dietary habits but also to the sedentary lifestyle in modern society.",
      "The rising prevalence of obesity is connected not only with poor dietary habits but also the sedentary lifestyle in modern society.",
      "The increase in the frequency of obesity is linked to poor dietary habits as well as the sedentary lifestyle of modern society.",
      "The rise in obesity prevalence is not just due to poor dietary habits, but it is also caused by the sedentary lifestyle in modern society.",
      "Obesity's increasing prevalence is attributed not only to poor diet habits but also to the inactive lifestyle seen in modern society."
    ],
    correctIndex: 0,
    explanation: "'sadece ... değil, aynı zamanda ...' yapısı 'not only ... but also' kalıbını gerektirir. 'bağlanmaktadır' pasif fiili 'is attributed to' şeklinde çevrilmelidir. A şıkkı, 'prevalence of obesity' (obezite sıklığı) ve 'sedentary lifestyle' (hareketsiz yaşam tarzı) kelimeleriyle en akademik ve doğru çeviridir.",
    difficulty: "Zor",
    isEnToTr: false,
    keyPhrases: ["sadece ... değil, aynı zamanda (not only ... but also)", "bağlanmaktadır (is attributed to)", "hareketsiz yaşam tarzına (to the sedentary lifestyle)"],
  ),
  TranslationQuestion(
    sourceText: "Kalp krizini önlemenin en etkili yolu, düzenli tansiyon kontrolünü içeren ve stresten uzak durmayı teşvik eden sağlıklı bir yaşam tarzı benimsemektir.",
    options: const [
      "The most effective way to prevent a heart attack is to adopt a healthy lifestyle that includes regular blood pressure monitoring and encourages avoiding stress.",
      "Preventing a heart attack effectively requires adopting a healthy lifestyle which involves regular blood pressure checks and promotes staying away from stress.",
      "The most effective way of preventing a heart attack is adopting a healthy lifestyle, including regular blood pressure control and avoiding stress.",
      "To prevent a heart attack in the most effective way is to adopt a healthy lifestyle that includes regular blood pressure monitoring and avoids stress.",
      "The best way to prevent a heart attack is adopting a healthy lifestyle that consists of regular blood pressure control and encourages keeping away from stress."
    ],
    correctIndex: 0,
    explanation: "'... en etkili yolu' (The most effective way to ...), 'benimsemektir' (is to adopt). 'düzenli tansiyon kontrolünü içeren' (that includes regular blood pressure monitoring) ve 'stresten uzak durmayı teşvik eden' (and encourages avoiding stress) relative clause (sıfat cümleciği) yapılarıyla bağlanmalıdır. A şıkkı tüm fiilleri ve zaman kiplerini kusursuz çevirir.",
    difficulty: "Orta",
    isEnToTr: false,
    keyPhrases: ["önlemenin en etkili yolu (The most effective way to prevent)", "benimsemektir (is to adopt)", "içeren ve ... teşvik eden (that includes ... and encourages)"],
  ),
  TranslationQuestion(
    sourceText: "Beynin nöroplastisitesi sayesinde, hastalar inme sonrası rehabilitasyon sürecinde kaybedilen motor fonksiyonlarının önemli bir kısmını geri kazanabilirler.",
    options: const [
      "Thanks to the brain's neuroplasticity, patients can regain a significant portion of their lost motor functions during the post-stroke rehabilitation process.",
      "Due to the neuroplasticity of the brain, patients are able to recover a large part of their lost motor functions in the rehabilitation process after a stroke.",
      "Because of the brain's neuroplasticity, patients can regain significant motor functions that were lost during post-stroke rehabilitation.",
      "Through the brain's neuroplasticity, patients may regain most of their lost motor functions during the stroke rehabilitation process.",
      "Thanks to the brain's neuroplasticity, patients have regained a significant portion of their lost motor functions during the post-stroke rehabilitation process."
    ],
    correctIndex: 0,
    explanation: "'sayesinde' (Thanks to), 'önemli bir kısmını' (a significant portion of), 'geri kazanabilirler' (can regain), 'inme sonrası rehabilitasyon sürecinde' (during the post-stroke rehabilitation process). B şıkkında 'are able to' var, A şıkkı 'can' (yapabilirler/olabilirler) ile tam olarak cümleye uyar.",
    difficulty: "Kolay",
    isEnToTr: false,
    keyPhrases: ["sayesinde (Thanks to)", "önemli bir kısmını (a significant portion of)", "geri kazanabilirler (can regain)"],
  ),
  TranslationQuestion(
    sourceText: "Yeterli uyku eksikliğinin bağışıklık sistemini zayıflattığı, hücresel yenilenmeyi engellediği ve kronik hastalıklara yatkınlığı artırdığı yaygın olarak kabul edilmektedir.",
    options: const [
      "It is widely accepted that a lack of adequate sleep weakens the immune system, hinders cellular regeneration, and increases susceptibility to chronic diseases.",
      "A lack of adequate sleep is widely accepted to weaken the immune system, hinder cellular regeneration, and increase susceptibility to chronic diseases.",
      "It is generally acknowledged that insufficient sleep suppresses the immune system, prevents cellular regeneration, and increases the risk of chronic diseases.",
      "That a lack of adequate sleep weakens the immune system, inhibits cellular regeneration, and increases susceptibility to chronic diseases is widely accepted.",
      "It has been widely accepted that lacking adequate sleep weakens the immune system, hinders cellular regeneration, and increases susceptibility to chronic diseases."
    ],
    correctIndex: 0,
    explanation: "'... yaygın olarak kabul edilmektedir' (It is widely accepted that ...). 'yeterli uyku eksikliğinin' (a lack of adequate sleep), 'zayıflattığı' (weakens), 'engellediği' (hinders), 'yatkınlığı artırdığı' (increases susceptibility). A şıkkı YÖKDİL kalıplarına en uygun çeviridir.",
    difficulty: "Zor",
    isEnToTr: false,
    keyPhrases: ["yaygın olarak kabul edilmektedir (It is widely accepted that)", "engellediği (hinders / inhibits)", "yatkınlığı artırdığı (increases susceptibility)"],
  ),
  TranslationQuestion(
    sourceText: "Antibiyotik direnci küresel bir kriz haline geldikçe, araştırmacılar bakteriyel enfeksiyonlarla savaşmak için faj terapisi gibi alternatif tedavi yöntemlerine yöneliyorlar.",
    options: const [
      "As antibiotic resistance becomes a global crisis, researchers are turning to alternative treatment methods such as phage therapy to combat bacterial infections.",
      "Because antibiotic resistance has become a global crisis, researchers are turning to alternative treatments like phage therapy to fight bacterial infections.",
      "As antibiotic resistance becomes a global crisis, researchers turn to alternative treatment methods like phage therapy for combating bacterial infections.",
      "With antibiotic resistance becoming a global crisis, researchers have turned to alternative treatment methods such as phage therapy to combat bacterial infections.",
      "Since antibiotic resistance became a global crisis, researchers are shifting to alternative therapeutic methods such as phage therapy to combat bacterial infections."
    ],
    correctIndex: 0,
    explanation: "'-dıkça / -dikçe' bağlacı 'As' ile ifade edilir. 'haline geldikçe' (becomes), 'yöneliyorlar' (are turning to), 'savaşmak için' (to combat). A şıkkı 'As' bağlacını ve şimdiki zamanı (are turning to) en kusursuz biçimde yansıtır.",
    difficulty: "Orta",
    isEnToTr: false,
    keyPhrases: ["haline geldikçe (As ... becomes)", "yöneliyorlar (are turning to)", "savaşmak için (to combat)"],
  ),
  TranslationQuestion(
    sourceText: "Mevcut bulgular, erken çocukluk döneminde hava kirliliğine maruz kalmanın ilerleyen yaşlarda astım gelişimine katkıda bulunabileceğini düşündürmektedir.",
    options: const [
      "Current findings suggest that exposure to air pollution in early childhood may contribute to the development of asthma in later life.",
      "The current findings suggest that exposing to air pollution during early childhood can contribute to asthma development in later life.",
      "Present findings indicate that exposure to air pollution in early childhood might contribute to developing asthma in later years.",
      "Current findings suggest that being exposed to air pollution in early childhood could contribute to the development of asthma at older ages.",
      "Current evidence suggests that exposure to air pollution during early childhood may lead to the development of asthma in later life."
    ],
    correctIndex: 0,
    explanation: "'Mevcut bulgular' (Current findings), 'düşündürmektedir' (suggest that), 'katkıda bulunabileceğini' (may contribute to), 'ilerleyen yaşlarda' (in later life). A şıkkında hiçbir kelime atlanmamış, yetenek/ihtimal kipi (may) ve bağlaçlar doğru aktarılmıştır.",
    difficulty: "Orta",
    isEnToTr: false,
    keyPhrases: ["Mevcut bulgular (Current findings)", "düşündürmektedir (suggest that)", "katkıda bulunabileceğini (may contribute to)"],
  ),
  TranslationQuestion(
    sourceText: "Hastalara yalnızca semptomlarını hafifletecek ilaçlar yazmak yerine, onları hastalığın kök nedenlerine inen yaşam tarzı değişiklikleri yapmaları konusunda eğitmeliyiz.",
    options: const [
      "Instead of merely prescribing medications that will alleviate their symptoms, we must educate patients on making lifestyle changes that address the root causes of the disease.",
      "Rather than just prescribing medications to alleviate their symptoms, we should educate patients to make lifestyle changes that target the root causes of the disease.",
      "Instead of only prescribing medications that alleviate their symptoms, patients must be educated about making lifestyle changes that address the root causes of the disease.",
      "We should educate patients about making lifestyle changes that address the root causes of the disease rather than merely prescribing drugs to relieve their symptoms.",
      "Instead of prescribing drugs merely to relieve their symptoms, we must educate the patients on making lifestyle changes that address the root causes of the disease."
    ],
    correctIndex: 0,
    explanation: "'-mek yerine' (Instead of / Rather than), 'yalnızca semptomlarını hafifletecek ilaçlar yazmak' (merely prescribing medications that will alleviate their symptoms), 'eğitmeliyiz' (we must educate), 'kök nedenlerine inen' (that address the root causes). A şıkkı relative clause (that will alleviate) yapısını tam olarak çevirir.",
    difficulty: "Zor",
    isEnToTr: false,
    keyPhrases: ["yerine (Instead of)", "hafifletecek ilaçlar (medications that will alleviate)", "kök nedenlerine inen (that address the root causes)"],
  ),
  TranslationQuestion(
    sourceText: "Tip 2 diyabet genetik faktörlerden güçlü bir şekilde etkilense de, hastalığın başlangıcı büyük ölçüde diyet ve fiziksel aktivite gibi çevresel faktörler tarafından tetiklenir.",
    options: const [
      "Even though type 2 diabetes is strongly influenced by genetic factors, the onset of the disease is largely triggered by environmental factors such as diet and physical activity.",
      "Although type 2 diabetes is strongly influenced by genetic factors, the beginning of the disease is mostly triggered by environmental factors like diet and physical activity.",
      "While type 2 diabetes is highly affected by genetic factors, the onset of the disease is largely triggered by environmental factors such as diet and physical activity.",
      "Even if type 2 diabetes is strongly influenced by genetic factors, the onset of the disease is largely initiated by environmental factors such as diet and physical activity.",
      "Type 2 diabetes is strongly influenced by genetic factors, but the onset of the disease is largely triggered by environmental factors such as diet and physical activity."
    ],
    correctIndex: 0,
    explanation: "'-se de' (Even though / Although), 'güçlü bir şekilde etkilense de' (is strongly influenced), 'hastalığın başlangıcı' (the onset of the disease), 'büyük ölçüde ... tetiklenir' (is largely triggered by). A şıkkı kalıpları ve kelimeleri en iyi aktaran akademik çeviridir.",
    difficulty: "Orta",
    isEnToTr: false,
    keyPhrases: ["etkilense de (Even though ... is influenced)", "hastalığın başlangıcı (the onset of the disease)", "tetiklenir (is triggered by)"],
  ),
  TranslationQuestion(
    sourceText: "Son derece bulaşıcı olan bu yeni virüs varyantı, eğer katı karantina kuralları derhal uygulanmazsa sağlık sistemlerinin kapasitesini aşma potansiyeline sahiptir.",
    options: const [
      "This highly contagious new virus variant has the potential to exceed the capacity of healthcare systems unless strict quarantine rules are implemented immediately.",
      "This new virus variant, which is highly contagious, has the potential to exceed the capacity of healthcare systems if strict quarantine rules are not implemented immediately.",
      "If strict quarantine rules are not implemented immediately, this highly contagious new virus variant has the potential to exceed the capacity of healthcare systems.",
      "This highly contagious new virus variant has the potential of exceeding healthcare systems' capacity unless strict quarantine rules are put into effect immediately.",
      "Unless strict quarantine rules are implemented immediately, this highly contagious new virus variant will exceed the capacity of healthcare systems."
    ],
    correctIndex: 0,
    explanation: "'Son derece bulaşıcı olan bu yeni virüs varyantı' (This highly contagious new virus variant), 'aşma potansiyeline sahiptir' (has the potential to exceed). 'eğer ... uygulanmazsa' (unless / if ... not). A şıkkında 'unless' kullanımıyla şart cümlesi birebir sağlanmış ve özne tam olarak başta verilmiştir.",
    difficulty: "Zor",
    isEnToTr: false,
    keyPhrases: ["Son derece bulaşıcı olan (highly contagious)", "aşma potansiyeline sahiptir (has the potential to exceed)", "eğer ... uygulanmazsa (unless ... are implemented)"],
  ),

  TranslationQuestion(
    sourceText: "Given the alarming rise in obesity rates among pediatric populations, pediatricians are increasingly emphasizing the necessity of early intervention programs that focus not only on dietary modifications but also on encouraging regular physical activity.",
    options: const [
      "Çocukluk çağı nüfusunda obezite oranlarındaki endişe verici artış göz önüne alındığında, çocuk doktorları sadece diyet değişikliklerine odaklanan değil, aynı zamanda düzenli fiziksel aktiviteyi teşvik eden erken müdahale programlarının gerekliliğini giderek daha fazla vurgulamaktadır.",
      "Çocuk doktorları, obezite oranlarının çocuklar arasında hızla artması nedeniyle, sadece beslenme alışkanlıklarını değiştirmekle kalmayıp düzenli sporu da teşvik eden erken müdahale programlarının önemini daha çok vurguluyorlar.",
      "Çocuk nüfusundaki obezite oranlarının endişe verici düzeyde artmasına rağmen, çocuk doktorları hem diyet değişikliklerine hem de düzenli fiziksel aktiviteye odaklanan erken müdahale programlarının gerekliliğinin altını çizmektedir.",
      "Obezite oranlarının çocukluk çağı nüfusunda endişe verici bir şekilde artmasıyla birlikte, çocuk doktorları sadece diyet kısıtlamalarına değil, aynı zamanda fiziksel aktiviteyi artırmaya yönelik erken müdahale programlarının şart olduğunu belirtiyor.",
      "Çocuk doktorlarının giderek daha fazla vurguladığı erken müdahale programları, çocukluk çağı obezite oranlarındaki endişe verici artış göz önüne alındığında, sadece diyet değişikliklerine değil fiziksel aktiviteye de odaklanmaktadır."
    ],
    correctIndex: 0,
    explanation: "'Given ...' (göz önüne alındığında), 'increasingly emphasizing' (giderek daha fazla vurgulamaktadır), 'not only ... but also' (sadece ... değil, aynı zamanda). A seçeneği eksiksiz çeviridir.",
    difficulty: "Zor",
    isEnToTr: true,
    keyPhrases: ["Given (göz önüne alındığında)", "increasingly emphasizing (giderek daha fazla vurgulamaktadır)", "not only ... but also (sadece ... değil, aynı zamanda)"],
  ),
  TranslationQuestion(
    sourceText: "Although some patients experience a dramatic reduction in tumor size following the initial round of chemotherapy, oncologists usually recommend a complete cycle to eradicate any remaining microscopic cancer cells and prevent potential recurrence.",
    options: const [
      "Bazı hastalar ilk kemoterapi seansından sonra tümör boyutunda çarpıcı bir küçülme yaşasa da, onkologlar genellikle kalan mikroskobik kanser hücrelerini yok etmek ve olası nüksetmeyi önlemek için tam bir kür önermektedir.",
      "İlk kemoterapi seansının ardından bazı hastalarda tümör boyutunda büyük bir azalma görülmesine rağmen, onkologlar geriye kalan kanser hücrelerini temizleyip tekrarı engellemek adına tedavinin tamamlanmasını tavsiye eder.",
      "Onkologlar genellikle olası bir nüksetmeyi önlemek ve kalan mikroskobik kanser hücrelerini yok etmek için tam bir kür önerirler, çünkü bazı hastalar ilk kemoterapi sonrası tümör boyutunda belirgin bir küçülme yaşar.",
      "Bazı hastalar ilk kemoterapi turundan sonra tümörün boyutunda çarpıcı bir küçülme tecrübe eder, ancak onkologlar mikroskobik kanser hücrelerini ortadan kaldırmak ve nüksü önlemek için genellikle tam bir kür önermektedir.",
      "Her ne kadar ilk kemoterapi uygulamasından sonra tümör boyutunda önemli bir azalma olsa da, onkologlar potansiyel nüksetmeyi önlemek ve kalan kanser hücrelerini yok etmek amacıyla genellikle tedavinin tamamlanmasını şart koşarlar."
    ],
    correctIndex: 0,
    explanation: "'Although' (-sa da / -mesine rağmen), 'experience a dramatic reduction' (çarpıcı bir küçülme yaşasa da), 'usually recommend' (genellikle ... önermektedir), 'eradicate' (yok etmek). A şıkkı doğru karşılıktır.",
    difficulty: "Orta",
    isEnToTr: true,
    keyPhrases: ["Although (-sa da / -mesine rağmen)", "usually recommend (genellikle önermektedir)", "eradicate (yok etmek)"],
  ),
  TranslationQuestion(
    sourceText: "Recent epidemiological data indicate that individuals who consistently adhere to a Mediterranean-style diet are significantly less likely to develop neurodegenerative disorders, such as Alzheimer's and Parkinson's diseases, in their later years.",
    options: const [
      "Son epidemiyolojik veriler, Akdeniz tarzı diyete sürekli olarak bağlı kalan bireylerin ileriki yaşlarında Alzheimer ve Parkinson hastalıkları gibi nörodejeneratif bozukluklar geliştirme olasılıklarının önemli ölçüde daha düşük olduğunu göstermektedir.",
      "Epidemiyolojik verilerin son zamanlarda gösterdiğine göre, sürekli olarak Akdeniz diyetini uygulayan bireylerin yaşlılıklarında Alzheimer ve Parkinson gibi nörodejeneratif hastalıklara yakalanma riskleri oldukça düşüktür.",
      "Son epidemiyolojik veriler gösteriyor ki, Alzheimer ve Parkinson hastalıkları gibi nörodejeneratif bozuklukların ileriki yaşlarda gelişme olasılığı, Akdeniz tarzı beslenmeyi sürekli uygulayan bireylerde önemli ölçüde azdır.",
      "Akdeniz tarzı diyete sürekli bağlı kalan bireyler, son epidemiyolojik verilere göre, ileriki yaşlarında Alzheimer ve Parkinson gibi nörodejeneratif rahatsızlıklar geliştirme açısından önemli ölçüde daha düşük riske sahiptir.",
      "Son epidemiyolojik çalışmalara göre, Akdeniz tarzı beslenen kişilerde Alzheimer ve Parkinson hastalığı gibi nörodejeneratif bozuklukların yaşlılıkta ortaya çıkma olasılığı önemli ölçüde daha düşüktür."
    ],
    correctIndex: 0,
    explanation: "'indicate that' (göstermektedir), 'consistently adhere to' (sürekli olarak bağlı kalan), 'significantly less likely to develop' (geliştirme olasılıklarının önemli ölçüde daha düşük olduğunu). A şıkkı tam ve doğru yapıya sahiptir.",
    difficulty: "Zor",
    isEnToTr: true,
    keyPhrases: ["indicate that (göstermektedir)", "consistently adhere to (sürekli olarak bağlı kalan)", "significantly less likely to develop (geliştirme olasılıklarının önemli ölçüde daha düşük olduğunu)"],
  ),
  TranslationQuestion(
    sourceText: "Because the overuse of broad-spectrum antibiotics in intensive care units has led to the emergence of multidrug-resistant bacterial strains, infectious disease experts are now advocating for more stringent antimicrobial stewardship programs.",
    options: const [
      "Yoğun bakım ünitelerinde geniş spektrumlu antibiyotiklerin aşırı kullanımı çoklu ilaca dirençli bakteri suşlarının ortaya çıkmasına yol açtığı için, enfeksiyon hastalıkları uzmanları artık daha sıkı antimikrobiyal yönetim programlarını savunmaktadır.",
      "Geniş spektrumlu antibiyotiklerin yoğun bakım ünitelerinde gereğinden fazla kullanılması çoklu ilaca dirençli bakterilerin oluşmasına neden olduğundan, uzmanlar günümüzde daha katı antimikrobiyal kontrol programlarını desteklemektedir.",
      "Enfeksiyon hastalıkları uzmanları artık daha sıkı antimikrobiyal yönetim programlarını savunuyor, çünkü yoğun bakım ünitelerinde geniş spektrumlu antibiyotiklerin aşırı kullanımı çoklu ilaca dirençli bakteri suşlarına neden olmuştur.",
      "Yoğun bakım ünitelerinde geniş spektrumlu antibiyotiklerin aşırı kullanımının çoklu ilaca dirençli bakteri türlerinin ortaya çıkmasına yol açması nedeniyle, enfeksiyon uzmanları daha sıkı antimikrobiyal programların uygulanması gerektiğini belirtiyor.",
      "Çoklu ilaca dirençli bakteri suşlarının ortaya çıkması, yoğun bakım ünitelerinde geniş spektrumlu antibiyotiklerin aşırı kullanımından kaynaklandığı için enfeksiyon hastalıkları uzmanları artık daha katı yönetim programları talep etmektedir."
    ],
    correctIndex: 0,
    explanation: "'Because ... has led to' (... yol açtığı için), 'emergence' (ortaya çıkması), 'are now advocating for' (artık ... savunmaktadır). A şıkkı bağlaç ve zaman açısından eksiksizdir.",
    difficulty: "Orta",
    isEnToTr: true,
    keyPhrases: ["Because ... has led to (... yol açtığı için)", "emergence (ortaya çıkması)", "are now advocating for (artık ... savunmaktadır)"],
  ),
  TranslationQuestion(
    sourceText: "The newly proposed public health legislation aims to mitigate the adverse effects of chronic air pollution on respiratory health by imposing stricter emission standards on industrial facilities located near densely populated urban centers.",
    options: const [
      "Yeni önerilen halk sağlığı mevzuatı, yoğun nüfuslu kentsel merkezlerin yakınında bulunan endüstriyel tesislere daha sıkı emisyon standartları getirerek kronik hava kirliliğinin solunum sağlığı üzerindeki olumsuz etkilerini hafifletmeyi amaçlamaktadır.",
      "Halk sağlığı alanında yeni önerilen mevzuat, yoğun nüfuslu şehir merkezlerinin yanındaki sanayi tesislerine daha katı emisyon kuralları uygulayarak hava kirliliğinin solunum sağlığına olan olumsuz etkilerini azaltmayı hedefliyor.",
      "Kronik hava kirliliğinin solunum sağlığı üzerindeki olumsuz etkilerini hafifletmeyi amaçlayan yeni halk sağlığı mevzuatı, kalabalık şehir merkezlerine yakın sanayi tesislerine daha sıkı emisyon standartları getirmektedir.",
      "Yoğun nüfuslu kentsel merkezlerin yakınındaki endüstriyel tesislere daha sıkı emisyon standartları getirilmesi, yeni önerilen halk sağlığı mevzuatının kronik hava kirliliğinin olumsuz etkilerini azaltma amacının bir parçasıdır.",
      "Yeni halk sağlığı mevzuatı, kronik hava kirliliğinin solunum yolu hastalıkları üzerindeki zararlı etkilerini azaltmak amacıyla yoğun nüfuslu kent merkezlerindeki sanayi tesislerine daha katı emisyon standartları koymayı planlamaktadır."
    ],
    correctIndex: 0,
    explanation: "'aims to mitigate' (hafifletmeyi amaçlamaktadır), 'by imposing' (getirerek/uygulayarak), 'located near densely populated urban centers' (yoğun nüfuslu kentsel merkezlerin yakınında bulunan). A şıkkı cümlenin ana fiilini ve yapısını doğru verir.",
    difficulty: "Zor",
    isEnToTr: true,
    keyPhrases: ["aims to mitigate (hafifletmeyi amaçlamaktadır)", "by imposing (getirerek)", "located near (yakınında bulunan)"],
  ),
  TranslationQuestion(
    sourceText: "Despite the fact that cognitive behavioral therapy has proven to be highly effective in managing chronic pain, many patients continue to rely heavily on opioid analgesics, which pose a significant risk of addiction and severe side effects.",
    options: const [
      "Bilişsel davranışçı terapinin kronik ağrı yönetiminde son derece etkili olduğu kanıtlanmasına rağmen, birçok hasta önemli bir bağımlılık riski ve şiddetli yan etkiler oluşturan opioid analjeziklere büyük ölçüde güvenmeye devam etmektedir.",
      "Bilişsel davranışçı terapi kronik ağrıyı kontrol etmede oldukça etkili olduğunu kanıtlamış olsa da, hastaların çoğu ciddi yan etki ve bağımlılık riski taşıyan opioid analjezikleri yoğun olarak kullanmayı sürdürüyor.",
      "Pek çok hasta, önemli bir bağımlılık ve şiddetli yan etki riski oluşturan opioid analjeziklere güvenmeye devam etmesine rağmen, bilişsel davranışçı terapinin kronik ağrıyı yönetmede son derece etkili olduğu kanıtlanmıştır.",
      "Kronik ağrının yönetiminde bilişsel davranışçı terapinin çok etkili olduğu kanıtlanmış olmasına karşın, hastaların büyük bir kısmı bağımlılık ve şiddetli yan etkileri olan opioid ağrı kesicilere bel bağlamaya devam ediyor.",
      "Bilişsel davranışçı terapi kronik ağrı tedavisinde son derece etkili olmasına rağmen, birçok hasta bağımlılık yapma ve şiddetli yan etkilere neden olma riski yüksek olan opioid analjeziklere aşırı derecede güvenmeyi bırakmıyor."
    ],
    correctIndex: 0,
    explanation: "'Despite the fact that' (... olmasına/kanıtlanmasına rağmen), 'continue to rely heavily on' (büyük ölçüde güvenmeye devam etmektedir), 'which pose' (oluşturan). A şıkkı 'which' cümlecik bağını ve ana fiili doğru aktarır.",
    difficulty: "Orta",
    isEnToTr: true,
    keyPhrases: ["Despite the fact that (... kanıtlanmasına rağmen)", "continue to rely heavily on (büyük ölçüde güvenmeye devam etmektedir)", "which pose (oluşturan)"],
  ),
  TranslationQuestion(
    sourceText: "If the current shortage of qualified nursing staff in rural hospitals is not addressed promptly, the quality of patient care is expected to deteriorate rapidly, leading to increased mortality rates and prolonged hospital stays.",
    options: const [
      "Kırsal hastanelerde mevcut kalifiye hemşire personeli eksikliği derhal giderilmezse, hasta bakım kalitesinin hızla bozulması ve bunun da artan ölüm oranlarına ve uzamış hastane yatışlarına yol açması beklenmektedir.",
      "Eğer kırsal hastanelerdeki nitelikli hemşire eksikliğine hemen müdahale edilmezse, hasta bakım kalitesi hızla kötüleşecek ve bu durum artan ölüm oranlarına ile daha uzun hastane yatış sürelerine neden olacaktır.",
      "Kırsal bölge hastanelerindeki kalifiye hemşire eksikliği acilen çözülmediği takdirde, hasta bakım kalitesinin hızla düşeceği ve artan ölüm oranlarıyla uzayan yatışlara yol açacağı öngörülüyor.",
      "Kırsal hastanelerde kalifiye hemşire personelinin mevcut yetersizliği derhal ele alınmazsa, hasta bakım kalitesinin hızla gerilemesi beklenmekte olup, bu da ölüm oranlarının artmasına ve yatışların uzamasına neden olabilir.",
      "Mevcut kalifiye hemşire eksikliği kırsal hastanelerde hızlıca giderilmezse, hasta bakım kalitesinin bozulmasıyla birlikte artan ölüm oranları ve uzun hastane yatışları kaçınılmaz hale gelecektir."
    ],
    correctIndex: 0,
    explanation: "'is not addressed promptly' (derhal giderilmezse / ele alınmazsa), 'is expected to deteriorate' (bozulması/kötüleşmesi beklenmektedir), 'leading to' (yol açarak / yol açması). A şıkkı, pasif yapıyı ve expectation (beklenti) durumunu en doğru şekilde çevirir.",
    difficulty: "Zor",
    isEnToTr: true,
    keyPhrases: ["is not addressed promptly (derhal giderilmezse)", "is expected to deteriorate (bozulması beklenmektedir)", "leading to (yol açması / yol açarak)"],
  ),
  TranslationQuestion(
    sourceText: "Advances in genomic sequencing technologies have revolutionized personalized medicine, enabling clinicians to tailor therapeutic interventions based on an individual's unique genetic profile rather than employing a one-size-fits-all approach.",
    options: const [
      "Genomik dizileme teknolojilerindeki ilerlemeler, kişiselleştirilmiş tıpta devrim yaratarak klinisyenlerin herkese uyan tek bir yaklaşım uygulamak yerine tedavi edici müdahaleleri bireyin benzersiz genetik profiline göre uyarlamasını sağlamıştır.",
      "Kişiselleştirilmiş tıpta devrim yaratan genomik dizileme teknolojilerindeki gelişmeler, klinisyenlerin standart bir yaklaşım kullanmak yerine tedavileri hastaların eşsiz genetik profillerine göre şekillendirmelerine olanak tanımaktadır.",
      "Genomik dizileme teknolojilerinin ilerlemesi sayesinde kişiselleştirilmiş tıp devrim geçirmiş ve klinisyenler tek tip bir yaklaşım benimsemek yerine müdahaleleri bireylerin genetik özelliklerine göre ayarlamaya başlamıştır.",
      "Genomik dizileme teknolojilerindeki ilerlemeler kişiselleştirilmiş tıpta devrim yaratmıştır ve klinisyenlerin herkese uyan tek bir yaklaşımı bırakarak tedavi yöntemlerini bireyin kendi genetik profiline göre ayarlamasına olanak tanır.",
      "Kişiselleştirilmiş tıp, genomik dizileme teknolojilerindeki yeniliklerle devrim yaşamış olup, bu sayede klinisyenler genelgeçer bir yaklaşım yerine hastanın genetik profiline uygun tedavi müdahaleleri yapabilmektedir."
    ],
    correctIndex: 0,
    explanation: "'have revolutionized' (devrim yaratmıştır / yaratarak), 'enabling clinicians to tailor' (klinisyenlerin ... uyarlamasını sağlamıştır / olanak tanıyarak), 'rather than employing' (uygulamak yerine). A şıkkı relative yapıları ve fiil formlarını eksiksiz yansıtır.",
    difficulty: "Orta",
    isEnToTr: true,
    keyPhrases: ["have revolutionized (devrim yaratarak)", "enabling clinicians to tailor (klinisyenlerin ... uyarlamasını sağlamıştır)", "rather than employing (uygulamak yerine)"],
  ),
  TranslationQuestion(
    sourceText: "While vaccination remains the most effective strategy for preventing the spread of infectious diseases, vaccine hesitancy among certain demographic groups continues to undermine global efforts to achieve herd immunity.",
    options: const [
      "Aşılama, bulaşıcı hastalıkların yayılmasını önlemede en etkili strateji olmaya devam ederken, belirli demografik gruplar arasındaki aşı tereddüdü, sürü bağışıklığına ulaşmaya yönelik küresel çabaları baltalamaya devam etmektedir.",
      "Aşılamanın bulaşıcı hastalıkların yayılmasını engellemedeki en etkili yöntem olmasına rağmen, bazı demografik gruplarda görülen aşı kararsızlığı sürü bağışıklığını sağlama yönündeki küresel çabaları sürekli zayıflatmaktadır.",
      "Aşılama bulaşıcı hastalıkların yayılmasını önlemek için hala en etkili stratejidir, ancak belirli demografik gruplar içindeki aşı tereddüdü, sürü bağışıklığı elde etmeye yönelik küresel çabaları sekteye uğratmayı sürdürüyor.",
      "Belirli demografik gruplar arasındaki aşı tereddüdü sürü bağışıklığına ulaşma amaçlı küresel çabaları baltalamaya devam ederken, aşılama bulaşıcı hastalıkların yayılmasını önlemedeki en etkili strateji olmaya devam etmektedir.",
      "Aşılama bulaşıcı hastalıkların yayılmasını önlemede en etkili strateji olmayı sürdürse de, belirli demografik grupların aşı tereddüdü sürü bağışıklığına ulaşma konusundaki küresel girişimleri başarısız kılmaya devam ediyor."
    ],
    correctIndex: 0,
    explanation: "'While' (... iken / -mesine rağmen), 'remains' (olmaya devam ederken), 'vaccine hesitancy' (aşı tereddüdü), 'undermine' (baltalamak / zayıflatmak). A şıkkı 'While' bağlacının en temel 'iken/olmaya devam ederken' anlamını çok iyi karşılar.",
    difficulty: "Zor",
    isEnToTr: true,
    keyPhrases: ["While (... iken / olmaya devam ederken)", "remains (olmaya devam ederken)", "undermine (baltalamaya devam etmektedir)"],
  ),
  TranslationQuestion(
    sourceText: "Patients diagnosed with end-stage renal disease often require regular hemodialysis sessions to artificially filter waste products from their blood, a process that is physically exhausting and profoundly impacts their quality of life.",
    options: const [
      "Son evre böbrek hastalığı teşhisi konan hastalar, atık ürünleri kanlarından yapay olarak filtrelemek için sıklıkla düzenli hemodiyaliz seanslarına ihtiyaç duyarlar; bu, fiziksel olarak yorucu olan ve yaşam kalitelerini derinden etkileyen bir süreçtir.",
      "Son evre böbrek hastalığı olan hastalar genellikle kanlarındaki atık maddeleri yapay yolla süzmek adına düzenli hemodiyaliz seanslarına gereksinim duyarlar ve bu süreç fiziksel olarak yorucu olup yaşam kalitelerini ciddi şekilde etkiler.",
      "Atık ürünleri kanlarından yapay olarak filtrelemek için düzenli hemodiyaliz seanslarına ihtiyaç duyan son evre böbrek hastaları, fiziksel olarak yorucu olan ve yaşam kalitelerini çok etkileyen bir süreçten geçerler.",
      "Son evre böbrek hastalığı tanısı konan hastaların, atık ürünleri kanlarından yapay yolla temizlemek için sık sık düzenli hemodiyaliz seanslarına ihtiyaç duyması, fiziksel olarak yorucu bir durumdur ve yaşam kalitelerini derinden etkiler.",
      "Son evre böbrek hastalığı teşhisi alan hastalar atık ürünleri kanlarından yapay olarak süzmek için düzenli hemodiyaliz seanslarına girmek zorundadır, ki bu da fiziksel olarak tüketici olan ve yaşam kalitesini derinden sarsan bir süreçtir."
    ],
    correctIndex: 0,
    explanation: "'diagnosed with' (teşhisi konan), 'often require' (sıklıkla ihtiyaç duyarlar), 'a process that is...' (bu, ... bir süreçtir). A şıkkı, ikinci cümlecikteki tanımlama yapısını (a process that...) en uygun şekilde çevirir.",
    difficulty: "Orta",
    isEnToTr: true,
    keyPhrases: ["diagnosed with (teşhisi konan)", "often require (sıklıkla ihtiyaç duyarlar)", "a process that is (bu, ... bir süreçtir)"],
  ),
  TranslationQuestion(
    sourceText: "Klinik araştırmalar, tip 2 diyabetik hastalarda kan şekeri seviyelerini kontrol altında tutmanın, böbrek yetmezliği ve görme kaybı gibi uzun vadeli mikrovasküler komplikasyonların riskini önemli ölçüde azalttığını göstermektedir.",
    options: const [
      "Clinical studies demonstrate that keeping blood sugar levels under control in type 2 diabetic patients significantly reduces the risk of long-term microvascular complications such as kidney failure and vision loss.",
      "Clinical trials indicate that keeping blood sugar levels under control in type 2 diabetic patients is significantly reducing the risk of long-term microvascular complications like kidney failure and vision loss.",
      "It is shown by clinical studies that controlling blood sugar levels in type 2 diabetic patients significantly reduces the risks of long-term microvascular complications such as kidney failure and vision loss.",
      "Clinical studies demonstrate that to keep blood sugar levels under control in type 2 diabetic patients significantly reduced the risk of long-term microvascular complications like kidney failure and vision loss.",
      "Clinical researches show that keeping blood sugar levels controlled in type 2 diabetic patients significantly decreases the risk for long-term microvascular complications such as kidney failure and vision loss."
    ],
    correctIndex: 0,
    explanation: "'göstermektedir' (demonstrate/show/indicate), 'kontrol altında tutmanın' (keeping ... under control), 'önemli ölçüde azalttığını' (significantly reduces). A şıkkı hem kelime seçimi hem de gramer açısından tam doğrudur.",
    difficulty: "Orta",
    isEnToTr: false,
    keyPhrases: ["göstermektedir (demonstrate)", "kontrol altında tutmanın (keeping ... under control)", "önemli ölçüde azalttığını (significantly reduces)"],
  ),
  TranslationQuestion(
    sourceText: "Sağlık uzmanları, hamilelik sırasında yetersiz beslenmenin sadece annenin sağlığını tehlikeye atmakla kalmayıp, aynı zamanda fetüsün bilişsel gelişimini de olumsuz yönde etkileyebileceği konusunda defalarca uyarıda bulunmuşlardır.",
    options: const [
      "Health professionals have repeatedly warned that inadequate nutrition during pregnancy not only endangers the mother's health but may also adversely affect the cognitive development of the fetus.",
      "Health experts have repeatedly warned that insufficient nutrition during pregnancy not only endangers the mother's health but also it can adversely affect the fetus's cognitive development.",
      "Health professionals warned repeatedly that malnutrition during pregnancy not only endangers the mother's health, but may also have an adverse effect on the cognitive development of the fetus.",
      "Health professionals have repeatedly been warning that poor nutrition during pregnancy can not only endanger the mother's health but also adversely affect the cognitive development of the fetus.",
      "Health professionals have repeatedly warned about inadequate nutrition during pregnancy not only endangering the mother's health but also adversely affecting the cognitive development of the fetus."
    ],
    correctIndex: 0,
    explanation: "'defalarca uyarıda bulunmuşlardır' (have repeatedly warned), 'sadece ... kalmayıp, aynı zamanda' (not only ... but also). A şıkkı fiil kiplerini (have warned) ve 'may also adversely affect' yapısını en doğru şekilde verir.",
    difficulty: "Zor",
    isEnToTr: false,
    keyPhrases: ["defalarca uyarıda bulunmuşlardır (have repeatedly warned)", "sadece ... kalmayıp, aynı zamanda (not only ... but also)", "olumsuz yönde etkileyebileceği (may also adversely affect)"],
  ),
  TranslationQuestion(
    sourceText: "Yaşlanan nüfusla birlikte artan sağlık bakım maliyetleri göz önüne alındığında, hükümetlerin kronik hastalıkların tedavisi yerine önleyici sağlık hizmetlerine daha fazla kaynak ayırması zorunlu hale gelmiştir.",
    options: const [
      "Given the rising healthcare costs along with the aging population, it has become imperative for governments to allocate more resources to preventive healthcare services rather than the treatment of chronic diseases.",
      "Considering the rising healthcare costs with the aging population, it became mandatory for governments to allocate more resources to preventive healthcare services instead of treating chronic diseases.",
      "Given the increasing healthcare costs along with the aging population, it has become necessary that governments allocate more resources to preventive healthcare services rather than the treatment of chronic diseases.",
      "When the rising healthcare costs along with the aging population are considered, it has become imperative for governments to allocate more resources to preventive health services rather than treating chronic illnesses.",
      "Due to the rising healthcare costs along with the aging population, it is now imperative for governments to allocate more resources to preventive healthcare services rather than to the treatment of chronic diseases."
    ],
    correctIndex: 0,
    explanation: "'göz önüne alındığında' (Given / Considering), 'zorunlu hale gelmiştir' (it has become imperative), 'yerine' (rather than). A şıkkı orijinal cümleyi tam olarak çevirir.",
    difficulty: "Orta",
    isEnToTr: false,
    keyPhrases: ["göz önüne alındığında (Given)", "zorunlu hale gelmiştir (it has become imperative)", "yerine (rather than)"],
  ),
  TranslationQuestion(
    sourceText: "Pek çok insan düzenli olarak vitamin takviyeleri almanın bağışıklık sistemini güçlendireceğine inansa da, bilimsel kanıtlar dengeli bir diyetin dışarıdan alınan takviyelerden çok daha etkili olduğunu ortaya koymaktadır.",
    options: const [
      "Although many people believe that taking vitamin supplements regularly will strengthen the immune system, scientific evidence reveals that a balanced diet is much more effective than externally taken supplements.",
      "Even though a lot of people believe taking vitamin supplements regularly will strengthen the immune system, scientific evidence shows a balanced diet to be much more effective than externally taken supplements.",
      "While many people believe that to take vitamin supplements regularly strengthens the immune system, scientific evidence reveals that a balanced diet is far more effective than supplements taken from outside.",
      "Many people believe that taking vitamin supplements regularly will strengthen the immune system, but scientific evidence reveals that a balanced diet is much more effective than externally taken supplements.",
      "Although many people believe taking regular vitamin supplements will strengthen the immune system, scientific evidence reveals that a balanced diet is much more effective than externally taken supplements."
    ],
    correctIndex: 0,
    explanation: "'-sa da' (Although/Even though), 'güçlendireceğine' (will strengthen), 'ortaya koymaktadır' (reveals/shows). A şıkkı, 'taking vitamin supplements regularly' ve cümlenin diğer unsurlarını birebir çevirir.",
    difficulty: "Orta",
    isEnToTr: false,
    keyPhrases: ["inansa da (Although ... believe)", "güçlendireceğine (will strengthen)", "ortaya koymaktadır (reveals)"],
  ),
  TranslationQuestion(
    sourceText: "Kalp krizini atlatan hastalar için kardiyak rehabilitasyon programları, sadece fiziksel iyileşmeyi hızlandırmakla kalmaz, aynı zamanda hastaların yaşayabileceği depresyon ve anksiyete gibi psikolojik sorunlarla başa çıkmalarına da yardımcı olur.",
    options: const [
      "For patients who have survived a heart attack, cardiac rehabilitation programs not only accelerate physical recovery but also help them cope with psychological issues such as depression and anxiety that they may experience.",
      "Cardiac rehabilitation programs for patients surviving a heart attack not only accelerate physical recovery but also help them deal with psychological problems like depression and anxiety they may experience.",
      "For patients who survived a heart attack, cardiac rehabilitation programs do not only accelerate physical recovery but they also help them cope with psychological issues such as depression and anxiety they may experience.",
      "Cardiac rehabilitation programs for heart attack survivors not only accelerate physical recovery but also help them cope with psychological issues such as depression and anxiety that they might experience.",
      "For patients who have survived a heart attack, cardiac rehabilitation programs not only accelerate physical recovery, but also help patients cope with psychological issues such as depression and anxiety that they may experience."
    ],
    correctIndex: 0,
    explanation: "'atlatan' (who have survived), 'sadece ... kalmaz, aynı zamanda ... yardımcı olur' (not only accelerate ... but also help). A şıkkı gramer ve kelime anlamları açısından kusursuz bir uyum içindedir.",
    difficulty: "Zor",
    isEnToTr: false,
    keyPhrases: ["atlatan (who have survived)", "sadece ... kalmaz, aynı zamanda ... yardımcı olur (not only ... but also help)", "başa çıkmalarına (cope with)"],
  ),
  TranslationQuestion(
    sourceText: "Son zamanlarda yapılan epidemiyolojik bir çalışma, hava kirliliğinin yüksek olduğu bölgelerde yaşayan çocukların, temiz havaya sahip bölgelerde yaşayan yaşıtlarına kıyasla astım geliştirme olasılığının iki kat daha fazla olduğunu bulmuştur.",
    options: const [
      "A recent epidemiological study has found that children living in areas with high air pollution are twice as likely to develop asthma compared to their peers living in areas with clean air.",
      "A recent epidemiological study found that children who live in areas with high air pollution have twice the likelihood of developing asthma compared to their peers living in areas with clean air.",
      "According to a recent epidemiological study, children living in areas with high air pollution are two times more likely to develop asthma compared to their peers who live in areas with clean air.",
      "A recently conducted epidemiological study has found that children living in high air pollution areas are twice as likely to develop asthma in comparison with their peers living in clean air areas.",
      "A recent epidemiological study has discovered that children living in areas with high air pollution are twice as likely to develop asthma when compared to their peers living in areas with clean air."
    ],
    correctIndex: 0,
    explanation: "'iki kat daha fazla olduğunu' (are twice as likely to), 'kıyasla' (compared to), 'bulmuştur' (has found). A şıkkı İngilizce'de bu karşılaştırmayı en doğal ve doğru aktaran ifadedir.",
    difficulty: "Orta",
    isEnToTr: false,
    keyPhrases: ["iki kat daha fazla olduğunu (are twice as likely to)", "kıyasla (compared to)", "bulmuştur (has found)"],
  ),
  TranslationQuestion(
    sourceText: "Kanser tedavisi gören hastaların bağışıklık sistemleri genellikle baskılanmış olduğundan, bu hastalar fırsatçı enfeksiyonlara karşı son derece savunmasızdırlar ve bu nedenle hastane ortamında katı hijyen kurallarına uyulmalıdır.",
    options: const [
      "Since the immune systems of patients undergoing cancer treatment are generally suppressed, these patients are highly vulnerable to opportunistic infections, and therefore strict hygiene rules must be followed in the hospital environment.",
      "Because the immune systems of patients undergoing cancer treatment are generally suppressed, these patients are highly vulnerable to opportunistic infections, which is why strict hygiene rules must be followed in the hospital environment.",
      "As the immune systems of patients undergoing cancer treatment are generally suppressed, these patients are extremely vulnerable to opportunistic infections, and thus strict hygiene rules should be followed in the hospital setting.",
      "The immune systems of patients undergoing cancer treatment are generally suppressed, making them highly vulnerable to opportunistic infections, and therefore strict hygiene rules must be followed in the hospital environment.",
      "Since patients undergoing cancer treatment generally have suppressed immune systems, they are highly vulnerable to opportunistic infections, and therefore strict hygiene rules must be followed in the hospital environment."
    ],
    correctIndex: 0,
    explanation: "'-dığından' (Since/As/Because), 'genellikle baskılanmış' (are generally suppressed), 'son derece savunmasızdırlar' (are highly vulnerable), 'bu nedenle' (and therefore). A şıkkı, pasif yapıları ve bağlaçları mükemmel bir şekilde yansıtmaktadır.",
    difficulty: "Zor",
    isEnToTr: false,
    keyPhrases: ["-dığından (Since)", "genellikle baskılanmış (are generally suppressed)", "son derece savunmasızdırlar (are highly vulnerable)"],
  ),
  TranslationQuestion(
    sourceText: "Modern yaşamın getirdiği yüksek stres seviyeleri ve uyku düzensizlikleri, hipertansiyon ve obezite gibi metabolik sendromların görülme sıklığındaki hızlı artışın başlıca sorumluları olarak kabul edilmektedir.",
    options: const [
      "High stress levels and sleep irregularities brought about by modern life are considered to be the primary culprits for the rapid increase in the incidence of metabolic syndromes such as hypertension and obesity.",
      "High stress levels and sleep irregularities brought by modern life are accepted as the main culprits for the rapid increase in the prevalence of metabolic syndromes such as hypertension and obesity.",
      "The high stress levels and sleep irregularities brought about by modern life are considered as the primary culprits of the rapid increase in the incidence of metabolic syndromes like hypertension and obesity.",
      "High stress levels and sleep irregularities that modern life brings are considered to be the main culprits for the rapid increase in the incidence of metabolic syndromes such as hypertension and obesity.",
      "High stress levels and sleep irregularities brought about by modern life are considered the primary reasons for the rapid increase in the incidence of metabolic syndromes such as hypertension and obesity."
    ],
    correctIndex: 0,
    explanation: "'getirdiği' (brought about by), 'başlıca sorumluları olarak kabul edilmektedir' (are considered to be the primary culprits for), 'görülme sıklığındaki' (incidence of). A şıkkı, akademik İngilizceye uygun, anlamı tam veren en doğru seçenektir.",
    difficulty: "Orta",
    isEnToTr: false,
    keyPhrases: ["getirdiği (brought about by)", "başlıca sorumluları olarak kabul edilmektedir (are considered to be the primary culprits for)", "görülme sıklığındaki (incidence of)"],
  ),
  TranslationQuestion(
    sourceText: "Her ne kadar cerrahi teknikler son on yılda büyük bir ilerleme kaydetmiş olsa da, cerrahlar ameliyat sonrası dönemde oluşabilecek enfeksiyon riskini en aza indirmek için hastaların durumunu yakından takip etmek zorundadır.",
    options: const [
      "Even though surgical techniques have made great progress in the last decade, surgeons must closely monitor the condition of patients to minimize the risk of infection that may occur in the postoperative period.",
      "Although surgical techniques have made great progress in the last ten years, surgeons have to closely monitor patients' condition to minimize the risk of infection that may occur in the postoperative period.",
      "While surgical techniques have made great progress in the last decade, surgeons must closely follow the condition of patients to minimize the risk of infection that can occur in the postoperative period.",
      "Even though surgical techniques made great progress in the last decade, surgeons must closely monitor the condition of patients to minimize the risk of infection that may occur in the postoperative period.",
      "Even though surgical techniques have made great progress in the last decade, surgeons must closely monitor the patients' condition in order to minimize the risk of infection that may occur in the postoperative period."
    ],
    correctIndex: 0,
    explanation: "'Her ne kadar ... -sa da' (Even though/Although), 'büyük bir ilerleme kaydetmiş' (have made great progress), 'yakından takip etmek zorundadır' (must closely monitor). A şıkkı tüm unsurları eksiksiz karşılar.",
    difficulty: "Orta",
    isEnToTr: false,
    keyPhrases: ["Her ne kadar ... sa da (Even though)", "büyük bir ilerleme kaydetmiş (have made great progress)", "yakından takip etmek zorundadır (must closely monitor)"],
  ),
  TranslationQuestion(
    sourceText: "Dünya Sağlık Örgütü, antibiyotik direncinin küresel bir halk sağlığı acil durumu olduğunu ilan etmiş ve yeni antibiyotik sınıflarının geliştirilmesinin yanı sıra mevcut ilaçların bilinçli kullanımını teşvik etmiştir.",
    options: const [
      "The World Health Organization has declared antibiotic resistance a global public health emergency and has promoted the judicious use of existing drugs in addition to the development of new antibiotic classes.",
      "The World Health Organization declared that antibiotic resistance is a global public health emergency and promoted the judicious use of existing drugs as well as the development of new antibiotic classes.",
      "The World Health Organization has declared antibiotic resistance to be a global public health emergency and has promoted the judicious use of existing drugs in addition to developing new antibiotic classes.",
      "The World Health Organization has declared antibiotic resistance a global public health emergency and promoted the conscious use of existing drugs along with the development of new antibiotic classes.",
      "The World Health Organization has declared antibiotic resistance as a global public health emergency and has encouraged the judicious use of existing drugs in addition to the development of new antibiotic classes."
    ],
    correctIndex: 0,
    explanation: "'ilan etmiş' (has declared), 'yanı sıra' (in addition to / as well as), 'bilinçli kullanımını' (judicious use), 'teşvik etmiştir' (has promoted). A şıkkı fiil kipleri ve akademik kelime tercihleriyle orijinal metnin kusursuz çevirisidir.",
    difficulty: "Zor",
    isEnToTr: false,
    keyPhrases: ["ilan etmiş (has declared)", "yanı sıra (in addition to)", "teşvik etmiştir (has promoted)"],
  ),

  TranslationQuestion(
    sourceText: "Prolonged exposure to psychological stress has been shown to elevate cortisol levels, which in turn can lead to impaired immune function and increased susceptibility to infectious diseases.",
    options: const [
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
    options: const [
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
    options: const [
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
    options: const [
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
    options: const [
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
    options: const [
      "Since excessive sugar consumption leads to insulin resistance, individuals' avoidance of processed foods in their diets plays a vital role in the prevention of diabetes.",
      "Because excessive sugar consumption leads to insulin resistance, to avoid processed foods plays an important role in preventing diabetes for individuals.",
      "As excessive sugar consumption is leading to insulin resistance, it is vital for individuals to avoid processed foods in their diets to prevent diabetes.",
      "Due to the fact that excessive sugar consumption causes insulin resistance, avoiding processed foods in the diet played a vital role in diabetes prevention.",
      "Individuals' avoidance of processed foods in their diets plays a vital role in preventing diabetes, since consuming too much sugar leads to insulin resistance."
    ],
    correctIndex: 0,
    explanation: "'-dığından' (Since/As/Because), 'bireylerin diyetlerinde işlenmiş gıdalardan kaçınmaları' (individuals\' avoidance of processed foods in their diets). A şıkkı tam çeviridir.",
    difficulty: "Zor",
    isEnToTr: false,
    keyPhrases: ["yol açtığından (Since ... leads to)", "işlenmiş gıdalardan kaçınmaları (avoidance of processed foods)", "hayati bir rol oynamaktadır (plays a vital role)"],
  ),
  TranslationQuestion(
    sourceText: "Düzenli kardiyovasküler egzersiz, sadece kalp kasını güçlendirmekle kalmaz, aynı zamanda beyne giden kan akışını artırarak bilişsel fonksiyonları da geliştirir.",
    options: const [
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
    options: const [
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
    options: const [
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
    options: const [
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
  ),
  TranslationQuestion(
    sourceText: "The intricate interplay between gut microbiota and the central nervous system, often referred to as the gut-brain axis, is hypothesized to modulate neuroinflammation and play a pivotal role in the pathogenesis of various psychiatric disorders, including severe depression and anxiety.",
    options: const [
      "Gut mikrobiyotası ile merkezi sinir sistemi arasındaki sıklıkla bağırsak-beyin ekseni olarak adlandırılan karmaşık etkileşimin, nöroenflamasyonu modüle ettiği ve şiddetli depresyon ve anksiyete dahil olmak üzere çeşitli psikiyatrik bozuklukların patogenezinde çok önemli bir rol oynadığı varsayılmaktadır.",
      "Sıklıkla bağırsak-beyin ekseni olarak anılan bağırsak mikrobiyotası ve merkezi sinir sistemi etkileşimi sayesinde nöroenflamasyon modüle edilir ve bunun da şiddetli depresyon ve anksiyete gibi psikiyatrik bozuklukların oluşumunda temel bir rol oynadığı tahmin ediliyor.",
      "Bağırsak-beyin ekseni olarak da bilinen bağırsak mikrobiyotası ile merkezi sinir sistemi arasındaki karmaşık etkileşim, nöroenflamasyonu modüle ederek şiddetli depresyon ve anksiyete gibi çeşitli psikiyatrik bozuklukların patogenezinde çok önemli bir role sahiptir.",
      "Çeşitli psikiyatrik bozuklukların, özellikle de şiddetli depresyon ve anksiyetenin patogenezinde kritik rol oynayan ve bağırsak-beyin ekseni olarak bilinen bağırsak mikrobiyotası ile merkezi sinir sistemi arasındaki etkileşimin nöroenflamasyonu modüle ettiği varsayılmaktadır.",
      "Sıklıkla bağırsak-beyin ekseni olarak anılan bağırsak mikrobiyotası ve merkezi sinir sistemi arasındaki etkileşim nedeniyle, nöroenflamasyon modüle edilmekte ve böylece şiddetli depresyon ile anksiyete dahil çeşitli psikiyatrik bozukluklar ortaya çıkmaktadır."
    ],
    correctIndex: 0,
    explanation: "'The intricate interplay' (karmaşık etkileşimin), 'often referred to as' (sıklıkla ... olarak adlandırılan), 'is hypothesized' (varsayılmaktadır), 'play a pivotal role' (çok önemli bir rol oynadığı). A şıkkı passive 'is hypothesized' yapısını tam bir 'varsayılmaktadır' fiiliyle doğru kapatır.",
    difficulty: "Zor",
    isEnToTr: true,
    keyPhrases: ["intricate interplay (karmaşık etkileşim)", "is hypothesized (varsayılmaktadır)", "play a pivotal role (çok önemli bir rol oynadığı)"],
  ),
  TranslationQuestion(
    sourceText: "While the efficacy of immunotherapy in treating certain malignancies is indisputable, the unpredictable onset of severe autoimmune-like adverse events necessitates rigorous patient monitoring and highly specialized intervention protocols.",
    options: const [
      "İmmünoterapinin belirli malignitelerin tedavisindeki etkinliği tartışılmaz olsa da, şiddetli otoimmün benzeri yan etkilerin öngörülemeyen başlangıcı, titiz hasta takibi ve son derece uzmanlaşmış müdahale protokolleri gerektirir.",
      "İmmünoterapi bazı malignitelerin tedavisinde tartışılmaz derecede etkilidir, ancak otoimmün benzeri şiddetli yan etkilerin aniden ortaya çıkması nedeniyle hastaların dikkatle izlenmesi ve çok özel müdahale protokolleri uygulanması zorunludur.",
      "Belirli maligniteleri tedavi etmede immünoterapinin etkinliği tartışılmaz olmasına rağmen, öngörülemeyen şiddetli otoimmün benzeri yan etkiler başladığında hastaları titizlikle izlemek ve son derece uzmanlaşmış müdahaleler uygulamak gerekmektedir.",
      "Her ne kadar immünoterapi belirli malignitelerin tedavisinde tartışılmaz bir etkinliğe sahip olsa da, şiddetli otoimmün benzeri yan etkiler öngörülemez bir şekilde başladığı için titiz hasta izleme ve özel müdahale protokolleri zorunlu hale gelir.",
      "İmmünoterapinin belirli maligniteleri tedavi etmedeki tartışılmaz etkinliği bir yana, otoimmün benzeri şiddetli yan etkilerin beklenmedik başlangıcı, çok sıkı hasta takibi ile ileri düzeyde uzmanlaşmış müdahale protokollerini gerektirmektedir."
    ],
    correctIndex: 0,
    explanation: "'While' (... olsa da / -mesine rağmen), 'unpredictable onset' (öngörülemeyen başlangıcı), 'necessitates' (gerektirir). A şıkkı 'necessitates' eylemini 'gerektirir' olarak doğru özne ile eşleştirmiştir.",
    difficulty: "Zor",
    isEnToTr: true,
    keyPhrases: ["While (... olsa da)", "unpredictable onset (öngörülemeyen başlangıcı)", "necessitates (gerektirir)"],
  ),
  TranslationQuestion(
    sourceText: "Epidemiological surveillance data unequivocally demonstrate that populations residing in socioeconomically disadvantaged neighborhoods bear a disproportionately high burden of chronic non-communicable diseases, primarily driven by inadequate access to primary healthcare and persistent environmental stressors.",
    options: const [
      "Epidemiyolojik sürveyans verileri, sosyoekonomik açıdan dezavantajlı mahallelerde yaşayan popülasyonların, temel olarak birinci basamak sağlık hizmetlerine yetersiz erişim ve sürekli çevresel stres faktörlerinden kaynaklanan orantısız derecede yüksek bir kronik bulaşıcı olmayan hastalık yükü taşıdığını kesin olarak göstermektedir.",
      "Epidemiyolojik izlem verileri kesin olarak gösteriyor ki, birinci basamak sağlık hizmetlerine erişemeyen ve sürekli çevresel strese maruz kalan sosyoekonomik açıdan dezavantajlı mahalle sakinleri, kronik bulaşıcı olmayan hastalıklardan çok daha fazla etkilenmektedir.",
      "Sosyoekonomik açıdan dezavantajlı mahallelerde yaşayan nüfusların, birinci basamak sağlık hizmetlerine erişim yetersizliği ve sürekli çevresel stres faktörleri nedeniyle kronik bulaşıcı olmayan hastalıkların ağır yükünü orantısız bir şekilde taşıdığı epidemiyolojik verilerle kanıtlanmıştır.",
      "Epidemiyolojik araştırma verilerine göre, sosyoekonomik olarak dezavantajlı mahallelerde yaşayanların orantısız derecede yüksek olan kronik bulaşıcı olmayan hastalık yükü, başlıca birinci basamak sağlık hizmetlerine ulaşamamaktan ve sürekli çevresel stresten kaynaklanmaktadır.",
      "Epidemiyolojik sürveyans verileri, birinci basamak sağlık hizmetlerine erişim eksikliği ve kronik çevresel stresin, sosyoekonomik açıdan dezavantajlı mahallelerdeki insanların çok daha fazla kronik bulaşıcı olmayan hastalık yükü taşımasına kesin olarak yol açtığını göstermektedir."
    ],
    correctIndex: 0,
    explanation: "'unequivocally demonstrate' (kesin olarak göstermektedir), 'bear a disproportionately high burden' (orantısız derecede yüksek bir ... yükü taşıdığını), 'primarily driven by' (temel olarak ... kaynaklanan). A şıkkı bu zorlu kalıpları harfiyen sağlar.",
    difficulty: "Zor",
    isEnToTr: true,
    keyPhrases: ["unequivocally demonstrate (kesin olarak göstermektedir)", "bear a disproportionately high burden (orantısız derecede yüksek bir yük taşıdığını)", "primarily driven by (temel olarak ... kaynaklanan)"],
  ),
  TranslationQuestion(
    sourceText: "The accelerated approval of novel antiviral therapeutic agents by regulatory bodies, although crucial for managing emerging pandemics, raises profound ethical and safety concerns regarding long-term pharmacovigilance and unforeseen adverse drug reactions.",
    options: const [
      "Yeni antiviral terapötik ajanların düzenleyici kurumlar tarafından hızlandırılmış onayı, ortaya çıkan pandemileri yönetmek için çok önemli olsa da, uzun vadeli farmakovijilans ve öngörülemeyen advers ilaç reaksiyonları ile ilgili derin etik ve güvenlik endişelerini gündeme getirmektedir.",
      "Düzenleyici kurumların yeni antiviral ilaçlara hızlandırılmış onay vermesi, ortaya çıkan salgınları yönetmede büyük önem taşısa da, uzun süreli farmakovijilans ve beklenmeyen ilaç reaksiyonları konusunda ciddi etik ve güvenlikle ilgili kaygılar yaratır.",
      "Ortaya çıkan pandemileri kontrol etmek için çok önemli olmasına rağmen, yeni antiviral terapötik ajanların düzenleyici kuruluşlarca hızla onaylanması, uzun vadeli farmakovijilans ve beklenmeyen yan etkiler hakkında derin etik tartışmalara yol açmaktadır.",
      "Yeni antiviral ajanların düzenleyici kurumlar tarafından hızla onaylanması her ne kadar yeni pandemilerin yönetiminde kilit rol oynasa da, bu durum uzun vadeli farmakovijilans ve öngörülemeyen ilaç yan etkileri bağlamında derin etik ve güvenlik sorunlarına sebep olmaktadır.",
      "Yeni ortaya çıkan pandemilerle başa çıkmada yeni antiviral tedavi edici ajanların düzenleyici kurumlarca hızlandırılmış onayı elzem olsa da, bu durum beraberinde uzun dönem farmakovijilans ve öngörülemeyen advers ilaç reaksiyonlarına dair derin etik kaygılar getirmektedir."
    ],
    correctIndex: 0,
    explanation: "'although crucial' (... çok önemli olsa da), 'raises profound ethical and safety concerns' (derin etik ve güvenlik endişelerini gündeme getirmektedir / yaratır). A şıkkı isim tamlamalarını (accelerated approval of novel antiviral therapeutic agents) ve fiili en kesin haliyle yansıtır.",
    difficulty: "Zor",
    isEnToTr: true,
    keyPhrases: ["although crucial (çok önemli olsa da)", "raises profound ethical and safety concerns (derin etik ve güvenlik endişelerini gündeme getirmektedir)", "unforeseen adverse drug reactions (öngörülemeyen advers ilaç reaksiyonları)"],
  ),
  TranslationQuestion(
    sourceText: "Given the unprecedented rate at which bacterial pathogens are acquiring multidrug resistance mechanisms, implementing stringent antimicrobial stewardship programs globally is no longer merely a precautionary measure, but an absolute necessity to avert a post-antibiotic era.",
    options: const [
      "Bakteriyel patojenlerin çoklu ilaç direnci mekanizmalarını benzeri görülmemiş bir hızda edindiği göz önüne alındığında, küresel düzeyde sıkı antimikrobiyal yönetim programlarının uygulanması artık sadece ihtiyati bir tedbir değil, antibiyotik sonrası bir dönemi önlemek için mutlak bir zorunluluktur.",
      "Bakteriyel patojenlerin çoklu ilaca direnç mekanizmaları geliştirme hızının eşi benzeri görülmediği dikkate alındığında, dünya çapında katı antimikrobiyal kontrol programları uygulamak sadece önleyici bir adım olmaktan çıkıp antibiyotiksiz bir çağı engellemek için kesin bir ihtiyaç haline gelmiştir.",
      "Bakteriyel patojenlerin görülmemiş bir hızla çoklu ilaç direnci kazandığı bir dönemde, küresel çapta sıkı antimikrobiyal yönetim programlarını hayata geçirmek artık basit bir önlem değil, antibiyotik sonrası çağa girmemek için mutlak bir gerekliliktir.",
      "Bakteriyel patojenler çoklu ilaca direnç mekanizmalarını eşi benzeri görülmemiş bir hızda edindiği için, antibiyotik sonrası bir çağı önlemek amacıyla küresel ölçekte katı antimikrobiyal yönetim programları uygulamak yalnızca bir önlem değil, aynı zamanda zorunluluktur.",
      "Küresel düzeyde sıkı antimikrobiyal yönetim programlarının uygulanması, bakteriyel patojenlerin benzeri görülmemiş bir oranda direnç kazanması göz önüne alındığında, antibiyotik sonrası dönemi önlemek için sadece bir tedbir olmanın ötesinde mutlak bir zorunluluk teşkil eder."
    ],
    correctIndex: 0,
    explanation: "'Given the unprecedented rate' (... benzeri görülmemiş bir hızda ... göz önüne alındığında), 'is no longer merely a precautionary measure, but an absolute necessity' (artık sadece ihtiyati bir tedbir değil, ... mutlak bir zorunluluktur). A şıkkı tam bir uyum içindedir.",
    difficulty: "Zor",
    isEnToTr: true,
    keyPhrases: ["Given the unprecedented rate (benzeri görülmemiş bir hızda göz önüne alındığında)", "no longer merely (artık sadece ... değil)", "avert (önlemek)"],
  ),
  TranslationQuestion(
    sourceText: "Biyobelirteç tabanlı teşhis araçlarının onkoloji pratiğine entegrasyonu, tümör moleküler profiline dayalı olarak hastaların kişiselleştirilmiş tedavi rejimleri için doğru bir şekilde sınıflandırılmasına benzeri görülmemiş bir olanak tanımıştır.",
    options: const [
      "The integration of biomarker-based diagnostic tools into oncology practice has provided an unprecedented opportunity for accurately stratifying patients for personalized treatment regimens based on their tumor molecular profiling.",
      "Integrating biomarker-based diagnostic tools into the practice of oncology provided a never-before-seen opportunity to classify patients accurately into personalized treatment regimens based on their tumor molecular profiling.",
      "The integration of biomarker-based diagnostic tools to oncology practice has given an unprecedented possibility to precisely categorize patients for personalized treatments depending on their tumor's molecular profile.",
      "With the integration of biomarker-based diagnostic tools into oncology practice, there is now an unprecedented opportunity to accurately classify patients for personalized treatment regimens according to tumor molecular profiles.",
      "The integration of biomarker-based diagnostic tools in oncology practice allowed for an unprecedented possibility for accurately stratifying patients to personalized treatment regimens which are based on tumor molecular profiling."
    ],
    correctIndex: 0,
    explanation: "'entegrasyonu' (The integration of), 'benzeri görülmemiş bir olanak tanımıştır' (has provided an unprecedented opportunity), 'doğru bir şekilde sınıflandırılmasına' (for accurately stratifying), 'tümör moleküler profiline dayalı olarak' (based on their tumor molecular profiling). A şıkkı ileri düzey akademik kavramları (stratifying, profiling) tam yansıtır.",
    difficulty: "Zor",
    isEnToTr: false,
    keyPhrases: ["benzeri görülmemiş bir olanak tanımıştır (has provided an unprecedented opportunity)", "doğru bir şekilde sınıflandırılmasına (for accurately stratifying)", "dayalı olarak (based on)"],
  ),
  TranslationQuestion(
    sourceText: "Viral mutasyonların öngörülemez doğası, aşılama yoluyla kazanılan bağışıklığın hızla azalma eğiliminde olmasıyla birleşince, araştırmacıları çapraz koruma sağlayabilen geniş spektrumlu aşı platformları geliştirmeye mecbur bırakmaktadır.",
    options: const [
      "The unpredictable nature of viral mutations, coupled with the tendency of vaccine-induced immunity to wane rapidly, compels researchers to develop broad-spectrum vaccine platforms capable of conferring cross-protection.",
      "The unpredictable nature of viral mutations, when combined with the rapid waning of the immunity acquired through vaccination, forces researchers into developing broad-spectrum vaccine platforms that can provide cross-protection.",
      "Because of the unpredictable nature of viral mutations and the rapid decline of vaccine-induced immunity, researchers are compelled to develop broad-spectrum vaccine platforms which are capable of offering cross-protection.",
      "The unpredictable nature of viral mutations coupled with the fact that immunity acquired via vaccination tends to decrease rapidly, makes it necessary for researchers to develop broad-spectrum vaccine platforms that afford cross-protection.",
      "The unpredictable nature of viral mutations, together with the tendency for vaccine-induced immunity to diminish rapidly, obliges researchers to develop broad-spectrum vaccine platforms that can yield cross-protection."
    ],
    correctIndex: 0,
    explanation: "'birleşince' (coupled with), 'kazanılan bağışıklığın hızla azalma eğiliminde olması' (the tendency of vaccine-induced immunity to wane rapidly), 'mecbur bırakmaktadır' (compels), 'sağlayabilen' (capable of conferring). A şıkkındaki kelime dağarcığı 'wane' ve 'conferring' kelimeleriyle en doğru 'Zor' seviyedir.",
    difficulty: "Zor",
    isEnToTr: false,
    keyPhrases: ["birleşince (coupled with)", "kazanılan bağışıklığın hızla azalma eğiliminde olması (tendency of vaccine-induced immunity to wane rapidly)", "mecbur bırakmaktadır (compels)"],
  ),
  TranslationQuestion(
    sourceText: "Yaşlanma sürecinin ayırt edici özelliklerinden biri olan hücresel yaşlanma, inflamatuar sitokinlerin salgılanmasını teşvik ederek yalnızca doku fonksiyon bozukluğuna değil, aynı zamanda onkogenez için elverişli bir mikroçevre oluşumuna da katkıda bulunur.",
    options: const [
      "Cellular senescence, a hallmark of the aging process, promotes the secretion of inflammatory cytokines, thereby contributing not only to tissue dysfunction but also to the creation of a microenvironment conducive to oncogenesis.",
      "Cellular senescence, which is one of the hallmarks of the aging process, encourages the secretion of inflammatory cytokines and contributes not only to tissue dysfunction but also to forming a microenvironment favorable for oncogenesis.",
      "Being a hallmark of the aging process, cellular senescence stimulates the secretion of inflammatory cytokines, thus it contributes not only to tissue dysfunction but also to the creation of a microenvironment prone to oncogenesis.",
      "As a hallmark of the aging process, cellular senescence promotes the secretion of inflammatory cytokines, thus contributing not only to tissue dysfunction but also to the creation of a microenvironment conducive to oncogenesis.",
      "Cellular senescence is a hallmark of the aging process that promotes the secretion of inflammatory cytokines, thereby contributing not only to tissue dysfunction but also to a microenvironment conducive to oncogenesis."
    ],
    correctIndex: 0,
    isEnToTr: false,
    difficulty: "Zor",
    keyPhrases: const [],
    explanation: "A şıkkı, metnin birebir akademik çevirisidir."
  ),
  TranslationQuestion(
    sourceText: "Recent epidemiological studies have shown that the incidence of autoimmune diseases is rising globally at an unprecedented rate. Environmental triggers, rather than genetic factors alone, are now believed to play a much more prominent role in this surge. Consequently, health policies must be adapted to address these emerging environmental risks effectively.",
    options: const [
      "A) Son epidemiyolojik çalışmalar, otoimmün hastalıkların görülme sıklığının küresel olarak daha önce görülmemiş bir hızla arttığını göstermiştir. Artık sadece genetik faktörlerin değil, çevresel tetikleyicilerin de bu artışta çok daha belirgin bir rol oynadığına inanılmaktadır. Sonuç olarak, sağlık politikaları bu ortaya çıkan çevresel riskleri etkili bir şekilde ele alacak şekilde uyarlanmalıdır.",
      "B) Yeni yapılan epidemiyolojik araştırmalara göre, otoimmün hastalıklar dünya çapında hızlı bir artış göstermektedir. Sadece genetik yatkınlık değil, çevresel faktörlerin de bu durumda önemli bir payı olduğu bilinmektedir. Bu nedenle, sağlık politikaları çevresel tehlikelere karşı yeniden düzenlenmektedir.",
      "C) Son epidemiyolojik çalışmalar, otoimmün hastalıkların küresel ölçekte emsalsiz bir hızla yayılmakta olduğunu kanıtlamaktadır. Genetik faktörlerin yanı sıra çevresel tetikleyicilerin bu artışın tek nedeni olduğu düşünülmektedir. Sonuç olarak, sağlık politikalarının çevresel riskleri ortadan kaldıracak şekilde değişmesi şarttır.",
      "D) Küresel çapta yapılan son epidemiyolojik çalışmalar, otoimmün hastalıkların görülme sıklığının daha önce hiç olmadığı kadar hızlı arttığını vurgulamaktadır. Bu artışta genetik faktörlerden ziyade çevresel tetikleyicilerin daha büyük bir rol oynadığı tahmin edilmektedir. Sonuç olarak, mevcut sağlık politikaları hızla değiştirilmelidir.",
      "E) Son epidemiyolojik çalışmalar otoimmün hastalıkların küresel olarak arttığını göstermiş olsa da asıl neden belirsizliğini korumaktadır. Sadece genetik faktörlerden ziyade çevresel faktörlerin rol oynadığına inanılmaktadır. Sağlık politikaları bu yeni ortaya çıkan duruma uyum sağlamalıdır."
    ],
    correctIndex: 0,
    isEnToTr: true,
    difficulty: "Zor",
    keyPhrases: const [],
    explanation: "Cümle 1: 'Recent epidemiological studies have shown that...' -> Son epidemiyolojik çalışmalar ... göstermiştir. Cümle 2: 'Environmental triggers, rather than genetic factors alone...' -> Sadece genetik faktörlerin değil, çevresel tetikleyicilerin... Cümle 3: 'Consequently, health policies must be adapted...' -> Sonuç olarak, sağlık politikaları ... uyarlanmalıdır. Doğru seçenek A'dır."
  ),
  TranslationQuestion(
    sourceText: "Prolonged exposure to chronic stress can severely impair the immune system's ability to fight off opportunistic infections. Furthermore, elevated cortisol levels inhibit the production of vital white blood cells, leaving the patient extremely vulnerable. Therefore, stress management techniques should be an integral part of holistic medical treatments.",
    options: const [
      "A) Uzun süreli kronik stres, bağışıklık sisteminin enfeksiyonlara karşı koyma kapasitesini ciddi şekilde zayıflatabilir. Bunun yanı sıra, yüksek kortizol seviyeleri önemli beyaz kan hücrelerinin üretimini yavaşlatarak hastayı savunmasız bırakır. Bu nedenle, stres yönetimi tüm tıbbi tedavilerin temelini oluşturmalıdır.",
      "B) Kronik strese uzun süre maruz kalmak, bağışıklık sisteminin fırsatçı enfeksiyonlarla savaşma yeteneğini ciddi şekilde bozabilir. Dahası, yüksek kortizol seviyeleri hayati beyaz kan hücrelerinin üretimini engelleyerek hastayı son derece savunmasız bırakır. Bu nedenle, stres yönetimi teknikleri bütüncül tıbbi tedavilerin ayrılmaz bir parçası olmalıdır.",
      "C) Kronik stres bağışıklık sistemini fırsatçı enfeksiyonlara karşı korumasız bırakır. Üstelik kortizol seviyesinin artması, beyaz kan hücrelerinin sayısını azaltarak hastayı riske atar. Dolayısıyla, bütüncül tıbbi tedaviler her zaman stres yönetimi tekniklerini de içermelidir.",
      "D) Uzun süreli stresin bağışıklık sisteminin enfeksiyonlarla savaşma yeteneğini zayıflattığı bilinmektedir. Dahası, artan kortizol seviyeleri hayati önem taşıyan beyaz kan hücrelerinin çoğalmasını durdurur. Sonuç olarak, tıbbi tedaviler mutlaka stres yönetimini de kapsamalıdır.",
      "E) Kronik strese maruz kalmak bağışıklık sisteminin fırsatçı enfeksiyonlara karşı zayıflamasına neden olur. Yüksek kortizol seviyeleri de beyaz kan hücrelerinin fonksiyonunu bozarak hastayı savunmasız kılar. Bu yüzden stres yönetimi teknikleri bütüncül yaklaşımlara dahil edilmelidir."
    ],
    correctIndex: 1,
    isEnToTr: true,
    difficulty: "Zor",
    keyPhrases: const [],
    explanation: "Cümle 1: 'Prolonged exposure to chronic stress...' -> Kronik strese uzun süre maruz kalmak... Cümle 2: 'Furthermore, elevated cortisol levels inhibit...' -> Dahası, yüksek kortizol seviyeleri ... engeller. Cümle 3: 'Therefore, stress management techniques should be an integral part...' -> Bu nedenle, stres yönetimi teknikleri ayrılmaz bir parçası olmalıdır. B şıkkı tam çeviridir."
  ),
  TranslationQuestion(
    sourceText: "Antibiotic resistance is increasingly recognized as one of the most pressing threats to global public health. Overprescription of these medications and patients' failure to complete prescribed courses accelerate the mutation of resilient bacterial strains. Without immediate intervention, minor infections could once again become fatal.",
    options: const [
      "A) Antibiyotik direncinin küresel halk sağlığı için en büyük tehdit olduğu bilinmektedir. Bu ilaçların yanlış reçete edilmesi ve hastaların tedaviyi yarım bırakması dirençli bakterilerin artmasına neden olur. Acil müdahale edilmezse, küçük enfeksiyonlar bile ölümcül sonuçlar doğurabilir.",
      "B) Küresel halk sağlığına yönelik en acil tehditlerden biri antibiyotik direncidir. Bu ilaçların aşırı kullanımı ve hastaların verilen dozu bitirmemesi dirençli bakteri suşlarının mutasyonunu hızlandırır. Zamanında müdahale edilmediği takdirde, ufak enfeksiyonlar tekrar ölümcül hale gelebilir.",
      "C) Antibiyotik direnci giderek küresel halk sağlığına yönelik en acil tehditlerden biri olarak kabul edilmektedir. Bu ilaçların aşırı reçete edilmesi ve hastaların yazılan kürleri tamamlamaması, dirençli bakteri suşlarının mutasyonunu hızlandırmaktadır. Acil müdahale olmazsa, küçük enfeksiyonlar bir kez daha ölümcül hale gelebilir.",
      "D) Antibiyotik direnci küresel sağlığı tehdit eden en önemli faktör olarak karşımıza çıkmaktadır. Doktorların aşırı reçete yazması ve hastaların ilaçları düzenli kullanmaması bakterilerin direnç kazanmasını sağlar. Müdahale edilmezse basit enfeksiyonlar bile ölümcül olabilir.",
      "E) Antibiyotik direnci, günümüzde küresel halk sağlığı açısından en acil tehditlerden biri sayılmaktadır. İlaçların gereğinden fazla kullanılması ve tedavi süreçlerinin yarım kalması, inatçı bakterilerin mutasyona uğramasına yol açar. Acilen önlem alınmazsa, hafif enfeksiyonların ölümcül olması kaçınılmazdır."
    ],
    correctIndex: 2,
    isEnToTr: true,
    difficulty: "Zor",
    keyPhrases: const [],
    explanation: "'is increasingly recognized' -> giderek kabul edilmektedir. 'failure to complete prescribed courses' -> yazılan kürleri tamamlamaması. 'could once again become fatal' -> bir kez daha ölümcül hale gelebilir. En doğru çeviri C şıkkıdır."
  ),
  TranslationQuestion(
    sourceText: "A sedentary lifestyle combined with a diet high in ultra-processed foods contributes significantly to the early onset of cardiovascular diseases. Not only does this combination lead to obesity, but it also alters lipid profiles and induces chronic low-grade inflammation. Reversing these effects requires a strict adherence to dietary modifications and regular aerobic exercise.",
    options: const [
      "A) Aşırı işlenmiş gıdalarla dolu bir beslenme tarzı ve hareketsiz yaşam, kalp ve damar hastalıklarının erken yaşta ortaya çıkmasına büyük ölçüde katkıda bulunur. Bu durum sadece obeziteye yol açmakla kalmaz, aynı zamanda kan değerlerini bozarak kronik iltihaplanmaya neden olur. Bu etkileri tersine çevirmek için sıkı diyetler ve spor şarttır.",
      "B) Hareketsiz bir yaşam tarzı, aşırı işlenmiş gıdalar açısından zengin bir diyetle birleştiğinde kardiyovasküler hastalıkların erken başlamasına önemli ölçüde katkıda bulunur. Bu kombinasyon sadece obeziteye yol açmakla kalmaz, aynı zamanda lipit profillerini değiştirir ve kronik düşük dereceli inflamasyonu tetikler. Bu etkileri tersine çevirmek, diyet değişikliklerine sıkı sıkıya bağlı kalmayı ve düzenli aerobik egzersiz yapmayı gerektirir.",
      "C) Hareketsiz yaşam ve çok işlenmiş yiyecekler tüketmek kalp hastalıklarının ana nedenidir. Bu birliktelik yalnızca kilo alımına neden olmaz, lipit oranlarını da bozup hafif iltihaplar oluşturur. Bu sorunların önüne geçebilmek için diyet yapmak ve sürekli aerobik egzersiz yapmak lazımdır.",
      "D) Aşırı işlenmiş gıdalarla birleştirilmiş hareketsiz bir yaşam, kardiyovasküler hastalıkların daha erken başlamasına yol açar. Bu durum sadece obeziteye neden olmaz, ayrıca lipit dengesini bozarak vücutta kronik iltihaba sebep olur. Bunları tersine çevirmek sadece diyet değişiklikleri ve egzersiz ile mümkündür.",
      "E) Hareketsiz bir yaşam tarzının aşırı işlenmiş gıdalarla birlikte olması kalp ve damar hastalıklarının başlıca sebeplerinden biridir. Bu durum sadece obezite yapmakla kalmayıp, lipitleri değiştirerek kronik inflamasyona zemin hazırlar. Hastaların mutlaka diyetlerine uymaları ve aerobik yapmaları gerekir."
    ],
    correctIndex: 1,
    isEnToTr: true,
    difficulty: "Zor",
    keyPhrases: const [],
    explanation: "'A sedentary lifestyle combined with...' -> Hareketsiz bir yaşam tarzı, ... birleştiğinde. 'Not only does this combination lead to...' -> Bu kombinasyon sadece ... yol açmakla kalmaz. B şıkkı kelimesi kelimesine en doğru çeviridir."
  ),
  TranslationQuestion(
    sourceText: "Advancements in genomic medicine have paved the way for personalized treatment protocols in oncology. By analyzing a patient's unique genetic makeup, oncologists can select targeted therapies that yield higher survival rates and fewer side effects. However, the high cost of genetic sequencing remains a barrier for widespread clinical application.",
    options: const [
      "A) Genomik tıptaki gelişmeler onkolojide kişiselleştirilmiş tedavi protokollerinin yolunu açmıştır. Bir hastanın benzersiz genetik yapısını analiz ederek, onkologlar daha yüksek hayatta kalma oranları ve daha az yan etki sağlayan hedefe yönelik tedavileri seçebilirler. Bununla birlikte, genetik dizilimin yüksek maliyeti yaygın klinik uygulama için bir engel olmaya devam etmektedir.",
      "B) Onkoloji alanında genomik tıptaki ilerlemeler sayesinde kişiye özel tedaviler mümkün hale gelmiştir. Onkologlar, hastaların genetik özelliklerini analiz ederek daha iyi sonuçlar veren ve daha az yan etkisi olan tedavileri tercih ederler. Ancak genetik testlerin pahalı olması bunun her yerde uygulanmasını zorlaştırmaktadır.",
      "C) Genomik tıp onkolojideki kişiselleştirilmiş tedaviler için yeni bir çığır açmıştır. Hastanın genetik yapısı analiz edildiğinde, onkologlar hem yan etkisi az hem de hayatta kalma şansı yüksek hedefli tedaviler uygularlar. Ne var ki, genetik dizilimin maliyetinin yüksek olması klinik kullanıma engeldir.",
      "D) Genomik tıptaki gelişmeler, onkolojide hastaya özgü tedavi yöntemlerinin gelişmesini sağlamıştır. Hastanın genetik dizilimini inceleyen onkologlar, hayatta kalma şansını artıran ve yan etkileri azaltan spesifik tedavileri seçebilir. Buna rağmen yüksek maliyetler yaygın kullanımı engeller.",
      "E) Onkolojide genomik tıbbın ilerlemesiyle birlikte kişiselleştirilmiş tedavi protokolleri ortaya çıkmıştır. Hastanın özel genetik yapısının analiz edilmesi, onkologların daha az yan etkiyle daha yüksek başarı sağlayan tedavileri belirlemesine olanak tanır. Fakat genetik dizilim maliyeti hala yaygın uygulama için bir bariyerdir."
    ],
    correctIndex: 0,
    isEnToTr: true,
    difficulty: "Zor",
    keyPhrases: const [],
    explanation: "'have paved the way' -> yolunu açmıştır. 'yield higher survival rates' -> daha yüksek hayatta kalma oranları sağlayan. 'remains a barrier' -> bir engel olmaya devam etmektedir. A şıkkı tam ve doğru çeviridir."
  ),
  TranslationQuestion(
    sourceText: "Despite significant breakthroughs in psychopharmacology, treating major depressive disorder remains a complex challenge. Many patients experience treatment-resistant symptoms, necessitating the use of combination therapies or alternative interventions such as transcranial magnetic stimulation. A thorough psychological evaluation is crucial before initiating any robust biological treatment.",
    options: const [
      "A) Psikofarmakolojideki önemli gelişmelere rağmen, majör depresyonu tedavi etmek hala çok zordur. Birçok hasta tedaviye dirençli belirtiler gösterdiğinden, kombine tedaviler veya beyin stimülasyonu gibi yöntemler kullanılmalıdır. Herhangi bir ağır biyolojik tedaviye başlamadan önce mutlaka psikolojik test yapılmalıdır.",
      "B) Psikofarmakolojideki önemli atılımlara rağmen, majör depresif bozukluğun tedavisi karmaşık bir zorluk olmaya devam etmektedir. Birçok hasta tedaviye dirençli semptomlar yaşar ve bu da kombinasyon terapilerinin veya transkraniyal manyetik stimülasyon gibi alternatif müdahalelerin kullanılmasını gerektirir. Herhangi bir güçlü biyolojik tedaviye başlamadan önce kapsamlı bir psikolojik değerlendirme çok önemlidir.",
      "C) Psikofarmakoloji alanındaki büyük yenilikler bile majör depresif bozukluğu tedavi etmeyi basitleştirmemiştir. Tedaviye yanıt vermeyen birçok hasta için farklı ilaçların birlikte kullanılması veya transkraniyal manyetik stimülasyon denenmesi gerekir. Herhangi bir biyolojik tedaviye geçmeden önce derinlemesine bir psikolojik değerlendirme şarttır.",
      "D) Psikofarmakolojide yaşanan büyük ilerlemelere karşın, majör depresif bozukluğun tedavisi hala zor bir süreçtir. Hastaların çoğu ilaçlara direnç gösterdiği için kombinasyon terapileri ve transkraniyal manyetik stimülasyon gibi ek yöntemler kullanılır. Kapsamlı bir psikolojik değerlendirme olmadan güçlü biyolojik tedavilere başlanmamalıdır.",
      "E) Psikofarmakolojideki önemli ilerlemeler majör depresif bozukluğun tedavisinde büyük rol oynasa da zorluklar devam etmektedir. Çoğu hasta dirençli semptomlardan muzdariptir, bu yüzden kombine tedavilere veya alternatif müdahalelere ihtiyaç duyulur. Sağlam bir biyolojik tedaviye başlanmadan önce detaylı psikolojik testlerin yapılması önemlidir."
    ],
    correctIndex: 1,
    isEnToTr: true,
    difficulty: "Zor",
    keyPhrases: const [],
    explanation: "'significant breakthroughs' -> önemli atılımlar. 'necessitating the use of' -> kullanılmasını gerektirir. 'thorough psychological evaluation' -> kapsamlı bir psikolojik değerlendirme. B şıkkı en uygun çeviridir."
  ),
  TranslationQuestion(
    sourceText: "The pathophysiology of Alzheimer's disease is characterized by the abnormal accumulation of amyloid-beta plaques and tau tangles in the brain. These protein aggregations disrupt neural communication and eventually lead to widespread neuronal death. Current pharmacological treatments primarily focus on symptom management rather than halting the underlying disease progression.",
    options: const [
      "A) Alzheimer hastalığının temelinde beyinde amiloid-beta ve tau proteinlerinin anormal şekilde birikmesi yatar. Bu proteinler sinir hücreleri arasındaki iletişimi bozarak nöronların ölümüne sebep olur. Mevcut ilaçlar, hastalığın ilerleyişini durdurmaktan ziyade sadece semptomları hafifletmeye çalışır.",
      "B) Alzheimer hastalığının patofizyolojisi, amiloid-beta plaklarının ve tau yumaklarının beyinde anormal birikimi ile karakterizedir. Bu protein yığınları nöral iletişimi bozar ve en nihayetinde yaygın nöronal ölüme yol açar. Mevcut farmakolojik tedaviler, altta yatan hastalığın ilerlemesini durdurmaktan ziyade öncelikle semptom yönetimine odaklanmaktadır.",
      "C) Amiloid-beta plakları ve tau yumaklarının beyinde anormal derecede birikmesi Alzheimer hastalığının patofizyolojisini oluşturur. Bu protein kümeleri sinirsel iletişimi aksatarak yaygın nöron ölümlerini meydana getirir. Günümüzde kullanılan farmakolojik tedaviler hastalığın seyrini yavaşlatmaktan ziyade öncelikli olarak semptomları kontrol altında tutmaya yarar.",
      "D) Alzheimer hastalığının yapısı, amiloid-beta plaklarının ve tau yumaklarının beyindeki anormal birikimi ile belirlenir. Nöral iletişimi bozan bu yığılmalar zamanla yaygın nöron ölümlerine neden olur. Şu anki tıbbi tedaviler hastalığı tamamen durdurmak yerine çoğunlukla semptomların yönetilmesine odaklanır.",
      "E) Alzheimer hastalığının patofizyolojisi beyinde tau yumakları ve amiloid-beta plaklarının artmasıyla tanımlanır. Bu protein birikimleri nöral iletişime zarar verip sonunda nöronların ölümüne sebebiyet verir. Mevcut tedavilerin odak noktası, hastalığın temel ilerleyişini durdurmaktan çok semptomatik iyileşme sağlamaktır."
    ],
    correctIndex: 1,
    isEnToTr: true,
    difficulty: "Zor",
    keyPhrases: const [],
    explanation: "'is characterized by' -> ile karakterizedir. 'tau tangles' -> tau yumakları. 'eventually lead to' -> en nihayetinde yol açar. En hassas tıbbi çeviri B şıkkıdır."
  ),
  TranslationQuestion(
    sourceText: "Vaccine hesitancy has emerged as a critical barrier to achieving herd immunity in various global populations. Misinformation spread through social media often exacerbates public distrust in established scientific institutions. Consequently, healthcare professionals must adopt proactive communication strategies to debunk myths and reassure the public regarding vaccine safety.",
    options: const [
      "A) Aşı kararsızlığı, çeşitli küresel popülasyonlarda sürü bağışıklığına ulaşmanın önünde kritik bir engel olarak ortaya çıkmıştır. Sosyal medya aracılığıyla yayılan yanlış bilgiler, genellikle köklü bilimsel kurumlara yönelik kamuoyu güvensizliğini daha da kötüleştirmektedir. Sonuç olarak, sağlık profesyonelleri mitleri çürütmek ve aşı güvenliği konusunda halkı rahatlatmak için proaktif iletişim stratejileri benimsemelidir.",
      "B) Küresel popülasyonlarda sürü bağışıklığını sağlamanın önündeki en büyük engel aşı kararsızlığıdır. Sosyal medyada hızla yayılan yanlış haberler, toplumun bilimsel kurumlara olan güvenini derinden sarsmaktadır. Bu yüzden, sağlık çalışanları aşı güvenliği konusunda mitleri yok etmek ve insanları ikna etmek için iletişime geçmelidir.",
      "C) Aşı tereddüdü, sürü bağışıklığına ulaşmada birçok küresel topluluk için ciddi bir sorun haline gelmiştir. Sosyal medyadan yayılan yanlış veriler, mevcut bilimsel kurumlara olan güveni sürekli olarak zedelemektedir. Bundan dolayı, sağlık uzmanları uydurma iddiaları çürütmek ve halka güven vermek adına proaktif stratejiler kullanmalıdır.",
      "D) Aşı kararsızlığı, çeşitli küresel popülasyonlarda sürü bağışıklığına ulaşmanın önünde kritik bir engel olarak ortaya çıkmıştır. Sosyal medya aracılığıyla yayılan asılsız bilgiler, kamuoyunun bilimsel kuruluşlara duyduğu güveni azaltmaktadır. Sağlık profesyonelleri efsaneleri çürüterek halkı aşı güvenliği konusunda ikna etmek zorundadır.",
      "E) Sürü bağışıklığına ulaşmak için çeşitli ülkelerde karşılaşılan en kritik engel aşı kararsızlığıdır. Sosyal medyada paylaşılan yanlış bilgiler bilimsel kurumlara olan güvensizliği artırmaktadır. Sonuç olarak, sağlık görevlileri halkın aşıların güvenli olduğuna inanmasını sağlamak için proaktif yaklaşımlar geliştirmelidir."
    ],
    correctIndex: 0,
    isEnToTr: true,
    difficulty: "Zor",
    keyPhrases: const [],
    explanation: "'has emerged as a critical barrier' -> kritik bir engel olarak ortaya çıkmıştır. 'exacerbates public distrust' -> kamuoyu güvensizliğini daha da kötüleştirmektedir. A şıkkı doğru ve eksiksiz bir çeviridir."
  ),
  TranslationQuestion(
    sourceText: "Gestational diabetes mellitus poses significant risks to both the expectant mother and the developing fetus if not properly managed. It is typically diagnosed during the second trimester and requires meticulous monitoring of blood glucose levels. Nutritional therapy combined with lifestyle modifications is the first-line defense before initiating insulin therapy.",
    options: const [
      "A) Gestasyonel diyabet, düzgün yönetilmezse hem hamile kadına hem de anne karnındaki bebeğe ciddi zararlar verir. Genellikle ikinci trimesterde fark edilir ve kan şekerinin dikkatli bir şekilde ölçülmesini gerektirir. İnsülin tedavisine başlamadan önce beslenme ve yaşam tarzı değişiklikleri yapılmalıdır.",
      "B) Gestasyonel diabetes mellitus, uygun şekilde yönetilmediği takdirde hem anne adayı hem de gelişmekte olan fetüs için önemli riskler oluşturur. Tipik olarak ikinci trimesterde teşhis edilir ve kan şekeri seviyelerinin titizlikle izlenmesini gerektirir. İnsülin tedavisine başlamadan önce yaşam tarzı değişiklikleriyle birleştirilmiş beslenme tedavisi ilk savunma hattıdır.",
      "C) Hamilelik diyabeti doğru bir şekilde kontrol edilmezse anne ve gelişen fetüs açısından çok risklidir. Çoğunlukla hamileliğin ikinci üç aylık döneminde teşhis konur ve kan glukozunun sıkı takibini gerektirir. İnsüline geçmeden önce beslenme tedavisi ve yaşam tarzı değişiklikleri uygulamak birinci basamak tedavi yöntemidir.",
      "D) Gestasyonel diabetes mellitus, iyi kontrol altına alınmadığında anne adayı ve fetüs için hayati tehlikeler taşır. Bu durum genellikle ikinci trimesterde teşhis edilir ve glukoz seviyelerinin dikkatlice izlenmesi zorunludur. İnsülin tedavisinden ziyade, beslenme tedavisi ve yaşam tarzı değişiklikleri en önemli savunma yöntemleridir.",
      "E) Gestasyonel diyabet mellitus anne adayı ve fetüste ciddi komplikasyonlara neden olabilen bir sorundur. Hastalık ikinci trimesterde tespit edilir ve kandaki şeker oranının düzenli takibini şart koşar. İnsülin kullanmadan evvel, hastanın diyetine dikkat etmesi ve yaşam tarzını değiştirmesi ilk tercih edilen yoldur."
    ],
    correctIndex: 1,
    isEnToTr: true,
    difficulty: "Zor",
    keyPhrases: const [],
    explanation: "'expectant mother' -> anne adayı. 'meticulous monitoring' -> titizlikle izlenmesini. 'first-line defense' -> ilk savunma hattıdır. B şıkkı tıp terminolojisine tam uymaktadır."
  ),
  TranslationQuestion(
    sourceText: "Chronic kidney disease is characterized by a gradual loss of kidney function over an extended period. Because the condition is often asymptomatic in its early stages, it is frequently diagnosed only when irreversible damage has already occurred. Early screening in high-risk populations, such as those with hypertension, is essential for delaying disease progression.",
    options: const [
      "A) Kronik böbrek hastalığı, böbrek fonksiyonlarının uzun bir süre zarfında aşamalı olarak kaybedilmesi ile karakterizedir. Hastalık erken evrelerinde sıklıkla belirti vermediğinden, genellikle sadece geri dönüşü olmayan hasar meydana geldiğinde teşhis edilir. Hipertansiyonu olanlar gibi yüksek riskli popülasyonlarda erken tarama, hastalığın ilerlemesini geciktirmek için çok önemlidir.",
      "B) Kronik böbrek yetmezliği, böbrek fonksiyonlarının uzun bir zaman diliminde yavaş yavaş kaybedilmesi durumudur. Hastalık erken safhalarda semptomsuz ilerlediği için, çoğunlukla böbreklerde kalıcı hasar oluştuğunda tespit edilebilir. Hastalığın ilerlemesini durdurmak için hipertansiyon hastaları gibi risk grubundakiler erken taramadan geçmelidir.",
      "C) Kronik böbrek hastalığının belirgin özelliği, böbrek fonksiyonlarının yavaş ve kademeli olarak yitirilmesidir. Erken aşamalarda asemptomatik olduğundan, tanı genellikle hasar geri döndürülemez boyuta ulaştığında konur. Hipertansiyon hastaları başta olmak üzere yüksek risk taşıyanlarda hastalığın geciktirilmesi için tarama şarttır.",
      "D) Kronik böbrek hastalığı, böbrek işlevlerinin uzun sürede aşamalı olarak bozulması ile kendini gösterir. Hastalık genellikle ilk evrelerde belirti göstermez, bu yüzden ancak geri dönüşümsüz hasar ortaya çıktığında fark edilir. Hipertansiyon gibi yüksek riskli gruplarda yapılacak erken taramalar hastalığın yavaşlatılmasında hayati önem taşır.",
      "E) Kronik böbrek rahatsızlığı uzun yıllar boyunca böbreklerin fonksiyonlarını giderek kaybetmesidir. Erken evrelerde semptom vermediğinden, tanı sadece kalıcı hasar oluşumundan sonra mümkündür. Hastalığın ilerleyişini yavaşlatmak amacıyla, hipertansiyonlular gibi yüksek risk grubundaki kişilere erken tarama yapılması temel gerekliliktir."
    ],
    correctIndex: 0,
    isEnToTr: true,
    difficulty: "Zor",
    keyPhrases: const [],
    explanation: "'gradual loss' -> aşamalı olarak kaybedilmesi. 'often asymptomatic' -> sıklıkla belirti vermediğinden. 'irreversible damage' -> geri dönüşü olmayan hasar. A şıkkı, metnin birebir akademik çevirisidir."
  ),
  TranslationQuestion(
    sourceText: "The integration of artificial intelligence in radiological imaging has profoundly improved diagnostic accuracy for detecting early-stage malignancies. Algorithms trained on vast datasets can identify microscopic anomalies that even seasoned radiologists might overlook. Nevertheless, human oversight remains indispensable to prevent overdiagnosis and ensure appropriate clinical decision-making.",
    options: const [
      "A) Radyolojik görüntülemede yapay zekanın kullanılması, erken evre tümörleri saptamada büyük başarı sağlamıştır. Büyük veri setleriyle eğitilmiş algoritmalar, deneyimli radyologların göremeyeceği anormallikleri tespit edebilir. Ancak gereksiz teşhisleri önlemek için insan gözetimi yine de şarttır.",
      "B) Yapay zekanın radyolojik görüntülemeye entegrasyonu, erken evre maligniteleri tespit etmede tanısal doğruluğu derinden iyileştirmiştir. Geniş veri setleri üzerinde eğitilen algoritmalar, deneyimli radyologların bile gözden kaçırabileceği mikroskobik anomalileri belirleyebilir. Bununla birlikte, aşırı teşhisi önlemek ve uygun klinik karar vermeyi sağlamak için insan gözetimi vazgeçilmez olmaya devam etmektedir.",
      "C) Radyolojide yapay zekanın yer alması, erken kanser teşhisinin doğruluğunu önemli ölçüde artırmıştır. Gelişmiş veri setleriyle donatılan algoritmalar, uzman radyologların fark edemeyeceği küçük anormallikleri rahatça bulabilir. Ne var ki, uygun klinik kararları alabilmek ve yanlış teşhisi önlemek adına insan denetimi zorunludur.",
      "D) Radyolojik görüntülemeye yapay zekanın dahil edilmesi, erken evre malignitelerin saptanmasındaki tanı oranlarını yükseltmiştir. Kapsamlı verilerle eğitilen sistemler, tecrübeli hekimlerin bile atlayabileceği mikroskobik sorunları saptayabilmektedir. Buna rağmen, klinik süreçlerin doğru ilerlemesi ve fazla teşhisin önlenmesi için insan müdahalesi gereklidir.",
      "E) Yapay zekanın radyolojik görüntülemedeki rolü, erken dönem kanserlerin teşhis edilmesinde doğruluğu devrim niteliğinde değiştirmiştir. Büyük veri kümelerinde eğitilen bu algoritmalar, deneyimli uzmanların gözden kaçırabileceği anomalileri yakalar. Aşırı teşhisi önlemek ve klinik kararları doğrulamak için insan kontrolü her zaman esastır."
    ],
    correctIndex: 1,
    isEnToTr: true,
    difficulty: "Zor",
    keyPhrases: const [],
    explanation: "'profoundly improved' -> derinden iyileştirmiştir. 'seasoned radiologists might overlook' -> deneyimli radyologların bile gözden kaçırabileceği. 'indispensable' -> vazgeçilmez. B şıkkı tamdır."
  ),
  TranslationQuestion(
    sourceText: "Osteoporosis is a silent skeletal disorder characterized by compromised bone strength and an increased predisposition to fractures. Postmenopausal women are disproportionately affected due to the sudden decline in estrogen levels, which accelerates bone resorption. Preventive measures include adequate calcium intake, vitamin D supplementation, and weight-bearing exercises from an early age.",
    options: const [
      "A) Osteoporoz, kemiklerin gücünü kaybetmesi ve kırılmalara yatkınlığın artmasıyla bilinen sessiz bir iskelet rahatsızlığıdır. Menopoza girmiş kadınlar östrojen kaybı nedeniyle kemik erimesi yaşarlar ve bu durumdan çok etkilenirler. Bunu önlemek için erken yaşlardan itibaren kalsiyum alınmalı ve egzersiz yapılmalıdır.",
      "B) Osteoporoz, kemik kuvvetinin azalması ve kırıklara eğilimin artması ile karakterize sessiz bir iskelet hastalığıdır. Kemik yıkımını hızlandıran östrojen seviyelerindeki ani düşüş nedeniyle postmenopozal kadınlar orantısız bir şekilde etkilenmektedir. Önleyici tedbirler arasında erken yaşlardan itibaren yeterli kalsiyum alımı, D vitamini takviyesi ve ağırlık taşıma egzersizleri yer alır.",
      "C) Osteoporoz, azalan kemik dayanıklılığı ve kırıklara karşı artan risk ile tanımlanan sessiz bir kemik hastalığıdır. Menopoz sonrası kadınlar, östrojenin hızla düşmesi kemik erimesine yol açtığından en çok etkilenen gruptur. Koruyucu önlemler olarak düzenli kalsiyum, D vitamini almak ve ağırlık egzersizleri yapmak tavsiye edilir.",
      "D) Osteoporoz, kemik gücünün zayıflaması ve kemik kırıklarının artması ile kendini gösteren sessiz bir hastalıktır. Östrojen eksikliği kemik emilimini hızlandırdığı için menopoz dönemindeki kadınları şiddetli bir biçimde etkiler. Önlem olarak küçük yaşlardan itibaren kalsiyum tüketmek, D vitamini almak ve ağırlık antrenmanları yapmak gerekir.",
      "E) Osteoporoz, azalan kemik gücü ve kırıklara yatkınlıkla şekillenen sessiz bir hastalıktır. Kemik kaybını artıran östrojen düşüşü sebebiyle postmenopozal dönemdeki kadınlar orantısızca daha fazla risk altındadır. Bu durumdan korunmak için erken yaşta yeterli kalsiyum ve D vitamini alımına başlanmalı, egzersiz ihmal edilmemelidir."
    ],
    correctIndex: 1,
    isEnToTr: true,
    difficulty: "Zor",
    keyPhrases: const [],
    explanation: "'disproportionately affected' -> orantısız bir şekilde etkilenmektedir. 'accelerates bone resorption' -> kemik yıkımını hızlandıran. B şıkkı bilimsel bağlama en uygun olanıdır."
  ),
  TranslationQuestion(
    sourceText: "Systemic lupus erythematosus is a chronic autoimmune condition that exhibits a relapsing and remitting clinical course. The disease can affect virtually any organ system, leading to a myriad of heterogeneous symptoms such as butterfly rash, joint pain, and severe nephropathy. Optimal management often requires a multidisciplinary approach involving rheumatologists, dermatologists, and nephrologists.",
    options: const [
      "A) Sistemik lupus eritematozus, nükseden ve gerileyen bir klinik seyir gösteren kronik bir otoimmün durumdur. Hastalık neredeyse her organ sistemini etkileyebilir ve bu da kelebek döküntüsü, eklem ağrısı ve şiddetli nefropati gibi sayısız heterojen semptoma yol açar. Optimal yönetim genellikle romatologlar, dermatologlar ve nefrologları içeren multidisipliner bir yaklaşım gerektirir.",
      "B) Sistemik lupus eritematozus, tekrarlayan ve hafifleyen bir seyir izleyen otoimmün bir hastalıktır. Bu hastalık vücuttaki hemen her organı etkileyerek kelebek döküntüsü, eklem ağrıları ve böbrek hastalıkları gibi çok çeşitli belirtilere neden olabilir. Tedavide başarılı olmak için romatolog, cildiye uzmanı ve böbrek hastalıkları uzmanlarının birlikte çalışması şarttır.",
      "C) Sistemik lupus eritematozus, iyileşme ve alevlenme dönemleriyle ilerleyen kronik bir otoimmün rahatsızlıktır. Hastalık herhangi bir organ sistemine saldırarak yüzde kelebek şeklinde döküntü, eklemlerde ağrı ve böbrek hasarı gibi çok farklı semptomlara yol açabilir. En iyi tedavi için romatoloji, dermatoloji ve nefroloji uzmanlarının multidisipliner yaklaşımı zorunludur.",
      "D) Sistemik lupus eritematozus, hastalığın alevlenip gerilediği kronik otoimmün bir durumdur. Neredeyse her organı etkileyebilme kapasitesine sahip olduğu için kelebek döküntüsü, eklem ağrısı ve ağır böbrek hastalığı gibi çok çeşitli semptomlara neden olur. Hastalığı iyi yönetmek ancak romatolog, dermatolog ve nefrologların oluşturduğu ortak bir takımla mümkündür.",
      "E) Sistemik lupus eritematozus alevlenme ve gerileme ile seyreden kronik bir otoimmün sendromdur. Hastalık hemen her organ sistemine etki edebilir ve kelebek döküntüsü, eklem ağrısı ile ağır nefropati gibi bir dizi karmaşık belirti yaratır. Bu durumun yönetimi genellikle romatologlar, dermatologlar ve nefrologlardan oluşan çok branşlı bir ekibi gerektirir."
    ],
    correctIndex: 0,
    isEnToTr: true,
    difficulty: "Zor",
    keyPhrases: const [],
    explanation: "'relapsing and remitting' -> nükseden ve gerileyen. 'myriad of heterogeneous symptoms' -> sayısız heterojen semptoma. A şıkkı tıp terminolojisinde hatasızdır."
  ),
  TranslationQuestion(
    sourceText: "Endometriosis is an often painful disorder in which tissue similar to the lining of the uterus grows outside the uterine cavity. This ectopic tissue continues to act as it normally would by thickening, breaking down, and bleeding with each menstrual cycle. Because this blood has no way to exit the body, it becomes trapped, potentially forming cysts and causing severe pelvic pain.",
    options: const [
      "A) Endometriozis, rahim astarına benzeyen dokunun rahim boşluğu dışında büyüdüğü ve sıklıkla ağrılı olan bir bozukluktur. Bu ektopik doku, her adet döngüsünde kalınlaşarak, parçalanarak ve kanayarak normalde olduğu gibi davranmaya devam eder. Bu kanın vücuttan çıkacak hiçbir yolu olmadığı için içerde hapsolur, potansiyel olarak kistler oluşturur ve şiddetli pelvik ağrıya neden olur.",
      "B) Endometriozis, rahim iç tabakasına benzeyen bir dokunun rahim dışında büyümesiyle oluşan genellikle ağrılı bir hastalıktır. Bu anormal doku, her menstrüel siklusta kalınlaşıp parçalanarak kanar. Kanın dışarı çıkış yolu bulamaması içeride birikmesine, kistler oluşturmasına ve pelvik bölgede çok şiddetli ağrılara sebep olur.",
      "C) Endometriozis, genellikle rahim zarının rahim boşluğunun dışında gelişmesiyle ortaya çıkan ağrılı bir bozukluktur. Ektopik doku adet döngüsü sırasında normal rahim zarı gibi kalınlaşır ve kanar. Bu kan vücuttan atılamadığı için hapsolur ve böylece kist oluşumuna yol açarak pelviste şiddetli ağrı yaratır.",
      "D) Endometriozis, rahim iç astarına benzer dokuların rahim dışında ürediği ağrılı bir durumdur. Söz konusu ektopik doku, adet dönemlerinde normal bir rahim zarı gibi kalınlaşır, parçalanır ve kanama yapar. Kan vücuttan atılacak bir yol bulamadığı için sıkışıp kistlere dönüşür ve şiddetli pelvik ağrıları beraberinde getirir.",
      "E) Endometriozis, rahim zarı benzeri dokunun rahim boşluğu dışında büyümesiyle karakterize edilen ağrılı bir rahatsızlıktır. Bu ektopik doku da normal bir doku gibi her adet döneminde kalınlaşır, yıkılır ve kanar. Fakat bu kanın vücuttan çıkış yolu olmadığından hapsolur, potansiyel olarak kistleşir ve şiddetli pelvik ağrılara neden olur."
    ],
    correctIndex: 0,
    isEnToTr: true,
    difficulty: "Zor",
    keyPhrases: const [],
    explanation: "'tissue similar to the lining of the uterus' -> rahim astarına benzeyen dokunun. 'ectopic tissue' -> ektopik doku. A şıkkı tam ve eksiksizdir."
  ),
  TranslationQuestion(
    sourceText: "Cirrhosis represents the late stage of scarring of the liver caused by many forms of liver diseases and conditions, such as hepatitis and chronic alcoholism. Each time the liver is injured, it tries to repair itself, but in the process, scar tissue forms. As cirrhosis progresses, more and more scar tissue forms, making it increasingly difficult for the liver to function properly.",
    options: const [
      "A) Siroz, hepatit ve kronik alkolizm gibi çeşitli karaciğer hastalıkları ve koşullarının neden olduğu karaciğerde skarlaşmanın (yara izi oluşumunun) ileri evresini temsil eder. Karaciğer her yaralandığında kendini onarmaya çalışır, ancak bu süreçte skar dokusu oluşur. Siroz ilerledikçe, giderek daha fazla skar dokusu oluşarak karaciğerin düzgün çalışmasını giderek zorlaştırır.",
      "B) Siroz, hepatit veya kronik alkolizm gibi hastalıklara bağlı olarak karaciğerde oluşan yara izlerinin son aşamasıdır. Karaciğer her hasar gördüğünde kendini iyileştirmeye çalışır ancak bu esnada skar dokusu meydana gelir. Siroz ilerledikçe artan bu skar dokusu, karaciğerin fonksiyonlarını yerine getirmesini zorlaştırır.",
      "C) Siroz, karaciğerde hepatit ve uzun süreli alkol kullanımının sebep olduğu yara izi oluşumunun son evresidir. Karaciğer ne zaman hasar görse kendini onarmaya çabalar, bu süreçte de skar dokusu oluşturur. Sirozun ilerlemesiyle skar dokusu artar ve bu durum karaciğerin düzgün çalışmasını neredeyse imkansız hale getirir.",
      "D) Siroz, hepatit ve alkolizm gibi çok çeşitli karaciğer rahatsızlıklarının yol açtığı karaciğer skarlaşmasının geç evresi olarak bilinir. Karaciğer yaralandığı her seferinde kendini onarırken yara izi dokusu oluşturur. Siroz ilerledikçe daha çok skar dokusu birikir, bu da karaciğerin normal işlevlerini giderek zorlaştırır.",
      "E) Siroz, hepatit ve kronik alkol tüketimi gibi durumların karaciğerde oluşturduğu yara dokusunun son safhasını ifade eder. Karaciğer aldığı hasarları kendi başına onarmaya çalışırken nedbe dokusu (skar) oluşturur. Siroz ilerleyip daha fazla nedbe dokusu oluştukça, karaciğerin fonksiyon göstermesi gittikçe güçleşir."
    ],
    correctIndex: 0,
    isEnToTr: true,
    difficulty: "Zor",
    keyPhrases: const [],
    explanation: "'late stage of scarring' -> skarlaşmanın ileri evresini. 'increasingly difficult' -> giderek zorlaştırır. A şıkkı, metnin birebir çevirisidir."
  ),
  TranslationQuestion(
    sourceText: "Neuroplasticity refers to the brain's ability to reorganize itself by forming new neural connections throughout life. Researchers are tirelessly working on innovative treatments to mitigate its severe implications in pathological states. Consequently, targeted intervention during rehabilitation is crucial for improving patient outcomes after stroke.",
    options: const [
      "A) Nöroplastisite, beynin yaşam boyunca yeni nöral bağlantılar kurarak kendini yeniden organize etme yeteneğini ifade eder. Araştırmacılar patolojik durumlardaki şiddetli etkilerini hafifletmek için yenilikçi tedaviler üzerinde yorulmadan çalışıyorlar. Sonuç olarak, inme sonrası hasta sonuçlarını iyileştirmek için rehabilitasyon sırasında hedefe yönelik müdahale çok önemlidir.",
      "B) Nöroplastisite beynin yaşlanana kadar yeni sinir ağları oluşturabilme becerisidir. Bilim insanları bu yeteneği kullanarak hasarları onarmak için aralıksız çaba gösterir. İnme geçiren hastalarda, rehabilitasyon sürecinde özel tedaviler uygulanması başarının anahtarıdır.",
      "C) Beynin hayat boyunca nöral bağlantılar yaratarak kendi kendini yenilemesi nöroplastisite olarak adlandırılır. Araştırmacılar çeşitli hastalıkların etkisini azaltmak amacıyla modern tedaviler bulmaya çalışmaktadır. Dolayısıyla, felç sonrasında uygulanan rehabilitasyon programları hastanın iyileşmesini sağlar.",
      "D) Nöroplastisite, yaşam boyunca beynin yapısını yeni nöral ağlarla değiştirebilmesi demektir. Hastalık durumlarında beynin bu yeteneğinden faydalanmak için yenilikçi tedaviler geliştirilmektedir. Felçli hastaların iyileşmesi ancak doğru rehabilitasyon stratejileriyle mümkündür.",
      "E) Nöroplastisite, beyindeki sinir hücrelerinin birbirleriyle yeniden iletişim kurma potansiyelidir. Araştırmacılar, beyin hasarlarının ciddi etkilerini azaltmak için yorulmak bilmeden yeni yöntemler denerler. Bu nedenle, felç sonrası rehabilitasyon sürecinde doğru müdahale hastaların toparlanmasını hızlandırır."
    ],
    correctIndex: 0,
    isEnToTr: true,
    difficulty: "Zor",
    keyPhrases: const [],
    explanation: "Orijinal cümlenin tüm yapılarına ('reorganize itself', 'tirelessly working', 'targeted intervention') en sadık kalan şık A'dır."
  ),
  TranslationQuestion(
    sourceText: "Infectious diseases are disorders caused by pathogenic organisms, such as bacteria, viruses, fungi, or parasites. Researchers are tirelessly working on innovative treatments to mitigate their severe implications on public health. Consequently, early diagnosis and targeted pharmacological intervention are crucial for improving patient outcomes and preventing outbreaks.",
    options: const [
      "A) Enfeksiyon hastalıkları; bakteri, virüs, mantar veya parazit gibi patojenik organizmaların neden olduğu bozukluklardır. Araştırmacılar bunların halk sağlığı üzerindeki şiddetli etkilerini hafifletmek için yenilikçi tedaviler üzerinde yorulmadan çalışıyorlar. Sonuç olarak, erken teşhis ve hedefe yönelik farmakolojik müdahale hasta sonuçlarını iyileştirmek ve salgınları önlemek için çok önemlidir.",
      "B) Bulaşıcı hastalıklar, genellikle bakteri ve virüsler tarafından meydana getirilen enfeksiyonlardır. Araştırmacılar bu hastalıkların toplum sağlığına verdiği zararı önlemek için devamlı olarak yeni tedavi yolları ararlar. Bu yüzden erken tanı koymak ve doğrudan ilaç tedavisi uygulamak salgınları durdurmada hayatidir.",
      "C) Enfeksiyonlar, vücuda giren bakteri, virüs ya da parazitlerin oluşturduğu hastalıklardır. Bilim insanları, halk sağlığını ciddi şekilde tehdit eden bu sorunlara karşı modern tedaviler geliştirmeye çabalar. Erken teşhis ve güçlü farmakolojik müdahale sayesinde hasta iyileşmesi hızlanır ve hastalıkların yayılması engellenir.",
      "D) Patojen organizmaların, örneğin bakteri veya virüslerin neden olduğu rahatsızlıklara enfeksiyon hastalığı denir. Araştırmacılar, bu hastalıkların halk sağlığına olan etkilerini azaltmak adına sürekli yenilikçi çözümler üretir. Erken teşhis ve nokta atışı farmakolojik tedavi hem salgınları önler hem de hastaların yaşama şansını artırır.",
      "E) Bulaşıcı hastalıklar, patojen mikroorganizmaların sebep olduğu tehlikeli bozukluklardır. Uzmanlar, bu durumların toplum üzerindeki ağır sonuçlarını azaltmak için durmaksızın yeni ilaçlar üzerinde çalışır. Sonuç olarak, erken evrede hastalık tespiti ve uygun tedavi yöntemleri büyük salgınların önüne geçmek için temel faktördür."
    ],
    correctIndex: 0,
    isEnToTr: true,
    difficulty: "Zor",
    keyPhrases: const [],
    explanation: "'pathogenic organisms' -> patojenik organizmalar. 'mitigate their severe implications' -> şiddetli etkilerini hafifletmek. A şıkkı, metnin birebir akademik çevirisidir."
  ),
  TranslationQuestion(
    sourceText: "Type 2 diabetes is a chronic impairment in the way the body regulates and uses sugar as a fuel. Researchers are tirelessly working on innovative treatments to mitigate its severe long-term cardiovascular implications. Consequently, early diagnosis and targeted metabolic intervention are crucial for improving patient outcomes and preventing complications.",
    options: const [
      "A) Tip 2 diyabet, vücudun şekeri bir yakıt olarak düzenleme ve kullanma biçimindeki kronik bir bozukluktur. Araştırmacılar onun şiddetli uzun vadeli kardiyovasküler etkilerini hafifletmek için yenilikçi tedaviler üzerinde yorulmadan çalışıyorlar. Sonuç olarak, erken teşhis ve hedefe yönelik metabolik müdahale hasta sonuçlarını iyileştirmek ve komplikasyonları önlemek için çok önemlidir.",
      "B) Tip 2 diyabet, kan şekerinin vücut tarafından doğru bir şekilde kullanılamamasına neden olan kronik bir hastalıktır. Araştırmacılar diyabetin kalbe verdiği uzun vadeli hasarı engellemek amacıyla yeni tedavi yöntemleri araştırırlar. Bu yüzden, erken tanı ve doğrudan metabolizmaya yönelik müdahaleler komplikasyonları engeller.",
      "C) Tip 2 diyabet, bedenin şekeri kontrol edememesi ve onu yakıt olarak kullanamaması sonucu ortaya çıkar. Bilim insanları uzun vadeli kalp ve damar sorunlarını hafifletmek için durmaksızın inovatif çalışmalar yapmaktadır. Dolayısıyla, hastaların durumunu iyileştirmek ve yan etkileri durdurmak için metabolik müdahale şarttır.",
      "D) Vücudun şekeri yakıt olarak kullanmasındaki kalıcı bozukluğa Tip 2 diyabet adı verilir. Araştırmacıların yeni tedaviler üzerindeki yoğun çalışmaları, hastalığın uzun vadeli kalp krizlerine neden olmasını engellemeye yöneliktir. Erken tanı sayesinde metabolik denge kurularak hastaların yaşayabileceği tüm komplikasyonlar önlenir.",
      "E) Tip 2 diyabet vücudun şeker metabolizmasında yaşanan kronik bir arızadır. Uzmanlar hastalığın uzun dönem kardiyovasküler hasarlarını minimuma indirmek için yoğun mesai harcar. Erken teşhis ve hedefe yönelik müdahaleler sayesinde diyabet komplikasyonlarının önüne geçmek hastaların hayat kalitesini yükseltir."
    ],
    correctIndex: 0,
    isEnToTr: true,
    difficulty: "Zor",
    keyPhrases: const [],
    explanation: "'chronic impairment' -> kronik bir bozukluk. 'cardiovascular implications' -> kardiyovasküler etkileri. 'targeted metabolic intervention' -> hedefe yönelik metabolik müdahale. A şıkkı doğrudur."
  ),
  TranslationQuestion(
    sourceText: "Hypertension, or high blood pressure, is a common condition in which the long-term force of the blood against your artery walls is high enough that it may eventually cause health problems. Researchers are tirelessly working on innovative treatments to mitigate its severe implications on organ failure. Consequently, early diagnosis and targeted intervention are crucial for improving patient outcomes.",
    options: const [
      "A) Hipertansiyon veya yüksek tansiyon, kanın atardamar duvarlarınıza karşı uzun vadeli kuvvetinin sonunda sağlık sorunlarına neden olabilecek kadar yüksek olduğu yaygın bir durumdur. Araştırmacılar organ yetmezliği üzerindeki şiddetli etkilerini hafifletmek için yenilikçi tedaviler üzerinde yorulmadan çalışıyorlar. Sonuç olarak, erken teşhis ve hedefe yönelik müdahale hasta sonuçlarını iyileştirmek için çok önemlidir.",
      "B) Yüksek tansiyon olarak da bilinen hipertansiyon, kan basıncının atardamarları zorlayarak zamanla çeşitli hastalıklara yol açması durumudur. Araştırmacılar hipertansiyonun organlar üzerindeki ölümcül etkisini yok etmek için devamlı yeni tedaviler ararlar. Bu nedenle, erken teşhis ve doğru tedavi yöntemleri hastaların hayatta kalması için hayati önem taşır.",
      "C) Hipertansiyon, kanın damar duvarlarına uyguladığı basıncın uzun vadede organlara zarar verdiği yaygın bir hastalıktır. Tıp dünyası, organ yetmezliklerini engellemek için yenilikçi yöntemler geliştirmeye çalışmaktadır. Dolayısıyla, hipertansiyonun erken evrede tespit edilmesi ve hedeflenen ilaç tedavisiyle hastaların ömrü uzatılabilir.",
      "D) Yüksek kan basıncı olan hipertansiyon, kanın uzun vadede atardamar yüzeyine yaptığı aşırı baskı sonucu sağlığı tehdit eder. Bilim insanları organ yetmezlikleri gibi ağır sonuçları azaltmak adına yorulmadan yenilikçi çözümler üretmektedir. Erken teşhis ve zamanında yapılan müdahale hastaların genel sağlık durumunu büyük ölçüde düzeltir.",
      "E) Hipertansiyon, kan basıncının atardamar duvarlarına uzun süre boyunca çok yüksek kuvvet uygulamasıdır. Araştırmacılar, bu yüksek kuvvetin organ yetmezliğine yol açmasını engellemek için sürekli yeni ilaçlar üzerinde çalışır. Erken tespit edilen yüksek tansiyona anında müdahale edilmesi, hastanın sağlığını koruması açısından kritik bir konudur."
    ],
    correctIndex: 0,
    isEnToTr: true,
    difficulty: "Zor",
    keyPhrases: const [],
    explanation: "'force of the blood against your artery walls' -> kanın atardamar duvarlarınıza karşı ... kuvveti. 'mitigate its severe implications on organ failure' -> organ yetmezliği üzerindeki şiddetli etkilerini hafifletmek. Tam çeviri A şıkkıdır."
  ),
  TranslationQuestion(
    sourceText: "Schizophrenia is a serious mental disorder in which people interpret reality abnormally. Researchers are tirelessly working on innovative pharmacological treatments to mitigate its severe implications on cognitive functioning. Consequently, early diagnosis and targeted psychiatric intervention are crucial for improving patient outcomes and social integration.",
    options: const [
      "A) Şizofreni, insanların gerçekliği anormal şekilde yorumladığı ciddi bir zihinsel bozukluktur. Araştırmacılar bilişsel işlevsellik üzerindeki şiddetli etkilerini hafifletmek için yenilikçi farmakolojik tedaviler üzerinde yorulmadan çalışıyorlar. Sonuç olarak, erken teşhis ve hedefe yönelik psikiyatrik müdahale hasta sonuçlarını ve sosyal entegrasyonu iyileştirmek için çok önemlidir.",
      "B) Şizofreni, hastaların gerçeklik algısını bozan çok ağır bir ruhsal hastalıktır. Araştırmacılar bu hastalığın bilişsel fonksiyonlara olan hasarını önlemek adına sürekli olarak yeni ilaçlar denerler. Bu sebeple, erken tanı ve psikiyatrik müdahale hastaların topluma kazandırılması için kritik öneme sahiptir.",
      "C) İnsanların gerçeği algılama biçimini bozan şizofreni, ciddi bir akıl hastalığıdır. Bilim insanları beynin bilişsel yapısındaki şiddetli gerilemeyi önlemek için yoğun bir şekilde farmakolojik yenilikler üzerinde çalışır. Sonuç olarak, erken yaşta tanı ve doğru psikiyatrik yöntemlerle hastaların sosyal hayata uyum sağlaması kolaylaşır.",
      "D) Şizofreni, gerçekliğin hastalar tarafından tamamen yanlış yorumlandığı şiddetli bir zihinsel bozukluktur. Uzmanlar, hastalığın bilişsel fonksiyonlar üzerindeki yan etkilerini tedavi etmek için yenilikçi yaklaşımlar araştırıyor. Erken teşhis ve hedeflenen ilaçlar sayesinde hastalar iyileşerek sosyal hayata dönebilirler.",
      "E) Gerçekliğin anormal şekilde yorumlandığı ciddi ruhsal bozukluğa şizofreni denir. Araştırmacılar bilişsel faaliyetlerdeki ağır bozulmaları yavaşlatmak amacıyla farmakolojik yöntemlere başvururlar. Erken teşhis ve doğru hedeflenen psikiyatrik müdahaleler, şizofreni hastalarının sosyal entegrasyonunu sağlamakta kilit rol oynar."
    ],
    correctIndex: 0,
    isEnToTr: true,
    difficulty: "Zor",
    keyPhrases: const [],
    explanation: "'interpret reality abnormally' -> gerçekliği anormal şekilde yorumladığı. 'cognitive functioning' -> bilişsel işlevsellik. 'social integration' -> sosyal entegrasyon. A şıkkı, metnin birebir akademik çevirisidir."
  ),
  TranslationQuestion(
    sourceText: "Multiple sclerosis is a potentially disabling disease of the central nervous system in which the immune system attacks the protective myelin sheath. Researchers are tirelessly working on innovative immunomodulatory treatments to mitigate its severe implications on motor function. Consequently, early diagnosis and targeted intervention are crucial for improving patient outcomes and preventing permanent disability.",
    options: const [
      "A) Multipl skleroz, bağışıklık sisteminin koruyucu miyelin kılıfına saldırdığı, merkezi sinir sisteminin potansiyel olarak sakat bırakan bir hastalığıdır. Araştırmacılar motor fonksiyon üzerindeki şiddetli etkilerini hafifletmek için yenilikçi immünomodülatör tedaviler üzerinde yorulmadan çalışıyorlar. Sonuç olarak, erken teşhis ve hedefe yönelik müdahale hasta sonuçlarını iyileştirmek ve kalıcı sakatlığı önlemek için çok önemlidir.",
      "B) Multipl skleroz, bağışıklık hücrelerinin sinirleri saran miyelin tabakasına saldırması sonucu felç bırakabilen bir beyin hastalığıdır. Araştırmacılar, hastalığın motor beceriler üzerindeki zararlarını en aza indirmek için sürekli yeni tedaviler araştırırlar. Bu nedenle erken tespit ve tedavi hastaların tamamen felç kalmasını engellemekte hayati önem taşır.",
      "C) Merkezi sinir sisteminin bir rahatsızlığı olan MS hastalığında, bağışıklık sistemi sinirleri koruyan miyelin kılıfını yok eder. Bilim insanları kas ve hareket kayıplarını engellemek amacıyla yenilikçi ilaçlar geliştirmektedir. Erken tanı ve spesifik tıbbi müdahalelerle hastaların kalıcı felç geçirme riski düşürülebilir.",
      "D) Multipl skleroz, bağışıklık sisteminin beyin ve omurilikteki koruyucu miyeline saldırmasıyla oluşan ve hastayı engelli bırakabilen bir durumdur. Araştırmacılar motor fonksiyon kayıplarını tedavi etmek için yoğun çaba gösterir. Dolayısıyla, erken tanı konması ve bağışıklık baskılayıcı ilaçlar kullanılması kalıcı sakatlığı önler.",
      "E) Merkezi sinir sisteminde miyelin kılıfının zedelenmesiyle ortaya çıkan Multipl skleroz sakatlık yapıcı bir hastalıktır. Uzmanlar motor fonksiyon bozukluklarını düzeltmek için sürekli olarak immünomodülatör ilaçlar geliştirir. Hastalığın erken evrede yakalanıp müdahale edilmesi, kalıcı engellerin önlenmesinde tek yoldur."
    ],
    correctIndex: 0,
    isEnToTr: true,
    difficulty: "Zor",
    keyPhrases: const [],
    explanation: "'potentially disabling disease' -> potansiyel olarak sakat bırakan bir hastalığıdır. 'immunomodulatory treatments' -> immünomodülatör tedaviler. 'permanent disability' -> kalıcı sakatlığı. A şıkkı tam çeviridir."
  ),
  TranslationQuestion(
    sourceText: "Asthma is a chronic condition in which your airways narrow and swell, often producing extra mucus that obstructs breathing. Researchers are tirelessly working on innovative bronchodilator treatments to mitigate its severe implications during acute exacerbations. Consequently, early diagnosis and targeted prophylactic intervention are crucial for improving patient outcomes.",
    options: const [
      "A) Astım, solunum yollarınızın daraldığı ve şiştiği, genellikle nefes almayı zorlaştıran fazladan mukus ürettiği kronik bir durumdur. Araştırmacılar akut alevlenmeler sırasındaki şiddetli etkilerini hafifletmek için yenilikçi bronkodilatör tedaviler üzerinde yorulmadan çalışıyorlar. Sonuç olarak, erken teşhis ve hedefe yönelik profilaktik müdahale hasta sonuçlarını iyileştirmek için çok önemlidir.",
      "B) Astım, hava yollarının daralması ve şişerek aşırı mukus üretmesi nedeniyle nefes almayı güçleştiren bir hastalıktır. Araştırmacılar astım krizlerinin şiddetini azaltmak için sürekli yeni nefes açıcı ilaçlar üretmektedir. Bu yüzden, erken teşhis ile önleyici müdahaleler hastaların atak geçirmemesi için gereklidir.",
      "C) Solunum yollarının şişip daralması ve aşırı balgam üretimi ile seyreden kronik duruma astım denir. Bilim insanları, hastalık krizlerinin olumsuz etkilerini en aza indirmek için yoğun şekilde bronş genişletici tedaviler üzerinde duruyor. Erken tanı sayesinde hastalara uygulanan koruyucu tedaviler, hayat kalitelerini yükseltir.",
      "D) Astım, hava yollarının kronik olarak daralması ve nefes darlığı yaratan mukus salgısının artmasıyla karakterizedir. Araştırmacılar akut astım ataklarındaki ağır tabloyu hafifletecek yenilikçi bronkodilatör ilaçlar bulmaya odaklanmıştır. Hastaların daha iyi hissetmesi için erken teşhis ve spesifik profilaktik önlemler elzemdir.",
      "E) Astım hastalarında solunum yolları sık sık daralır ve mukus üreterek tıkanıklığa yol açar. Tıp uzmanları bu durumun akut alevlenmelerdeki şiddetini azaltmak amacıyla yorulmadan yeni bronkodilatörler geliştiriyor. Sonuç olarak, hastalık belirtileri başlamadan önce teşhis konulması ve koruyucu müdahaleler uygulanması hayati bir öneme sahiptir."
    ],
    correctIndex: 0,
    isEnToTr: true,
    difficulty: "Zor",
    keyPhrases: const [],
    explanation: "'acute exacerbations' -> akut alevlenmeler. 'prophylactic intervention' -> profilaktik müdahale. A şıkkı, metnin birebir çevirisidir."
  ),
  TranslationQuestion(
    sourceText: "Gastroesophageal reflux disease occurs when stomach acid frequently flows back into the tube connecting your mouth and stomach. Researchers are tirelessly working on innovative proton pump inhibitors to mitigate its severe implications on esophageal tissue. Consequently, early diagnosis and targeted dietary intervention are crucial for improving patient outcomes.",
    options: const [
      "A) Gastroözofageal reflü hastalığı, mide asidi ağzınızı ve midenizi birbirine bağlayan tüpe sıklıkla geri aktığında ortaya çıkar. Araştırmacılar özofagus dokusu üzerindeki şiddetli etkilerini hafifletmek için yenilikçi proton pompası inhibitörleri üzerinde yorulmadan çalışıyorlar. Sonuç olarak, erken teşhis ve hedefe yönelik diyet müdahalesi hasta sonuçlarını iyileştirmek için çok önemlidir.",
      "B) Mide asidinin yemek borusuna sürekli geri kaçması sonucu oluşan hastalığa gastroözofageal reflü denir. Araştırmacılar mide asidinin yemek borusunda yarattığı ağır tahribatı engellemek için yeni nesil ilaçlar denerler. Bu nedenle, erken tanı ve özel diyet planları hastaların rahatlaması için gereklidir.",
      "C) Gastroözofageal reflü, mide asidinin yemek borusuna geri dönmesiyle yemek borusunda hasar yaratan kronik bir durumdur. Bilim insanları asit üretimini durduracak yenilikçi pompaları geliştirmek için yoğun bir mesai harcıyor. Dolayısıyla, hastaların erken dönemde teşhis edilmesi ve yediklerine dikkat etmesi en önemli adımdır.",
      "D) Mideden yemek borusuna sızan asidin neden olduğu doku hasarına gastroözofageal reflü hastalığı adı verilir. Araştırmacılar özofagusta oluşan şiddetli hasarları azaltmak amacıyla proton pompası baskılayıcı tedaviler geliştiriyorlar. Hastaların iyileşme sürecini hızlandırmak için erken teşhis ve diyet müdahaleleri hayati önem taşır.",
      "E) Gastroözofageal reflü hastalığı, mide içeriğinin ağızla mideyi bağlayan kanala sıklıkla akmasıyla belirginleşir. Uzmanlar yemek borusu dokusunun göreceği zararı en aza indirmek için durmaksızın yeni proton pompası inhibitörleri bulmaya çalışır. Sonuç olarak, erken evrede hastalık saptanarak hedefe yönelik beslenme alışkanlıkları kazandırılmalıdır."
    ],
    correctIndex: 0,
    isEnToTr: true,
    difficulty: "Zor",
    keyPhrases: const [],
    explanation: "A şıkkı 'flows back into the tube', 'proton pump inhibitors', ve 'dietary intervention' kalıplarının tam ve kelimesi kelimesine akademik çevirisidir."
  ),
  TranslationQuestion(
    sourceText: "Parkinson's disease is a progressive nervous system disorder that affects movement, often starting with a barely noticeable tremor in just one hand. Researchers are tirelessly working on innovative neuromodulatory treatments to mitigate its severe implications on motor control. Consequently, early diagnosis and targeted pharmacological intervention are crucial for improving patient outcomes.",
    options: const [
      "A) Parkinson hastalığı, genellikle sadece bir elde zar zor fark edilebilen bir titreme ile başlayan ve hareketi etkileyen ilerleyici bir sinir sistemi bozukluğudur. Araştırmacılar motor kontrol üzerindeki şiddetli etkilerini hafifletmek için yenilikçi nöromodülatör tedaviler üzerinde yorulmadan çalışıyorlar. Sonuç olarak, erken teşhis ve hedefe yönelik farmakolojik müdahale hasta sonuçlarını iyileştirmek için çok önemlidir.",
      "B) Hareketi kısıtlayan ilerleyici bir beyin hastalığı olan Parkinson, çoğu zaman bir elde beliren hafif bir titremeyle başlar. Araştırmacılar kas kontrolündeki büyük hasarları azaltmak için durmaksızın nörolojik tedaviler geliştirir. Bu nedenle erken tanı ve spesifik ilaç tedavisi hastaların yaşam kalitesini artırır.",
      "C) Parkinson hastalığı, bir elde zor fark edilen titremeyle ortaya çıkıp giderek hareket yeteneğini bozan sinirsel bir sorundur. Bilim insanları motor fonksiyon kayıplarını engellemek için yenilikçi tedavilere odaklanmaktadır. Dolayısıyla, hastalığın ilk aşamada tespit edilmesi ve farmakolojik yöntemlerle tedavi edilmesi zorunludur.",
      "D) Parkinson, yavaşça ilerleyerek sinir sistemini tahrip eden ve genellikle elde ufak bir titremeyle ilk belirtisini veren bir hastalıktır. Araştırmacılar şiddetli kas kontrolü kaybını önlemek amacıyla nöromodülatör ilaçlar arıyorlar. Erken teşhis sayesinde doğrudan uygulanan ilaçlı tedaviler hastaların bağımsız yaşamasını sağlar.",
      "E) Hareket fonksiyonlarını bozarak ilerleyen sinir sistemi hastalığı Parkinson, sadece bir eldeki küçük titremelerle kendini gösterir. Uzmanlar motor beceri üzerindeki olumsuz etkleri yatıştırmak için yorulmadan yenilikçi tedaviler test ediyor. Sonuç olarak, erken teşhis konularak başlanan medikal müdahaleler hastanın ömrünü uzatır."
    ],
    correctIndex: 0,
    isEnToTr: true,
    difficulty: "Zor",
    keyPhrases: const [],
    explanation: "'barely noticeable tremor' -> zar zor fark edilebilen bir titreme. 'neuromodulatory treatments' -> nöromodülatör tedaviler. A şıkkı, metnin birebir akademik çevirisidir."
  ),
  TranslationQuestion(
    sourceText: "Psoriasis is an immune-mediated skin disease that causes red, itchy scaly patches, most commonly on the knees, elbows, trunk, and scalp. Researchers are tirelessly working on innovative biologic treatments to mitigate its severe implications on systemic inflammation. Consequently, early diagnosis and targeted immunosuppressive intervention are crucial for improving patient outcomes.",
    options: const [
      "A) Sedef hastalığı, en yaygın olarak dizlerde, dirseklerde, gövdede ve kafa derisinde kırmızı, kaşıntılı pullu lekelere neden olan bağışıklık aracılı bir cilt hastalığıdır. Araştırmacılar sistemik inflamasyon üzerindeki şiddetli etkilerini hafifletmek için yenilikçi biyolojik tedaviler üzerinde yorulmadan çalışıyorlar. Sonuç olarak, erken teşhis ve hedefe yönelik immünosupresif müdahale hasta sonuçlarını iyileştirmek için çok önemlidir.",
      "B) Sedef hastalığı diz, dirsek, gövde ve saç derisinde kırmızı pullu kaşıntılara yol açan bir cilt sorunudur. Araştırmacılar vücuttaki yaygın iltihabın etkilerini gidermek için yeni nesil biyolojik ilaçlar araştırırlar. Bu sebeple erken teşhis ve bağışıklık sistemini baskılayan müdahaleler hastaların hayatını rahatlatır.",
      "C) Bağışıklık sisteminin neden olduğu sedef hastalığı, ciltte özellikle diz ve dirsek bölgelerinde kaşıntılı kırmızı lekelere yol açar. Bilim insanları sistemik inflamasyonu azaltacak yenilikçi biyolojik yöntemler bulmaya odaklanmışlardır. Dolayısıyla, hastalığın hemen teşhis edilmesi ve hedeflenmiş müdahaleler uygulanması şarttır.",
      "D) Sedef hastalığı, bağışıklık kaynaklı olup dizlerde, dirseklerde ve kafa derisinde kaşıntılı pullanmalar yapan bir deri hastalığıdır. Araştırmacılar sistemik inflamasyonun yol açtığı şiddetli komplikasyonları hafifletmek için yorulmadan biyolojik ajanlar üretiyor. Erken tanı sayesinde immünosupresif tedavilerin başlanması hastanın iyileşmesini sağlar.",
      "E) Genellikle dizler, dirsekler ve gövdede oluşan kırmızı ve kaşıntılı döküntülere sedef hastalığı denir ve bağışıklık kaynaklıdır. Uzmanlar hastalık yüzünden ortaya çıkan sistemik iltihabı önlemek amacıyla yenilikçi tedavi yolları geliştirmektedir. Erken tespit edilerek bağışıklık baskılayıcı ilaçlar kullanılması hastanın genel tablosunu düzeltir."
    ],
    correctIndex: 0,
    isEnToTr: true,
    difficulty: "Zor",
    keyPhrases: const [],
    explanation: "'immune-mediated' -> bağışıklık aracılı. 'biologic treatments' -> biyolojik tedaviler. 'immunosuppressive intervention' -> immünosupresif müdahale. A şıkkı, yapıyı en doğru aktaran seçenektir."
  ),
  TranslationQuestion(
    sourceText: "Cystic fibrosis is an inherited disorder that causes severe damage to the lungs, digestive system, and other organs in the body. Researchers are tirelessly working on innovative gene therapies to mitigate its severe implications on mucosal secretions. Consequently, early diagnosis and targeted pulmonary intervention are crucial for improving patient outcomes.",
    options: const [
      "A) Kistik fibrozis, akciğerlere, sindirim sistemine ve vücuttaki diğer organlara ciddi zararlar veren kalıtsal bir bozukluktur. Araştırmacılar mukozal salgılar üzerindeki şiddetli etkilerini hafifletmek için yenilikçi gen tedavileri üzerinde yorulmadan çalışıyorlar. Sonuç olarak, erken teşhis ve hedefe yönelik pulmoner müdahale hasta sonuçlarını iyileştirmek için çok önemlidir.",
      "B) Akciğerler ve sindirim sistemine hasar veren kistik fibrozis, genetik bir hastalık olarak bilinir. Araştırmacılar aşırı mukus üretiminin etkilerini zayıflatmak için sürekli yeni gen tedavileri denerler. Bu yüzden erken yaşta tanı konması ve akciğerlere yönelik tedaviler hastaların sağlığını güvence altına alır.",
      "C) Kistik fibrozis, vücuttaki organlara, özellikle akciğerlere ve sindirime büyük zarar veren kalıtsal bir durumdur. Bilim insanları mukozal sıvılar üzerindeki ağır etkileri ortadan kaldırmak için yenilikçi gen tedavileri geliştirmeye odaklanmıştır. Dolayısıyla, hastalığın erkenden teşhis edilip akciğer müdahalesi yapılması yaşamsaldır.",
      "D) Kalıtsal bir hastalık olan kistik fibrozis, solunum ve sindirim organlarında yapısal tahribat oluşturur. Araştırmacılar koyu mukus salgısının neden olduğu şiddetli komplikasyonları azaltmak için yorulmadan genetik yöntemler araştırıyor. Erken teşhis ve spesifik pulmoner tedaviler hastaların daha uzun ve sağlıklı yaşamasını sağlar.",
      "E) Akciğerlere ve diğer organlara şiddetli zararlar verebilen kistik fibrozis, aileden geçen genetik bir bozukluktur. Uzmanlar, mukozal salgıları düzelterek hastanın şikayetlerini hafifletecek yenilikçi gen terapileri üzerinde yoğunlaşmıştır. Sonuç olarak, erken tespit ve pulmoner yolla yapılan müdahaleler hasta iyileşmesinin temelidir."
    ],
    correctIndex: 0,
    isEnToTr: true,
    difficulty: "Zor",
    keyPhrases: const [],
    explanation: "'inherited disorder' -> kalıtsal bir bozukluktur. 'gene therapies' -> gen tedavileri. 'mucosal secretions' -> mukozal salgılar. A şıkkı tam çeviridir."
  ),
  TranslationQuestion(
    sourceText: "Rheumatoid arthritis is a chronic inflammatory disorder that can affect more than just your joints, potentially damaging a wide variety of body systems. Researchers are tirelessly working on innovative disease-modifying antirheumatic drugs to mitigate its severe implications on joint destruction. Consequently, early diagnosis and targeted intervention are crucial for improving patient outcomes.",
    options: const [
      "A) Romatoid artrit, sadece eklemlerinizi değil, potansiyel olarak çok çeşitli vücut sistemlerine de zarar verebilen kronik enflamatuar bir bozukluktur. Araştırmacılar eklem yıkımı üzerindeki şiddetli etkilerini hafifletmek için yenilikçi hastalık modifiye edici antiromatizmal ilaçlar üzerinde yorulmadan çalışıyorlar. Sonuç olarak, erken teşhis ve hedefe yönelik müdahale hasta sonuçlarını iyileştirmek için çok önemlidir.",
      "B) Sadece eklemleri değil, vücuttaki pek çok sistemi etkileyerek hasar verebilen romatoid artrit, iltihaplı ve kronik bir hastalıktır. Araştırmacılar eklem tahribatını önlemek için sürekli olarak yeni romatizma ilaçları üretmektedir. Bu sebeple, erken evrede teşhis konularak doğrudan ilaç tedavisine başlanması hastanın engelli kalmasını önler.",
      "C) Romatoid artrit, vücudun çeşitli organ sistemlerini de tahrip etme potansiyeli taşıyan kronik bir eklem iltihabıdır. Bilim insanları şiddetli eklem deformasyonlarını engellemek adına yenilikçi ilaçlar üzerinde yoğun bir şekilde durmaktadır. Dolayısıyla, hastalığın erken teşhisi ve doğru hedeflenmiş tedaviler hasta iyileşmesinin anahtarıdır.",
      "D) Eklemlerden ziyade tüm vücut sistemlerine zarar verebilen romatoid artrit, kronik bir enflamasyon hastalığıdır. Araştırmacılar kıkırdak ve kemik yıkımlarını önleyecek yeni hastalık modifiye edici ilaçlar arıyor. Erken tanı sayesinde hedefe yönelik yapılan müdahaleler, hastaların hareket kabiliyetini korumalarını sağlar.",
      "E) Romatoid artrit, eklemlerinizin yanı sıra potansiyel olarak pek çok sistemi de bozabilen kronik enflamatuar bir durumdur. Uzmanlar eklem yıkımını yavaşlatacak antiromatizmal ilaçlar bulmak için yorulmadan çabalarlar. Sonuç olarak, teşhisin erken konması ve uygun tedavilerin hemen uygulanması iyileşme için temel şarttır."
    ],
    correctIndex: 0,
    isEnToTr: true,
    difficulty: "Zor",
    keyPhrases: const [],
    explanation: "'disease-modifying antirheumatic drugs' -> hastalık modifiye edici antiromatizmal ilaçlar. A şıkkı, metnin birebir akademik çevirisidir."
  ),
  TranslationQuestion(
    sourceText: "Glaucoma is a group of eye conditions that damage the optic nerve, the health of which is vital for good vision. Researchers are tirelessly working on innovative intraocular pressure-lowering treatments to mitigate its severe implications on visual field loss. Consequently, early diagnosis and targeted pharmacological intervention are crucial for preventing irreversible blindness.",
    options: const [
      "A) Glokom, iyi bir görme için sağlığı hayati önem taşıyan optik sinire zarar veren bir grup göz rahatsızlığıdır. Araştırmacılar görme alanı kaybı üzerindeki şiddetli etkilerini hafifletmek için yenilikçi göz içi basıncını düşürücü tedaviler üzerinde yorulmadan çalışıyorlar. Sonuç olarak, erken teşhis ve hedefe yönelik farmakolojik müdahale geri döndürülemez körlüğü önlemek için çok önemlidir.",
      "B) Glokom, görme yetisi için çok önemli olan göz sinirine hasar veren çeşitli göz hastalıklarının ortak adıdır. Araştırmacılar görme alanının daralmasını durdurmak amacıyla göz tansiyonunu düşüren ilaçlar geliştirmeye çalışıyor. Bu yüzden, erken teşhis ve spesifik müdahaleler hastaların kalıcı kör olmasını engellemede esastır.",
      "C) Optik sinire zarar vererek görüş yeteneğini bozan glokom, tehlikeli bir göz rahatsızlığı grubudur. Bilim insanları kalıcı görme kaybını azaltmak için durmaksızın göz içi basıncını düzenleyen yenilikçi tedavilere odaklanmaktadır. Dolayısıyla, hastalığı erken evrede saptayarak hedefe yönelik tedavi uygulamak körlük riskini yok eder.",
      "D) Glokom, sağlıklı görme için gerekli olan optik sinirleri tahrip eden göz rahatsızlıklarına verilen genel bir isimdir. Araştırmacılar görme alanındaki şiddetli kayıpları yavaşlatmak için yenilikçi yöntemlerle göz tansiyonunu düşürmeye çalışıyorlar. Geri dönüşümsüz körlüğü önlemek için erken teşhis ve farmakolojik tedaviler vazgeçilmezdir.",
      "E) Glokom, gözdeki optik sinirlere doğrudan zarar vererek görüş kalitesini bozan bir grup göz sorunudur. Uzmanlar, artan göz içi basıncının oluşturduğu şiddetli hasarları azaltacak ilaçları araştırarak bulmaya çalışırlar. Sonuç olarak, erken tespit yapılması ve ilaçla müdahale edilmesi kalıcı görme engellerinin oluşmasını durdurur."
    ],
    correctIndex: 0,
    isEnToTr: true,
    difficulty: "Zor",
    keyPhrases: const [],
    explanation: "'intraocular pressure-lowering treatments' -> göz içi basıncını düşürücü tedaviler. 'visual field loss' -> görme alanı kaybı. 'irreversible blindness' -> geri döndürülemez körlük. A şıkkı tam çeviridir."
  ),
  TranslationQuestion(
    sourceText: "Leukemia is a heterogeneous malignancy of the body's blood-forming tissues, including the bone marrow and the lymphatic system. Researchers are tirelessly working on innovative stem cell therapies to mitigate its severe implications on hematopoiesis. Consequently, early diagnosis and targeted oncological intervention are crucial for improving patient outcomes and achieving remission.",
    options: const [
      "A) Lösemi, kemik iliği ve lenfatik sistem dahil olmak üzere vücudun kan yapıcı dokularının heterojen bir malignitesidir (kötü huylu tümörüdür). Araştırmacılar hematopoez (kan yapımı) üzerindeki şiddetli etkilerini hafifletmek için yenilikçi kök hücre tedavileri üzerinde yorulmadan çalışıyorlar. Sonuç olarak, erken teşhis ve hedefe yönelik onkolojik müdahale hasta sonuçlarını iyileştirmek ve remisyon sağlamak için çok önemlidir.",
      "B) Lösemi, kemik iliğini ve lenf sistemini etkileyerek vücutta kan yapımını bozan karmaşık bir kanser türüdür. Araştırmacılar hastalığın kan hücreleri üzerindeki ölümcül etkilerini gidermek için yeni kök hücre tedavileri üzerinde duruyor. Bu nedenle, erken teşhis ile onkolojik tedavilerin uygulanması hastaların iyileşmesi ve kanserin durdurulması için gereklidir.",
      "C) Kan yapıcı dokuların, özellikle kemik iliği ve lenfatik sistemin heterojen kanserine lösemi adı verilir. Bilim insanları kan yapımı sürecindeki ciddi tahribatları önlemek adına yenilikçi kök hücre nakli yolları geliştiriyor. Dolayısıyla, erken safhada saptanan lösemi vakaları hedeflenmiş müdahaleler sayesinde hızla remisyona girebilir.",
      "D) Lösemi, vücudun kan üreten dokularında meydana gelen ve kemik iliği ile lenfleri kapsayan heterojen bir hastalıktır. Araştırmacılar hematopoezin bozulmasını engellemek amacıyla yorulmadan kök hücre terapileri aramaktadırlar. Hasta hayatta kalma oranlarını artırmak ve hastalığı geriletmek için erken tanı ile onkolojik yaklaşım zorunludur.",
      "E) Lösemi, vücudun kan yapıcı hücrelerini etkileyen, kemik iliği ve lenf bezlerinden kaynaklanan bir kanser türüdür. Uzmanlar kan yapımını yeniden düzenleyecek yenilikçi kök hücre nakillerini araştırarak şiddetli etkileri hafifletmeye çalışır. Sonuç olarak, hedefe yönelik tedaviler hastaların sağlığına kavuşması ve kanserin gerilemesi için çok önemlidir."
    ],
    correctIndex: 0,
    isEnToTr: true,
    difficulty: "Zor",
    keyPhrases: const [],
    explanation: "'blood-forming tissues' -> kan yapıcı dokularının. 'stem cell therapies' -> kök hücre tedavileri. 'hematopoiesis' -> hematopoez (kan yapımı). 'remission' -> remisyon. A şıkkı, metnin en doğru akademik çevirisidir."
  ),
  TranslationQuestion(
    sourceText: "Melanoma, the most serious type of skin cancer, develops in the cells that produce melanin, the pigment that gives your skin its color. Researchers are tirelessly working on innovative immunotherapies to mitigate its severe implications on metastatic spread. Consequently, early diagnosis and targeted surgical intervention are crucial for preventing systemic dissemination.",
    options: const [
      "A) Cilt kanserinin en ciddi türü olan melanom, cildinize rengini veren pigment olan melanini üreten hücrelerde gelişir. Araştırmacılar metastatik yayılım üzerindeki şiddetli etkilerini hafifletmek için yenilikçi immünoterapiler üzerinde yorulmadan çalışıyorlar. Sonuç olarak, erken teşhis ve hedefe yönelik cerrahi müdahale sistemik yayılımı önlemek için çok önemlidir.",
      "B) Melanom, cilde rengini veren melanin pigmentinin hücrelerinde başlayan oldukça tehlikeli bir cilt kanseridir. Araştırmacılar hastalığın diğer organlara metastaz yapmasını önlemek adına yenilikçi immünolojik ilaçlar araştırıyor. Bu yüzden erken tanı konularak vakit kaybetmeden ameliyat edilmesi tümörün vücuda yayılmasını engeller.",
      "C) En agresif cilt kanseri olan melanom, melanin üreten hücrelerde ortaya çıkan ve hızla yayılan bir tümördür. Bilim insanları metastazı durdurmak ve ağır sonuçları engellemek için aralıksız şekilde immünoterapiler üzerine çalışmaktadır. Dolayısıyla, hastalığın ilk aşamada tespit edilip cerrahi olarak temizlenmesi hayati bir zorunluluktur.",
      "D) Melanom, deriye rengini sağlayan melanin hücrelerinde gelişen ve en çok ölüme yol açan cilt kanseri çeşididir. Araştırmacılar metastatik yayılmayı engellemek için immünoterapötik yollar geliştirmek adına yoğun çaba göstermektedir. Sistemi korumak ve tümör yayılımını durdurmak için erken teşhis ve hedeflenen ameliyatlar vazgeçilmezdir.",
      "E) Ciltteki melanin üreten hücrelerde başlayan melanom, cilt kanserlerinin en ciddi ve yayılmacı türüdür. Uzmanlar hastalığın metastaz yaparak yayılmasını yavaşlatmak için sürekli olarak yeni immünoterapi yöntemleri test ediyor. Sonuç olarak, erken teşhis ve doğru cerrahi yöntemlerle sistemik yayılım kontrol altına alınabilir."
    ],
    correctIndex: 0,
    isEnToTr: true,
    difficulty: "Zor",
    keyPhrases: const [],
    explanation: "'metastatic spread' -> metastatik yayılım. 'systemic dissemination' -> sistemik yayılım. A şıkkı, cümle yapısını koruyarak eksiksiz çeviri sunar."
  ),
  TranslationQuestion(
    sourceText: "Atherosclerosis is the pathophysiological buildup of fats, cholesterol, and other substances in and on your artery walls. Researchers are tirelessly working on innovative lipid-lowering treatments to mitigate its severe implications on arterial lumen occlusion. Consequently, early diagnosis and targeted cardiovascular intervention are crucial for preventing myocardial infarctions.",
    options: const [
      "A) Ateroskleroz, arter duvarlarınızın içinde ve üzerinde yağların, kolesterolün ve diğer maddelerin patofizyolojik birikimidir. Araştırmacılar arteriyel lümen tıkanıklığı üzerindeki şiddetli etkilerini hafifletmek için yenilikçi lipit düşürücü tedaviler üzerinde yorulmadan çalışıyorlar. Sonuç olarak, erken teşhis ve hedefe yönelik kardiyovasküler müdahale miyokard enfarktüslerini önlemek için çok önemlidir.",
      "B) Damar sertliği olarak bilinen ateroskleroz, atardamar yüzeyinde yağ ve kolesterol birikmesiyle oluşur. Araştırmacılar damar tıkanıklığını gidermek için yeni kolesterol düşürücü ilaçlar üretmeye çalışmaktadır. Bu sebeple erken teşhis ve kardiyovasküler cerrahi kalp krizlerini engellemede kritik öneme sahiptir.",
      "C) Ateroskleroz, yağ ve kolesterol gibi maddelerin arter duvarlarında birikmesi sonucu ortaya çıkan tehlikeli bir tablodur. Bilim insanları damar içinin kapanmasını önlemek adına yenilikçi lipit tedavileri üzerine aralıksız araştırma yapmaktadır. Dolayısıyla, kalp krizlerini önleyebilmek için hastalığın erkenden tespit edilip müdahale edilmesi elzemdir.",
      "D) Atardamarların içinde yağ ve diğer maddelerin birikmesiyle oluşan ateroskleroz patofizyolojik bir durumdur. Araştırmacılar arteriyel tıkanmayı hafifletecek lipit düşürücü ilaçları yorulmadan incelemektedir. Miyokard enfarktüslerini tamamen durdurmak için erken teşhis ve kardiyovasküler önlemler olmazsa olmazdır.",
      "E) Ateroskleroz, kolesterol ve yağın atardamar duvarında birikerek lümeni daralttığı ciddi bir sağlık sorunudur. Uzmanlar damar tıkanıklığının yarattığı ağır sonuçları hafifletmek için sürekli lipit düşürücü tedaviler geliştirir. Sonuç olarak, kalp krizlerinin engellenmesi erken teşhise ve hedeflenen tıbbi müdahalelere bağlıdır."
    ],
    correctIndex: 0,
    isEnToTr: true,
    difficulty: "Zor",
    keyPhrases: const [],
    explanation: "'pathophysiological buildup' -> patofizyolojik birikimi. 'lipid-lowering treatments' -> lipit düşürücü tedaviler. 'arterial lumen occlusion' -> arteriyel lümen tıkanıklığı. A şıkkı, metnin birebir akademik çevirisidir."
  )
];
