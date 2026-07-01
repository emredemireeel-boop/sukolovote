/// YÖKDİL Sağlık - Çıkmış Sınav Denemeleri
/// Gerçek YÖKDİL Sağlık sınav formatında (tüm soru tipleri) etkileşimli denemeler.
/// Not: ÖSYM sorularının telifi ÖSYM'ye aittir; bu modül aynı formatta özgün
/// hazırlanmış deneme sorularından oluşur.

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
  final String type; // 'Kelime', 'Bağlaç', 'Cümle Tamamlama', 'Çeviri', 'Paragraf', 'Anlamca Yakın', 'Akışı Bozan', 'Diyalog'
  final String? passageRef; // İlgili paragraf metni (paragraf sorularında)
  final String question;
  final List<String> options;
  final int correctIndex;
  final String explanation;

  const ExamQuestion({
    required this.number,
    required this.type,
    this.passageRef,
    required this.question,
    required this.options,
    required this.correctIndex,
    required this.explanation,
  });
}

final List<MockExam> mockExams = [
  // ═══════════════════ 2020 DENEMESİ ═══════════════════
  MockExam(
    id: 'yokdil_saglik_2020',
    title: '2020 YÖKDİL Sağlık',
    subtitle: 'Çıkmış sınav formatında deneme',
    year: 2020,
    durationMinutes: 45,
    questions: const [
      ExamQuestion(
        number: 1,
        type: 'Kelime',
        question:
            'Chronic sleep deprivation can severely ---- cognitive performance, impairing memory and decision-making.',
        options: ['enhance', 'undermine', 'stabilise', 'celebrate'],
        correctIndex: 1,
        explanation:
            '"impairing" (bozarak) ifadesi olumsuz bir etki gösterir; "undermine" (zayıflatmak/baltalamak) anlama uyar.',
      ),
      ExamQuestion(
        number: 2,
        type: 'Kelime',
        question:
            'The new vaccine proved highly ---- , reducing the incidence of infection by over 90 percent.',
        options: ['efficient', 'reluctant', 'obscure', 'redundant'],
        correctIndex: 0,
        explanation:
            'Enfeksiyonu %90 azaltan bir aşı "efficient/effective" (etkili) olmalıdır.',
      ),
      ExamQuestion(
        number: 3,
        type: 'Kelime',
        question:
            'Physicians must ---- the risks and benefits before prescribing any potent medication.',
        options: ['neglect', 'weigh', 'conceal', 'postpone'],
        correctIndex: 1,
        explanation:
            '"weigh the risks and benefits" = riskleri ve yararları tartmak; kalıp ifadedir.',
      ),
      ExamQuestion(
        number: 4,
        type: 'Kelime',
        question:
            'Early ---- of the disease significantly increases the likelihood of successful treatment.',
        options: ['detection', 'refusal', 'shortage', 'disguise'],
        correctIndex: 0,
        explanation:
            '"Early detection" (erken teşhis) tedavi başarısını artırır; kalıp ifadedir.',
      ),
      ExamQuestion(
        number: 5,
        type: 'Bağlaç',
        question:
            '---- antibiotics are effective against bacterial infections, they are useless against viruses.',
        options: ['Because', 'While', 'Unless', 'So that'],
        correctIndex: 1,
        explanation:
            'İki karşıt durum verilmiş (bakteriye etkili / virüse etkisiz); zıtlık bağlacı "While" uygundur.',
      ),
      ExamQuestion(
        number: 6,
        type: 'Bağlaç',
        question:
            'The patient was advised to rest ---- take the prescribed medication regularly.',
        options: ['as well as', 'rather than', 'instead of', 'no sooner than'],
        correctIndex: 0,
        explanation:
            'İki tavsiye birlikte veriliyor; "as well as" (hem de) ekleme bildirir.',
      ),
      ExamQuestion(
        number: 7,
        type: 'Bağlaç',
        question:
            '---- the surgery was successful, the patient required months of physical therapy afterwards.',
        options: ['Although', 'Since', 'In case', 'As if'],
        correctIndex: 0,
        explanation:
            'Başarılı ameliyat ile uzun terapi ihtiyacı arasında zıtlık var; "Although" uygundur.',
      ),
      ExamQuestion(
        number: 8,
        type: 'Cümle Tamamlama',
        question:
            'Regular physical activity is recommended ---- .',
        options: [
          'unless it caused numerous injuries',
          'because it helps regulate blood pressure and mood',
          'although exercise had no measurable benefits',
          'if patients refused all forms of treatment',
        ],
        correctIndex: 1,
        explanation:
            'Egzersizin tavsiye edilme nedeni mantıklı bir gerekçe olmalı; "kan basıncını ve ruh halini düzenlemeye yardımcı olduğu için" doğru.',
      ),
      ExamQuestion(
        number: 9,
        type: 'Cümle Tamamlama',
        question:
            '---- , the hospital implemented stricter hygiene protocols.',
        options: [
          'To reduce the spread of hospital-acquired infections',
          'Although hygiene had never been a concern',
          'Unless patients recovered on their own',
          'Because staff opposed every safety measure',
        ],
        correctIndex: 0,
        explanation:
            'Amaç bildiren "To reduce..." ifadesi, hijyen protokollerinin uygulanma sebebiyle uyumludur.',
      ),
      ExamQuestion(
        number: 10,
        type: 'Çeviri',
        question:
            'İngilizce → Türkçe: "Obesity is a major risk factor for a wide range of chronic diseases."',
        options: [
          'Obezite, çok çeşitli kronik hastalıklar için önemli bir risk faktörüdür.',
          'Obezite, birçok bulaşıcı hastalığı tamamen önleyen bir etkendir.',
          'Kronik hastalıklar nadiren obezite ile ilişkilendirilir.',
          'Obezite yalnızca kalp hastalıklarının tek nedenidir.',
        ],
        correctIndex: 0,
        explanation:
            '"major risk factor for a wide range of chronic diseases" = çok çeşitli kronik hastalıklar için önemli bir risk faktörü.',
      ),
      ExamQuestion(
        number: 11,
        type: 'Çeviri',
        question:
            'Türkçe → İngilizce: "Düzenli tarama, meme kanserinin erken evrede yakalanmasını sağlar."',
        options: [
          'Regular screening allows breast cancer to be detected at an early stage.',
          'Breast cancer prevents regular screening in early stages.',
          'Screening is rarely useful for detecting breast cancer.',
          'Early breast cancer makes regular screening impossible.',
        ],
        correctIndex: 0,
        explanation:
            '"erken evrede yakalanmasını sağlar" = allows ... to be detected at an early stage.',
      ),
      ExamQuestion(
        number: 12,
        type: 'Anlamca Yakın',
        question:
            'Anlamca en yakın cümle: "Smoking is by far the leading cause of preventable death worldwide."',
        options: [
          'Sigara, dünya çapında önlenebilir ölümlerin açık ara başlıca nedenidir.',
          'Sigara, dünyada ölümlerin en az görülen nedenidir.',
          'Önlenebilir ölümler nadiren sigarayla ilişkilidir.',
          'Sigara yalnızca gelişmiş ülkelerde ölüme yol açar.',
        ],
        correctIndex: 0,
        explanation:
            '"by far the leading cause of preventable death" = önlenebilir ölümlerin açık ara başlıca nedeni.',
      ),
      ExamQuestion(
        number: 13,
        type: 'Anlamca Yakın',
        question:
            'Anlamca en yakın cümle: "Unless treated promptly, the infection may spread to surrounding tissues."',
        options: [
          'Enfeksiyon hızlıca tedavi edilmezse çevredeki dokulara yayılabilir.',
          'Enfeksiyon her durumda çevre dokulara yayılır.',
          'Hızlı tedavi enfeksiyonun yayılmasını hızlandırır.',
          'Çevre dokular enfeksiyonu kendiliğinden yok eder.',
        ],
        correctIndex: 0,
        explanation:
            '"Unless treated promptly" = hızlıca tedavi edilmezse; koşul olumsuzdur.',
      ),
      ExamQuestion(
        number: 14,
        type: 'Akışı Bozan',
        question:
            'Paragrafın akışını bozan cümleyi bulun:\n(I) Vitamin D is essential for bone health. (II) It helps the body absorb calcium efficiently. (III) A deficiency can lead to weakened bones. (IV) Many smartphones now include health-tracking applications. (V) Sunlight exposure is a natural source of vitamin D.',
        options: ['I', 'II', 'IV', 'V'],
        correctIndex: 2,
        explanation:
            'IV. cümle akıllı telefon uygulamalarından bahseder; D vitamini konusuyla ilgisizdir.',
      ),
      ExamQuestion(
        number: 15,
        type: 'Diyalog',
        question:
            'Diyalogu tamamlayın:\nNurse: The patient\'s blood pressure is still quite high.\nDoctor: ---- \nNurse: All right, I will prepare the medication right away.',
        options: [
          'Then let\'s increase the dosage and monitor closely.',
          'There is no need to check it again.',
          'I think she can be discharged immediately.',
          'Blood pressure has nothing to do with treatment.',
        ],
        correctIndex: 0,
        explanation:
            'Hemşirenin "ilacı hemen hazırlayacağım" yanıtı, dozun artırılması önerisiyle uyumludur.',
      ),
      ExamQuestion(
        number: 16,
        type: 'Paragraf',
        passageRef:
            'Hypertension, often called the "silent killer", frequently produces no obvious symptoms, yet it substantially raises the risk of heart attack and stroke. Because many people are unaware of their condition, routine blood pressure measurement is critical. Lifestyle changes such as reducing salt intake, exercising regularly and managing stress can lower blood pressure, though some patients also require medication.',
        question:
            'Why is hypertension referred to as the "silent killer"?',
        options: [
          'Because it can only be treated with medication',
          'Because it often causes no obvious symptoms while remaining dangerous',
          'Because it exclusively affects elderly patients',
          'Because it produces loud warning signs',
        ],
        correctIndex: 1,
        explanation:
            'Metinde "produces no obvious symptoms, yet ... raises the risk" denir; belirgin belirti vermez ama tehlikelidir.',
      ),
      ExamQuestion(
        number: 17,
        type: 'Paragraf',
        passageRef:
            'Hypertension, often called the "silent killer", frequently produces no obvious symptoms, yet it substantially raises the risk of heart attack and stroke. Because many people are unaware of their condition, routine blood pressure measurement is critical. Lifestyle changes such as reducing salt intake, exercising regularly and managing stress can lower blood pressure, though some patients also require medication.',
        question:
            'According to the passage, which of the following can help lower blood pressure?',
        options: [
          'Increasing salt intake',
          'Avoiding all physical activity',
          'Reducing salt intake and exercising regularly',
          'Ignoring stress management',
        ],
        correctIndex: 2,
        explanation:
            'Metin tuzu azaltmayı, düzenli egzersizi ve stres yönetimini önerir.',
      ),
      ExamQuestion(
        number: 18,
        type: 'Paragraf',
        passageRef:
            'Hypertension, often called the "silent killer", frequently produces no obvious symptoms, yet it substantially raises the risk of heart attack and stroke. Because many people are unaware of their condition, routine blood pressure measurement is critical. Lifestyle changes such as reducing salt intake, exercising regularly and managing stress can lower blood pressure, though some patients also require medication.',
        question: 'It can be inferred from the passage that ---- .',
        options: [
          'blood pressure never needs to be measured',
          'lifestyle changes alone are always sufficient for every patient',
          'some patients need medication in addition to lifestyle changes',
          'hypertension is completely harmless',
        ],
        correctIndex: 2,
        explanation:
            '"though some patients also require medication" ifadesi ilaç gereksinimini belirtir.',
      ),
      ExamQuestion(
        number: 19,
        type: 'Kelime',
        question:
            'The immune system is designed to ---- harmful pathogens that enter the body.',
        options: ['nourish', 'eliminate', 'imitate', 'inherit'],
        correctIndex: 1,
        explanation:
            'Bağışıklık sistemi zararlı patojenleri "eliminate" (yok etmek) için tasarlanmıştır.',
      ),
      ExamQuestion(
        number: 20,
        type: 'Bağlaç',
        question:
            'Patients should complete the entire course of antibiotics ---- their symptoms disappear early.',
        options: ['even if', 'so that', 'because', 'as long as'],
        correctIndex: 0,
        explanation:
            'Belirtiler erken kaybolsa bile tedaviyi tamamlamak gerekir; "even if" (olsa bile) uygundur.',
      ),
    ],
  ),

  // ═══════════════════ 2021 DENEMESİ ═══════════════════
  MockExam(
    id: 'yokdil_saglik_2021',
    title: '2021 YÖKDİL Sağlık',
    subtitle: 'Çıkmış sınav formatında deneme',
    year: 2021,
    durationMinutes: 45,
    questions: const [
      ExamQuestion(
        number: 1,
        type: 'Kelime',
        question:
            'The researchers observed a ---- decline in mortality rates after the intervention was introduced.',
        options: ['negligible', 'significant', 'reluctant', 'temporary'],
        correctIndex: 1,
        explanation:
            'Bir müdahalenin ardından ölüm oranlarında "significant" (kayda değer) bir düşüş anlamlıdır.',
      ),
      ExamQuestion(
        number: 2,
        type: 'Kelime',
        question:
            'Prolonged exposure to ultraviolet radiation may ---- the risk of skin cancer.',
        options: ['diminish', 'heighten', 'ignore', 'reverse'],
        correctIndex: 1,
        explanation:
            'UV\'ye uzun maruz kalmak cilt kanseri riskini "heighten" (artırmak) yönünde etkiler.',
      ),
      ExamQuestion(
        number: 3,
        type: 'Kelime',
        question:
            'A balanced diet is ---- for maintaining a healthy immune system.',
        options: ['indispensable', 'optional', 'harmful', 'irrelevant'],
        correctIndex: 0,
        explanation:
            'Dengeli beslenme bağışıklık için "indispensable" (vazgeçilmez) olmalıdır.',
      ),
      ExamQuestion(
        number: 4,
        type: 'Kelime',
        question:
            'The clinical trial was ---- due to unexpected and severe side effects.',
        options: ['launched', 'suspended', 'praised', 'extended'],
        correctIndex: 1,
        explanation:
            'Ciddi yan etkiler nedeniyle deneme "suspended" (askıya alındı/durduruldu).',
      ),
      ExamQuestion(
        number: 5,
        type: 'Bağlaç',
        question:
            'The medication relieves pain effectively; ----, it may cause drowsiness in some patients.',
        options: ['therefore', 'however', 'moreover', 'thus'],
        correctIndex: 1,
        explanation:
            'Olumlu ve olumsuz iki durum arasında zıtlık var; "however" uygundur.',
      ),
      ExamQuestion(
        number: 6,
        type: 'Bağlaç',
        question:
            '---- adopting a healthier lifestyle, many patients were able to reduce their reliance on medication.',
        options: ['Despite', 'By', 'Unless', 'Whereas'],
        correctIndex: 1,
        explanation:
            '"By adopting..." = ... benimseyerek; araç/yöntem bildirir.',
      ),
      ExamQuestion(
        number: 7,
        type: 'Bağlaç',
        question:
            'Vaccination protects not only the individual ---- the wider community through herd immunity.',
        options: ['but also', 'either', 'rather than', 'as though'],
        correctIndex: 0,
        explanation:
            '"not only ... but also ..." ikili bağlaç kalıbıdır.',
      ),
      ExamQuestion(
        number: 8,
        type: 'Cümle Tamamlama',
        question:
            'The surgeon postponed the operation ---- .',
        options: [
          'because the patient developed a sudden fever',
          'although there were no complications whatsoever',
          'so that the illness could spread faster',
          'unless the procedure was entirely unnecessary',
        ],
        correctIndex: 0,
        explanation:
            'Ameliyatın ertelenme nedeni mantıklı olmalı; "hasta aniden ateşlendiği için" doğru.',
      ),
      ExamQuestion(
        number: 9,
        type: 'Cümle Tamamlama',
        question:
            'Although the treatment was expensive, ---- .',
        options: [
          'it proved remarkably effective for most patients',
          'no one had ever tried it before',
          'the hospital refused to admit any patients',
          'it was completely free of charge',
        ],
        correctIndex: 0,
        explanation:
            '"Although expensive" ile zıt biçimde olumlu bir sonuç gelmeli; "çoğu hasta için oldukça etkili oldu" uygundur.',
      ),
      ExamQuestion(
        number: 10,
        type: 'Çeviri',
        question:
            'İngilizce → Türkçe: "Regular exercise strengthens the heart and improves circulation."',
        options: [
          'Düzenli egzersiz kalbi güçlendirir ve dolaşımı iyileştirir.',
          'Egzersiz kalbi zayıflatır ve dolaşımı engeller.',
          'Kalp hastalıkları egzersizi imkânsız kılar.',
          'Dolaşım bozuklukları egzersizle kötüleşir.',
        ],
        correctIndex: 0,
        explanation:
            '"strengthens the heart and improves circulation" = kalbi güçlendirir ve dolaşımı iyileştirir.',
      ),
      ExamQuestion(
        number: 11,
        type: 'Çeviri',
        question:
            'Türkçe → İngilizce: "Aşırı antibiyotik kullanımı, ilaca dirençli bakterilerin ortaya çıkmasına yol açar."',
        options: [
          'The overuse of antibiotics leads to the emergence of drug-resistant bacteria.',
          'Drug-resistant bacteria prevent the use of antibiotics.',
          'Antibiotics are rarely used against bacteria.',
          'Bacteria eliminate antibiotics before they act.',
        ],
        correctIndex: 0,
        explanation:
            '"ortaya çıkmasına yol açar" = leads to the emergence of.',
      ),
      ExamQuestion(
        number: 12,
        type: 'Anlamca Yakın',
        question:
            'Anlamca en yakın cümle: "The benefits of the drug clearly outweigh its potential side effects."',
        options: [
          'İlacın yararları, olası yan etkilerinden açıkça daha ağır basar.',
          'İlacın yan etkileri yararlarından çok daha fazladır.',
          'İlacın hiçbir yan etkisi bulunmamaktadır.',
          'İlaç yalnızca yan etki oluşturur.',
        ],
        correctIndex: 0,
        explanation:
            '"benefits ... outweigh ... side effects" = yararlar yan etkilerden daha ağır basar.',
      ),
      ExamQuestion(
        number: 13,
        type: 'Anlamca Yakın',
        question:
            'Anlamca en yakın cümle: "Had the disease been diagnosed earlier, the patient might have survived."',
        options: [
          'Hastalık daha erken teşhis edilseydi, hasta hayatta kalabilirdi.',
          'Hastalık erken teşhis edildiği için hasta öldü.',
          'Erken teşhis hastanın durumunu kötüleştirdi.',
          'Hasta teşhis olmadan iyileşti.',
        ],
        correctIndex: 0,
        explanation:
            '"Had the disease been diagnosed earlier" = daha erken teşhis edilseydi (III. tip koşul).',
      ),
      ExamQuestion(
        number: 14,
        type: 'Akışı Bozan',
        question:
            'Paragrafın akışını bozan cümleyi bulun:\n(I) Regular handwashing is one of the simplest ways to prevent infection. (II) It removes germs that can cause illness. (III) Soap and water are usually sufficient. (IV) The Great Wall of China is visible from certain altitudes. (V) When water is unavailable, hand sanitiser can be used.',
        options: ['I', 'III', 'IV', 'V'],
        correctIndex: 2,
        explanation:
            'IV. cümle Çin Seddi\'nden bahseder; el hijyeni konusuyla ilgisizdir.',
      ),
      ExamQuestion(
        number: 15,
        type: 'Diyalog',
        question:
            'Diyalogu tamamlayın:\nPatient: I\'ve been feeling exhausted and thirsty all the time lately.\nDoctor: ---- \nPatient: All right, I\'ll have the blood test done tomorrow morning.',
        options: [
          'Those could be signs of diabetes; let\'s run a blood glucose test.',
          'There is absolutely nothing to worry about.',
          'You should stop drinking water immediately.',
          'Fatigue is never a medical concern.',
        ],
        correctIndex: 0,
        explanation:
            'Hastanın kan testine razı olması, doktorun kan şekeri testi önerisiyle uyumludur.',
      ),
      ExamQuestion(
        number: 16,
        type: 'Paragraf',
        passageRef:
            'Physical inactivity has become a global health concern. Sedentary lifestyles are associated with an increased risk of obesity, cardiovascular disease and type 2 diabetes. Experts recommend at least 150 minutes of moderate exercise per week. Even small changes, such as taking the stairs or walking short distances, can contribute meaningfully to overall health.',
        question: 'What is the main idea of the passage?',
        options: [
          'Exercise is dangerous for most adults.',
          'Physical inactivity harms health, and even small activities can help.',
          'Only intense exercise provides any benefit.',
          'Diabetes cannot be influenced by lifestyle.',
        ],
        correctIndex: 1,
        explanation:
            'Paragraf hareketsizliğin zararını ve küçük aktivitelerin bile faydasını vurgular.',
      ),
      ExamQuestion(
        number: 17,
        type: 'Paragraf',
        passageRef:
            'Physical inactivity has become a global health concern. Sedentary lifestyles are associated with an increased risk of obesity, cardiovascular disease and type 2 diabetes. Experts recommend at least 150 minutes of moderate exercise per week. Even small changes, such as taking the stairs or walking short distances, can contribute meaningfully to overall health.',
        question:
            'How much moderate exercise per week do experts recommend?',
        options: [
          'At least 150 minutes',
          'Exactly 30 minutes',
          'No exercise at all',
          'More than 10 hours',
        ],
        correctIndex: 0,
        explanation:
            'Metinde "at least 150 minutes of moderate exercise per week" açıkça belirtilir.',
      ),
      ExamQuestion(
        number: 18,
        type: 'Paragraf',
        passageRef:
            'Physical inactivity has become a global health concern. Sedentary lifestyles are associated with an increased risk of obesity, cardiovascular disease and type 2 diabetes. Experts recommend at least 150 minutes of moderate exercise per week. Even small changes, such as taking the stairs or walking short distances, can contribute meaningfully to overall health.',
        question:
            'Which of the following is given as an example of a small change?',
        options: [
          'Running a marathon',
          'Taking the stairs',
          'Lifting heavy weights',
          'Sleeping longer',
        ],
        correctIndex: 1,
        explanation:
            'Metin "taking the stairs or walking short distances" örneklerini verir.',
      ),
      ExamQuestion(
        number: 19,
        type: 'Kelime',
        question:
            'The World Health Organization plays a ---- role in coordinating the global response to pandemics.',
        options: ['trivial', 'crucial', 'reluctant', 'random'],
        correctIndex: 1,
        explanation:
            'DSÖ pandemi yanıtında "crucial" (kritik/hayati) bir rol oynar.',
      ),
      ExamQuestion(
        number: 20,
        type: 'Cümle Tamamlama',
        question:
            'In order to prevent the spread of the virus, ---- .',
        options: [
          'health authorities imposed strict quarantine measures',
          'people were encouraged to gather in large crowds',
          'all hospitals were permanently closed',
          'protective equipment was completely banned',
        ],
        correctIndex: 0,
        explanation:
            'Virüsün yayılmasını önlemek için mantıklı önlem: sıkı karantina uygulanması.',
      ),
    ],
  ),
];
