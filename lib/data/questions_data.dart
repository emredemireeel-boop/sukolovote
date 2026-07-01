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
  });
}

class ExampleQuestion {
  final String question;
  final List<String> options;
  final int correctIndex;
  final String explanation;
  final String? passage;

  const ExampleQuestion({
    required this.question,
    required this.options,
    required this.correctIndex,
    required this.explanation,
    this.passage,
  });
}

final List<QuestionType> questionTypes = [
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
    strategies: [
      'Cümleyi tamamen okuyun, boşluğun öncesine ve sonrasına dikkat edin.',
      'Zaman uyumuna (tense harmony) dikkat edin - cümledeki zaman belirteçlerini arayın.',
      'Bağlaçlarda anlam ilişkisini belirleyin: sebep-sonuç, zıtlık, koşul mu?',
      'Kelime sorularında bağlamdan anlam çıkarın, direk çeviri yapmayın.',
      'Phrasal verb sorularında edat (preposition) anlamı değiştirir.',
      'Şıklardaki gramer yapısı farklılıklarını analiz edin.',
    ],
    tips: [
      '💡 "Since/For" ayrımı: Since → belirli zaman, For → süre',
      '💡 "Although/Despite" ayrımı: Although + cümle, Despite + isim/gerund',
      '💡 Passive yapılarda "be + V3" formülünü arayın',
      '💡 Relative clause: who (insan), which (şey), where (yer), when (zaman)',
      '💡 Sağlık metinlerinde sık geçen yapı: "It has been found that..." (Passive + that clause)',
    ],
    examples: [
      ExampleQuestion(
        question:
            'The patient ---- from a severe respiratory infection when the new treatment protocol was introduced.',
        options: [
          'A) has suffered',
          'B) was suffering',
          'C) would suffer',
          'D) had been suffered',
          'E) suffers',
        ],
        correctIndex: 1,
        explanation:
            'Past Continuous + Past Simple yapısı: "was suffering" devam eden eylem, '
            '"was introduced" araya giren eylem. When bağlacı bu yapıyı destekler. '
            'D şıkkı passive olduğu için yanlış (suffer intransitive).',
      ),
      ExampleQuestion(
        question:
            'Antibiotics should be prescribed ---- after a proper diagnosis has been made to prevent antibiotic resistance.',
        options: [
          'A) only',
          'B) yet',
          'C) already',
          'D) still',
          'E) hardly',
        ],
        correctIndex: 0,
        explanation:
            'Anlam olarak "Antibiyotikler sadece doğru teşhis konulduktan sonra reçete edilmelidir" '
            'cümlesi uygundur. "Only after" yapısı vurgu sağlar.',
      ),
      ExampleQuestion(
        question:
            '---- the mortality rate has decreased significantly in recent decades, cardiovascular diseases remain the leading cause of death worldwide.',
        options: [
          'A) Since',
          'B) Although',
          'C) Unless',
          'D) Because',
          'E) As long as',
        ],
        correctIndex: 1,
        explanation:
            'Cümlede zıtlık ilişkisi var: "ölüm oranı azalmış olmasına rağmen, '
            'kardiyovasküler hastalıklar hâlâ birinci sırada." '
            'Zıtlık bağlacı "Although" doğru cevaptır.',
      ),
      ExampleQuestion(
        question:
            'The surgeon decided to postpone the operation ---- the patient\'s blood pressure was dangerously high.',
        options: [
          'A) although',
          'B) in case',
          'C) because',
          'D) unless',
          'E) so that',
        ],
        correctIndex: 2,
        explanation:
            'Sebep-sonuç ilişkisi: Cerrah operasyonu erteledi ÇÜNKÜ hastanın tansiyonu tehlikeli derecede yüksekti. '
            '"Because" sebep bildirir.',
      ),
      ExampleQuestion(
        question:
            'Because the new virus strain is highly contagious, healthcare workers must ---- strict isolation protocols.',
        options: [
          'A) turn down',
          'B) bring about',
          'C) adhere to',
          'D) figure out',
          'E) look down on',
        ],
        correctIndex: 2,
        explanation:
            '"Adhere to" bir kurala, protokole sıkı sıkıya bağlı kalmak, uymak demektir. '
            'Sağlık çalışanları izolasyon protokollerine uymalıdır. Bring about (neden olmak), figure out (çözmek) anlamsızdır.',
      ),
      ExampleQuestion(
        question:
            'By the time the researchers ---- the specific gene responsible for the disorder, many patients ---- the experimental drug without any significant improvement.',
        options: [
          'A) have identified / were taking',
          'B) identified / had taken',
          'C) identify / will have taken',
          'D) had identified / took',
          'E) are identifying / have been taking',
        ],
        correctIndex: 1,
        explanation:
            'By the time + Past Simple (identified), diğer taraf Past Perfect (had taken). '
            'Araştırmacılar geni tespit edene KADAR, hastalar çoktan deneysel ilacı ALMIŞTI.',
      ),
      ExampleQuestion(
        question:
            'A recent study has revealed that people ---- consume high amounts of ultra-processed foods are at a greater risk of developing metabolic syndrome.',
        options: [
          'A) whose',
          'B) whom',
          'C) which',
          'D) who',
          'E) where',
        ],
        correctIndex: 3,
        explanation:
            '"People" kelimesini niteleyen bir relative pronoun gereklidir. İnsanları niteleyen ve ardından direkt fiil (consume) alan "who" ilgi zamiridir.',
      ),
      ExampleQuestion(
        question:
            '---- providing a temporary relief from pain, the medication does not actually treat the underlying cause of the inflammation.',
        options: [
          'A) Instead of',
          'B) In addition to',
          'C) Rather than',
          'D) Because of',
          'E) Despite',
        ],
        correctIndex: 4,
        explanation:
            'Zıtlık ilişkisi var: "Ağrıdan geçici bir rahatlama sağlamasına RAĞMEN (Despite + V-ing), altta yatan nedeni tedavi etmez." '
            'Instead of (yerine) veya Rather than (-den ziyade) anlamsal olarak tam örtüşmüyor, en güçlü zıtlık bağlacı Despite.',
      ),
    ],
  ),
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
    strategies: [
      'Önce paragrafı boşlukları atlatarak tamamen okuyun - genel konuyu kavrayın.',
      'Her boşluk için önceki ve sonraki cümleye bakın.',
      'Gramer boşluklarında cümle yapısını analiz edin (özne-yüklem uyumu).',
      'Kelime boşluklarında paragrafın genel temasına uygun kelimeyi seçin.',
      'Bağlaç boşluklarında cümleler arası anlam ilişkisini belirleyin.',
      'Tüm boşlukları doldurduktan sonra paragrafı tekrar okuyarak kontrol edin.',
    ],
    tips: [
      '💡 Sağlık paragraflarında sık tekrarlanan kalıplar: "It is widely known that...", "Research suggests that..."',
      '💡 Bağlaç boşlukları genellikle paragrafın en kolay sorusudur',
      '💡 Zamir boşluklarında antecedent\'i (önceki referansı) bulmak kritiktir',
      '💡 Article boşlukları: ilk kez bahsedilen → a/an, tekrar bahsedilen → the',
    ],
    examples: [
      ExampleQuestion(
        passage:
            'Asthma is a common long-term inflammatory disease of the airways of the lungs. It is characterized '
            '(1)---- variable and recurring symptoms, reversible airflow obstruction, and bronchospasm. '
            'Symptoms include episodes of wheezing, coughing, chest tightness, and shortness of breath. '
            'These episodes may occur a few times a day or a few times per week. (2)---- the exact cause of '
            'asthma remains unknown, it is believed to be a combination of genetic and environmental factors. '
            'Environmental factors include exposure to air pollution and allergens. (3)----, there is currently '
            'no cure for asthma, but symptoms can be controlled with proper management. The most common '
            'treatment (4)---- the use of an inhaler, which delivers medication directly to the lungs. '
            'Patients (5)---- suffer from severe asthma attacks might require emergency medical intervention.',
        question: '(1) boşluğa ne gelmelidir?',
        options: [
          'A) by',
          'B) with',
          'C) from',
          'D) in',
          'E) to',
        ],
        correctIndex: 0,
        explanation:
            '"Be characterized BY" (ile karakterize olmak) kalıplaşmış ve tıp İngilizcesinde en çok kullanılan edatlı fiil yapılarından biridir.',
      ),
      ExampleQuestion(
        passage:
            'Asthma is a common long-term inflammatory disease of the airways of the lungs. It is characterized '
            '(1)---- variable and recurring symptoms, reversible airflow obstruction, and bronchospasm. '
            'Symptoms include episodes of wheezing, coughing, chest tightness, and shortness of breath. '
            'These episodes may occur a few times a day or a few times per week. (2)---- the exact cause of '
            'asthma remains unknown, it is believed to be a combination of genetic and environmental factors. '
            'Environmental factors include exposure to air pollution and allergens. (3)----, there is currently '
            'no cure for asthma, but symptoms can be controlled with proper management. The most common '
            'treatment (4)---- the use of an inhaler, which delivers medication directly to the lungs. '
            'Patients (5)---- suffer from severe asthma attacks might require emergency medical intervention.',
        question: '(2) boşluğa ne gelmelidir?',
        options: [
          'A) Because',
          'B) Although',
          'C) In case',
          'D) Unless',
          'E) As long as',
        ],
        correctIndex: 1,
        explanation:
            '"Astımın kesin nedeni BİLİNMEMESİNE RAĞMEN (Although), genetik ve çevresel faktörlerin birleşimi olduğuna İNANILMAKTADIR." Açık bir zıtlık söz konusudur.',
      ),
      ExampleQuestion(
        passage:
            'Asthma is a common long-term inflammatory disease of the airways of the lungs. It is characterized '
            '(1)---- variable and recurring symptoms, reversible airflow obstruction, and bronchospasm. '
            'Symptoms include episodes of wheezing, coughing, chest tightness, and shortness of breath. '
            'These episodes may occur a few times a day or a few times per week. (2)---- the exact cause of '
            'asthma remains unknown, it is believed to be a combination of genetic and environmental factors. '
            'Environmental factors include exposure to air pollution and allergens. (3)----, there is currently '
            'no cure for asthma, but symptoms can be controlled with proper management. The most common '
            'treatment (4)---- the use of an inhaler, which delivers medication directly to the lungs. '
            'Patients (5)---- suffer from severe asthma attacks might require emergency medical intervention.',
        question: '(3) boşluğa ne gelmelidir?',
        options: [
          'A) Moreover',
          'B) Therefore',
          'C) Unfortunately',
          'D) In particular',
          'E) Accordingly',
        ],
        correctIndex: 2,
        explanation:
            '"Currently there is no cure" (şu an bir tedavisi yok) olumsuz bir ifadedir. Bunu en iyi bağlayacak transition kelimesi "Unfortunately" (Maalesef) kelimesidir.',
      ),
      ExampleQuestion(
        passage:
            'Asthma is a common long-term inflammatory disease of the airways of the lungs. It is characterized '
            '(1)---- variable and recurring symptoms, reversible airflow obstruction, and bronchospasm. '
            'Symptoms include episodes of wheezing, coughing, chest tightness, and shortness of breath. '
            'These episodes may occur a few times a day or a few times per week. (2)---- the exact cause of '
            'asthma remains unknown, it is believed to be a combination of genetic and environmental factors. '
            'Environmental factors include exposure to air pollution and allergens. (3)----, there is currently '
            'no cure for asthma, but symptoms can be controlled with proper management. The most common '
            'treatment (4)---- the use of an inhaler, which delivers medication directly to the lungs. '
            'Patients (5)---- suffer from severe asthma attacks might require emergency medical intervention.',
        question: '(4) boşluğa ne gelmelidir?',
        options: [
          'A) involves',
          'B) abolishes',
          'C) restricts',
          'D) exaggerates',
          'E) neglects',
        ],
        correctIndex: 0,
        explanation:
            '"The most common treatment INVOLVES the use of an inhaler" (En yaygın tedavi bir inhaler kullanımını İÇERİR). Diğer kelimeler (kısıtlamak, abartmak vb.) anlamsızdır.',
      ),
      ExampleQuestion(
        passage:
            'Asthma is a common long-term inflammatory disease of the airways of the lungs. It is characterized '
            '(1)---- variable and recurring symptoms, reversible airflow obstruction, and bronchospasm. '
            'Symptoms include episodes of wheezing, coughing, chest tightness, and shortness of breath. '
            'These episodes may occur a few times a day or a few times per week. (2)---- the exact cause of '
            'asthma remains unknown, it is believed to be a combination of genetic and environmental factors. '
            'Environmental factors include exposure to air pollution and allergens. (3)----, there is currently '
            'no cure for asthma, but symptoms can be controlled with proper management. The most common '
            'treatment (4)---- the use of an inhaler, which delivers medication directly to the lungs. '
            'Patients (5)---- suffer from severe asthma attacks might require emergency medical intervention.',
        question: '(5) boşluğa ne gelmelidir?',
        options: [
          'A) which',
          'B) who',
          'C) whose',
          'D) whom',
          'E) where',
        ],
        correctIndex: 1,
        explanation:
            '"Patients" (insanlar) kelimesini niteliyor ve kendisinden sonra fiil ("suffer") alıyor. İnsanlar için özne konumunda "who" kullanılır.',
      ),
    ],
  ),
  QuestionType(
    id: 'sentence_completion',
    title: 'Cümle Tamamlama',
    subtitle: 'Soru 31-41 • 11 Soru',
    icon: '✏️',
    questionCount: 11,
    description:
        'Yarım bırakılmış bir cümlenin anlamlı ve dilbilgisi kurallarına uygun şekilde tamamlanması istenir. '
        'Bu bölümde bağlaç bilgisi ve zaman uyumu (tense harmony) çok önemlidir. '
        'Verilen yarım cümlenin yapısını doğru analiz etmek, doğru şıkkı bulmayı kolaylaştırır.',
    strategies: [
      'Verilen kısımdaki bağlacı belirleyin ve anlam ilişkisini kurun.',
      'Tense uyumuna dikkat edin - verilen kısımdaki zaman yapısıyla uyumlu şıkkı seçin.',
      'Özne-yüklem uyumunu kontrol edin.',
      'Cümlenin mantıksal bütünlüğünü sorgulayın.',
      'Eğer "if clause" varsa, conditional type\'ı belirleyin.',
      'Noktalama işaretlerine dikkat edin (virgül, noktalı virgül).',
    ],
    tips: [
      '💡 "If + Past Simple → would + V1" (Type 2 Conditional)',
      '💡 "By the time + Past Simple → Past Perfect" kalıbı sık çıkar',
      '💡 "Not only... but also..." → devrik yapı (inversion) gerekebilir',
      '💡 Sağlık alanında: "Had the diagnosis been made earlier, ..." → Type 3 If Clause',
    ],
    examples: [
      ExampleQuestion(
        question:
            'If the clinical trial had been conducted with a larger sample size, ----.',
        options: [
          'A) the results will be more reliable',
          'B) the results would have been more reliable',
          'C) the results are being more reliable',
          'D) the results were more reliable',
          'E) the results could be more reliable',
        ],
        correctIndex: 1,
        explanation:
            'Type 3 If Clause: If + Past Perfect → would have + V3. '
            '"Had been conducted" (Past Perfect) olduğu için "would have been" gelmelidir.',
      ),
      ExampleQuestion(
        question:
            '---- , the physician decided to change the course of treatment immediately.',
        options: [
          'A) Although the patient responded well to the initial therapy',
          'B) When the test results revealed a severe allergic reaction',
          'C) As long as the symptoms continue to improve',
          'D) Unless the patient shows signs of recovery',
          'E) Before the laboratory confirmed the diagnosis',
        ],
        correctIndex: 1,
        explanation:
            'Ana cümle Past Simple ("decided") olduğu için yan cümle de Past olmalı. '
            'B şıkkı "revealed" (Past Simple) ile uyumlu ve mantıksal olarak sebep-sonuç ilişkisi kuruyor: '
            'Test sonuçları ciddi alerjik reaksiyon gösterince → tedaviyi değiştirdi.',
      ),
      ExampleQuestion(
        question:
            'Since prolonged exposure to ultraviolet radiation is a major risk factor for skin cancer, ----.',
        options: [
          'A) many dermatologists recommend avoiding the sun during peak hours',
          'B) the patients had already developed severe burns',
          'C) it was not considered a significant health threat in the past',
          'D) researchers are trying to prove that sunscreen is unnecessary',
          'E) the prevalence of the disease has declined rapidly',
        ],
        correctIndex: 0,
        explanation:
            '"Since" burada sebep (çünkü/den dolayı) anlamında kullanılmıştır: "UV radyasyonuna uzun süre maruz kalmak cilt kanseri için büyük bir risk faktörü OLDUĞUNDAN, birçok dermatolog öğle saatlerinde güneşten kaçınmayı önerir." Anlamsal ve Tense uyumu kusursuzdur.',
      ),
      ExampleQuestion(
        question:
            '---- before they can be prescribed to the general public.',
        options: [
          'A) The laboratory discovered a new antibiotic strain',
          'B) All new pharmaceutical drugs must undergo rigorous clinical testing',
          'C) Patients often experience minor side effects during the trial',
          'D) Traditional remedies have been used for centuries',
          'E) The FDA had already approved the use of the device',
        ],
        correctIndex: 1,
        explanation:
            '"...halka reçete edilebilmelerinden ÖNCE." Bu kısım "they" diyerek çoğul bir şeyden bahsediyor. '
            'B şıkkında "All new pharmaceutical drugs" (tüm yeni ilaçlar) var. Anlam: "Tüm yeni ilaçlar, halka reçete edilmeden önce sıkı klinik testlerden geçmelidir." Tam uyumludur.',
      ),
    ],
  ),
  QuestionType(
    id: 'translation',
    title: 'Çeviri',
    subtitle: 'Soru 42-53 • 6 TR→EN + 6 EN→TR',
    icon: '🔄',
    questionCount: 12,
    description:
        'YÖKDİL\'in en karakteristik bölümü! YDS\'den farklı olarak 12 çeviri sorusu bulunur. '
        '6 soru Türkçe→İngilizce, 6 soru İngilizce→Türkçe yönündedir. '
        'Puan toplamak için en verimli bölüm olarak kabul edilir. '
        'Sağlık terminolojisine hâkim olmak bu bölümde büyük avantaj sağlar.',
    strategies: [
      'Cümlenin ana fiilini ve zamanını belirleyin.',
      'Anahtar kelimeleri (özellikle sağlık terimlerini) doğru eşleştirin.',
      'Cümle yapısını analiz edin: aktif mi, pasif mi?',
      'Uzun cümleleri parçalara ayırarak çevirin.',
      'Şıklar arasında eliminasyon yapın - yanlış kelimeleri eleyin.',
      'Türkçe→İngilizce\'de İngilizce cümle yapısına dikkat edin (SVO düzeni).',
    ],
    tips: [
      '💡 Sağlık çevirilerinde Latince/Yunanca kökenli terimleri tanıyın',
      '💡 Türkçe edilgen yapı → İngilizce passive: "tedavi edilmektedir" = "is being treated"',
      '💡 "...olduğu düşünülmektedir" = "It is thought/considered that..."',
      '💡 "-den kaynaklanmak" = "to result from / to stem from / to arise from"',
      '💡 "...ile ilişkilendirilmek" = "to be associated with / linked to"',
    ],
    examples: [
      ExampleQuestion(
        question:
            'Türkçe→İngilizce: "Son araştırmalar, düzenli egzersizin kalp hastalığı riskini önemli ölçüde azalttığını göstermektedir."',
        options: [
          'A) Recent research shows that regular exercise significantly reduces the risk of heart disease.',
          'B) Recent research has been shown that regular exercise reduces the risk of heart disease.',
          'C) The recent researches show regular exercise to reduce risks of heart disease significantly.',
          'D) According to recent research, regular exercises have been reducing heart disease risks.',
          'E) It was shown by recent research that exercise regularly reduces heart diseases significantly.',
        ],
        correctIndex: 0,
        explanation:
            'Doğru çeviri A şıkkıdır: "Recent research shows that..." → "Son araştırmalar göstermektedir ki..." '
            'B şıkkında "has been shown" passive yapı hatalı kullanılmış. '
            'C şıkkında "researches" yanlış (research uncountable). '
            'Anahtar terimler: düzenli egzersiz=regular exercise, kalp hastalığı=heart disease, '
            'önemli ölçüde=significantly, risk=risk, azaltmak=reduce.',
      ),
      ExampleQuestion(
        question:
            'İngilizce→Türkçe: "Chronic kidney disease, which often goes undiagnosed in its early stages, '
            'affects approximately 10% of the global population."',
        options: [
          'A) Kronik böbrek hastalığı küresel nüfusun yaklaşık %10\'unu etkiler ve erken evrelerinde sıklıkla teşhis edilmez.',
          'B) Erken evrelerinde genellikle teşhis edilemeyen kronik böbrek hastalığı, dünya nüfusunun yaklaşık %10\'unu etkilemektedir.',
          'C) Dünya nüfusunun %10\'unu etkileyen kronik böbrek hastalığı erken evrelerde teşhis edilememektedir.',
          'D) Kronik böbrek hastalığının erken evreleri teşhis edilemediğinden dünya nüfusunun %10\'u etkilenmektedir.',
          'E) Yaklaşık %10 oranında küresel nüfusu etkileyen kronik böbrek hastalığı erken tanısı zordur.',
        ],
        correctIndex: 1,
        explanation:
            'B şıkkı orijinal cümlenin yapısını en doğru yansıtır. '
            '"which often goes undiagnosed" → "genellikle teşhis edilemeyen" (non-defining relative clause). '
            'Anahtar: chronic kidney disease=kronik böbrek hastalığı, undiagnosed=teşhis edilmemiş, '
            'global population=dünya nüfusu.',
      ),
      ExampleQuestion(
        question:
            'Türkçe→İngilizce: "Obezite, dünya çapında tip 2 diyabetin başlıca nedenlerinden biri olarak kabul edilmektedir."',
        options: [
          'A) Obesity is considered to be one of the primary causes of type 2 diabetes worldwide.',
          'B) Obesity has considered as the main cause of type 2 diabetes in the world.',
          'C) It is considered that obesity causes type 2 diabetes primarily worldwide.',
          'D) Obesity considered to be the most important cause of worldwide type 2 diabetes.',
          'E) The primary cause of type 2 diabetes worldwide is considered to be obesity.',
        ],
        correctIndex: 0,
        explanation:
            '"kabul edilmektedir" = "is considered to be", "başlıca nedenlerinden biri" = "one of the primary causes". A şıkkı kelimesi kelimesine en doğru yapı ve anlama sahiptir.',
      ),
      ExampleQuestion(
        question:
            'İngilizce→Türkçe: "Advances in nanotechnology have allowed researchers to develop targeted drug delivery systems that minimize side effects."',
        options: [
          'A) Nanoteknolojideki gelişmeler, araştırmacıların yan etkileri en aza indiren hedefe yönelik ilaç taşıma sistemleri geliştirmelerine olanak tanımıştır.',
          'B) Araştırmacılar nanoteknoloji sayesinde yan etkileri azaltan yeni ilaç sistemleri geliştirmişlerdir.',
          'C) Nanoteknolojinin gelişmesiyle, araştırmacılara yan etkisiz ilaç taşıma sistemleri geliştirme imkanı verilmiştir.',
          'D) Yan etkileri en aza indiren hedefe yönelik ilaç sistemleri, nanoteknolojideki gelişmelerle araştırmacılar tarafından bulunmuştur.',
          'E) Araştırmacılar, nanoteknolojideki ilerlemeleri kullanarak yan etkileri azalan hedefe yönelik ilaçlar üretiyorlar.',
        ],
        correctIndex: 0,
        explanation:
            '"Advances in nanotechnology" = "Nanoteknolojideki gelişmeler", "have allowed researchers to develop" = "araştırmacıların ... geliştirmelerine olanak tanımıştır", "targeted drug delivery systems" = "hedefe yönelik ilaç taşıma sistemleri", "that minimize side effects" = "yan etkileri en aza indiren".',
      ),
    ],
  ),
  QuestionType(
    id: 'odd_sentence',
    title: 'Anlam Bütünlüğünü Bozan Cümle',
    subtitle: 'Soru 54-59 • 6 Soru',
    icon: '🔍',
    questionCount: 6,
    description:
        'Bir paragraf içinde verilen 5 cümleden anlam bütünlüğünü bozan '
        '(paragrafın akışına uymayan) cümleyi bulmanız istenir. '
        'Paragrafın ana fikrini ve akışını anlamak bu bölümde çok önemlidir.',
    strategies: [
      'Paragrafın ANA FİKRİNİ belirleyin - ne hakkında?',
      'Her cümlenin paragrafın genel akışına katkısını değerlendirin.',
      'Konu değişikliği yapan cümleyi arayın.',
      'Zamirler ve bağlaçlar üzerinden cümleler arası bağlantıları kontrol edin.',
      'Detay veren cümle ile konuyu değiştiren cümleyi ayırt edin.',
      '"However, Moreover, Furthermore, In addition" gibi bağlaçların işaret ettiği yönü takip edin.',
    ],
    tips: [
      '💡 Genellikle 5 cümleden 4\'ü aynı konuyu farklı açılardan anlatır, 1\'i farklı konuya geçer',
      '💡 İlk ve son cümleler genellikle bozucu cümle olmaz',
      '💡 Bozucu cümle genellikle paragrafın ortasında (2., 3. veya 4. cümle) olur',
      '💡 Sağlık metinlerinde: tedaviden bahsederken aniden tanıya geçen cümle bozucu olabilir',
    ],
    examples: [
      ExampleQuestion(
        question:
            '(I) Alzheimer\'s disease is the most common form of dementia, affecting millions worldwide. '
            '(II) The disease progressively destroys memory and cognitive functions. '
            '(III) Recent advances in MRI technology have enabled more accurate imaging of brain tumors. '
            '(IV) Researchers are currently exploring various drug therapies to slow the progression of the disease. '
            '(V) Early diagnosis of Alzheimer\'s can significantly improve the quality of life for patients and their families.',
        options: [
          'A) I',
          'B) II',
          'C) III',
          'D) IV',
          'E) V',
        ],
        correctIndex: 2,
        explanation:
            'Paragraf Alzheimer hastalığı hakkındadır. I, II, IV ve V cümlelerinin hepsi '
            'Alzheimer ile ilgilidir. III. cümle ise beyin tümörlerinin MR görüntülemesinden '
            'bahsetmektedir - bu farklı bir konudur ve paragrafın akışını bozmaktadır.',
      ),
      ExampleQuestion(
        question:
            '(I) Sleep apnea is a serious sleep disorder in which breathing repeatedly stops and starts. '
            '(II) If left untreated, it can lead to high blood pressure, heart problems, and even stroke. '
            '(III) Insomnia, on the other hand, is characterized by difficulty falling asleep or staying asleep. '
            '(IV) The most common treatment for sleep apnea involves using a CPAP machine. '
            '(V) This device delivers air pressure through a mask while you sleep to keep your airway open.',
        options: [
          'A) I',
          'B) II',
          'C) III',
          'D) IV',
          'E) V',
        ],
        correctIndex: 2,
        explanation:
            'Paragrafın ana konusu Uyku Apnesi (Sleep apnea), tehlikeleri ve tedavisidir. III. cümle ise bir anda "Insomnia" (Uykusuzluk) hastalığından bahsederek konu bütünlüğünü bozmaktadır.',
      ),
    ],
  ),
  QuestionType(
    id: 'paragraph_completion',
    title: 'Paragraf Tamamlama',
    subtitle: 'Soru 60-65 • 6 Soru',
    icon: '📖',
    questionCount: 6,
    description:
        'Bir paragrafta boş bırakılan yere en uygun cümleyi seçmeniz istenir. '
        'Bu soru tipi, paragrafın mantıksal akışını ve bağlamsal uyumu ölçer. '
        'Boşluğun öncesindeki ve sonrasındaki cümlelere dikkat etmek kritik önemdedir.',
    strategies: [
      'Boşluktan ÖNCEKİ cümlenin ne söylediğini anlayın.',
      'Boşluktan SONRAKİ cümlenin ne söylediğini anlayın.',
      'Boşluğa gelecek cümle, önceki ve sonraki cümleyle köprü kurmalıdır.',
      'Zamirlere dikkat edin: "this, these, it, they" neyi işaret ediyor?',
      'Bağlaçlara dikkat edin: "However" → zıtlık, "Moreover" → ek bilgi, "Therefore" → sonuç.',
      'Seçtiğiniz cümleyle paragrafı tekrar okuyarak akışı kontrol edin.',
    ],
    tips: [
      '💡 Boşluk paragrafın başındaysa → giriş cümlesi (topic sentence) olabilir',
      '💡 Boşluk paragrafın sonundaysa → sonuç/özet cümlesi olabilir',
      '💡 Boşluk ortadaysa → bağlayıcı/destekleyici cümle olabilir',
      '💡 Sağlık paragraflarında: neden→sonuç, sorun→çözüm akışını takip edin',
    ],
    examples: [
      ExampleQuestion(
        passage:
            'Vaccination is one of the most effective public health interventions in history. '
            '---- Since the introduction of widespread vaccination programs, diseases such as '
            'smallpox have been completely eradicated, and the incidence of many others has '
            'dramatically decreased.',
        question: 'Paragraftaki boşluğa hangisi gelmelidir?',
        options: [
          'A) However, some vaccines can cause mild side effects in certain individuals.',
          'B) It has saved millions of lives and prevented countless cases of infectious diseases.',
          'C) The development of new vaccines requires extensive clinical trials and testing.',
          'D) Many developing countries still lack access to basic healthcare services.',
          'E) Antibiotic resistance has become a growing concern in modern medicine.',
        ],
        correctIndex: 1,
        explanation:
            'İlk cümle aşılamanın etkili olduğunu söylüyor, sonraki cümle ise '
            '"aşılama programlarının başlamasından bu yana..." diye devam ediyor. '
            'Boşluğa aşılamanın etkisini destekleyen B cümlesi en uygun: '
            '"Milyonlarca hayat kurtardı ve sayısız bulaşıcı hastalık vakasını önledi."',
      ),
      ExampleQuestion(
        passage:
            'The liver is the largest solid internal organ in the human body. It performs over 500 vital functions, including filtering toxins from the blood, regulating blood sugar levels, and producing bile to aid in digestion. ---- If this organ becomes severely damaged through disease or excessive alcohol consumption, it can lead to liver failure, a life-threatening condition.',
        question: 'Paragraftaki boşluğa hangisi gelmelidir?',
        options: [
          'A) The heart pumps blood throughout the entire circulatory system.',
          'B) Interestingly, the liver is the only organ that can naturally regenerate itself.',
          'C) Bile is stored in the gallbladder before it is released into the intestines.',
          'D) Therefore, maintaining a healthy diet is essential for overall well-being.',
          'E) Most digestive enzymes are produced by the pancreas.',
        ],
        correctIndex: 1,
        explanation:
            'Karaciğerin inanılmaz fonksiyonlarından bahsediliyor. Sonraki cümle "Eğer bu organ aşırı hasar görürse..." diye tehlikeden bahsediyor. Araya karaciğerin mucizevi bir özelliğini (kendini yenileyebilmesi) ekleyen B şıkkı bağlamla tam örtüşür.',
      ),
    ],
  ),
  QuestionType(
    id: 'reading',
    title: 'Okuma Parçası',
    subtitle: 'Soru 66-80 • 5 Parça × 3 Soru',
    icon: '📚',
    questionCount: 15,
    description:
        'Sınavın son bölümünde 5 okuma parçası ve her birinden 3 soru sorulur. '
        'Parçalar sağlık bilimleri alanından seçilir: anatomi, fizyoloji, hastalıklar, '
        'tedavi yöntemleri, ilaçlar, halk sağlığı gibi konular. '
        'Sağlık alanında çalışanlar için terminoloji avantajı büyüktür!',
    strategies: [
      'Önce soruları okuyun, sonra parçayı okuyun - ne aradığınızı bilin.',
      'Ana fikir (main idea) sorusunu genellikle ilk ve son paragrafta bulabilirsiniz.',
      'Detay sorularında anahtar kelimeyi parçada bulun ve etrafını okuyun.',
      'Çıkarım (inference) sorularında yazarın ima ettiğini bulun, kendi bilginizi eklemeyin.',
      '"According to the passage" ifadesi → cevap parçada açıkça yazılıdır.',
      'Sağlık terminolojisini bilmek okuma hızınızı artırır.',
    ],
    tips: [
      '💡 Ana fikir soruları: "The passage is mainly about...", "The main purpose of the passage..."',
      '💡 Detay soruları: "According to the passage...", "It is stated in the passage that..."',
      '💡 Çıkarım soruları: "It can be inferred from the passage...", "The author implies that..."',
      '💡 Sağlık okuma parçalarında sık konular: epidemiyoloji, klinik çalışmalar, tedavi protokolleri',
      '💡 Bilmediğiniz terimlerin anlamını bağlamdan çıkarın',
    ],
    examples: [
      ExampleQuestion(
        passage:
            'The human immune system is a complex network of cells, tissues, and organs that work '
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
        explanation:
            'Parça bağışıklık sisteminin nasıl çalıştığını (innate ve adaptive) '
            've bunun aşılama ile ilişkisini anlatmaktadır. '
            'Ana fikir B şıkkında en iyi özetlenmiştir.',
      ),
      ExampleQuestion(
        passage:
            'The human immune system is a complex network of cells, tissues, and organs that work '
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
        explanation:
            'Parçada "the innate immune system, which provides immediate but non-specific defense" (hızlı ama spesifik olmayan savunma sağlayan) ifadesi yer almaktadır. Bu durum D şıkkı (rapid but generalized defense) ile eşleşir.',
      ),
      ExampleQuestion(
        passage:
            'The human immune system is a complex network of cells, tissues, and organs that work '
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
        explanation:
            'Son cümlede aşının prensibinin, zayıflatılmış patojenin vücuda verilerek "hastalık yapmadan bağışıklık hafızasını canlandırması" olduğu anlatılmıştır. Bu, bağışıklık sistemine güvenli versiyonların öğretildiği anlamına gelir (C şıkkı).',
      ),
    ],
  ),
];
