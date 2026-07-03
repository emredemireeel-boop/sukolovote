class QuestionType {
  final String id;
  final String title;
  final String subtitle;
  final String icon;
  final int questionCount;
  final String description;
  final List<String> strategies;
  final List<String> tips;
  final List<ExampleQuestion> examples;
  // New detailed fields
  final String detailedExplanation;
  final List<String> commonMistakes;
  final List<String> keyPhrases;

  const QuestionType({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.questionCount,
    required this.description,
    required this.strategies,
    required this.tips,
    required this.examples,
    this.detailedExplanation = '',
    this.commonMistakes = const [],
    this.keyPhrases = const [],
  });
}

class ExampleQuestion {
  final String question;
  final List<String> options;
  final int correctIndex;
  final String explanation;
  final String? passage;
  final String? stepByStep; // NEW: adım adım çözüm

  const ExampleQuestion({
    required this.question,
    required this.options,
    required this.correctIndex,
    required this.explanation,
    this.passage,
    this.stepByStep,
  });
}

final List<QuestionType> questionTypes = [
  // ═══════════════════════════════════════════════════════
  // 1. GRAMER & KELİME BİLGİSİ
  // ═══════════════════════════════════════════════════════
  QuestionType(
    id: 'grammar_vocab',
    title: 'Gramer & Kelime Bilgisi',
    subtitle: 'Soru 1-20 • İlk 20 Soru',
    icon: '📝',
    questionCount: 20,
    description:
        'YÖKDİL\'in ilk 20 sorusu gramer ve kelime bilgisi sorularından oluşur. '
        'Yaklaşık 5 soru kelime bilgisi, 1 soru phrasal verb ve 14 soru gramer yapılarından gelir. '
        'Bu bölüm sınavın temelini oluşturur ve iyi bir gramer bilgisi diğer bölümlerde de başarıyı artırır.',
    detailedExplanation:
        'Bu bölüm, YÖKDİL sınavının en temel ve en geniş bölümüdür. Toplam 80 sorunun 20\'si (yani %25\'i) bu bölümden gelir. Sorular 3 ana kategoriye ayrılır:\n\n'
        '📌 GRAMER SORULARI (yaklaşık 14 soru):\n'
        'Tense (Zaman) soruları en sık çıkan gramer konusudur. Past Simple, Present Perfect, Past Perfect, Future Perfect gibi zamanların birbirleriyle uyumu sorulur. Özellikle "By the time", "Since", "When", "Before", "After" gibi zaman bağlaçlarıyla birlikte kullanılır.\n\n'
        'Bağlaç (Conjunction) soruları ikinci sırada gelir. "Although/Despite" (zıtlık), "Because/Since/As" (neden), "Unless/Provided that" (koşul), "So that/In order to" (amaç) gibi bağlaçların doğru kullanımı sorulur.\n\n'
        'Passive yapılar sağlık metinlerinde çok yaygındır: "The patient was diagnosed with...", "It has been reported that...", "The drug is being tested..." gibi yapılar sıklıkla karşımıza çıkar.\n\n'
        'Relative Clause soruları da sık çıkar: "who" (insan-özne), "whom" (insan-nesne), "which" (şey), "whose" (sahiplik), "where" (yer), "when" (zaman).\n\n'
        '📌 KELİME BİLGİSİ SORULARI (yaklaşık 5 soru):\n'
        'Cümlede boş bırakılan yere en uygun kelimeyi (genellikle fiil veya sıfat) seçmeniz istenir. Bu sorularda doğrudan çeviri yapmak yerine bağlamdan anlam çıkarmak çok önemlidir. Sağlık alanına özgü kelimeler (diagnose, prescribe, administer, deteriorate vb.) sıklıkla sorulur.\n\n'
        '📌 PHRASAL VERB SORULARI (1-2 soru):\n'
        'Phrasal verb\'ler İngilizce\'nin en zor konularından biridir. "Carry out" (gerçekleştirmek), "break out" (patlak vermek), "bring about" (neden olmak), "come up with" (bulmak/ortaya koymak) gibi yapılar sorulur. Edatın (preposition) değişmesiyle anlam tamamen değişir.',
    strategies: [
      'Cümleyi tamamen okuyun — boşluğun öncesine ve sonrasına dikkat edin. Asla sadece boşluktan önceki 2-3 kelimeye bakarak cevap vermeyin.',
      'Zaman uyumuna (tense harmony) dikkat edin — cümledeki zaman belirteçlerini (yesterday, since 2010, by next year, currently) arayın ve boşluğa uygun zamanı seçin.',
      'Bağlaçlarda anlam ilişkisini belirleyin: Zıtlık mı (although, despite, however), sebep-sonuç mu (because, therefore, thus), koşul mu (if, unless, provided that)?',
      'Kelime sorularında bağlamdan anlam çıkarın — cümlenin genel temasını anlayın, ardından şıklardaki kelimelerin hangisinin anlama en uygun olduğunu seçin. Doğrudan Türkçe çeviri yapmayın.',
      'Phrasal verb sorularında edatın anlamı değiştirdiğini unutmayın: "look up" (aramak) ≠ "look down on" (küçümsemek) ≠ "look into" (araştırmak).',
      'Şıklardaki gramer yapısı farklılıklarını analiz edin — eğer şıklar farklı tense\'lerdeyse, soru bir tense sorusudur; eğer şıklar farklı bağlaçlarsa, soru bir bağlaç sorusudur.',
      'Passive yapılarda "be + V3" formülünü arayın. Eğer cümlede özne eylemden etkileniyorsa (hasta tedavi ediliyor, ilaç test ediliyor) passive kullanılır.',
      'Eliminasyon tekniği: Emin olmadığınızda kesinlikle yanlış olan şıkları eleyin; kalan 2 şık arasında seçim yapın.',
    ],
    tips: [
      '💡 "Since/For" ayrımı: Since → belirli zaman noktası (since 2010), For → süre (for 5 years). Her ikisi de Present Perfect ile kullanılır.',
      '💡 "Although/Despite" ayrımı: Although + CÜMLE (özne + fiil), Despite + İSİM/GERUND. Örn: "Although he was ill" vs "Despite being ill".',
      '💡 Passive yapılarda "be + V3" formülünü arayın. Sağlık metinlerinde: "The patient was diagnosed..." / "The drug has been approved..."',
      '💡 Relative clause: who (insan-özne), whom (insan-nesne), which (şey), whose (sahiplik), where (yer), when (zaman).',
      '💡 Sağlık metinlerinde en sık çıkan yapı: "It has been found/reported/suggested that..." (Passive + that clause)',
      '💡 "By the time + Past Simple" → diğer taraf Past Perfect olmalı. "By the time he arrived, the surgery had already started."',
      '💡 Subject-verb agreement: "The number of patients HAS increased" (tekil) vs "A number of patients HAVE been treated" (çoğul).',
      '💡 Conditional yapılar: Type 0 (genel doğrular), Type 1 (gerçekçi gelecek), Type 2 (hayali şimdiki), Type 3 (hayali geçmiş — "If + Past Perfect → would have + V3").',
    ],
    commonMistakes: [
      '❌ "Since" ile "For" karıştırmak: "Since 5 years" YANLIŞ → "For 5 years" veya "Since 2019" olmalı.',
      '❌ "Although" ile "Despite" karıştırmak: "Despite he was ill" YANLIŞ → "Despite being ill" veya "Although he was ill" olmalı.',
      '❌ Passive\'de "be" fiilini unutmak: "The patient diagnosed" YANLIŞ → "The patient was diagnosed" olmalı.',
      '❌ "Which" ile "Who" karıştırmak: İnsanlar için "who", şeyler için "which" kullanılır.',
      '❌ İntransitive fiilleri passive yapmak: "The patient was died" YANLIŞ → "The patient died" (die intransitive bir fiildir).',
      '❌ "Research" kelimesini çoğul kullanmak: "Researches show" YANLIŞ → "Research shows" (uncountable noun).',
    ],
    keyPhrases: [
      'be characterized by — ile karakterize edilmek',
      'be associated with — ile ilişkilendirilmek',
      'result from / stem from — den kaynaklanmak',
      'lead to / give rise to — e yol açmak',
      'be attributed to — e atfedilmek',
      'contribute to — e katkıda bulunmak',
      'account for — oluşturmak / açıklamak',
      'regardless of — e rağmen / ne olursa olsun',
      'in terms of — bakımından / açısından',
      'as opposed to — in aksine / yerine',
    ],
    examples: [
      ExampleQuestion(
        question: 'The patient ---- from a severe respiratory infection when the new treatment protocol was introduced.',
        options: ['A) has suffered', 'B) was suffering', 'C) would suffer', 'D) had been suffered', 'E) suffers'],
        correctIndex: 1,
        explanation: 'Past Continuous + Past Simple yapısı: "was suffering" devam eden eylem, "was introduced" araya giren eylem. When bağlacı bu yapıyı destekler. D şıkkı passive olduğu için yanlış (suffer intransitive).',
        stepByStep: '1️⃣ Cümledeki zaman belirteçlerini bul: "when the new treatment protocol was introduced" → Past Simple.\n'
            '2️⃣ "When" bağlacı ile birlikte bir devam eden eylem + araya giren eylem yapısı var.\n'
            '3️⃣ Devam eden eylem → Past Continuous (was/were + V-ing).\n'
            '4️⃣ Şıkları kontrol et: "was suffering" Past Continuous → ✅\n'
            '5️⃣ D şıkkını ele: "had been suffered" → suffer intransitive bir fiildir, passive yapılamaz → ❌\n'
            '6️⃣ Sonuç: B şıkkı doğrudur.',
      ),
      ExampleQuestion(
        question: 'Antibiotics should be prescribed ---- after a proper diagnosis has been made to prevent antibiotic resistance.',
        options: ['A) only', 'B) yet', 'C) already', 'D) still', 'E) hardly'],
        correctIndex: 0,
        explanation: 'Anlam olarak "Antibiyotikler sadece doğru teşhis konulduktan sonra reçete edilmelidir" cümlesi uygundur. "Only after" yapısı vurgu sağlar.',
        stepByStep: '1️⃣ Bu bir kelime sorusu — şıklar zarf (adverb) içeriyor.\n'
            '2️⃣ Cümlenin anlamını kur: "Antibiyotikler ... doğru teşhisten sonra reçete edilmelidir."\n'
            '3️⃣ Antibiyotik direncini önlemek için → kısıtlayıcı bir ifade gerekiyor.\n'
            '4️⃣ "only" = sadece → anlam: "SADECE doğru teşhisten sonra" → mantıklı ✅\n'
            '5️⃣ "yet" = henüz, "already" = zaten, "still" = hâlâ, "hardly" = neredeyse hiç → anlamsız ❌\n'
            '6️⃣ Sonuç: A şıkkı doğrudur.',
      ),
      ExampleQuestion(
        question: '---- the mortality rate has decreased significantly in recent decades, cardiovascular diseases remain the leading cause of death worldwide.',
        options: ['A) Since', 'B) Although', 'C) Unless', 'D) Because', 'E) As long as'],
        correctIndex: 1,
        explanation: 'Cümlede zıtlık ilişkisi var: "ölüm oranı azalmış olmasına rağmen, kardiyovasküler hastalıklar hâlâ birinci sırada." Zıtlık bağlacı "Although" doğru cevaptır.',
        stepByStep: '1️⃣ Cümledeki iki bilgiyi belirle:\n   • Yan cümle: "ölüm oranı son yıllarda önemli ölçüde azaldı"\n   • Ana cümle: "kardiyovasküler hastalıklar dünya çapında birinci ölüm nedeni olmaya devam ediyor"\n'
            '2️⃣ Bu iki bilgi arasındaki mantıksal ilişki nedir?\n   • "Azaldı AMA hâlâ birinci" → ZITLIK ilişkisi!\n'
            '3️⃣ Zıtlık bağlaçlarını bul: Although, Even though, Despite, In spite of\n'
            '4️⃣ Şıkları kontrol et: "Although" → zıtlık bağlacı ✅\n'
            '5️⃣ Diğer şıkları ele: Since/Because → neden (uyumsuz), Unless → koşul (uyumsuz)\n'
            '6️⃣ Sonuç: B şıkkı doğrudur.',
      ),
      ExampleQuestion(
        question: 'The surgeon decided to postpone the operation ---- the patient\'s blood pressure was dangerously high.',
        options: ['A) although', 'B) in case', 'C) because', 'D) unless', 'E) so that'],
        correctIndex: 2,
        explanation: 'Sebep-sonuç ilişkisi: Cerrah operasyonu erteledi ÇÜNKÜ hastanın tansiyonu tehlikeli derecede yüksekti. "Because" sebep bildirir.',
        stepByStep: '1️⃣ İki olayı belirle: "Cerrah operasyonu erteledi" + "Hastanın tansiyonu tehlikeli yüksekti"\n'
            '2️⃣ Mantıksal ilişki: Tansiyon yüksek → operasyonu erteledi = NEDEN-SONUÇ\n'
            '3️⃣ Neden bildiren bağlaçlar: because, since, as, due to\n'
            '4️⃣ "because" → sebep bildiren bağlaç ✅\n'
            '5️⃣ "although" → zıtlık (cerrah zıt bir şey yapmıyor) ❌\n'
            '6️⃣ Sonuç: C şıkkı doğrudur.',
      ),
      ExampleQuestion(
        question: 'Because the new virus strain is highly contagious, healthcare workers must ---- strict isolation protocols.',
        options: ['A) turn down', 'B) bring about', 'C) adhere to', 'D) figure out', 'E) look down on'],
        correctIndex: 2,
        explanation: '"Adhere to" bir kurala, protokole sıkı sıkıya bağlı kalmak, uymak demektir. Sağlık çalışanları izolasyon protokollerine uymalıdır.',
        stepByStep: '1️⃣ Bu bir phrasal verb sorusu — şıklarda hepsi phrasal verb.\n'
            '2️⃣ Her birinin anlamını kontrol et:\n   • turn down = reddetmek\n   • bring about = neden olmak\n   • adhere to = uymak, bağlı kalmak\n   • figure out = çözmek, anlamak\n   • look down on = küçümsemek\n'
            '3️⃣ Cümle anlamı: "Sağlık çalışanları katı izolasyon protokollerine ... MALI"\n'
            '4️⃣ Protokollere "uymak" gerekiyor → "adhere to" ✅\n'
            '5️⃣ Sonuç: C şıkkı doğrudur.',
      ),
      ExampleQuestion(
        question: 'By the time the researchers ---- the specific gene responsible for the disorder, many patients ---- the experimental drug without any significant improvement.',
        options: ['A) have identified / were taking', 'B) identified / had taken', 'C) identify / will have taken', 'D) had identified / took', 'E) are identifying / have been taking'],
        correctIndex: 1,
        explanation: 'By the time + Past Simple (identified), diğer taraf Past Perfect (had taken). Araştırmacılar geni tespit edene KADAR, hastalar çoktan deneysel ilacı ALMIŞTI.',
        stepByStep: '1️⃣ "By the time" yapısını tanı — bu bir zaman kalıbıdır.\n'
            '2️⃣ "By the time" kuralı:\n   • By the time + Present Simple → Future Perfect\n   • By the time + Past Simple → Past Perfect\n'
            '3️⃣ Cümlenin bağlamı geçmiş zaman → "By the time + Past Simple → Past Perfect"\n'
            '4️⃣ Birinci boşluk: Past Simple → "identified" ✅\n'
            '5️⃣ İkinci boşluk: Past Perfect → "had taken" ✅\n'
            '6️⃣ B şıkkı: identified / had taken → her iki kurala da uygun ✅\n'
            '7️⃣ Sonuç: B şıkkı doğrudur.',
      ),
      ExampleQuestion(
        question: 'A recent study has revealed that people ---- consume high amounts of ultra-processed foods are at a greater risk of developing metabolic syndrome.',
        options: ['A) whose', 'B) whom', 'C) which', 'D) who', 'E) where'],
        correctIndex: 3,
        explanation: '"People" kelimesini niteleyen bir relative pronoun gereklidir. İnsanları niteleyen ve ardından direkt fiil (consume) alan "who" ilgi zamiridir.',
        stepByStep: '1️⃣ Boşluğun önünde "people" (insanlar) var → relative pronoun sorusu.\n'
            '2️⃣ Relative pronoun seçim kuralları:\n   • İnsan + özne konumu → who\n   • İnsan + nesne konumu → whom\n   • Şey → which\n   • Sahiplik → whose\n   • Yer → where\n'
            '3️⃣ "people ---- consume..." → boşluktan sonra FİİL (consume) var → özne konumu.\n'
            '4️⃣ İnsan + özne = "who" ✅\n'
            '5️⃣ Sonuç: D şıkkı doğrudur.',
      ),
      ExampleQuestion(
        question: '---- providing a temporary relief from pain, the medication does not actually treat the underlying cause of the inflammation.',
        options: ['A) Instead of', 'B) In addition to', 'C) Rather than', 'D) Because of', 'E) Despite'],
        correctIndex: 4,
        explanation: 'Zıtlık ilişkisi var: "Ağrıdan geçici bir rahatlama sağlamasına RAĞMEN, altta yatan nedeni tedavi etmez." Despite + V-ing yapısı kullanılır.',
        stepByStep: '1️⃣ Cümledeki iki bilgiyi belirle:\n   • "Geçici ağrı rahatlaması sağlıyor"\n   • "Altta yatan nedeni tedavi ETMİYOR"\n'
            '2️⃣ Bu iki bilgi arasında ZITLIK var: bir şeyi yapıyor AMA diğerini yapmıyor.\n'
            '3️⃣ Zıtlık + V-ing yapısı = "Despite + V-ing"\n'
            '4️⃣ "Despite providing..." = "Sağlamasına rağmen..." ✅\n'
            '5️⃣ "Instead of" = yerine, "Because of" = yüzünden → zıtlık değil ❌\n'
            '6️⃣ Sonuç: E şıkkı doğrudur.',
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════
  // 2. CLOZE TEST
  // ═══════════════════════════════════════════════════════
  QuestionType(
    id: 'cloze_test',
    title: 'Cloze Test',
    subtitle: 'Soru 21-30 • 2 Paragraf × 5 Soru',
    icon: '📋',
    questionCount: 10,
    description:
        'Cloze test bölümünde iki ayrı paragraf verilir ve her paragrafta 5 boşluk bulunur. '
        'Bu boşluklar hem gramer hem de kelime bilgisiyle doldurulmalıdır. '
        'Paragrafın genel bağlamını anlamak, boşlukları doğru doldurmak için kritik önemdedir.',
    detailedExplanation:
        'Cloze test, YÖKDİL\'de 21-30 arası soruları kapsar. İki ayrı sağlık konulu paragraf verilir ve her birinde 5 adet numaralanmış boşluk bulunur. Bu boşluklar farklı tipte olabilir:\n\n'
        '📌 BOŞLUK TİPLERİ:\n\n'
        '1. BAĞLAÇ BOŞLUKLARI (en kolay): Cümleler arası mantıksal ilişkiyi kuran bağlaçlar sorulur.\n'
        '   • Zıtlık: Although, However, Nevertheless, Despite\n'
        '   • Neden-Sonuç: Because, Since, Therefore, Consequently\n'
        '   • Ek Bilgi: Moreover, Furthermore, In addition, Additionally\n'
        '   • Geçiş: Unfortunately, Interestingly, In fact, On the other hand\n\n'
        '2. FİİL BOŞLUKLARI: Hem tense (zaman) hem de anlam uyumu gerekir.\n'
        '   • Paragrafın genel zamanına bakın (çoğunlukla Present Simple veya Past Simple)\n'
        '   • Kelime anlamı olarak paragrafın konusuyla uyumlu olmalı\n\n'
        '3. EDAT BOŞLUKLARI: Kalıplaşmış yapılar sorulur.\n'
        '   • "characterized BY", "associated WITH", "result FROM", "lead TO"\n'
        '   • Bu kalıpları bilmek kesin puan demektir!\n\n'
        '4. ZAMİR BOŞLUKLARI: Cümlede bir önceki ismi işaret eden zamirler.\n'
        '   • "this, these, it, they, which, who"\n'
        '   • Antecedent\'i (önceki referansı) bulmak kritiktir\n\n'
        '5. KELİME BOŞLUKLARI: Paragrafın anlamına en uygun isim, sıfat veya zarf.\n\n'
        '⚡ PUANLAMA STRATEJİSİ:\n'
        'Cloze test\'te 10 soru vardır ve her soru 1.25 puan eder. Bağlaç boşlukları genellikle en kolay olanlardır — bunları kesinlikle doğru yapmalısınız. Edat kalıplarını ezberlerseniz, bu bölümden 8-10 net rahatlıkla alabilirsiniz.',
    strategies: [
      'ALTIN KURAL: Önce paragrafı boşlukları ATLAYARAK tamamen okuyun. Genel konuyu ve akışı kavrayın — ne hakkında yazılmış? Hastalık mı? Tedavi mi? Araştırma mı?',
      'Her boşluk için hem ÖNCEKİ hem de SONRAKİ cümleye bakın. Boşluk bir köprüdür — iki tarafını bilmeden köprüyü kuramazsınız.',
      'Gramer boşluklarında cümle yapısını analiz edin: Özne nerede? Yüklem nerede? Cümle aktif mi, pasif mi? Zaman ne?',
      'Kelime boşluklarında paragrafın genel temasına uygun kelimeyi seçin. Şıklardaki tüm kelimelerin Türkçe anlamını bilmeseniz bile, paragrafın bağlamından doğru olanı seçebilirsiniz.',
      'Bağlaç boşluklarında iki cümle arasındaki ANLAM İLİŞKİSİNİ belirleyin: Zıtlık mı? Ek bilgi mi? Sonuç mu? Geçiş mi?',
      'Tüm boşlukları doldurduktan sonra paragrafı BAŞTAN SONA tekrar okuyarak kontrol edin — anlam akıcı mı? Gramer uyumlu mu?',
      'Edat boşluklarında kalıplaşmış yapıları hatırlayın — "be composed OF", "depend ON", "suffer FROM", "respond TO" gibi yapılar sınavda çok çıkar.',
      'Zamir boşluklarında bir önceki cümledeki REFERANSI bulun. "This approach" → hangi yaklaşım? "These findings" → hangi bulgular?',
    ],
    tips: [
      '💡 Sağlık paragraflarında sık tekrarlanan kalıplar: "It is widely known/accepted/believed that...", "Research suggests/indicates that...", "Studies have shown that..."',
      '💡 Bağlaç boşlukları genellikle paragrafın EN KOLAY sorusudur — bunları kesinlikle doğru yapın!',
      '💡 Zamir boşluklarında antecedent\'i (önceki referansı) bulmak kritiktir: "it" → tekil, "they" → çoğul, "this" → kavram/fikir',
      '💡 Article boşlukları: ilk kez bahsedilen → a/an, tekrar bahsedilen/bilinen → the, genel kavramlar → Ø (article yok)',
      '💡 Edat boşlukları kesin puan kaynağıdır — "characterized BY, associated WITH, result FROM, lead TO, contribute TO" ezberleyin!',
      '💡 Fiil boşluklarında paragrafın genel zamanını takip edin. Çoğu bilimsel paragraf Present Simple kullanır.',
      '💡 "However" → zıtlık (ama), "Moreover/Furthermore" → ek bilgi (ayrıca), "Therefore/Thus/Consequently" → sonuç (bu nedenle), "Unfortunately" → olumsuz geçiş (maalesef)',
    ],
    commonMistakes: [
      '❌ Paragrafı okumadan direkt boşluklara atlamak — bağlamı bilmeden doğru cevabı bulamazsınız!',
      '❌ Bağlaç boşluklarında sadece Türkçe çeviriye güvenmek — İngilizce\'deki yapı farkını görmezden gelmeyin.',
      '❌ Edat kalıplarını bilmemek — "suffer FROM" yerine "suffer WITH" yazmak sık yapılan hatadır.',
      '❌ Zamir referanslarını yanlış bulmak — "they" kimin yerine geçiyor dikkatli bakın.',
    ],
    keyPhrases: [
      'be characterized by — ile karakterize edilmek',
      'be composed of — den oluşmak',
      'be associated with — ile ilişkili olmak',
      'result from — den kaynaklanmak',
      'result in / lead to — e yol açmak',
      'respond to — e yanıt vermek',
      'suffer from — den muzdarip olmak',
      'depend on — e bağlı olmak',
      'contribute to — e katkıda bulunmak',
      'account for — oluşturmak / açıklamak',
    ],
    examples: [
      ExampleQuestion(
        passage: 'Asthma is a common long-term inflammatory disease of the airways of the lungs. It is characterized '
            '(1)---- variable and recurring symptoms, reversible airflow obstruction, and bronchospasm. '
            'Symptoms include episodes of wheezing, coughing, chest tightness, and shortness of breath. '
            'These episodes may occur a few times a day or a few times per week. (2)---- the exact cause of '
            'asthma remains unknown, it is believed to be a combination of genetic and environmental factors.',
        question: '(1) boşluğa ne gelmelidir?',
        options: ['A) by', 'B) with', 'C) from', 'D) in', 'E) to'],
        correctIndex: 0,
        explanation: '"Be characterized BY" kalıplaşmış ve tıp İngilizcesinde en çok kullanılan edatlı fiil yapılarından biridir.',
        stepByStep: '1️⃣ "It is characterized ---- variable and recurring symptoms" → kalıplaşmış yapı sorusu.\n'
            '2️⃣ "Be characterized" fiilinin hangi edatla kullanıldığını hatırla.\n'
            '3️⃣ KURAL: "be characterized BY something" = bir şey ile karakterize edilmek.\n'
            '4️⃣ Cevap: "by" ✅\n'
            '5️⃣ ⚠️ Bu tip edat kalıplarını ezberlemek cloze test\'te kesin puan demektir!',
      ),
      ExampleQuestion(
        passage: 'Asthma is a common long-term inflammatory disease of the airways of the lungs. It is characterized '
            '(1)---- variable and recurring symptoms, reversible airflow obstruction, and bronchospasm. '
            'Symptoms include episodes of wheezing, coughing, chest tightness, and shortness of breath. '
            'These episodes may occur a few times a day or a few times per week. (2)---- the exact cause of '
            'asthma remains unknown, it is believed to be a combination of genetic and environmental factors.',
        question: '(2) boşluğa ne gelmelidir?',
        options: ['A) Because', 'B) Although', 'C) In case', 'D) Unless', 'E) As long as'],
        correctIndex: 1,
        explanation: '"Astımın kesin nedeni BİLİNMEMESİNE RAĞMEN, genetik ve çevresel faktörlerin birleşimi olduğuna İNANILMAKTADIR." Açık bir zıtlık.',
        stepByStep: '1️⃣ İki cümleyi oku:\n   • "astımın kesin nedeni bilinmiyor"\n   • "genetik ve çevresel faktörlerin birleşimi olduğuna inanılıyor"\n'
            '2️⃣ Mantıksal ilişki: "Bilinmiyor AMA inanılıyor" → ZITLIK\n'
            '3️⃣ Zıtlık bağlaçları: Although, Even though, Despite, However\n'
            '4️⃣ Şıklarda "Although" var → ✅\n'
            '5️⃣ "Because" → neden (YANLIŞ — zıtlık var), "Unless" → koşul (YANLIŞ)\n'
            '6️⃣ Sonuç: B şıkkı doğrudur.',
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════
  // 3. CÜMLE TAMAMLAMA
  // ═══════════════════════════════════════════════════════
  QuestionType(
    id: 'sentence_completion',
    title: 'Cümle Tamamlama',
    subtitle: 'Soru 31-41 • 11 Soru',
    icon: '✏️',
    questionCount: 11,
    description:
        'Yarım bırakılmış bir cümlenin anlamlı ve dilbilgisi kurallarına uygun şekilde tamamlanması istenir. '
        'Bu bölümde bağlaç bilgisi ve zaman uyumu (tense harmony) çok önemlidir.',
    detailedExplanation:
        'Cümle tamamlama soruları, YÖKDİL\'in 31-41 arası sorularını kapsar (toplam 11 soru). Size yarım bir cümle verilir ve bu cümleyi en uygun şekilde tamamlayan şıkkı seçmeniz istenir.\n\n'
        '📌 SORU FORMATLARI:\n\n'
        '1. BAĞLAÇLI YARIM CÜMLE:\n'
        '   • "Although the patient responded well to the initial therapy, ----"\n'
        '   • "----, the physician decided to change the course of treatment."\n'
        '   • Burada bağlacın türüne göre anlam ilişkisini kurmanız gerekir.\n\n'
        '2. CONDITIONAL (KOŞUL) YAPISI:\n'
        '   • "If the clinical trial had been conducted with a larger sample size, ----"\n'
        '   • Type 1, 2 veya 3 if clause yapısını tanımak ve tense uyumunu sağlamak gerekir.\n\n'
        '3. BAĞLAÇSIZ YARIM CÜMLE:\n'
        '   • "The effectiveness of the new drug ----"\n'
        '   • Burada cümlenin anlamını ve gramer yapısını tamamlamanız gerekir.\n\n'
        '📌 ÇÖZÜM YAKLAŞIMI:\n\n'
        '• Verilen kısımdaki BAĞLACI belirleyin (varsa).\n'
        '• Verilen kısımdaki TENSE\'i (zamanı) belirleyin.\n'
        '• Verilen kısımdaki ANLAMI kavrayın — olumlu mu, olumsuz mu?\n'
        '• Şıklardaki her cümleyi verilen kısımla birleştirerek okuyun.\n'
        '• Hem ANLAM hem de GRAMER uyumlu olan şıkkı seçin.\n\n'
        '⚡ ÖNEMLİ: Bu bölümde en sık yapılan hata, sadece anlama bakıp grameri ihmal etmektir veya tam tersini yapmaktır. İKİSİ BİRDEN uymalıdır!',
    strategies: [
      'Verilen kısımdaki BAĞLACI belirleyin ve anlam ilişkisini kurun: "Although" → zıtlık bekleniyor, "Because/Since" → sonuç bekleniyor, "If" → koşullu sonuç bekleniyor.',
      'TENSE uyumuna dikkat edin — verilen kısımdaki zaman yapısıyla uyumlu şıkkı seçin. Past Simple ile Future tense karışmaz!',
      'Özne-yüklem uyumunu kontrol edin: Tekil özne → tekil yüklem, çoğul özne → çoğul yüklem.',
      'Cümlenin mantıksal bütünlüğünü sorgulayın — şıkkı taktığınızda cümle hem anlamlı hem de gramer açısından doğru olmalı.',
      'Eğer "If clause" varsa, Conditional Type\'ı belirleyin:\n   • Type 1: If + Present Simple → will + V1\n   • Type 2: If + Past Simple → would + V1\n   • Type 3: If + Past Perfect → would have + V3',
      'Noktalama işaretlerine dikkat edin — virgül, noktalı virgül cümlenin yapısı hakkında ipucu verir.',
      '"Before/After/By the time/Until" gibi zaman bağlaçlarında hangi eylemin ÖNCE olduğunu belirleyin.',
      'Eliminasyon tekniği: Önce GRAMER\'i kontrol edin ve tense uyumsuz şıkları eleyin, sonra ANLAM\'a bakın.',
    ],
    tips: [
      '💡 "If + Past Simple → would + V1" (Type 2 Conditional) — "Eğer ... olsaydı, ... olurdu"',
      '💡 "If + Past Perfect → would have + V3" (Type 3 Conditional) — "Eğer ... olmuş olsaydı, ... olmuş olurdu"',
      '💡 "By the time + Past Simple → Past Perfect" kalıbı sık çıkar: "By the time he arrived, the surgery had already started."',
      '💡 "Not only... but also..." → devrik yapı (inversion) gerekebilir: "Not only did the drug reduce pain, but it also improved mobility."',
      '💡 Sağlık alanında sık çıkan Type 3 If Clause: "Had the diagnosis been made earlier, the patient would have survived." (Teşhis daha erken konulsaydı, hasta hayatta kalırdı.)',
      '💡 "So ... that" yapısı: "The infection was so severe that the patient had to be hospitalized." (Enfeksiyon o kadar şiddetliydi ki hasta hastaneye yatırılmak zorunda kaldı.)',
      '💡 Yarım cümle bir SONUÇ ifade ediyorsa, şıklarda NEDEN aramalısınız (veya tam tersi).',
    ],
    commonMistakes: [
      '❌ Type 2 ve Type 3 Conditional\'ı karıştırmak: "If he had (Past Perfect) → would have V3" / "If he had (Past Simple) → would V1" — "had" kelimesinin tense\'ini doğru belirleyin!',
      '❌ Sadece anlama bakıp tense uyumunu ihmal etmek — her iki şart da sağlanmalı.',
      '❌ Devrik yapılarda (Inversion) normal cümle düzeni beklemek: "Had the treatment been..." = "If the treatment had been..."',
      '❌ "Since" kelimesinin iki anlamını karıştırmak: "since" = 1) -den beri (zaman), 2) çünkü (neden).',
    ],
    keyPhrases: [],
    examples: [
      ExampleQuestion(
        question: 'If the clinical trial had been conducted with a larger sample size, ----.',
        options: ['A) the results will be more reliable', 'B) the results would have been more reliable', 'C) the results are being more reliable', 'D) the results were more reliable', 'E) the results could be more reliable'],
        correctIndex: 1,
        explanation: 'Type 3 If Clause: If + Past Perfect → would have + V3. "Had been conducted" olduğu için "would have been" gelmelidir.',
        stepByStep: '1️⃣ "If" ile başlayan bir koşul cümlesi var.\n'
            '2️⃣ "had been conducted" → Past Perfect Passive → Type 3 If Clause!\n'
            '3️⃣ Type 3 kuralı: If + Past Perfect → would have + V3\n'
            '4️⃣ Şıkları kontrol et:\n   A) will be → Type 1 ❌\n   B) would have been → Type 3 ✅\n   C) are being → Present Continuous ❌\n   D) were → Past Simple ❌\n   E) could be → Type 2 ❌\n'
            '5️⃣ Sonuç: B şıkkı doğrudur.',
      ),
      ExampleQuestion(
        question: '---- , the physician decided to change the course of treatment immediately.',
        options: ['A) Although the patient responded well to the initial therapy', 'B) When the test results revealed a severe allergic reaction', 'C) As long as the symptoms continue to improve', 'D) Unless the patient shows signs of recovery', 'E) Before the laboratory confirmed the diagnosis'],
        correctIndex: 1,
        explanation: 'Ana cümle Past Simple ("decided") olduğu için yan cümle de Past olmalı. B şıkkı "revealed" (Past Simple) ile uyumlu ve mantıksal olarak sebep-sonuç ilişkisi kuruyor.',
        stepByStep: '1️⃣ Ana cümle: "the physician decided..." → Past Simple\n'
            '2️⃣ Yan cümle de Past tense olmalı.\n'
            '3️⃣ Şıkları tense açısından kontrol et:\n   A) "responded" → Past Simple ✅\n   B) "revealed" → Past Simple ✅\n   C) "continue" → Present Simple ❌\n   D) "shows" → Present Simple ❌\n   E) "confirmed" → Past Simple ✅\n'
            '4️⃣ Tense uyumlu şıklar: A, B, E — şimdi ANLAMI kontrol et.\n'
            '5️⃣ A: "İyi yanıt vermesine rağmen... tedaviyi değiştirdi" → mantıklı AMA "although" zıtlık var, tedaviyi neden değiştirsin?\n'
            '6️⃣ B: "Test sonuçları şiddetli alerjik reaksiyon gösterince → tedaviyi hemen değiştirdi" → mükemmel neden-sonuç ✅\n'
            '7️⃣ Sonuç: B şıkkı doğrudur.',
      ),
      ExampleQuestion(
        question: 'Since prolonged exposure to ultraviolet radiation is a major risk factor for skin cancer, ----.',
        options: ['A) many dermatologists recommend avoiding the sun during peak hours', 'B) the patients had already developed severe burns', 'C) it was not considered a significant health threat in the past', 'D) researchers are trying to prove that sunscreen is unnecessary', 'E) the prevalence of the disease has declined rapidly'],
        correctIndex: 0,
        explanation: '"Since" burada sebep anlamında: "UV radyasyonuna uzun süre maruz kalmak cilt kanseri için büyük risk olduğundan, birçok dermatolog güneşten kaçınmayı önerir."',
        stepByStep: '1️⃣ "Since" bağlacını tanımla → burada NEDEN anlamında ("çünkü / -den dolayı").\n'
            '2️⃣ Since → Neden veriyor → Ana cümlede mantıksal SONUÇ bekleniyor.\n'
            '3️⃣ Neden: "UV maruziyeti cilt kanseri için büyük risk faktörü"\n'
            '4️⃣ Beklenen sonuç: "Bu yüzden güneşten korunma önerisi" gibi bir şey.\n'
            '5️⃣ A: "Dermatologlar güneşten kaçınmayı önerir" → mantıklı sonuç ✅\n'
            '6️⃣ B: Tense uyumsuz (Past Perfect + Present Simple karışmaz) ❌\n'
            '7️⃣ E: "Hastalık hızla azaldı" → risk faktörü olmasının sonucu azalma olamaz ❌\n'
            '8️⃣ Sonuç: A şıkkı doğrudur.',
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════
  // 4. ÇEVİRİ
  // ═══════════════════════════════════════════════════════
  QuestionType(
    id: 'translation',
    title: 'Çeviri',
    subtitle: 'Soru 42-53 • 6 TR→EN + 6 EN→TR',
    icon: '🔄',
    questionCount: 12,
    description:
        'YÖKDİL\'in en karakteristik bölümü! 12 çeviri sorusu bulunur. '
        '6 soru Türkçe→İngilizce, 6 soru İngilizce→Türkçe yönündedir. '
        'Sağlık terminolojisine hâkim olmak bu bölümde büyük avantaj sağlar.',
    detailedExplanation:
        'Çeviri bölümü, YÖKDİL sınavının EN ÖNEMLİ ve EN PUAN TOPLANILACAK bölümüdür. YDS\'den farklı olarak YÖKDİL\'de 12 çeviri sorusu vardır (YDS\'de 6 tane). Bu nedenle çeviri bölümü toplam puanın %15\'ini oluşturur.\n\n'
        '📌 BÖLÜM YAPISI:\n'
        '• Soru 42-47: Türkçe → İngilizce çeviri (6 soru)\n'
        '• Soru 48-53: İngilizce → Türkçe çeviri (6 soru)\n\n'
        '📌 TÜRKÇE → İNGİLİZCE ÇEVİRİ STRATEJİSİ:\n\n'
        '1. Türkçe cümlenin ANA FİİLİNİ belirleyin.\n'
        '2. Fiilin ZAMANINI belirleyin (geniş zaman, geçmiş zaman, şimdiki zaman vb.).\n'
        '3. Cümlenin AKTİF mi PASİF mi olduğunu kontrol edin:\n'
        '   • "tedavi edilmektedir" → passive → "is being treated"\n'
        '   • "tedavi ediyor" → active → "is treating"\n'
        '4. Anahtar tıp terimlerini İngilizce\'ye çevirin.\n'
        '5. İngilizce cümle yapısını oluşturun: Subject + Verb + Object (SVO düzeni).\n\n'
        '📌 İNGİLİZCE → TÜRKÇE ÇEVİRİ STRATEJİSİ:\n\n'
        '1. İngilizce cümlede ANA FİİLİ ve yardımcı fiilleri belirleyin.\n'
        '2. Relative clause\'lar var mı kontrol edin ("which", "that", "who" ile başlayan yapılar).\n'
        '3. Cümlenin tam yapısını çözümleyin — uzun cümleleri virgüllerden bölün.\n'
        '4. Şıklardaki Türkçe cümleleri orijinal İngilizce ile karşılaştırın.\n'
        '5. En doğru ve eksiksiz çeviriyi seçin.\n\n'
        '⚡ PUAN TAKTİĞİ:\n'
        'Çeviri soruları sınavın en kolay puan toplanan bölümüdür çünkü eliminasyon yapmak kolaydır. Bir kelimeyi bile yanlış çeviren şık elenebilir. Örneğin, "significantly" (önemli ölçüde) kelimesini "biraz" olarak çeviren şık direkt elenmelidir.',
    strategies: [
      'Cümlenin ANA FİİLİNİ ve ZAMANINI belirleyin. Bu en kritik adımdır — fiil ve zamanı yanlış belirlerseniz doğru şıkkı bulamazsınız.',
      'ANAHTAR KELİMELERİ (özellikle sağlık terimlerini) doğru eşleştirin. Bir kelime bile yanlış çevrildiyse o şık elenmelidir.',
      'Cümle yapısını analiz edin: AKTİF mi ("The doctor treats..."), PASİF mi ("The patient is treated...")?',
      'Uzun cümleleri PARÇALARA AYIRARAK çevirin — virgüllerden ve bağlaçlardan kesin.',
      'Şıklar arasında ELİMİNASYON yapın: Anahtar bir kelimeyi yanlış çeviren veya tense\'i yanlış olan şıkları eleyin.',
      'Türkçe→İngilizce\'de İngilizce cümle yapısına dikkat edin: SVO (Subject-Verb-Object) düzeni! Türkçe\'deki SOV düzenini aynen kopyalamayın.',
      'İngilizce→Türkçe\'de şıklardaki NÜANSLARA dikkat edin: "reduce" = azaltmak ≠ "prevent" = önlemek. Bu farkı gören şıkkı seçin.',
      'Passive yapıları doğru çevirin: "is being tested" = "test edilmektedir" (şu an), "has been tested" = "test edilmiştir" (tamamlanmış), "was tested" = "test edildi" (geçmiş).',
    ],
    tips: [
      '💡 Sağlık çevirilerinde Latince/Yunanca kökenli terimleri tanıyın — çoğu İngilizce ve Türkçe\'de benzerdir: "diagnosis/teşhis", "therapy/terapi", "chronic/kronik"',
      '💡 Türkçe edilgen yapı → İngilizce passive: "tedavi edilmektedir" = "is being treated"',
      '💡 "...olduğu düşünülmektedir" = "It is thought/considered/believed that..."',
      '💡 "-den kaynaklanmak" = "to result from / to stem from / to arise from"',
      '💡 "...ile ilişkilendirilmek" = "to be associated with / linked to / connected to"',
      '💡 "önemli ölçüde" = "significantly / considerably / substantially" (NOT "importantly")',
      '💡 "birçok" = "many / numerous / a number of" ("much" sayılamayan isimler için kullanılır!)',
      '💡 "yol açmak" = "lead to / give rise to / result in / cause" — hepsi eş anlamlıdır',
    ],
    commonMistakes: [
      '❌ "Research" kelimesini çoğul kullanmak: "Researches show" YANLIŞ → "Research shows" (uncountable)',
      '❌ "Information" kelimesini çoğul kullanmak: "Many informations" YANLIŞ → "Much information"',
      '❌ Passive yapıda "be" fiilini unutmak: "was diagnose" YANLIŞ → "was diagnosed"',
      '❌ "Prevent" ile "reduce" karıştırmak: "önlemek" ≠ "azaltmak"',
      '❌ "Since" ile "from" karıştırmak: "Since 2010" (zamandan beri) vs "from 2010 to 2020" (bir noktadan diğerine)',
    ],
    keyPhrases: [
      'olduğu düşünülmektedir — it is thought/believed/considered that',
      'ile ilişkilendirilmektedir — is associated with / linked to',
      'den kaynaklanmaktadır — results from / stems from / arises from',
      'e yol açmaktadır — leads to / gives rise to / results in',
      'önemli ölçüde — significantly / considerably / substantially',
      'son yıllarda — in recent years / in recent decades',
      'tedavi edilmektedir — is being treated / is treated',
      'başlıca nedenlerinden biri — one of the primary/main causes',
      'artış göstermiştir — has shown an increase / has increased',
      'kabul edilmektedir — is accepted / is considered / is regarded as',
    ],
    examples: [
      ExampleQuestion(
        question: 'Türkçe→İngilizce: "Son araştırmalar, düzenli egzersizin kalp hastalığı riskini önemli ölçüde azalttığını göstermektedir."',
        options: [
          'A) Recent research shows that regular exercise significantly reduces the risk of heart disease.',
          'B) Recent research has been shown that regular exercise reduces the risk of heart disease.',
          'C) The recent researches show regular exercise to reduce risks of heart disease significantly.',
          'D) According to recent research, regular exercises have been reducing heart disease risks.',
          'E) It was shown by recent research that exercise regularly reduces heart diseases significantly.',
        ],
        correctIndex: 0,
        explanation: 'A şıkkı kelimesi kelimesine en doğru çeviridir. B\'de "has been shown" passive hatalı, C\'de "researches" yanlış (research uncountable).',
        stepByStep: '1️⃣ Türkçe cümlenin ana fiilini bul: "göstermektedir" → shows (Present Simple)\n'
            '2️⃣ Anahtar terimleri çevir:\n   • Son araştırmalar → Recent research (tekil!)\n   • düzenli egzersiz → regular exercise\n   • kalp hastalığı riski → the risk of heart disease\n   • önemli ölçüde → significantly\n   • azaltmak → reduce\n'
            '3️⃣ C şıkkını ele: "researches" → research uncountable, çoğul yapılamaz → ❌\n'
            '4️⃣ B şıkkını ele: "has been shown" passive → ama Türkçe\'de active yapı var → ❌\n'
            '5️⃣ A şıkkı: "Recent research shows that..." → hem yapı hem terimler doğru ✅\n'
            '6️⃣ Sonuç: A şıkkı doğrudur.',
      ),
      ExampleQuestion(
        question: 'İngilizce→Türkçe: "Chronic kidney disease, which often goes undiagnosed in its early stages, affects approximately 10% of the global population."',
        options: [
          'A) Kronik böbrek hastalığı küresel nüfusun yaklaşık %10\'unu etkiler ve erken evrelerinde sıklıkla teşhis edilmez.',
          'B) Erken evrelerinde genellikle teşhis edilemeyen kronik böbrek hastalığı, dünya nüfusunun yaklaşık %10\'unu etkilemektedir.',
          'C) Dünya nüfusunun %10\'unu etkileyen kronik böbrek hastalığı erken evrelerde teşhis edilememektedir.',
          'D) Kronik böbrek hastalığının erken evreleri teşhis edilemediğinden dünya nüfusunun %10\'u etkilenmektedir.',
          'E) Yaklaşık %10 oranında küresel nüfusu etkileyen kronik böbrek hastalığı erken tanısı zordur.',
        ],
        correctIndex: 1,
        explanation: 'B şıkkı orijinal cümlenin yapısını (non-defining relative clause ve ana cümle) en doğru yansıtır.',
        stepByStep: '1️⃣ İngilizce cümleyi parçalara ayır:\n   • Ana cümle: "Chronic kidney disease affects approximately 10% of the global population"\n   • Relative clause: "which often goes undiagnosed in its early stages" (ek bilgi)\n'
            '2️⃣ "which" clause → non-defining relative clause (virgüller arasında, ek bilgi veriyor)\n'
            '3️⃣ Bu yapı Türkçe\'de sıfat cümlesi olarak çevrilir: "...teşhis edilemeyen kronik böbrek hastalığı"\n'
            '4️⃣ A şıkkı: "... ve ..." ile iki ayrı cümle yapmış → orijinalden farklı yapı ❌\n'
            '5️⃣ D şıkkı: "-den dolayı" neden-sonuç ilişkisi kurmuş → orijinalde bu yok ❌\n'
            '6️⃣ B şıkkı: Hem yapı hem anlam orijinali doğru yansıtıyor ✅\n'
            '7️⃣ Sonuç: B şıkkı doğrudur.',
      ),
      ExampleQuestion(
        question: 'Türkçe→İngilizce: "Obezite, dünya çapında tip 2 diyabetin başlıca nedenlerinden biri olarak kabul edilmektedir."',
        options: [
          'A) Obesity is considered to be one of the primary causes of type 2 diabetes worldwide.',
          'B) Obesity has considered as the main cause of type 2 diabetes in the world.',
          'C) It is considered that obesity causes type 2 diabetes primarily worldwide.',
          'D) Obesity considered to be the most important cause of worldwide type 2 diabetes.',
          'E) The primary cause of type 2 diabetes worldwide is considered to be obesity.',
        ],
        correctIndex: 0,
        explanation: '"Kabul edilmektedir" = "is considered to be", "başlıca nedenlerinden biri" = "one of the primary causes". A şıkkı doğru yapı ve anlama sahiptir.',
        stepByStep: '1️⃣ Anahtar yapıları çevir:\n   • "kabul edilmektedir" → passive → "is considered to be"\n   • "başlıca nedenlerinden biri" → "one of the primary causes"\n   • "dünya çapında" → "worldwide"\n'
            '2️⃣ B şıkkı: "has considered" → yardımcı fiil "be" eksik, passive yapı hatalı ❌\n'
            '3️⃣ D şıkkı: "Obesity considered" → "is" eksik, passive yapı hatalı ❌\n'
            '4️⃣ A şıkkı: "is considered to be one of the primary causes" → mükemmel ✅\n'
            '5️⃣ Sonuç: A şıkkı doğrudur.',
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════
  // 5. ANLAM BÜTÜNLÜĞÜNÜ BOZAN CÜMLE
  // ═══════════════════════════════════════════════════════
  QuestionType(
    id: 'odd_sentence',
    title: 'Anlam Bütünlüğünü Bozan Cümle',
    subtitle: 'Soru 54-59 • 6 Soru',
    icon: '🔍',
    questionCount: 6,
    description:
        'Bir paragraf içinde verilen 5 cümleden anlam bütünlüğünü bozan '
        '(paragrafın akışına uymayan) cümleyi bulmanız istenir.',
    detailedExplanation:
        'Bu bölümde size 5 numaralanmış cümle (I-V) verilir ve bunlardan birinin paragrafın anlam bütünlüğünü bozduğunu belirlersiniz.\n\n'
        '📌 BOZUCU CÜMLENİN ÖZELLİKLERİ:\n\n'
        '1. KONU DEĞİŞİKLİĞİ: Paragrafın ana konusundan farklı bir konuya geçen cümle bozucudur.\n'
        '   • Örn: Alzheimer hakkında bir paragrafta aniden beyin tümörlerinden bahseden cümle.\n\n'
        '2. ODAK KAYMASI: Aynı genel konuda kalsa bile, paragrafın özel odağından sapan cümle.\n'
        '   • Örn: İlacın yan etkilerinden bahseden paragrafta, ilacın keşif tarihinden bahseden cümle.\n\n'
        '3. ZITLIK/BAĞLANTI KOPUKLUĞU: Önceki ve sonraki cümlelerle mantıksal bağlantı kuramayan cümle.\n\n'
        '📌 İSTATİSTİKSEL İPUÇLARI:\n\n'
        '• Bozucu cümle genellikle 2., 3. veya 4. cümledir (ortadaki cümleler).\n'
        '• İlk cümle (I) nadiren bozucudur çünkü genellikle konu giriş cümlesidir.\n'
        '• Son cümle (V) de nadiren bozucudur çünkü genellikle sonuç/özet cümlesidir.\n'
        '• Bu istatistik kesin kural değildir ama tahmin yürütmeniz gerektiğinde yardımcıdır.\n\n'
        '⚡ ÇÖZÜM YÖNTEMİ:\n'
        '1. Her cümleyi ayrı ayrı okuyun ve paragrafın ANA KONUSUNU belirleyin.\n'
        '2. Genellikle 4 cümle aynı konuyu farklı açılardan anlatır.\n'
        '3. 1 cümle farklı bir konuya geçer veya paragrafın odağından sapar.\n'
        '4. O cümleyi çıkardığınızda paragraf akıcı ve anlamlı bir şekilde devam etmelidir.',
    strategies: [
      'Paragrafın ANA FİKRİNİ belirleyin — tüm cümlelerin ortak paydasını bulun. Ne hakkında? Bir hastalık mı? Bir tedavi mi? Bir araştırma mı?',
      'Her cümlenin paragrafın genel akışına katkısını DEĞERLENDİRİN — her cümle için sorun: "Bu cümle olmasa paragraf eksik kalır mı?"',
      'KONU DEĞİŞİKLİĞİ yapan cümleyi arayın — farklı bir hastalıktan, farklı bir organdan veya farklı bir tedaviden bahseden cümle genellikle bozucudur.',
      'Zamirler ve bağlaçlar üzerinden cümleler arası BAĞLANTILAR takip edin: "This method", "These findings", "However", "Moreover" gibi ifadeler cümleleri birbirine bağlar.',
      'DETAY veren cümle ile KONUYU DEĞİŞTİREN cümleyi ayırt edin — detay konuyu destekler, bozucu cümle konuyu değiştirir.',
      '"However, Moreover, Furthermore, In addition, On the other hand" gibi transition kelimelerinin işaret ettiği yönü takip edin.',
      'Şüpheli cümleyi çıkarıp paragrafı tekrar okuyun — paragraf akıcı ve anlamlı devam ediyorsa o cümle bozucudur.',
      'İlk ve son cümleleri genellikle eleyerek ortadaki 3 cümleye odaklanın.',
    ],
    tips: [
      '💡 Genellikle 5 cümleden 4\'ü aynı konuyu farklı açılardan anlatır, 1\'i farklı konuya geçer.',
      '💡 İlk (I) ve son (V) cümleler genellikle bozucu cümle OLMAZ.',
      '💡 Bozucu cümle genellikle paragrafın ortasında (II, III veya IV) olur.',
      '💡 Sağlık metinlerinde: Tedaviden bahsederken aniden tanıya geçen, ya da belirtilerden bahsederken aniden epidemiyolojiye geçen cümle bozucu olabilir.',
      '💡 Bozucu cümleyi bulduktan sonra TEYİT EDİN: O cümleyi çıkarıp paragrafı okuyun — anlam bütünlüğü sağlanıyor mu?',
      '💡 Benzer terimler sizi yanıltmasın: "beyin" kelimesi geçen her cümle aynı konuda değildir — Alzheimer ile beyin tümörü farklı konulardır!',
    ],
    commonMistakes: [
      '❌ Detay veren cümleyi bozucu sanmak — bir cümle farklı bir açı sunsa bile konuyu destekliyorsa bozucu DEĞİLDİR.',
      '❌ Sadece anahtar kelimelere bakıp karar vermek — cümlenin tam anlamını kavramak gerekir.',
      '❌ İlk cümleyi otomatik olarak elemek — nadir de olsa I. cümle bozucu olabilir.',
      '❌ Bozucu cümleyi bulduktan sonra teyit etmemek — çıkarıp paragrafı tekrar okuyun.',
    ],
    keyPhrases: [],
    examples: [
      ExampleQuestion(
        question: '(I) Alzheimer\'s disease is the most common form of dementia, affecting millions worldwide. '
            '(II) The disease progressively destroys memory and cognitive functions. '
            '(III) Recent advances in MRI technology have enabled more accurate imaging of brain tumors. '
            '(IV) Researchers are currently exploring various drug therapies to slow the progression of the disease. '
            '(V) Early diagnosis of Alzheimer\'s can significantly improve the quality of life for patients and their families.',
        options: ['A) I', 'B) II', 'C) III', 'D) IV', 'E) V'],
        correctIndex: 2,
        explanation: 'Paragraf Alzheimer hakkındadır. III. cümle ise beyin tümörlerinin MR görüntülemesinden bahsetmektedir — bu farklı bir konudur.',
        stepByStep: '1️⃣ Her cümlenin konusunu belirle:\n   I → Alzheimer nedir, kaç kişiyi etkiler\n   II → Hafıza ve bilişsel fonksiyonları yıkar\n   III → MR teknolojisi ve beyin TÜMÖRLERİ\n   IV → İlerlemeyi yavaşlatacak ilaçlar araştırılıyor\n   V → Erken tanı yaşam kalitesini artırır\n'
            '2️⃣ Ortak konu: ALZHEIMER hastalığı.\n'
            '3️⃣ III. cümle: "brain TUMORS" → beyin tümörleri Alzheimer değil! → KONU DEĞİŞİKLİĞİ\n'
            '4️⃣ Teyit: III\'ü çıkar ve paragrafı oku → I, II, IV, V akıcı bir şekilde devam ediyor ✅\n'
            '5️⃣ Sonuç: C şıkkı (III) doğrudur.',
      ),
      ExampleQuestion(
        question: '(I) Sleep apnea is a serious sleep disorder in which breathing repeatedly stops and starts. '
            '(II) If left untreated, it can lead to high blood pressure, heart problems, and even stroke. '
            '(III) Insomnia, on the other hand, is characterized by difficulty falling asleep or staying asleep. '
            '(IV) The most common treatment for sleep apnea involves using a CPAP machine. '
            '(V) This device delivers air pressure through a mask while you sleep to keep your airway open.',
        options: ['A) I', 'B) II', 'C) III', 'D) IV', 'E) V'],
        correctIndex: 2,
        explanation: 'Paragrafın ana konusu Uyku Apnesi. III. cümle "Insomnia" (Uykusuzluk) hastalığından bahsederek konu bütünlüğünü bozmaktadır.',
        stepByStep: '1️⃣ Her cümlenin konusunu belirle:\n   I → Uyku apnesi nedir\n   II → Tedavi edilmezse ne olur\n   III → İNSOMNİA (uykusuzluk) nedir\n   IV → Uyku apnesinin tedavisi (CPAP)\n   V → CPAP cihazı nasıl çalışır\n'
            '2️⃣ Ortak konu: UYKU APNESİ.\n'
            '3️⃣ III. cümle: "Insomnia" → tamamen farklı bir uyku bozukluğu!\n'
            '4️⃣ "On the other hand" bağlacı karşılaştırma yapıyor ama paragrafın amacı karşılaştırma değil.\n'
            '5️⃣ III\'ü çıkar → I, II, IV, V mükemmel akış ✅\n'
            '6️⃣ Sonuç: C şıkkı (III) doğrudur.',
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════
  // 6. PARAGRAF TAMAMLAMA
  // ═══════════════════════════════════════════════════════
  QuestionType(
    id: 'paragraph_completion',
    title: 'Paragraf Tamamlama',
    subtitle: 'Soru 60-65 • 6 Soru',
    icon: '📖',
    questionCount: 6,
    description:
        'Bir paragrafta boş bırakılan yere en uygun cümleyi seçmeniz istenir. '
        'Bu soru tipi, paragrafın mantıksal akışını ve bağlamsal uyumu ölçer.',
    detailedExplanation:
        'Paragraf tamamlama soruları, YÖKDİL\'de 60-65 arası (6 soru) sorulur. Bir paragraf verilir ve içinde bir cümlenin yeri boş bırakılmıştır. Sizden bu boşluğa en uygun cümleyi seçmeniz istenir.\n\n'
        '📌 BOŞLUĞUN KONUMuna GÖRE STRATEJİ:\n\n'
        '1. BOŞLUK PARAGRAFIN BAŞINDA ise:\n'
        '   → Giriş cümlesi (Topic sentence) beklenir.\n'
        '   → Paragrafın genel konusunu tanıtan cümle olmalı.\n'
        '   → Sonraki cümlelerle uyumlu bir giriş yapmalı.\n\n'
        '2. BOŞLUK PARAGRAFIN ORTASINDA ise:\n'
        '   → Bağlayıcı/destekleyici cümle beklenir.\n'
        '   → Önceki cümleyle SONRAKİ cümle arasında köprü kurmalı.\n'
        '   → Transition kelimeler (However, Moreover, Therefore) ipucu verir.\n\n'
        '3. BOŞLUK PARAGRAFIN SONUNDA ise:\n'
        '   → Sonuç/Özet cümlesi beklenir.\n'
        '   → Paragrafın ana fikrini özetleyen veya bir sonuca varan cümle olmalı.\n'
        '   → "Therefore", "Thus", "In conclusion" gibi ifadeler içerebilir.\n\n'
        '📌 ÖNEMLİ İPUÇLARI:\n\n'
        '• Boşluğun HEM ÖNCESİNDEKİ hem de SONRASINDAKİ cümleyi dikkatlice okuyun.\n'
        '• Seçtiğiniz cümledeki zamirler (this, these, it, they) önceki cümledeki bir şeye referans veriyor olmalı.\n'
        '• Seçtiğiniz cümledeki bağlaç (However, Moreover, Therefore) önceki cümleyle doğru mantıksal ilişki kurmalı.\n'
        '• Şıkkı taktıktan sonra paragrafı baştan okuyun — akış doğal mı?',
    strategies: [
      'Boşluktan ÖNCEKİ cümlenin ne söylediğini tam olarak anlayın — bu cümle boşluğa gelecek cümlenin başlangıç noktasıdır.',
      'Boşluktan SONRAKİ cümlenin ne söylediğini tam olarak anlayın — bu cümle boşluğa gelecek cümlenin devamı olmalıdır.',
      'Boşluğa gelecek cümle, önceki ve sonraki cümleyle KÖPRÜ kurmalıdır — hem anlam hem de gramer açısından uyumlu olmalı.',
      'ZAMİRLERE dikkat edin: "this approach", "these findings", "it", "they" → neyi işaret ediyor? Önceki cümlede karşılığı var mı?',
      'BAĞLAÇLARA dikkat edin: "However" → zıtlık, "Moreover/Furthermore" → ek bilgi, "Therefore/Consequently" → sonuç, "For example/instance" → örnek.',
      'Seçtiğiniz cümleyle paragrafı BAŞTAN SONA tekrar okuyarak akışı kontrol edin — doğal ve akıcı mı?',
      'Eliminasyon yapın: Paragrafın KONUSUYLA İLGİSİZ şıkları hemen eleyin. Sonra ANLAM ve BAĞLANTI uyumu olmayanları eleyin.',
      'Boşluk paragrafın başındaysa → GENEL BİR GİRİŞ beklenir. Sonundaysa → SONUÇ/ÖZET beklenir.',
    ],
    tips: [
      '💡 Boşluk paragrafın başındaysa → topic sentence (giriş/konu cümlesi) olabilir.',
      '💡 Boşluk paragrafın sonundaysa → sonuç/özet cümlesi olabilir.',
      '💡 Boşluk paragrafın ortasındaysa → bağlayıcı/destekleyici cümle olabilir.',
      '💡 Sağlık paragraflarında: neden→sonuç, sorun→çözüm, genel bilgi→detay akışını takip edin.',
      '💡 "This" ile başlayan şıklar genellikle önceki cümlede bahsedilen bir kavrama referans verir.',
      '💡 Paragraftaki "However" kelimesinden sonra boşluk varsa → zıt bir bilgi beklenir.',
      '💡 Seçtiğiniz cümle paragrafın TONUNA da uygun olmalı — bilimsel mi, eleştirel mi, açıklayıcı mı?',
    ],
    commonMistakes: [
      '❌ Sadece boşluktan önceki cümleye bakıp sonraki cümleyi ihmal etmek — HER İKİ TARAFA da bakmalısınız.',
      '❌ Konuyla ilgili ama paragrafın akışına uymayan cümleyi seçmek — konu doğru olsa bile bağlantı uyumu şarttır.',
      '❌ Zamir referanslarını kontrol etmemek — "This" neyi işaret ediyor? Önceki cümlede karşılığı var mı?',
      '❌ Paragrafı seçtiğiniz cümleyle birlikte tekrar okumamak — taktıktan sonra mutlaka baştan okuyun.',
    ],
    keyPhrases: [],
    examples: [
      ExampleQuestion(
        passage: 'Vaccination is one of the most effective public health interventions in history. '
            '---- Since the introduction of widespread vaccination programs, diseases such as '
            'smallpox have been completely eradicated, and the incidence of many others has dramatically decreased.',
        question: 'Paragraftaki boşluğa hangisi gelmelidir?',
        options: [
          'A) However, some vaccines can cause mild side effects in certain individuals.',
          'B) It has saved millions of lives and prevented countless cases of infectious diseases.',
          'C) The development of new vaccines requires extensive clinical trials and testing.',
          'D) Many developing countries still lack access to basic healthcare services.',
          'E) Antibiotic resistance has become a growing concern in modern medicine.',
        ],
        correctIndex: 1,
        explanation: 'İlk cümle aşılamanın etkili olduğunu söylüyor, sonraki cümle de aşılama programlarının başarılarından bahsediyor. B cümlesi bu ikisini bağlar.',
        stepByStep: '1️⃣ Boşluktan ÖNCEKİ cümle: "Aşılama tarihteki en etkili halk sağlığı müdahalelerinden biridir."\n'
            '2️⃣ Boşluktan SONRAKİ cümle: "Yaygın aşılama programlarının başlamasından bu yana, çiçek hastalığı tamamen ortadan kaldırıldı..."\n'
            '3️⃣ Boşluğa gelecek cümle: Aşılamanın ETKİSİNİ destekleyen bir cümle olmalı (giriş + devam).\n'
            '4️⃣ A: "However" → zıtlık (ama önceki ve sonraki cümle olumlu) ❌\n'
            '5️⃣ B: "Milyonlarca hayat kurtardı..." → etkiyi destekliyor ✅\n'
            '6️⃣ D: "Gelişmekte olan ülkeler..." → konu değişikliği ❌\n'
            '7️⃣ E: "Antibiyotik direnci..." → tamamen farklı konu ❌\n'
            '8️⃣ Sonuç: B şıkkı doğrudur.',
      ),
      ExampleQuestion(
        passage: 'The liver is the largest solid internal organ in the human body. It performs over 500 vital functions, including filtering toxins from the blood, regulating blood sugar levels, and producing bile to aid in digestion. ---- If this organ becomes severely damaged through disease or excessive alcohol consumption, it can lead to liver failure, a life-threatening condition.',
        question: 'Paragraftaki boşluğa hangisi gelmelidir?',
        options: [
          'A) The heart pumps blood throughout the entire circulatory system.',
          'B) Interestingly, the liver is the only organ that can naturally regenerate itself.',
          'C) Bile is stored in the gallbladder before it is released into the intestines.',
          'D) Therefore, maintaining a healthy diet is essential for overall well-being.',
          'E) Most digestive enzymes are produced by the pancreas.',
        ],
        correctIndex: 1,
        explanation: 'Karaciğerin fonksiyonlarından bahsediliyor. Sonraki cümle hasar görürse tehlike diyor. Araya "karaciğerin kendini yenileyebilmesi" gibi önemli bir özellik eklenmesi akışı güçlendirir.',
        stepByStep: '1️⃣ ÖNCEKİ cümle: Karaciğerin 500+ fonksiyonu var (filtreleme, şeker düzenleme, safra üretimi).\n'
            '2️⃣ SONRAKİ cümle: "Eğer bu organ ciddi hasar görürse..." → tehlike/uyarı.\n'
            '3️⃣ Boşluk, "inanılmaz fonksiyonlar" ile "hasar riski" arasında geçiş yapmalı.\n'
            '4️⃣ B: "Kendini yenileyebilen tek organ" → fonksiyonları destekleyen ilginç bir bilgi + sonraki "hasar" cümlesiyle bağlantı kuruyor (yenilense bile hasar olursa...) ✅\n'
            '5️⃣ A: Kalp → farklı organ ❌\n'
            '6️⃣ C: Safra kesesi detayı → çok spesifik, akışı bozuyor ❌\n'
            '7️⃣ Sonuç: B şıkkı doğrudur.',
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════
  // 7. OKUMA PARÇASI
  // ═══════════════════════════════════════════════════════
  QuestionType(
    id: 'reading',
    title: 'Okuma Parçası',
    subtitle: 'Soru 66-80 • 5 Parça × 3 Soru',
    icon: '📚',
    questionCount: 15,
    description:
        'Sınavın son bölümünde 5 okuma parçası ve her birinden 3 soru sorulur. '
        'Parçalar sağlık bilimleri alanından seçilir.',
    detailedExplanation:
        'Okuma parçaları, YÖKDİL sınavının SON ve EN KAPSAMLI bölümüdür. 66-80 arası soruları kapsar (15 soru = %18.75 puan). 5 ayrı sağlık konulu okuma parçası verilir ve her parçadan 3 soru sorulur.\n\n'
        '📌 SORU TİPLERİ:\n\n'
        '1. ANA FİKİR SORUSU (Main Idea):\n'
        '   → "The passage is mainly about..."\n'
        '   → "What is the main purpose of the passage?"\n'
        '   → "The passage primarily discusses..."\n'
        '   • İlk ve son paragraftan bulunur.\n'
        '   • Çok genel veya çok spesifik şıkları eleyin.\n\n'
        '2. DETAY SORUSU (Detail/Fact):\n'
        '   → "According to the passage..."\n'
        '   → "It is stated in the passage that..."\n'
        '   → "Which of the following is mentioned..."\n'
        '   • Cevap parçada AÇIKÇA yazılıdır — çıkarım yapmayın!\n'
        '   • Anahtar kelimeyi parçada bulun ve etrafını okuyun.\n\n'
        '3. ÇIKARIM SORUSU (Inference):\n'
        '   → "It can be inferred from the passage..."\n'
        '   → "The author implies/suggests that..."\n'
        '   → "It can be understood from the passage..."\n'
        '   • Cevap parçada DOĞRUDAN yazılmaz ama bilgilerden çıkarılabilir.\n'
        '   • Kendi bilginizi EKLEMEYİN — sadece parçadaki bilgilerden çıkarın.\n\n'
        '4. KELİME SORUSU (Vocabulary in Context):\n'
        '   → "The word \'X\' in line Y is closest in meaning to..."\n'
        '   → "The underlined word probably means..."\n'
        '   • Kelimenin genel anlamı değil, O CÜMLEDEKİ anlamı sorulur!\n\n'
        '5. YAZARIN TUTUMU (Author\'s Attitude):\n'
        '   → "The author\'s attitude toward X can best be described as..."\n'
        '   → "The tone of the passage is..."\n'
        '   • Bilimsel metinlerde ton genellikle: objective, informative, cautious, critical.\n\n'
        '⚡ ZAMAN YÖNETİMİ:\n'
        'Okuma parçaları sınavın en çok zaman alan bölümüdür. Her parçaya ortalama 8-10 dakika ayırın. ÖNCE soruları okuyup NE ARADIĞINIZI bilin, SONRA parçayı okuyun — bu size önemli ölçüde zaman kazandırır.',
    strategies: [
      'ALTIN KURAL: Önce soruları okuyun, SONRA parçayı okuyun! Ne aradığınızı bilmek okuma hızını ve doğruluğunu dramatik şekilde artırır.',
      'ANA FİKİR sorusunu genellikle ilk ve son paragrafta bulabilirsiniz. Parçanın en genel mesajını arayn.',
      'DETAY sorularında sorudaki anahtar kelimeyi parçada bulun (scanning) ve o kelimenin etrafındaki 2-3 cümleyi dikkatle okuyun.',
      'ÇIKARIM sorularında yazarın ima ettiğini bulun — kendi bilginizi veya görüşünüzü EKLEMEYİN. Sadece parçadaki bilgilerden mantıksal sonuç çıkarın.',
      '"According to the passage" ifadesi → cevap parçada AÇIKÇA yazılıdır. Çıkarım yapmayın, yazılanı bulun.',
      '"It can be inferred" ifadesi → cevap parçada DOĞRUDAN yazmaz ama bilgilerden çıkarılabilir.',
      'KELİME sorularında kelimenin SÖZLÜK anlamı değil, O CÜMLEDEKİ BAĞLAMSAL anlamı sorulur. Kelimeyi bilmiyorsanız bile cümlenin bağlamından tahmin edebilirsiniz.',
      'Parçanın YAPISINI anlayın: Giriş paragrafı (konu tanıtımı), gelişme paragrafları (detaylar/kanıtlar), sonuç paragrafı (özet/çıkarım).',
    ],
    tips: [
      '💡 Ana fikir soruları: "The passage is mainly about...", "The main purpose of the passage...", "The primary concern of the author..."',
      '💡 Detay soruları: "According to the passage...", "It is stated in the passage that...", "The passage mentions..."',
      '💡 Çıkarım soruları: "It can be inferred from the passage...", "The author implies that...", "It can be understood that..."',
      '💡 Kelime soruları: "The word X is closest in meaning to...", "The underlined word probably means..."',
      '💡 Sağlık okuma parçalarında sık konular: epidemiyoloji, klinik çalışmalar, tedavi protokolleri, ilaç geliştirme, halk sağlığı politikaları',
      '💡 Bilmediğiniz terimlerin anlamını BAĞLAMDAN çıkarın — cümlenin geri kalanı ipucu verir.',
      '💡 "NOT" içeren sorulara dikkat: "Which is NOT mentioned?" → 4 şık doğru, 1 şık yanlış — eleyin!',
      '💡 Okuma hızını artırmak için: Her paragrafın ilk cümlesini dikkatle okuyun (topic sentence), detaylara sadece soru sorarsa girin.',
    ],
    commonMistakes: [
      '❌ Parçayı baştan sona detaylı okuyup vakit kaybetmek — ÖNCE soruları okuyun, sonra hedefli okuyun.',
      '❌ Çıkarım sorularında kendi bilginizi eklemek — sadece parçadaki bilgilerden çıkarım yapın.',
      '❌ Detay sorularında çıkarım yapmak — "According to the passage" = cevap AÇIKÇA yazılıdır.',
      '❌ Kelime sorularında kelimenin sözlük anlamını seçmek — bağlamsal anlamı sorulur!',
      '❌ "NOT" sorularında doğru cevabı aramak — yanlış/bahsedilmeyen şıkkı aramalısınız.',
      '❌ Tüm parçayı okumadan soruları cevaplamaya çalışmak — en azından parçayı hızlıca tarayın.',
    ],
    keyPhrases: [],
    examples: [
      ExampleQuestion(
        passage: 'The human immune system is a complex network of cells, tissues, and organs that work '
            'together to defend the body against harmful pathogens. When a foreign substance enters '
            'the body, the immune system recognizes it and mounts a response to eliminate it. This '
            'response involves two main components: the innate immune system, which provides immediate '
            'but non-specific defense, and the adaptive immune system, which develops targeted responses '
            'to specific pathogens. The adaptive immune system also creates immunological memory, '
            'allowing the body to respond more quickly and effectively to previously encountered pathogens. '
            'This principle forms the basis of vaccination, where a weakened or inactivated form of a '
            'pathogen is introduced to stimulate immune memory without causing disease.',
        question: 'The passage is mainly about ----.',
        options: [
          'A) the development process of modern vaccines',
          'B) how the immune system functions and its role in vaccination',
          'C) the differences between bacterial and viral infections',
          'D) the history of immunology research',
          'E) treatment methods for autoimmune diseases',
        ],
        correctIndex: 1,
        explanation: 'Parça bağışıklık sisteminin nasıl çalıştığını ve aşılama ile ilişkisini anlatmaktadır. B şıkkı ana fikri en iyi özetler.',
        stepByStep: '1️⃣ Bu bir ANA FİKİR sorusu: "The passage is mainly about"\n'
            '2️⃣ Parçanın ana konusunu belirle:\n   • İlk cümle: Bağışıklık sistemi hücreler, dokular ve organlardan oluşan bir ağ\n   • Orta: İki bileşen — innate ve adaptive\n   • Son: Bağışıklık hafızası → aşılamanın temeli\n'
            '3️⃣ Genel konu: Bağışıklık sistemi + aşılama\n'
            '4️⃣ Şıkları kontrol et:\n   A) "Aşı geliştirme süreci" → çok spesifik, parça bunu detaylandırmıyor ❌\n   B) "Bağışıklık sistemi nasıl çalışır ve aşılamadaki rolü" → TAM uyum ✅\n   C) "Bakteriyel ve viral enfeksiyonlar" → bahsedilmiyor ❌\n'
            '5️⃣ Sonuç: B şıkkı doğrudur.',
      ),
      ExampleQuestion(
        passage: 'The human immune system is a complex network of cells, tissues, and organs that work '
            'together to defend the body against harmful pathogens. When a foreign substance enters '
            'the body, the immune system recognizes it and mounts a response to eliminate it. This '
            'response involves two main components: the innate immune system, which provides immediate '
            'but non-specific defense, and the adaptive immune system, which develops targeted responses '
            'to specific pathogens. The adaptive immune system also creates immunological memory, '
            'allowing the body to respond more quickly and effectively to previously encountered pathogens. '
            'This principle forms the basis of vaccination, where a weakened or inactivated form of a '
            'pathogen is introduced to stimulate immune memory without causing disease.',
        question: 'According to the passage, the innate immune system ----.',
        options: [
          'A) creates a long-lasting immunological memory',
          'B) only responds to viruses and not bacteria',
          'C) provides a targeted response to specific pathogens',
          'D) offers a rapid but generalized defense mechanism',
          'E) is entirely responsible for the success of vaccines',
        ],
        correctIndex: 3,
        explanation: '"Immediate but non-specific defense" (hızlı ama spesifik olmayan savunma) → "rapid but generalized defense" ile eşleşir.',
        stepByStep: '1️⃣ Bu bir DETAY sorusu: "According to the passage" → cevap parçada AÇIKÇA yazılı.\n'
            '2️⃣ Anahtar kelime: "innate immune system" → parçada bu terimi bul.\n'
            '3️⃣ Parçada: "the innate immune system, which provides IMMEDIATE but NON-SPECIFIC defense"\n'
            '4️⃣ "Immediate" = rapid (hızlı), "non-specific" = generalized (genelleştirilmiş)\n'
            '5️⃣ D şıkkı: "rapid but generalized defense" → parçanın ifadesiyle ÖRTÜŞÜyor ✅\n'
            '6️⃣ A: "immunological memory" → adaptive sistemin özelliği, innate değil ❌\n'
            '7️⃣ C: "targeted response" → yine adaptive sistemin özelliği ❌\n'
            '8️⃣ Sonuç: D şıkkı doğrudur.',
      ),
      ExampleQuestion(
        passage: 'The human immune system is a complex network of cells, tissues, and organs that work '
            'together to defend the body against harmful pathogens. When a foreign substance enters '
            'the body, the immune system recognizes it and mounts a response to eliminate it. This '
            'response involves two main components: the innate immune system, which provides immediate '
            'but non-specific defense, and the adaptive immune system, which develops targeted responses '
            'to specific pathogens. The adaptive immune system also creates immunological memory, '
            'allowing the body to respond more quickly and effectively to previously encountered pathogens. '
            'This principle forms the basis of vaccination, where a weakened or inactivated form of a '
            'pathogen is introduced to stimulate immune memory without causing disease.',
        question: 'It can be inferred from the passage that vaccines ----.',
        options: [
          'A) can sometimes cause the disease they are meant to prevent',
          'B) rely primarily on the innate immune system to function',
          'C) introduce safe versions of pathogens to teach the immune system',
          'D) are effective immediately after being administered',
          'E) only work effectively against previously encountered pathogens',
        ],
        correctIndex: 2,
        explanation: 'Aşının "weakened or inactivated form" (zayıflatılmış/etkisizleştirilmiş form) kullanarak "hastalık yapmadan bağışıklık hafızasını canlandırması" → güvenli versiyonların öğretilmesi.',
        stepByStep: '1️⃣ Bu bir ÇIKARIM sorusu: "It can be inferred" → cevap doğrudan yazılmaz ama çıkarılabilir.\n'
            '2️⃣ Parçanın son cümlesi: "a weakened or inactivated form of a pathogen is introduced to stimulate immune memory WITHOUT causing disease"\n'
            '3️⃣ "Weakened/inactivated" = güvenli versiyon, "without causing disease" = hastalık yapmadan\n'
            '4️⃣ ÇIKARIM: Aşılar güvenli versiyonlar kullanarak bağışıklık sistemine öğretir.\n'
            '5️⃣ C: "introduce safe versions of pathogens to teach the immune system" → doğru çıkarım ✅\n'
            '6️⃣ A: "can cause disease" → "WITHOUT causing disease" deniyor ❌\n'
            '7️⃣ B: "innate immune system" → vaccination adaptive ile ilgili ❌\n'
            '8️⃣ Sonuç: C şıkkı doğrudur.',
      ),
    ],
  ),
];
