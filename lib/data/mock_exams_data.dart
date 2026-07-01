// YÖKDİL Sağlık - Çıkmış Sınav Denemeleri
// Gerçek YÖKDİL Sağlık sınav formatında (tüm soru tipleri) etkileşimli denemeler.
// Not: ÖSYM sorularının telifi ÖSYM'ye aittir; bu modül aynı formatta özgün
// hazırlanmış deneme sorularından oluşur. Her şıkkın Türkçe karşılığı ve doğru
// cevap gösterilir.

class MockExam {
  final String id;
  final String title;
  final String subtitle;
  final int year;
  final int durationMinutes;
  final List<ExamQuestion> questions;

  const MockExam({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.year,
    required this.durationMinutes,
    required this.questions,
  });
}

class ExamQuestion {
  final int number;
  final String type;
  final String? passageRef;
  final String? passageRefTr;
  final String question;
  final List<String> options;
  final List<String>? optionsTr;
  final int correctIndex;
  final String explanation;

  const ExamQuestion({
    required this.number,
    required this.type,
    this.passageRef,
    this.passageRefTr,
    required this.question,
    required this.options,
    this.optionsTr,
    required this.correctIndex,
    required this.explanation,
  });

  String get correctLetter => String.fromCharCode(65 + correctIndex);
  String get correctText => options[correctIndex];
}

final List<MockExam> mockExams = [
  MockExam(
    id: 'yokdil_saglik_2020',
    title: '2020 YÖKDİL Sağlık',
    subtitle: 'Çıkmış sınav formatında deneme • 40 soru',
    year: 2020,
    durationMinutes: 60,
    questions: exam2020,
  ),
  MockExam(
    id: 'yokdil_saglik_2021',
    title: '2021 YÖKDİL Sağlık',
    subtitle: 'Çıkmış sınav formatında deneme • 40 soru',
    year: 2021,
    durationMinutes: 60,
    questions: exam2021,
  ),
];

// ═══════════════════════ 2020 DENEMESİ (40 SORU) ═══════════════════════
const List<ExamQuestion> exam2020 = [
  // 1-6: Kelime
  ExamQuestion(
    number: 1,
    type: 'Kelime',
    question:
        'Chronic sleep deprivation can severely ---- cognitive performance, impairing memory and decision-making.',
    options: ['enhance', 'undermine', 'stabilise', 'celebrate'],
    optionsTr: ['geliştirmek', 'baltalamak / zayıflatmak', 'dengelemek', 'kutlamak'],
    correctIndex: 1,
    explanation:
        '"impairing" (bozarak) olumsuz etki gösterir; "undermine" (zayıflatmak) uygundur.',
  ),
  ExamQuestion(
    number: 2,
    type: 'Kelime',
    question:
        'The new vaccine proved highly ----, reducing the incidence of infection by over 90 percent.',
    options: ['efficient', 'reluctant', 'obscure', 'redundant'],
    optionsTr: ['etkili / verimli', 'isteksiz', 'belirsiz', 'gereksiz'],
    correctIndex: 0,
    explanation: 'Enfeksiyonu %90 azaltan aşı "efficient/effective" (etkili) olmalıdır.',
  ),
  ExamQuestion(
    number: 3,
    type: 'Kelime',
    question:
        'Physicians must ---- the risks and benefits before prescribing any potent medication.',
    options: ['neglect', 'weigh', 'conceal', 'postpone'],
    optionsTr: ['ihmal etmek', 'tartmak / değerlendirmek', 'gizlemek', 'ertelemek'],
    correctIndex: 1,
    explanation: '"weigh the risks and benefits" = riskleri ve yararları tartmak (kalıp).',
  ),
  ExamQuestion(
    number: 4,
    type: 'Kelime',
    question:
        'Early ---- of the disease significantly increases the likelihood of successful treatment.',
    options: ['detection', 'refusal', 'shortage', 'disguise'],
    optionsTr: ['teşhis / tespit', 'reddetme', 'kıtlık', 'kılık değiştirme'],
    correctIndex: 0,
    explanation: '"Early detection" (erken teşhis) tedavi başarısını artırır (kalıp).',
  ),
  ExamQuestion(
    number: 5,
    type: 'Kelime',
    question:
        'The immune system is designed to ---- harmful pathogens that enter the body.',
    options: ['nourish', 'eliminate', 'imitate', 'inherit'],
    optionsTr: ['beslemek', 'yok etmek', 'taklit etmek', 'miras almak'],
    correctIndex: 1,
    explanation: 'Bağışıklık sistemi zararlı patojenleri "eliminate" (yok etmek) için tasarlanır.',
  ),
  ExamQuestion(
    number: 6,
    type: 'Kelime',
    question:
        'Regular physical activity has been shown to ---- the risk of cardiovascular disease.',
    options: ['aggravate', 'reduce', 'ignore', 'disguise'],
    optionsTr: ['ağırlaştırmak', 'azaltmak', 'göz ardı etmek', 'gizlemek'],
    correctIndex: 1,
    explanation: 'Düzenli egzersiz kalp-damar hastalığı riskini "reduce" (azaltmak) eder.',
  ),

  // 7-12: Bağlaç
  ExamQuestion(
    number: 7,
    type: 'Bağlaç',
    question:
        '---- antibiotics are effective against bacterial infections, they are useless against viruses.',
    options: ['Because', 'While', 'Unless', 'So that'],
    optionsTr: ['Çünkü', 'Iken / -e rağmen (zıtlık)', '-medikçe', '-sın diye'],
    correctIndex: 1,
    explanation: 'İki karşıt durum (bakteriye etkili / virüse etkisiz); zıtlık bağlacı "While".',
  ),
  ExamQuestion(
    number: 8,
    type: 'Bağlaç',
    question:
        'The patient was advised to rest ---- take the prescribed medication regularly.',
    options: ['as well as', 'rather than', 'instead of', 'no sooner than'],
    optionsTr: ['-in yanı sıra / hem de', '-mektense', '-in yerine', '-er ermez değil'],
    correctIndex: 0,
    explanation: 'İki tavsiye birlikte; "as well as" (hem de) ekleme bildirir.',
  ),
  ExamQuestion(
    number: 9,
    type: 'Bağlaç',
    question:
        '---- the surgery was successful, the patient required months of physical therapy afterwards.',
    options: ['Although', 'Since', 'In case', 'As if'],
    optionsTr: ['-e rağmen', 'Mademki / -dığından', '-e karşı / ihtimaline', 'sanki'],
    correctIndex: 0,
    explanation: 'Başarılı ameliyat ile uzun terapi arasında zıtlık var; "Although".',
  ),
  ExamQuestion(
    number: 10,
    type: 'Bağlaç',
    question:
        'Patients should complete the entire course of antibiotics ---- their symptoms disappear early.',
    options: ['even if', 'so that', 'because', 'as long as'],
    optionsTr: ['-se bile', '-sın diye', 'çünkü', '-dığı sürece'],
    correctIndex: 0,
    explanation: 'Belirtiler erken kaybolsa bile tedaviyi tamamlamak gerekir; "even if".',
  ),
  ExamQuestion(
    number: 11,
    type: 'Bağlaç',
    question:
        'The medication relieves pain effectively; ----, it may cause drowsiness in some patients.',
    options: ['therefore', 'however', 'moreover', 'thus'],
    optionsTr: ['bu yüzden', 'ancak / bununla birlikte', 'ayrıca', 'böylece'],
    correctIndex: 1,
    explanation: 'Olumlu ve olumsuz durum arasında zıtlık; "however" uygundur.',
  ),
  ExamQuestion(
    number: 12,
    type: 'Bağlaç',
    question:
        'Vaccination protects not only the individual ---- the wider community through herd immunity.',
    options: ['but also', 'either', 'rather than', 'as though'],
    optionsTr: ['aynı zamanda / hem de', 'ya da (biri)', '-mektense', 'sanki'],
    correctIndex: 0,
    explanation: '"not only ... but also ..." ikili bağlaç kalıbıdır.',
  ),
  // devam...

  // 13-18: Cümle Tamamlama
  ExamQuestion(
    number: 13,
    type: 'Cümle Tamamlama',
    question: 'Regular physical activity is recommended ----.',
    options: [
      'unless it caused numerous injuries',
      'because it helps regulate blood pressure and mood',
      'although exercise had no measurable benefits',
      'if patients refused all forms of treatment',
    ],
    optionsTr: [
      'çok sayıda yaralanmaya yol açmadıkça',
      'kan basıncını ve ruh halini düzenlemeye yardımcı olduğu için',
      'egzersizin ölçülebilir hiçbir yararı olmamasına rağmen',
      'hastalar her tür tedaviyi reddederse',
    ],
    correctIndex: 1,
    explanation: 'Egzersizin tavsiye nedeni mantıklı bir gerekçe olmalı.',
  ),
  ExamQuestion(
    number: 14,
    type: 'Cümle Tamamlama',
    question: '----, the hospital implemented stricter hygiene protocols.',
    options: [
      'To reduce the spread of hospital-acquired infections',
      'Although hygiene had never been a concern',
      'Unless patients recovered on their own',
      'Because staff opposed every safety measure',
    ],
    optionsTr: [
      'Hastane kaynaklı enfeksiyonların yayılmasını azaltmak için',
      'Hijyen hiçbir zaman sorun olmamasına rağmen',
      'Hastalar kendiliğinden iyileşmedikçe',
      'Personel her güvenlik önlemine karşı çıktığı için',
    ],
    correctIndex: 0,
    explanation: 'Amaç bildiren "To reduce..." ifadesi hijyen protokolüyle uyumludur.',
  ),
  ExamQuestion(
    number: 15,
    type: 'Cümle Tamamlama',
    question: 'Although the treatment was expensive, ----.',
    options: [
      'it proved remarkably effective for most patients',
      'no one had ever tried it before',
      'the hospital refused to admit any patients',
      'it was completely free of charge',
    ],
    optionsTr: [
      'çoğu hasta için oldukça etkili olduğu görüldü',
      'daha önce kimse denememişti',
      'hastane hiçbir hastayı kabul etmedi',
      'tamamen ücretsizdi',
    ],
    correctIndex: 0,
    explanation: '"Although expensive" ile zıt biçimde olumlu bir sonuç gelmeli.',
  ),
  ExamQuestion(
    number: 16,
    type: 'Cümle Tamamlama',
    question: 'In order to prevent the spread of the virus, ----.',
    options: [
      'health authorities imposed strict quarantine measures',
      'people were encouraged to gather in large crowds',
      'all hospitals were permanently closed',
      'protective equipment was completely banned',
    ],
    optionsTr: [
      'sağlık yetkilileri sıkı karantina önlemleri getirdi',
      'insanlar büyük kalabalıklarda toplanmaya teşvik edildi',
      'tüm hastaneler kalıcı olarak kapatıldı',
      'koruyucu ekipman tamamen yasaklandı',
    ],
    correctIndex: 0,
    explanation: 'Virüsün yayılmasını önlemek için mantıklı önlem: sıkı karantina.',
  ),
  ExamQuestion(
    number: 17,
    type: 'Cümle Tamamlama',
    question: 'The surgeon postponed the operation ----.',
    options: [
      'because the patient developed a sudden fever',
      'although there were no complications whatsoever',
      'so that the illness could spread faster',
      'unless the procedure was entirely unnecessary',
    ],
    optionsTr: [
      'hasta aniden ateşlendiği için',
      'hiçbir komplikasyon olmamasına rağmen',
      'hastalık daha hızlı yayılsın diye',
      'işlem tamamen gereksiz olmadıkça',
    ],
    correctIndex: 0,
    explanation: 'Ameliyatın ertelenme nedeni mantıklı olmalı.',
  ),
  ExamQuestion(
    number: 18,
    type: 'Cümle Tamamlama',
    question: 'Since the symptoms were mild, ----.',
    options: [
      'the doctor recommended rest and hydration at home',
      'the patient was immediately placed in intensive care',
      'emergency surgery was performed at once',
      'all visitors were strictly prohibited',
    ],
    optionsTr: [
      'doktor evde istirahat ve sıvı alımı önerdi',
      'hasta derhal yoğun bakıma alındı',
      'hemen acil ameliyat yapıldı',
      'tüm ziyaretçiler kesinlikle yasaklandı',
    ],
    correctIndex: 0,
    explanation: 'Belirtiler hafif olduğundan makul öneri: evde istirahat.',
  ),

  // 19-24: Çeviri
  ExamQuestion(
    number: 19,
    type: 'Çeviri',
    question: 'İngilizce → Türkçe: "Obesity is a major risk factor for a wide range of chronic diseases."',
    options: [
      'Obezite, çok çeşitli kronik hastalıklar için önemli bir risk faktörüdür.',
      'Obezite, birçok bulaşıcı hastalığı tamamen önleyen bir etkendir.',
      'Kronik hastalıklar nadiren obezite ile ilişkilendirilir.',
      'Obezite yalnızca kalp hastalıklarının tek nedenidir.',
    ],
    correctIndex: 0,
    explanation: '"major risk factor for a wide range of chronic diseases" doğru karşılanmış.',
  ),
  ExamQuestion(
    number: 20,
    type: 'Çeviri',
    question: 'Türkçe → İngilizce: "Düzenli tarama, meme kanserinin erken evrede yakalanmasını sağlar."',
    options: [
      'Regular screening allows breast cancer to be detected at an early stage.',
      'Breast cancer prevents regular screening in early stages.',
      'Screening is rarely useful for detecting breast cancer.',
      'Early breast cancer makes regular screening impossible.',
    ],
    correctIndex: 0,
    explanation: '"erken evrede yakalanmasını sağlar" = allows ... to be detected at an early stage.',
  ),
  ExamQuestion(
    number: 21,
    type: 'Çeviri',
    question: 'İngilizce → Türkçe: "The overuse of antibiotics contributes to the emergence of resistant bacteria."',
    options: [
      'Antibiyotiklerin aşırı kullanımı, dirençli bakterilerin ortaya çıkmasına katkıda bulunur.',
      'Dirençli bakteriler antibiyotik kullanımını tamamen durdurur.',
      'Antibiyotikler bakterileri hiçbir zaman etkilemez.',
      'Bakteriler antibiyotikleri etkisiz hale getiremez.',
    ],
    correctIndex: 0,
    explanation: '"contributes to the emergence of resistant bacteria" doğru çevrilmiş.',
  ),
  ExamQuestion(
    number: 22,
    type: 'Çeviri',
    question: 'Türkçe → İngilizce: "Sağlıklı bir yaşam tarzı, birçok kronik hastalığın önlenmesine yardımcı olabilir."',
    options: [
      'A healthy lifestyle can help prevent many chronic diseases.',
      'Chronic diseases usually improve a healthy lifestyle.',
      'A healthy lifestyle causes many chronic diseases.',
      'Preventing diseases makes a lifestyle unhealthy.',
    ],
    correctIndex: 0,
    explanation: '"önlenmesine yardımcı olabilir" = can help prevent.',
  ),
  ExamQuestion(
    number: 23,
    type: 'Çeviri',
    question: 'İngilizce → Türkçe: "Early diagnosis plays a crucial role in improving survival rates."',
    options: [
      'Erken teşhis, sağkalım oranlarını artırmada kritik bir rol oynar.',
      'Erken teşhis sağkalım oranlarını düşürür.',
      'Sağkalım oranları teşhisten bağımsızdır.',
      'Geç teşhis hayatta kalmayı kolaylaştırır.',
    ],
    correctIndex: 0,
    explanation: '"plays a crucial role in improving survival rates" doğru çevrilmiş.',
  ),
  ExamQuestion(
    number: 24,
    type: 'Çeviri',
    question: 'Türkçe → İngilizce: "Stres, bağışıklık sistemini zayıflatabilir."',
    options: [
      'Stress can weaken the immune system.',
      'The immune system strengthens stress.',
      'Stress always cures the immune system.',
      'A weak immune system prevents stress.',
    ],
    correctIndex: 0,
    explanation: '"zayıflatabilir" = can weaken.',
  ),
  // 25-28: Anlamca Yakın
  ExamQuestion(
    number: 25,
    type: 'Anlamca Yakın',
    question: 'Anlamca en yakın: "Smoking is by far the leading cause of preventable death worldwide."',
    options: [
      'Sigara, dünya çapında önlenebilir ölümlerin açık ara başlıca nedenidir.',
      'Sigara, dünyada ölümlerin en az görülen nedenidir.',
      'Önlenebilir ölümler nadiren sigarayla ilişkilidir.',
      'Sigara yalnızca gelişmiş ülkelerde ölüme yol açar.',
    ],
    correctIndex: 0,
    explanation: '"by far the leading cause of preventable death" = açık ara başlıca neden.',
  ),
  ExamQuestion(
    number: 26,
    type: 'Anlamca Yakın',
    question: 'Anlamca en yakın: "Unless treated promptly, the infection may spread to surrounding tissues."',
    options: [
      'Enfeksiyon hızlıca tedavi edilmezse çevredeki dokulara yayılabilir.',
      'Enfeksiyon her durumda çevre dokulara yayılır.',
      'Hızlı tedavi enfeksiyonun yayılmasını hızlandırır.',
      'Çevre dokular enfeksiyonu kendiliğinden yok eder.',
    ],
    correctIndex: 0,
    explanation: '"Unless treated promptly" = hızlıca tedavi edilmezse.',
  ),
  ExamQuestion(
    number: 27,
    type: 'Anlamca Yakın',
    question: 'Anlamca en yakın: "The drug should be taken with food to minimise side effects."',
    options: [
      'Yan etkileri en aza indirmek için ilaç yemekle birlikte alınmalıdır.',
      'İlaç aç karnına alınırsa yan etki görülmez.',
      'Yemek ilacın etkisini tamamen ortadan kaldırır.',
      'Yan etkiler ilacın yemekle alınmasıyla artar.',
    ],
    correctIndex: 0,
    explanation: '"with food to minimise side effects" = yan etkileri azaltmak için yemekle.',
  ),
  ExamQuestion(
    number: 28,
    type: 'Anlamca Yakın',
    question: 'Anlamca en yakın: "Regular exercise not only improves physical health but also boosts mental well-being."',
    options: [
      'Düzenli egzersiz yalnızca fiziksel sağlığı iyileştirmekle kalmaz, ruhsal iyi oluşu da artırır.',
      'Egzersiz sadece ruh halini kötüleştirir.',
      'Fiziksel sağlık egzersizden bağımsızdır.',
      'Egzersiz ruhsal sağlığı olumsuz etkiler.',
    ],
    correctIndex: 0,
    explanation: '"not only ... but also ..." kalıbı doğru aktarılmış.',
  ),

  // 29-31: Akışı Bozan
  ExamQuestion(
    number: 29,
    type: 'Akışı Bozan',
    question:
        'Akışı bozan cümle:\n(I) Vitamin D is essential for bone health. (II) It helps the body absorb calcium. (III) A deficiency can weaken bones. (IV) Many smartphones include health-tracking apps. (V) Sunlight is a natural source of vitamin D.',
    options: ['I', 'II', 'IV', 'V'],
    optionsTr: ['I. cümle', 'II. cümle', 'IV. cümle', 'V. cümle'],
    correctIndex: 2,
    explanation: 'IV. cümle akıllı telefon uygulamalarından bahseder; konuyla ilgisizdir.',
  ),
  ExamQuestion(
    number: 30,
    type: 'Akışı Bozan',
    question:
        'Akışı bozan cümle:\n(I) Sleep is vital for memory consolidation. (II) During deep sleep, the brain processes information. (III) Adults need about 7-9 hours of sleep. (IV) The recipe requires two cups of flour. (V) Poor sleep is linked to many health problems.',
    options: ['I', 'III', 'IV', 'V'],
    optionsTr: ['I. cümle', 'III. cümle', 'IV. cümle', 'V. cümle'],
    correctIndex: 2,
    explanation: 'IV. cümle bir yemek tarifinden bahseder; uyku konusuyla ilgisizdir.',
  ),
  ExamQuestion(
    number: 31,
    type: 'Akışı Bozan',
    question:
        'Akışı bozan cümle:\n(I) A balanced diet includes proteins, carbohydrates and fats. (II) Vitamins and minerals are also essential. (III) Football is the most popular sport in the world. (IV) Water is necessary for many bodily functions. (V) Poor nutrition can lead to various diseases.',
    options: ['I', 'II', 'III', 'V'],
    optionsTr: ['I. cümle', 'II. cümle', 'III. cümle', 'V. cümle'],
    correctIndex: 2,
    explanation: 'III. cümle futboldan bahseder; beslenme konusuyla ilgisizdir.',
  ),

  // 32-33: Diyalog
  ExamQuestion(
    number: 32,
    type: 'Diyalog',
    question:
        'Diyalog:\nNurse: The patient\'s blood pressure is still quite high.\nDoctor: ----\nNurse: All right, I will prepare the medication right away.',
    options: [
      'Then let\'s increase the dosage and monitor closely.',
      'There is no need to check it again.',
      'I think she can be discharged immediately.',
      'Blood pressure has nothing to do with treatment.',
    ],
    optionsTr: [
      'Öyleyse dozu artıralım ve yakından izleyelim.',
      'Tekrar kontrol etmeye gerek yok.',
      'Bence hemen taburcu edilebilir.',
      'Kan basıncının tedaviyle bir ilgisi yok.',
    ],
    correctIndex: 0,
    explanation: 'Hemşirenin "ilacı hemen hazırlayacağım" yanıtı doz artışıyla uyumludur.',
  ),
  ExamQuestion(
    number: 33,
    type: 'Diyalog',
    question:
        'Diyalog:\nPatient: I keep forgetting to take my pills on time.\nPharmacist: ----\nPatient: That sounds helpful, I\'ll set one up today.',
    options: [
      'You could use a daily pill organiser or a phone reminder.',
      'Then you should stop taking them entirely.',
      'Medication timing is never important.',
      'You should double the dose whenever you remember.',
    ],
    optionsTr: [
      'Günlük ilaç kutusu veya telefon hatırlatıcısı kullanabilirsiniz.',
      'Öyleyse ilaçları tamamen bırakmalısınız.',
      'İlaç zamanlaması hiç önemli değildir.',
      'Ne zaman hatırlarsanız dozu ikiye katlamalısınız.',
    ],
    correctIndex: 0,
    explanation: 'Hastanın "kuracağım" yanıtı, hatırlatıcı önerisiyle uyumludur.',
  ),

  // 34-40: Paragraf (ortak parça + Türkçe çeviri)
  ExamQuestion(
    number: 34,
    type: 'Paragraf',
    passageRef:
        'Hypertension, often called the "silent killer", frequently produces no obvious symptoms, yet it substantially raises the risk of heart attack and stroke. Because many people are unaware of their condition, routine blood pressure measurement is critical. Lifestyle changes such as reducing salt intake, exercising regularly and managing stress can lower blood pressure, though some patients also require medication.',
    passageRefTr:
        'Sıklıkla "sessiz katil" olarak adlandırılan hipertansiyon çoğu zaman belirgin bir belirti vermez, ancak kalp krizi ve felç riskini önemli ölçüde artırır. Birçok kişi durumunun farkında olmadığından, rutin tansiyon ölçümü kritik önemdedir. Tuz alımını azaltmak, düzenli egzersiz ve stres yönetimi gibi yaşam tarzı değişiklikleri tansiyonu düşürebilir; yine de bazı hastaların ilaca da ihtiyacı vardır.',
    question: 'Why is hypertension referred to as the "silent killer"?',
    options: [
      'Because it can only be treated with medication',
      'Because it often causes no obvious symptoms while remaining dangerous',
      'Because it exclusively affects elderly patients',
      'Because it produces loud warning signs',
    ],
    optionsTr: [
      'Çünkü yalnızca ilaçla tedavi edilebilir',
      'Çünkü tehlikeli olmasına rağmen çoğu zaman belirgin belirti vermez',
      'Çünkü sadece yaşlı hastaları etkiler',
      'Çünkü yüksek sesli uyarı işaretleri üretir',
    ],
    correctIndex: 1,
    explanation: 'Metinde belirgin belirti vermediği ama tehlikeli olduğu belirtilir.',
  ),
  ExamQuestion(
    number: 35,
    type: 'Paragraf',
    passageRef:
        'Hypertension, often called the "silent killer", frequently produces no obvious symptoms, yet it substantially raises the risk of heart attack and stroke. Because many people are unaware of their condition, routine blood pressure measurement is critical. Lifestyle changes such as reducing salt intake, exercising regularly and managing stress can lower blood pressure, though some patients also require medication.',
    passageRefTr:
        'Sıklıkla "sessiz katil" olarak adlandırılan hipertansiyon çoğu zaman belirgin bir belirti vermez, ancak kalp krizi ve felç riskini önemli ölçüde artırır. Birçok kişi durumunun farkında olmadığından, rutin tansiyon ölçümü kritik önemdedir. Tuz alımını azaltmak, düzenli egzersiz ve stres yönetimi gibi yaşam tarzı değişiklikleri tansiyonu düşürebilir; yine de bazı hastaların ilaca da ihtiyacı vardır.',
    question: 'Which of the following can help lower blood pressure?',
    options: [
      'Increasing salt intake',
      'Avoiding all physical activity',
      'Reducing salt intake and exercising regularly',
      'Ignoring stress management',
    ],
    optionsTr: [
      'Tuz alımını artırmak',
      'Her türlü fiziksel aktiviteden kaçınmak',
      'Tuz alımını azaltmak ve düzenli egzersiz yapmak',
      'Stres yönetimini göz ardı etmek',
    ],
    correctIndex: 2,
    explanation: 'Metin tuzu azaltmayı, düzenli egzersizi ve stres yönetimini önerir.',
  ),
  ExamQuestion(
    number: 36,
    type: 'Paragraf',
    passageRef:
        'Hypertension, often called the "silent killer", frequently produces no obvious symptoms, yet it substantially raises the risk of heart attack and stroke. Because many people are unaware of their condition, routine blood pressure measurement is critical. Lifestyle changes such as reducing salt intake, exercising regularly and managing stress can lower blood pressure, though some patients also require medication.',
    passageRefTr:
        'Sıklıkla "sessiz katil" olarak adlandırılan hipertansiyon çoğu zaman belirgin bir belirti vermez, ancak kalp krizi ve felç riskini önemli ölçüde artırır. Birçok kişi durumunun farkında olmadığından, rutin tansiyon ölçümü kritik önemdedir. Tuz alımını azaltmak, düzenli egzersiz ve stres yönetimi gibi yaşam tarzı değişiklikleri tansiyonu düşürebilir; yine de bazı hastaların ilaca da ihtiyacı vardır.',
    question: 'It can be inferred from the passage that ----.',
    options: [
      'blood pressure never needs to be measured',
      'lifestyle changes alone are always sufficient for every patient',
      'some patients need medication in addition to lifestyle changes',
      'hypertension is completely harmless',
    ],
    optionsTr: [
      'tansiyonun asla ölçülmesine gerek yoktur',
      'yaşam tarzı değişiklikleri her hasta için tek başına yeterlidir',
      'bazı hastaların yaşam tarzı değişikliklerine ek olarak ilaca ihtiyacı vardır',
      'hipertansiyon tamamen zararsızdır',
    ],
    correctIndex: 2,
    explanation: '"though some patients also require medication" ilaç gereksinimini belirtir.',
  ),
  ExamQuestion(
    number: 37,
    type: 'Paragraf',
    passageRef:
        'Regular handwashing is one of the most effective ways to prevent the spread of infectious diseases. Germs are easily transferred from surfaces to hands and then to the mouth, nose or eyes. Health experts recommend washing hands with soap for at least 20 seconds, especially before eating and after using the toilet. When soap and water are not available, an alcohol-based sanitiser is a good alternative.',
    passageRefTr:
        'Düzenli el yıkama, bulaşıcı hastalıkların yayılmasını önlemenin en etkili yollarından biridir. Mikroplar yüzeylerden ellere, oradan da ağza, buruna veya gözlere kolayca geçer. Sağlık uzmanları, özellikle yemekten önce ve tuvaleti kullandıktan sonra elleri en az 20 saniye sabunla yıkamayı önerir. Sabun ve su bulunmadığında, alkol bazlı bir dezenfektan iyi bir alternatiftir.',
    question: 'According to the passage, how long should hands be washed with soap?',
    options: ['At least 5 seconds', 'At least 20 seconds', 'Exactly 1 minute', 'No specific time'],
    optionsTr: ['En az 5 saniye', 'En az 20 saniye', 'Tam olarak 1 dakika', 'Belirli bir süre yok'],
    correctIndex: 1,
    explanation: 'Metin "at least 20 seconds" ifadesini kullanır.',
  ),
  ExamQuestion(
    number: 38,
    type: 'Paragraf',
    passageRef:
        'Regular handwashing is one of the most effective ways to prevent the spread of infectious diseases. Germs are easily transferred from surfaces to hands and then to the mouth, nose or eyes. Health experts recommend washing hands with soap for at least 20 seconds, especially before eating and after using the toilet. When soap and water are not available, an alcohol-based sanitiser is a good alternative.',
    passageRefTr:
        'Düzenli el yıkama, bulaşıcı hastalıkların yayılmasını önlemenin en etkili yollarından biridir. Mikroplar yüzeylerden ellere, oradan da ağza, buruna veya gözlere kolayca geçer. Sağlık uzmanları, özellikle yemekten önce ve tuvaleti kullandıktan sonra elleri en az 20 saniye sabunla yıkamayı önerir. Sabun ve su bulunmadığında, alkol bazlı bir dezenfektan iyi bir alternatiftir.',
    question: 'What is recommended when soap and water are unavailable?',
    options: [
      'Avoiding hand hygiene altogether',
      'Using an alcohol-based sanitiser',
      'Washing hands with cold water only',
      'Wearing gloves permanently',
    ],
    optionsTr: [
      'El hijyeninden tamamen kaçınmak',
      'Alkol bazlı dezenfektan kullanmak',
      'Elleri yalnızca soğuk suyla yıkamak',
      'Sürekli eldiven giymek',
    ],
    correctIndex: 1,
    explanation: 'Metin alkol bazlı dezenfektanı iyi bir alternatif olarak sunar.',
  ),
  ExamQuestion(
    number: 39,
    type: 'Paragraf',
    passageRef:
        'Regular handwashing is one of the most effective ways to prevent the spread of infectious diseases. Germs are easily transferred from surfaces to hands and then to the mouth, nose or eyes. Health experts recommend washing hands with soap for at least 20 seconds, especially before eating and after using the toilet. When soap and water are not available, an alcohol-based sanitiser is a good alternative.',
    passageRefTr:
        'Düzenli el yıkama, bulaşıcı hastalıkların yayılmasını önlemenin en etkili yollarından biridir. Mikroplar yüzeylerden ellere, oradan da ağza, buruna veya gözlere kolayca geçer. Sağlık uzmanları, özellikle yemekten önce ve tuvaleti kullandıktan sonra elleri en az 20 saniye sabunla yıkamayı önerir. Sabun ve su bulunmadığında, alkol bazlı bir dezenfektan iyi bir alternatiftir.',
    question: 'What is the main idea of the passage?',
    options: [
      'Handwashing is an effective way to prevent infections.',
      'Sanitisers are dangerous to health.',
      'Germs cannot be transferred by hands.',
      'Handwashing is only necessary after meals.',
    ],
    optionsTr: [
      'El yıkama, enfeksiyonları önlemenin etkili bir yoludur.',
      'Dezenfektanlar sağlığa zararlıdır.',
      'Mikroplar ellerle bulaşamaz.',
      'El yıkama yalnızca yemeklerden sonra gereklidir.',
    ],
    correctIndex: 0,
    explanation: 'Paragrafın ana fikri el yıkamanın enfeksiyonları önlemedeki etkinliğidir.',
  ),
  ExamQuestion(
    number: 40,
    type: 'Paragraf',
    passageRef:
        'Regular handwashing is one of the most effective ways to prevent the spread of infectious diseases. Germs are easily transferred from surfaces to hands and then to the mouth, nose or eyes. Health experts recommend washing hands with soap for at least 20 seconds, especially before eating and after using the toilet. When soap and water are not available, an alcohol-based sanitiser is a good alternative.',
    passageRefTr:
        'Düzenli el yıkama, bulaşıcı hastalıkların yayılmasını önlemenin en etkili yollarından biridir. Mikroplar yüzeylerden ellere, oradan da ağza, buruna veya gözlere kolayca geçer. Sağlık uzmanları, özellikle yemekten önce ve tuvaleti kullandıktan sonra elleri en az 20 saniye sabunla yıkamayı önerir. Sabun ve su bulunmadığında, alkol bazlı bir dezenfektan iyi bir alternatiftir.',
    question: 'According to the passage, germs reach the body mainly through ----.',
    options: [
      'the mouth, nose or eyes',
      'the ears only',
      'clothing fibres',
      'sunlight exposure',
    ],
    optionsTr: [
      'ağız, burun veya gözler',
      'yalnızca kulaklar',
      'giysi lifleri',
      'güneş ışığına maruz kalma',
    ],
    correctIndex: 0,
    explanation: 'Metin mikropların ağız, burun veya gözlere geçtiğini belirtir.',
  ),
];

// ═══════════════════════ 2021 DENEMESİ (40 SORU) ═══════════════════════
const List<ExamQuestion> exam2021 = [
  // 1-6: Kelime
  ExamQuestion(
    number: 1,
    type: 'Kelime',
    question: 'The researchers observed a ---- decline in mortality rates after the intervention.',
    options: ['negligible', 'significant', 'reluctant', 'temporary'],
    optionsTr: ['ihmal edilebilir', 'kayda değer / önemli', 'isteksiz', 'geçici'],
    correctIndex: 1,
    explanation: 'Müdahale sonrası ölüm oranlarında "significant" (kayda değer) düşüş anlamlıdır.',
  ),
  ExamQuestion(
    number: 2,
    type: 'Kelime',
    question: 'Prolonged exposure to ultraviolet radiation may ---- the risk of skin cancer.',
    options: ['diminish', 'heighten', 'ignore', 'reverse'],
    optionsTr: ['azaltmak', 'artırmak / yükseltmek', 'göz ardı etmek', 'tersine çevirmek'],
    correctIndex: 1,
    explanation: 'UV\'ye uzun maruz kalmak cilt kanseri riskini "heighten" (artırmak) eder.',
  ),
  ExamQuestion(
    number: 3,
    type: 'Kelime',
    question: 'A balanced diet is ---- for maintaining a healthy immune system.',
    options: ['indispensable', 'optional', 'harmful', 'irrelevant'],
    optionsTr: ['vazgeçilmez', 'isteğe bağlı', 'zararlı', 'ilgisiz'],
    correctIndex: 0,
    explanation: 'Dengeli beslenme bağışıklık için "indispensable" (vazgeçilmez) olmalıdır.',
  ),
  ExamQuestion(
    number: 4,
    type: 'Kelime',
    question: 'The clinical trial was ---- due to unexpected and severe side effects.',
    options: ['launched', 'suspended', 'praised', 'extended'],
    optionsTr: ['başlatıldı', 'askıya alındı / durduruldu', 'övüldü', 'uzatıldı'],
    correctIndex: 1,
    explanation: 'Ciddi yan etkiler nedeniyle deneme "suspended" (askıya alındı).',
  ),
  ExamQuestion(
    number: 5,
    type: 'Kelime',
    question: 'The World Health Organization plays a ---- role in coordinating pandemic responses.',
    options: ['trivial', 'crucial', 'reluctant', 'random'],
    optionsTr: ['önemsiz', 'kritik / hayati', 'isteksiz', 'rastgele'],
    correctIndex: 1,
    explanation: 'DSÖ pandemi yanıtında "crucial" (kritik) rol oynar.',
  ),
  ExamQuestion(
    number: 6,
    type: 'Kelime',
    question: 'Doctors advised the patient to ---- from smoking to improve lung function.',
    options: ['abstain', 'benefit', 'suffer', 'recover'],
    optionsTr: ['kaçınmak / uzak durmak', 'yararlanmak', 'acı çekmek', 'iyileşmek'],
    correctIndex: 0,
    explanation: '"abstain from smoking" = sigaradan uzak durmak (kalıp).',
  ),

  // 7-12: Bağlaç
  ExamQuestion(
    number: 7,
    type: 'Bağlaç',
    question: '---- adopting a healthier lifestyle, many patients reduced their reliance on medication.',
    options: ['Despite', 'By', 'Unless', 'Whereas'],
    optionsTr: ['-e rağmen', '-erek / yoluyla', '-medikçe', 'oysa / iken'],
    correctIndex: 1,
    explanation: '"By adopting..." = ... benimseyerek; yöntem bildirir.',
  ),
  ExamQuestion(
    number: 8,
    type: 'Bağlaç',
    question: 'The treatment must be started immediately; ----, the condition may worsen.',
    options: ['otherwise', 'therefore', 'moreover', 'similarly'],
    optionsTr: ['aksi takdirde', 'bu yüzden', 'ayrıca', 'benzer şekilde'],
    correctIndex: 0,
    explanation: '"otherwise" (aksi takdirde) olası olumsuz sonucu bildirir.',
  ),
  ExamQuestion(
    number: 9,
    type: 'Bağlaç',
    question: '---- the vaccine is widely available, some communities remain hesitant to receive it.',
    options: ['Even though', 'Because', 'So that', 'Unless'],
    optionsTr: ['-e rağmen', 'çünkü', '-sın diye', '-medikçe'],
    correctIndex: 0,
    explanation: 'Aşının bulunması ile tereddüt arasında zıtlık; "Even though".',
  ),
  ExamQuestion(
    number: 10,
    type: 'Bağlaç',
    question: 'The medicine should be stored in a cool place ---- it loses its effectiveness.',
    options: ['so that', 'in case', 'otherwise', 'as if'],
    optionsTr: ['-sın diye', 'ihtimaline karşı', 'yoksa / aksi halde', 'sanki'],
    correctIndex: 2,
    explanation: 'Serin yerde saklanmalı, "otherwise" (yoksa) etkisini kaybeder.',
  ),
  ExamQuestion(
    number: 11,
    type: 'Bağlaç',
    question: 'The disease spreads rapidly; ----, early isolation of patients is essential.',
    options: ['however', 'therefore', 'nevertheless', 'in contrast'],
    optionsTr: ['ancak', 'bu nedenle', 'yine de', 'aksine'],
    correctIndex: 1,
    explanation: 'Sebep-sonuç ilişkisi; "therefore" (bu nedenle) uygundur.',
  ),
  ExamQuestion(
    number: 12,
    type: 'Bağlaç',
    question: 'Both a healthy diet ---- regular exercise are necessary for weight management.',
    options: ['and', 'or', 'but', 'nor'],
    optionsTr: ['ve', 'veya', 'ama', 'ne de'],
    correctIndex: 0,
    explanation: '"both ... and ..." ikili bağlaç kalıbıdır.',
  ),

  // 13-18: Cümle Tamamlama
  ExamQuestion(
    number: 13,
    type: 'Cümle Tamamlama',
    question: 'The surgeon postponed the operation ----.',
    options: [
      'because the patient developed a sudden fever',
      'although there were no complications whatsoever',
      'so that the illness could spread faster',
      'unless the procedure was entirely unnecessary',
    ],
    optionsTr: [
      'hasta aniden ateşlendiği için',
      'hiçbir komplikasyon olmamasına rağmen',
      'hastalık daha hızlı yayılsın diye',
      'işlem tamamen gereksiz olmadıkça',
    ],
    correctIndex: 0,
    explanation: 'Ameliyatın ertelenme nedeni mantıklı olmalı.',
  ),
  ExamQuestion(
    number: 14,
    type: 'Cümle Tamamlama',
    question: 'Although the treatment was expensive, ----.',
    options: [
      'it proved remarkably effective for most patients',
      'no one had ever tried it before',
      'the hospital refused to admit any patients',
      'it was completely free of charge',
    ],
    optionsTr: [
      'çoğu hasta için oldukça etkili olduğu görüldü',
      'daha önce kimse denememişti',
      'hastane hiçbir hastayı kabul etmedi',
      'tamamen ücretsizdi',
    ],
    correctIndex: 0,
    explanation: '"Although expensive" ile zıt biçimde olumlu bir sonuç gelmeli.',
  ),
  ExamQuestion(
    number: 15,
    type: 'Cümle Tamamlama',
    question: 'To avoid dehydration during exercise, ----.',
    options: [
      'athletes should drink water regularly',
      'athletes must stop drinking any fluids',
      'training should always occur in extreme heat',
      'water intake should be completely avoided',
    ],
    optionsTr: [
      'sporcular düzenli olarak su içmelidir',
      'sporcular her türlü sıvıyı bırakmalıdır',
      'antrenman her zaman aşırı sıcakta yapılmalıdır',
      'su alımından tamamen kaçınılmalıdır',
    ],
    correctIndex: 0,
    explanation: 'Susuz kalmayı önlemek için makul öneri: düzenli su içmek.',
  ),
  ExamQuestion(
    number: 16,
    type: 'Cümle Tamamlama',
    question: 'The nurse explained the side effects clearly ----.',
    options: [
      'so that the patient could make an informed decision',
      'although she knew nothing about the drug',
      'unless the patient ignored all instructions',
      'because side effects are never important',
    ],
    optionsTr: [
      'hastanın bilinçli bir karar verebilmesi için',
      'ilaç hakkında hiçbir şey bilmemesine rağmen',
      'hasta tüm talimatları göz ardı etmedikçe',
      'yan etkiler asla önemli olmadığı için',
    ],
    correctIndex: 0,
    explanation: 'Amaç bildiren "so that..." açıklama nedeniyle uyumludur.',
  ),
  ExamQuestion(
    number: 17,
    type: 'Cümle Tamamlama',
    question: 'In order to prevent the spread of the virus, ----.',
    options: [
      'health authorities imposed strict quarantine measures',
      'people were encouraged to gather in large crowds',
      'all hospitals were permanently closed',
      'protective equipment was completely banned',
    ],
    optionsTr: [
      'sağlık yetkilileri sıkı karantina önlemleri getirdi',
      'insanlar büyük kalabalıklarda toplanmaya teşvik edildi',
      'tüm hastaneler kalıcı olarak kapatıldı',
      'koruyucu ekipman tamamen yasaklandı',
    ],
    correctIndex: 0,
    explanation: 'Virüsün yayılmasını önlemek için mantıklı önlem: karantina.',
  ),
  ExamQuestion(
    number: 18,
    type: 'Cümle Tamamlama',
    question: 'Because the results were inconclusive, ----.',
    options: [
      'the researchers decided to conduct further studies',
      'the study was immediately published as final',
      'no additional testing was ever considered',
      'the hypothesis was accepted without question',
    ],
    optionsTr: [
      'araştırmacılar ek çalışmalar yapmaya karar verdi',
      'çalışma hemen nihai olarak yayımlandı',
      'hiçbir ek test asla düşünülmedi',
      'hipotez sorgusuz kabul edildi',
    ],
    correctIndex: 0,
    explanation: 'Sonuçlar belirsizse mantıklı adım: ek çalışma yapmak.',
  ),

  // 19-24: Çeviri
  ExamQuestion(
    number: 19,
    type: 'Çeviri',
    question: 'İngilizce → Türkçe: "Regular exercise strengthens the heart and improves circulation."',
    options: [
      'Düzenli egzersiz kalbi güçlendirir ve dolaşımı iyileştirir.',
      'Egzersiz kalbi zayıflatır ve dolaşımı engeller.',
      'Kalp hastalıkları egzersizi imkânsız kılar.',
      'Dolaşım bozuklukları egzersizle kötüleşir.',
    ],
    correctIndex: 0,
    explanation: '"strengthens the heart and improves circulation" doğru çevrilmiş.',
  ),
  ExamQuestion(
    number: 20,
    type: 'Çeviri',
    question: 'Türkçe → İngilizce: "Aşırı antibiyotik kullanımı, ilaca dirençli bakterilerin ortaya çıkmasına yol açar."',
    options: [
      'The overuse of antibiotics leads to the emergence of drug-resistant bacteria.',
      'Drug-resistant bacteria prevent the use of antibiotics.',
      'Antibiotics are rarely used against bacteria.',
      'Bacteria eliminate antibiotics before they act.',
    ],
    correctIndex: 0,
    explanation: '"ortaya çıkmasına yol açar" = leads to the emergence of.',
  ),
  ExamQuestion(
    number: 21,
    type: 'Çeviri',
    question: 'İngilizce → Türkçe: "Mental health is as important as physical health for overall well-being."',
    options: [
      'Genel iyi oluş için ruh sağlığı, fiziksel sağlık kadar önemlidir.',
      'Ruh sağlığı fiziksel sağlıktan çok daha az önemlidir.',
      'Fiziksel sağlık ruh sağlığını tamamen ortadan kaldırır.',
      'İyi oluş yalnızca fiziksel sağlığa bağlıdır.',
    ],
    correctIndex: 0,
    explanation: '"as important as" = kadar önemli.',
  ),
  ExamQuestion(
    number: 22,
    type: 'Çeviri',
    question: 'Türkçe → İngilizce: "Yeterli uyku, bağışıklık sisteminin düzgün çalışması için gereklidir."',
    options: [
      'Adequate sleep is necessary for the proper functioning of the immune system.',
      'The immune system prevents adequate sleep.',
      'Sleep weakens the immune system considerably.',
      'A weak immune system causes too much sleep.',
    ],
    correctIndex: 0,
    explanation: '"düzgün çalışması için gereklidir" = necessary for the proper functioning.',
  ),
  ExamQuestion(
    number: 23,
    type: 'Çeviri',
    question: 'İngilizce → Türkçe: "Vaccines have dramatically reduced the incidence of many infectious diseases."',
    options: [
      'Aşılar, birçok bulaşıcı hastalığın görülme sıklığını çarpıcı biçimde azaltmıştır.',
      'Aşılar bulaşıcı hastalıkların sayısını artırmıştır.',
      'Bulaşıcı hastalıklar aşıları etkisiz kılar.',
      'Aşılar yalnızca kronik hastalıkları etkiler.',
    ],
    correctIndex: 0,
    explanation: '"dramatically reduced the incidence" = görülme sıklığını çarpıcı biçimde azaltmış.',
  ),
  ExamQuestion(
    number: 24,
    type: 'Çeviri',
    question: 'Türkçe → İngilizce: "Erken teşhis, kanser tedavisinde başarı şansını artırır."',
    options: [
      'Early diagnosis increases the chance of success in cancer treatment.',
      'Cancer treatment prevents early diagnosis.',
      'Late diagnosis improves treatment outcomes.',
      'Diagnosis has no effect on cancer treatment.',
    ],
    correctIndex: 0,
    explanation: '"başarı şansını artırır" = increases the chance of success.',
  ),

  // 25-28: Anlamca Yakın
  ExamQuestion(
    number: 25,
    type: 'Anlamca Yakın',
    question: 'Anlamca en yakın: "The benefits of the drug clearly outweigh its potential side effects."',
    options: [
      'İlacın yararları, olası yan etkilerinden açıkça daha ağır basar.',
      'İlacın yan etkileri yararlarından çok daha fazladır.',
      'İlacın hiçbir yan etkisi bulunmamaktadır.',
      'İlaç yalnızca yan etki oluşturur.',
    ],
    correctIndex: 0,
    explanation: '"benefits ... outweigh ... side effects" = yararlar daha ağır basar.',
  ),
  ExamQuestion(
    number: 26,
    type: 'Anlamca Yakın',
    question: 'Anlamca en yakın: "Had the disease been diagnosed earlier, the patient might have survived."',
    options: [
      'Hastalık daha erken teşhis edilseydi, hasta hayatta kalabilirdi.',
      'Hastalık erken teşhis edildiği için hasta öldü.',
      'Erken teşhis hastanın durumunu kötüleştirdi.',
      'Hasta teşhis olmadan iyileşti.',
    ],
    correctIndex: 0,
    explanation: '"Had the disease been diagnosed earlier" = daha erken teşhis edilseydi.',
  ),
  ExamQuestion(
    number: 27,
    type: 'Anlamca Yakın',
    question: 'Anlamca en yakın: "Despite receiving treatment, the patient showed no signs of improvement."',
    options: [
      'Tedavi görmesine rağmen hasta hiçbir iyileşme belirtisi göstermedi.',
      'Tedavi sayesinde hasta tamamen iyileşti.',
      'Hasta tedaviyi reddettiği için kötüleşti.',
      'İyileşme belirtileri tedaviden önce başladı.',
    ],
    correctIndex: 0,
    explanation: '"Despite receiving treatment" = tedavi görmesine rağmen.',
  ),
  ExamQuestion(
    number: 28,
    type: 'Anlamca Yakın',
    question: 'Anlamca en yakın: "The more you exercise, the healthier your heart becomes."',
    options: [
      'Ne kadar çok egzersiz yaparsan, kalbin o kadar sağlıklı olur.',
      'Egzersiz yaptıkça kalbin zayıflar.',
      'Egzersiz kalbin sağlığını etkilemez.',
      'Kalp sağlığı egzersizi azaltır.',
    ],
    correctIndex: 0,
    explanation: '"The more ..., the healthier ..." karşılaştırmalı kalıp doğru aktarılmış.',
  ),

  // 29-31: Akışı Bozan
  ExamQuestion(
    number: 29,
    type: 'Akışı Bozan',
    question:
        'Akışı bozan cümle:\n(I) Regular handwashing prevents infection. (II) It removes germs that cause illness. (III) Soap and water are usually sufficient. (IV) The Great Wall of China is very long. (V) When water is unavailable, sanitiser can be used.',
    options: ['I', 'III', 'IV', 'V'],
    optionsTr: ['I. cümle', 'III. cümle', 'IV. cümle', 'V. cümle'],
    correctIndex: 2,
    explanation: 'IV. cümle Çin Seddi\'nden bahseder; el hijyeni konusuyla ilgisizdir.',
  ),
  ExamQuestion(
    number: 30,
    type: 'Akışı Bozan',
    question:
        'Akışı bozan cümle:\n(I) Stress can negatively affect the immune system. (II) It raises levels of cortisol in the body. (III) Chronic stress is linked to heart disease. (IV) The museum opens at nine every morning. (V) Relaxation techniques can help reduce stress.',
    options: ['I', 'II', 'IV', 'V'],
    optionsTr: ['I. cümle', 'II. cümle', 'IV. cümle', 'V. cümle'],
    correctIndex: 2,
    explanation: 'IV. cümle müze saatlerinden bahseder; stres konusuyla ilgisizdir.',
  ),
  ExamQuestion(
    number: 31,
    type: 'Akışı Bozan',
    question:
        'Akışı bozan cümle:\n(I) Smoking damages the lungs over time. (II) It is a leading cause of lung cancer. (III) Quitting smoking improves health quickly. (IV) The novel was published last spring. (V) Second-hand smoke also harms non-smokers.',
    options: ['I', 'II', 'IV', 'V'],
    optionsTr: ['I. cümle', 'II. cümle', 'IV. cümle', 'V. cümle'],
    correctIndex: 2,
    explanation: 'IV. cümle bir romandan bahseder; sigara konusuyla ilgisizdir.',
  ),

  // 32-33: Diyalog
  ExamQuestion(
    number: 32,
    type: 'Diyalog',
    question:
        'Diyalog:\nPatient: I\'ve been feeling exhausted and thirsty all the time lately.\nDoctor: ----\nPatient: All right, I\'ll have the blood test done tomorrow.',
    options: [
      'Those could be signs of diabetes; let\'s run a blood glucose test.',
      'There is absolutely nothing to worry about.',
      'You should stop drinking water immediately.',
      'Fatigue is never a medical concern.',
    ],
    optionsTr: [
      'Bunlar diyabet belirtisi olabilir; bir kan şekeri testi yapalım.',
      'Endişelenecek kesinlikle hiçbir şey yok.',
      'Hemen su içmeyi bırakmalısınız.',
      'Yorgunluk asla tıbbi bir sorun değildir.',
    ],
    correctIndex: 0,
    explanation: 'Hastanın kan testine razı olması, kan şekeri testi önerisiyle uyumludur.',
  ),
  ExamQuestion(
    number: 33,
    type: 'Diyalog',
    question:
        'Diyalog:\nMan: Doctor, is it safe to exercise with my heart condition?\nDoctor: ----\nMan: Thank you, I\'ll start with short daily walks then.',
    options: [
      'Yes, but begin with light activity and increase it gradually.',
      'No, you should never move again.',
      'Exercise has no effect on heart health.',
      'You must run a marathon immediately.',
    ],
    optionsTr: [
      'Evet, ancak hafif aktiviteyle başlayıp yavaşça artırın.',
      'Hayır, bir daha asla hareket etmemelisiniz.',
      'Egzersizin kalp sağlığına etkisi yoktur.',
      'Hemen bir maraton koşmalısınız.',
    ],
    correctIndex: 0,
    explanation: 'Adamın "kısa yürüyüşlerle başlayacağım" yanıtı, hafif aktivite önerisiyle uyumludur.',
  ),

  // 34-40: Paragraf
  ExamQuestion(
    number: 34,
    type: 'Paragraf',
    passageRef:
        'Physical inactivity has become a global health concern. Sedentary lifestyles are associated with an increased risk of obesity, cardiovascular disease and type 2 diabetes. Experts recommend at least 150 minutes of moderate exercise per week. Even small changes, such as taking the stairs or walking short distances, can contribute meaningfully to overall health.',
    passageRefTr:
        'Fiziksel hareketsizlik küresel bir sağlık sorunu hâline gelmiştir. Hareketsiz yaşam tarzları obezite, kalp-damar hastalığı ve tip 2 diyabet riskinin artmasıyla ilişkilidir. Uzmanlar haftada en az 150 dakika orta düzeyde egzersiz önerir. Merdivenleri kullanmak veya kısa mesafeler yürümek gibi küçük değişiklikler bile genel sağlığa anlamlı katkı sağlayabilir.',
    question: 'What is the main idea of the passage?',
    options: [
      'Exercise is dangerous for most adults.',
      'Physical inactivity harms health, and even small activities can help.',
      'Only intense exercise provides any benefit.',
      'Diabetes cannot be influenced by lifestyle.',
    ],
    optionsTr: [
      'Egzersiz çoğu yetişkin için tehlikelidir.',
      'Hareketsizlik sağlığa zarar verir ve küçük aktiviteler bile yardımcı olabilir.',
      'Yalnızca yoğun egzersiz fayda sağlar.',
      'Diyabet yaşam tarzından etkilenmez.',
    ],
    correctIndex: 1,
    explanation: 'Paragraf hareketsizliğin zararını ve küçük aktivitelerin faydasını vurgular.',
  ),
  ExamQuestion(
    number: 35,
    type: 'Paragraf',
    passageRef:
        'Physical inactivity has become a global health concern. Sedentary lifestyles are associated with an increased risk of obesity, cardiovascular disease and type 2 diabetes. Experts recommend at least 150 minutes of moderate exercise per week. Even small changes, such as taking the stairs or walking short distances, can contribute meaningfully to overall health.',
    passageRefTr:
        'Fiziksel hareketsizlik küresel bir sağlık sorunu hâline gelmiştir. Hareketsiz yaşam tarzları obezite, kalp-damar hastalığı ve tip 2 diyabet riskinin artmasıyla ilişkilidir. Uzmanlar haftada en az 150 dakika orta düzeyde egzersiz önerir. Merdivenleri kullanmak veya kısa mesafeler yürümek gibi küçük değişiklikler bile genel sağlığa anlamlı katkı sağlayabilir.',
    question: 'How much moderate exercise per week do experts recommend?',
    options: ['At least 150 minutes', 'Exactly 30 minutes', 'No exercise at all', 'More than 10 hours'],
    optionsTr: ['En az 150 dakika', 'Tam olarak 30 dakika', 'Hiç egzersiz yok', '10 saatten fazla'],
    correctIndex: 0,
    explanation: 'Metin "at least 150 minutes" ifadesini kullanır.',
  ),
  ExamQuestion(
    number: 36,
    type: 'Paragraf',
    passageRef:
        'Physical inactivity has become a global health concern. Sedentary lifestyles are associated with an increased risk of obesity, cardiovascular disease and type 2 diabetes. Experts recommend at least 150 minutes of moderate exercise per week. Even small changes, such as taking the stairs or walking short distances, can contribute meaningfully to overall health.',
    passageRefTr:
        'Fiziksel hareketsizlik küresel bir sağlık sorunu hâline gelmiştir. Hareketsiz yaşam tarzları obezite, kalp-damar hastalığı ve tip 2 diyabet riskinin artmasıyla ilişkilidir. Uzmanlar haftada en az 150 dakika orta düzeyde egzersiz önerir. Merdivenleri kullanmak veya kısa mesafeler yürümek gibi küçük değişiklikler bile genel sağlığa anlamlı katkı sağlayabilir.',
    question: 'Which is given as an example of a small change?',
    options: ['Running a marathon', 'Taking the stairs', 'Lifting heavy weights', 'Sleeping longer'],
    optionsTr: ['Maraton koşmak', 'Merdivenleri kullanmak', 'Ağır kaldırmak', 'Daha uzun uyumak'],
    correctIndex: 1,
    explanation: 'Metin "taking the stairs or walking short distances" örneklerini verir.',
  ),
  ExamQuestion(
    number: 37,
    type: 'Paragraf',
    passageRef:
        'Mental health disorders such as anxiety and depression are among the leading causes of disability worldwide. Despite their prevalence, they are often underdiagnosed because of stigma and limited access to care. Early intervention, including therapy and, when necessary, medication, can greatly improve outcomes. Integrating mental health services into primary care is considered an effective strategy.',
    passageRefTr:
        'Kaygı ve depresyon gibi ruh sağlığı bozuklukları dünya çapında en önemli iş göremezlik nedenleri arasındadır. Yaygın olmalarına rağmen, damgalama ve bakıma sınırlı erişim nedeniyle sıklıkla yeterince teşhis edilemezler. Terapi ve gerektiğinde ilaç dahil erken müdahale sonuçları büyük ölçüde iyileştirebilir. Ruh sağlığı hizmetlerinin birinci basamak bakıma entegre edilmesi etkili bir strateji olarak görülür.',
    question: 'Why are mental health disorders often underdiagnosed?',
    options: [
      'Because they are extremely rare',
      'Because of stigma and limited access to care',
      'Because they always resolve on their own',
      'Because there is no available treatment',
    ],
    optionsTr: [
      'Çünkü son derece nadirdirler',
      'Damgalama ve bakıma sınırlı erişim nedeniyle',
      'Çünkü her zaman kendiliğinden geçerler',
      'Çünkü mevcut bir tedavi yoktur',
    ],
    correctIndex: 1,
    explanation: 'Metin damgalama ve sınırlı erişimi neden olarak gösterir.',
  ),
  ExamQuestion(
    number: 38,
    type: 'Paragraf',
    passageRef:
        'Mental health disorders such as anxiety and depression are among the leading causes of disability worldwide. Despite their prevalence, they are often underdiagnosed because of stigma and limited access to care. Early intervention, including therapy and, when necessary, medication, can greatly improve outcomes. Integrating mental health services into primary care is considered an effective strategy.',
    passageRefTr:
        'Kaygı ve depresyon gibi ruh sağlığı bozuklukları dünya çapında en önemli iş göremezlik nedenleri arasındadır. Yaygın olmalarına rağmen, damgalama ve bakıma sınırlı erişim nedeniyle sıklıkla yeterince teşhis edilemezler. Terapi ve gerektiğinde ilaç dahil erken müdahale sonuçları büyük ölçüde iyileştirebilir. Ruh sağlığı hizmetlerinin birinci basamak bakıma entegre edilmesi etkili bir strateji olarak görülür.',
    question: 'According to the passage, what can greatly improve outcomes?',
    options: [
      'Ignoring the symptoms',
      'Early intervention with therapy and, if needed, medication',
      'Avoiding all forms of treatment',
      'Waiting for the disorder to worsen',
    ],
    optionsTr: [
      'Belirtileri göz ardı etmek',
      'Terapi ve gerekirse ilaçla erken müdahale',
      'Her türlü tedaviden kaçınmak',
      'Bozukluğun kötüleşmesini beklemek',
    ],
    correctIndex: 1,
    explanation: 'Metin erken müdahalenin sonuçları iyileştirdiğini belirtir.',
  ),
  ExamQuestion(
    number: 39,
    type: 'Paragraf',
    passageRef:
        'Mental health disorders such as anxiety and depression are among the leading causes of disability worldwide. Despite their prevalence, they are often underdiagnosed because of stigma and limited access to care. Early intervention, including therapy and, when necessary, medication, can greatly improve outcomes. Integrating mental health services into primary care is considered an effective strategy.',
    passageRefTr:
        'Kaygı ve depresyon gibi ruh sağlığı bozuklukları dünya çapında en önemli iş göremezlik nedenleri arasındadır. Yaygın olmalarına rağmen, damgalama ve bakıma sınırlı erişim nedeniyle sıklıkla yeterince teşhis edilemezler. Terapi ve gerektiğinde ilaç dahil erken müdahale sonuçları büyük ölçüde iyileştirebilir. Ruh sağlığı hizmetlerinin birinci basamak bakıma entegre edilmesi etkili bir strateji olarak görülür.',
    question: 'What strategy is considered effective in the passage?',
    options: [
      'Closing all mental health clinics',
      'Integrating mental health services into primary care',
      'Increasing stigma around disorders',
      'Reducing access to therapy',
    ],
    optionsTr: [
      'Tüm ruh sağlığı kliniklerini kapatmak',
      'Ruh sağlığı hizmetlerini birinci basamak bakıma entegre etmek',
      'Bozukluklara yönelik damgalamayı artırmak',
      'Terapiye erişimi azaltmak',
    ],
    correctIndex: 1,
    explanation: 'Metin birinci basamak bakıma entegrasyonu etkili strateji olarak sunar.',
  ),
  ExamQuestion(
    number: 40,
    type: 'Paragraf',
    passageRef:
        'Mental health disorders such as anxiety and depression are among the leading causes of disability worldwide. Despite their prevalence, they are often underdiagnosed because of stigma and limited access to care. Early intervention, including therapy and, when necessary, medication, can greatly improve outcomes. Integrating mental health services into primary care is considered an effective strategy.',
    passageRefTr:
        'Kaygı ve depresyon gibi ruh sağlığı bozuklukları dünya çapında en önemli iş göremezlik nedenleri arasındadır. Yaygın olmalarına rağmen, damgalama ve bakıma sınırlı erişim nedeniyle sıklıkla yeterince teşhis edilemezler. Terapi ve gerektiğinde ilaç dahil erken müdahale sonuçları büyük ölçüde iyileştirebilir. Ruh sağlığı hizmetlerinin birinci basamak bakıma entegre edilmesi etkili bir strateji olarak görülür.',
    question: 'It can be inferred that mental health disorders ----.',
    options: [
      'affect very few people globally',
      'are a significant cause of disability but treatable',
      'cannot be treated with therapy',
      'are never related to stigma',
    ],
    optionsTr: [
      'dünya çapında çok az insanı etkiler',
      'önemli bir iş göremezlik nedenidir ancak tedavi edilebilir',
      'terapiyle tedavi edilemez',
      'hiçbir zaman damgalamayla ilgili değildir',
    ],
    correctIndex: 1,
    explanation: 'Metin bozuklukların yaygın ve iş göremezlik nedeni olduğunu ama erken müdahaleyle iyileşebileceğini ima eder.',
  ),
];
