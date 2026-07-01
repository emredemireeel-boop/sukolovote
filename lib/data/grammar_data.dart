// YÖKDİL Sağlık - Gramer Rehberi
// Sıfırdan İngilizce öğrenen biri için tasarlanmış, her örnek cümlenin Türkçesi
// verilen kapsamlı gramer içeriği + 12 zamanı gösteren Zamanlar Tablosu.

class GrammarTopic {
  final String title;
  final String icon;
  final String level; // 'Başlangıç', 'Orta', 'İleri'
  final String description;
  final List<GrammarRule> rules;
  final List<String> yokdilTips;

  const GrammarTopic({
    required this.title,
    required this.icon,
    required this.level,
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
  final List<String> examplesTr; // Örneklerin Türkçe karşılıkları (aynı sırada)

  const GrammarRule({
    required this.name,
    required this.explanation,
    required this.formula,
    required this.examples,
    this.examplesTr = const [],
  });
}

/// Zamanlar Tablosu satırı (Olumlu / Olumsuz / Soru)
class TenseInfo {
  final String name;
  final String nameTr;
  final String usage; // ne zaman kullanılır (Türkçe)
  final String positive;
  final String negative;
  final String question;
  final String example;
  final String exampleTr;

  const TenseInfo({
    required this.name,
    required this.nameTr,
    required this.usage,
    required this.positive,
    required this.negative,
    required this.question,
    required this.example,
    required this.exampleTr,
  });
}

// ═══════════════════ 12 ZAMAN TABLOSU ═══════════════════
final List<TenseInfo> tenseTable = [
  TenseInfo(
    name: 'Simple Present',
    nameTr: 'Geniş Zaman',
    usage: 'Alışkanlıklar, genel gerçekler, rutinler. (her gün, genellikle, her zaman)',
    positive: 'I/You/We/They write\nHe/She/It writes',
    negative: 'I/You/We/They don\'t write\nHe/She/It doesn\'t write',
    question: 'Do I/you/we/they write?\nDoes he/she/it write?',
    example: 'She works at a hospital.',
    exampleTr: 'O bir hastanede çalışır.',
  ),
  TenseInfo(
    name: 'Present Continuous',
    nameTr: 'Şimdiki Zaman',
    usage: 'Şu an olan veya bu aralar süregelen eylemler. (şu anda, şimdi)',
    positive: 'I am writing\nYou/We/They are writing\nHe/She/It is writing',
    negative: 'I am not writing\nYou/We/They aren\'t writing\nHe/She/It isn\'t writing',
    question: 'Am I writing?\nAre you/we/they writing?\nIs he/she/it writing?',
    example: 'The doctor is examining a patient now.',
    exampleTr: 'Doktor şu anda bir hastayı muayene ediyor.',
  ),
  TenseInfo(
    name: 'Simple Past',
    nameTr: 'Geçmiş Zaman',
    usage: 'Geçmişte olup bitmiş eylemler. (dün, geçen hafta, 2010\'da)',
    positive: 'I/You/He/She/It/We/They wrote',
    negative: 'I/You/He/She/It/We/They didn\'t write',
    question: 'Did I/you/he/she/it/we/they write?',
    example: 'He visited the clinic yesterday.',
    exampleTr: 'O dün kliniği ziyaret etti.',
  ),
  TenseInfo(
    name: 'Past Continuous',
    nameTr: 'Şimdiki Zamanın Hikâyesi',
    usage: 'Geçmişte belli bir anda devam etmekte olan eylem.',
    positive: 'I/He/She/It was writing\nYou/We/They were writing',
    negative: 'I/He/She/It wasn\'t writing\nYou/We/They weren\'t writing',
    question: 'Was I/he/she/it writing?\nWere you/we/they writing?',
    example: 'She was studying when the phone rang.',
    exampleTr: 'Telefon çaldığında o ders çalışıyordu.',
  ),
  TenseInfo(
    name: 'Simple Future',
    nameTr: 'Gelecek Zaman',
    usage: 'Gelecekteki eylemler, tahminler, anlık kararlar. (yarın, gelecek yıl)',
    positive: 'I/You/He/She/It/We/They will write',
    negative: 'I/You/He/She/It/We/They won\'t write',
    question: 'Will I/you/he/she/it/we/they write?',
    example: 'The results will arrive tomorrow.',
    exampleTr: 'Sonuçlar yarın gelecek.',
  ),
  TenseInfo(
    name: 'Future Continuous',
    nameTr: 'Gelecek Zamanın Sürekli Hâli',
    usage: 'Gelecekte belli bir anda devam ediyor olacak eylem.',
    positive: 'I/You/He/She/It/We/They will be writing',
    negative: 'I/You/He/She/It/We/They won\'t be writing',
    question: 'Will I/you/he/she/it/we/they be writing?',
    example: 'This time tomorrow, I will be working.',
    exampleTr: 'Yarın bu saatte çalışıyor olacağım.',
  ),
  TenseInfo(
    name: 'Present Perfect',
    nameTr: 'Yakın Geçmiş Zaman',
    usage: 'Geçmişte olup etkisi şu ana ulaşan eylemler. (henüz, şimdiye kadar, hiç)',
    positive: 'I/You/We/They have written\nHe/She/It has written',
    negative: 'I/You/We/They haven\'t written\nHe/She/It hasn\'t written',
    question: 'Have I/you/we/they written?\nHas he/she/it written?',
    example: 'Science has made great progress.',
    exampleTr: 'Bilim büyük ilerleme kaydetti.',
  ),
  TenseInfo(
    name: 'Present Perfect Continuous',
    nameTr: 'Yakın Geçmişin Sürekli Hâli',
    usage: 'Geçmişte başlayıp hâlâ süren eyleme (süreye) vurgu. (for, since ile)',
    positive: 'I/You/We/They have been writing\nHe/She/It has been writing',
    negative: 'I/You/We/They haven\'t been writing\nHe/She/It hasn\'t been writing',
    question: 'Have you been writing?\nHas he/she/it been writing?',
    example: 'She has been studying for three hours.',
    exampleTr: 'O üç saattir ders çalışıyor.',
  ),
  TenseInfo(
    name: 'Past Perfect',
    nameTr: 'Geçmişten Önceki Geçmiş',
    usage: 'Geçmişteki bir olaydan daha önce olmuş eylem.',
    positive: 'I/You/He/She/It/We/They had written',
    negative: 'I/You/He/She/It/We/They hadn\'t written',
    question: 'Had I/you/he/she/it/we/they written?',
    example: 'The patient had left before the doctor arrived.',
    exampleTr: 'Doktor gelmeden önce hasta gitmişti.',
  ),
  TenseInfo(
    name: 'Past Perfect Continuous',
    nameTr: 'Geçmişteki Sürekliliğin Hikâyesi',
    usage: 'Geçmişteki bir andan öncesine kadar süregelmiş eylem.',
    positive: 'I/You/He/She/It/We/They had been writing',
    negative: 'I/You/He/She/It/We/They hadn\'t been writing',
    question: 'Had I/you/he/she/it/we/they been writing?',
    example: 'He had been waiting for an hour when the bus came.',
    exampleTr: 'Otobüs geldiğinde bir saattir bekliyordu.',
  ),
  TenseInfo(
    name: 'Future Perfect',
    nameTr: 'Gelecekte Tamamlanmış Zaman',
    usage: 'Gelecekte belli bir andan önce tamamlanmış olacak eylem. (by ile)',
    positive: 'I/You/He/She/It/We/They will have written',
    negative: 'I/You/He/She/It/We/They won\'t have written',
    question: 'Will I/you/he/she/it/we/they have written?',
    example: 'By 2030, they will have found a cure.',
    exampleTr: '2030\'a kadar bir tedavi bulmuş olacaklar.',
  ),
  TenseInfo(
    name: 'Future Perfect Continuous',
    nameTr: 'Gelecekte Süregelmiş Zaman',
    usage: 'Gelecekte belli bir ana kadar süregelmiş olacak eylem.',
    positive: 'I/You/He/She/It/We/They will have been writing',
    negative: 'I/You/He/She/It/We/They won\'t have been writing',
    question: 'Will I/you/he/she/it/we/they have been writing?',
    example: 'By June, she will have been working here for ten years.',
    exampleTr: 'Haziran\'a kadar burada on yıldır çalışıyor olacak.',
  ),
];

// ═══════════════════ GRAMER KONULARI (0'dan İleri) ═══════════════════
final List<GrammarTopic> grammarTopics = [
  // 1 — Şahıs Zamirleri & To Be
  GrammarTopic(
    title: 'Şahıs Zamirleri & "To Be" (am/is/are)',
    icon: '👤',
    level: 'Başlangıç',
    description: 'İngilizcenin en temel yapı taşı: kim olduğumuzu ve bir şeyin ne olduğunu söylemek. "Ben, sen, o..." ve "-im, -sin, -dir" anlamındaki am/is/are.',
    rules: [
      GrammarRule(
        name: 'Şahıs Zamirleri (Subject Pronouns)',
        explanation: 'Cümlenin öznesi olan kişi/nesne zamirleri. Türkçedeki "ben, sen, o, biz, siz, onlar".',
        formula: 'I (ben) • you (sen) • he (o-erkek) • she (o-kadın) • it (o-nesne) • we (biz) • you (siz) • they (onlar)',
        examples: [
          'I am a student.',
          'They are doctors.',
          'It is a hospital.',
        ],
        examplesTr: [
          'Ben bir öğrenciyim.',
          'Onlar doktordur.',
          'O (bina) bir hastanedir.',
        ],
      ),
      GrammarRule(
        name: 'To Be: am / is / are',
        explanation: '"olmak" fiilidir. I ile "am", he/she/it ile "is", you/we/they ile "are" kullanılır. Türkçede genelde çevrilmez, "-dir/-dır" ekiyle karşılanır.',
        formula: 'I am • He/She/It is • You/We/They are',
        examples: [
          'She is a nurse.',
          'We are ready.',
          'The patient is tired.',
        ],
        examplesTr: [
          'O bir hemşiredir.',
          'Biz hazırız.',
          'Hasta yorgundur.',
        ],
      ),
      GrammarRule(
        name: 'Olumsuz ve Soru',
        explanation: 'Olumsuz için "not" eklenir (isn\'t, aren\'t). Soru için am/is/are başa gelir.',
        formula: 'Olumsuz: is/are + not  |  Soru: Is/Are + özne ...?',
        examples: [
          'He is not (isn\'t) a doctor.',
          'Are you a student?',
          'Is she okay?',
        ],
        examplesTr: [
          'O doktor değildir.',
          'Sen öğrenci misin?',
          'O iyi mi?',
        ],
      ),
    ],
    yokdilTips: [
      '"am/is/are" bir isim veya sıfatın önünde gelir: She is happy. (mutlu)',
      'Kısaltmalar: I\'m, you\'re, he\'s, she\'s, it\'s, we\'re, they\'re.',
    ],
  ),

  // 2 — Artikeller
  GrammarTopic(
    title: 'Artikeller: a / an / the',
    icon: '🔤',
    level: 'Başlangıç',
    description: 'İsimlerin önüne gelen küçük kelimeler. "a/an" = herhangi bir (tek), "the" = belirli (o).',
    rules: [
      GrammarRule(
        name: 'a / an (Belirsiz Artikel)',
        explanation: 'Tekil, herhangi bir şeyden ilk kez bahsederken. Ünsüz sesle başlayan kelimeden önce "a", ünlü sesle (a,e,i,o,u) başlayandan önce "an".',
        formula: 'a + ünsüz ses  |  an + ünlü ses',
        examples: [
          'a doctor, a book, a university',
          'an apple, an hour, an X-ray',
        ],
        examplesTr: [
          'bir doktor, bir kitap, bir üniversite',
          'bir elma, bir saat, bir röntgen',
        ],
      ),
      GrammarRule(
        name: 'the (Belirli Artikel)',
        explanation: 'Konuşan ve dinleyenin bildiği, daha önce bahsedilmiş ya da tek olan şeyler için. Türkçedeki "o/şu belirli".',
        formula: 'the + (bilinen/belirli isim)',
        examples: [
          'The doctor examined the patient.',
          'The sun is a star.',
          'Close the door, please.',
        ],
        examplesTr: [
          'Doktor hastayı muayene etti. (bilinen doktor)',
          'Güneş bir yıldızdır. (tek olan)',
          'Lütfen kapıyı kapat. (o kapı)',
        ],
      ),
    ],
    yokdilTips: [
      'Kural: Önemli olan yazılış değil SES\'tir. "an hour" (h okunmaz), "a university" (yu- sesi).',
      'Genel bir şeyden çoğul veya sayılamayan olarak bahsederken artikel kullanılmaz: Water is essential. (Su gereklidir.)',
    ],
  ),

  // 3 — Çoğullar & İşaret Sıfatları
  GrammarTopic(
    title: 'Çoğullar & this/that/these/those',
    icon: '📦',
    level: 'Başlangıç',
    description: 'Bir şey mi çok şey mi? Yakın mı uzak mı? İsimleri çoğul yapmak ve işaret etmek.',
    rules: [
      GrammarRule(
        name: 'Çoğul İsimler (Plurals)',
        explanation: 'Çoğu isme "-s" eklenir. -s, -ss, -sh, -ch, -x ile bitenlere "-es". Bazıları düzensizdir.',
        formula: 'book → books • box → boxes • child → children',
        examples: [
          'one cell → two cells',
          'one virus → many viruses',
          'one child → three children (düzensiz)',
        ],
        examplesTr: [
          'bir hücre → iki hücre',
          'bir virüs → birçok virüs',
          'bir çocuk → üç çocuk',
        ],
      ),
      GrammarRule(
        name: 'this / that / these / those',
        explanation: 'this (bu-tekil, yakın), that (şu-tekil, uzak), these (bunlar-çoğul, yakın), those (şunlar-çoğul, uzak).',
        formula: 'this/that + tekil  |  these/those + çoğul',
        examples: [
          'This is my pen.',
          'That is a hospital.',
          'These pills are white.',
          'Those doctors are busy.',
        ],
        examplesTr: [
          'Bu benim kalemim.',
          'Şu bir hastanedir.',
          'Bu haplar beyazdır.',
          'Şu doktorlar meşguldür.',
        ],
      ),
    ],
    yokdilTips: [
      'Düzensiz çoğullar: man→men, woman→women, tooth→teeth, foot→feet, person→people.',
      'Sayılamayan isimler çoğul olmaz: information, advice, water, blood.',
    ],
  ),

  // 4 — Sahiplik
  GrammarTopic(
    title: 'Sahiplik: have got / has got & \'s',
    icon: '🤲',
    level: 'Başlangıç',
    description: 'Bir şeye sahip olduğumuzu söylemek. "Benim ... var" anlamı.',
    rules: [
      GrammarRule(
        name: 'have got / has got',
        explanation: 'Sahiplik bildirir. I/you/we/they ile "have got", he/she/it ile "has got".',
        formula: 'I/You/We/They have got • He/She/It has got',
        examples: [
          'I have got a headache.',
          'She has got two brothers.',
          'They have got a new car.',
        ],
        examplesTr: [
          'Başım ağrıyor. (bir baş ağrım var)',
          'Onun iki erkek kardeşi var.',
          'Onların yeni bir arabası var.',
        ],
      ),
      GrammarRule(
        name: 'İyelik: \'s (Saxon Genitive)',
        explanation: 'Bir şeyin kime ait olduğunu göstermek için isme "\'s" eklenir.',
        formula: 'kişi + \'s + nesne',
        examples: [
          'the doctor\'s office',
          'Ali\'s book',
          'the patient\'s file',
        ],
        examplesTr: [
          'doktorun ofisi',
          'Ali\'nin kitabı',
          'hastanın dosyası',
        ],
      ),
    ],
    yokdilTips: [
      'Sahiplik sıfatları: my, your, his, her, its, our, their (benim, senin, onun...).',
      'Amerikan İngilizcesinde "have got" yerine sıkça "have" kullanılır: I have a car.',
    ],
  ),

  // 5 — There is / There are
  GrammarTopic(
    title: 'There is / There are (…var)',
    icon: '📍',
    level: 'Başlangıç',
    description: 'Bir yerde bir şeyin var olduğunu söylemek. "…var / …yok".',
    rules: [
      GrammarRule(
        name: 'There is / There are',
        explanation: 'Tekil için "there is", çoğul için "there are". Türkçedeki "vardır".',
        formula: 'There is + tekil • There are + çoğul',
        examples: [
          'There is a problem.',
          'There are three patients in the room.',
          'Is there a pharmacy near here?',
        ],
        examplesTr: [
          'Bir problem var.',
          'Odada üç hasta var.',
          'Buraya yakın bir eczane var mı?',
        ],
      ),
    ],
    yokdilTips: [
      'Olumsuz: There isn\'t / There aren\'t (…yok).',
      'Sayılamayanlarda tekil kullanılır: There is some water. (Biraz su var.)',
    ],
  ),
];

// ═══════════════════ ORTA SEVİYE ═══════════════════
final List<GrammarTopic> grammarTopicsIntermediate = [
  GrammarTopic(
    title: 'Present Tenses (Şimdiki ve Geniş Zaman)',
    icon: '⏳',
    level: 'Orta',
    description: 'Şu anı, genel gerçekleri ve şu ana kadar olan olayları anlatan zamanlar. Detaylı tablo için "Zamanlar Tablosu"na bak.',
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
        examplesTr: [
          'İnsan kalbi günde yaklaşık 100.000 kez atar.',
          'Diyabet, vücut yeterli insülin üretemediğinde ortaya çıkar.',
          'Araştırmacılar laboratuvar deneylerinde sık sık fare kullanır.',
        ],
      ),
      GrammarRule(
        name: 'Present Continuous Tense',
        explanation: 'Şu anda veya bu aralar devam eden, değişmekte olan durumlar. "Currently, at present, nowadays" ile sık kullanılır.',
        formula: 'S + am/is/are + V-ing',
        examples: [
          'Scientists are currently developing a new vaccine.',
          'The patient\'s condition is deteriorating rapidly.',
          'Obesity rates are increasing globally nowadays.',
        ],
        examplesTr: [
          'Bilim insanları şu anda yeni bir aşı geliştiriyor.',
          'Hastanın durumu hızla kötüleşiyor.',
          'Obezite oranları bu aralar dünya çapında artıyor.',
        ],
      ),
      GrammarRule(
        name: 'Present Perfect Tense',
        explanation: 'Geçmişte başlayıp etkisi şu an devam eden veya geçmişte olup bitmiş ama zamanı belirtilmeyen önemli gelişmeler. YÖKDİL\'de en sık sorulan zamandır.',
        formula: 'S + have/has + V3',
        examples: [
          'Medical science has made significant progress in the last decade.',
          'The number of asthma cases has risen sharply since 2015.',
        ],
        examplesTr: [
          'Tıp bilimi son on yılda önemli ilerleme kaydetti.',
          'Astım vakalarının sayısı 2015\'ten beri hızla arttı.',
        ],
      ),
      GrammarRule(
        name: 'Present Perfect Continuous Tense',
        explanation: 'Geçmişte başlayıp şu ana kadar kesintisiz devam eden (veya yeni bitmiş) eylemler. Sürece vurgu yapar.',
        formula: 'S + have/has been + V-ing',
        examples: [
          'The patient has been coughing severely for three hours.',
          'Researchers have been studying this mutation for years.',
        ],
        examplesTr: [
          'Hasta üç saattir şiddetli öksürüyor.',
          'Araştırmacılar bu mutasyonu yıllardır inceliyor.',
        ],
      ),
    ],
    yokdilTips: [
      '"Recently, lately, so far, up to now, over the last few years" → Present Perfect ipuçlarıdır.',
      '"Currently, presently, nowadays" → Present Continuous veya Simple Present işaretidir.',
      'Bilimsel bir gerçek/tanım varsa cevap %90 Simple Present\'tır.',
      'Since + (Past Simple), Ana Cümle → Present Perfect',
    ],
  ),

  GrammarTopic(
    title: 'Past Tenses (Geçmiş Zamanlar)',
    icon: '🕰️',
    level: 'Orta',
    description: 'Geçmişteki deneyleri, hastaların tıbbi öykülerini veya tarihi keşifleri anlatmak için kullanılır.',
    rules: [
      GrammarRule(
        name: 'Simple Past Tense',
        explanation: 'Geçmişte belirli bir zamanda olup bitmiş eylemler. "in 1990, last year, yesterday" gibi zaman belirteçleriyle.',
        formula: 'S + V2',
        examples: [
          'Alexander Fleming discovered penicillin in 1928.',
          'The patient recovered fully after the surgery.',
        ],
        examplesTr: [
          'Alexander Fleming penisilini 1928\'de keşfetti.',
          'Hasta ameliyattan sonra tamamen iyileşti.',
        ],
      ),
      GrammarRule(
        name: 'Past Continuous Tense',
        explanation: 'Geçmişte belli bir anda devam etmekte olan eylem; genelde başka bir olayla kesilir.',
        formula: 'S + was/were + V-ing',
        examples: [
          'She was sleeping when the alarm went off.',
          'Doctors were monitoring the patient closely during the procedure.',
        ],
        examplesTr: [
          'Alarm çaldığında o uyuyordu.',
          'Doktorlar işlem sırasında hastayı yakından izliyordu.',
        ],
      ),
      GrammarRule(
        name: 'Past Perfect Tense',
        explanation: 'Geçmişteki bir olaydan önce gerçekleşmiş olan bir başka eylem. "Geçmişin geçmişi".',
        formula: 'S + had + V3',
        examples: [
          'By the time the ambulance arrived, the bleeding had stopped.',
          'She had already taken the medicine before the doctor called.',
        ],
        examplesTr: [
          'Ambulans geldiğinde kanama çoktan durmuştu.',
          'Doktor aradığında o ilacı çoktan almıştı.',
        ],
      ),
    ],
    yokdilTips: [
      '"By the time, before, after, as soon as" geçmişte iki eylem sırasını belirtir → Past Perfect + Simple Past.',
      'Belirli bir geçmiş zaman ifadesi varsa (in 1990, last week) → Simple Past kullanılır, Present Perfect KULLANILMAZ.',
    ],
  ),

  GrammarTopic(
    title: 'Modal Verbs (can, must, should...)',
    icon: '🧩',
    level: 'Orta',
    description: 'Yetenek, zorunluluk, olasılık ve tavsiye bildiren yardımcı fiiller. YÖKDİL\'de sık sorulur.',
    rules: [
      GrammarRule(
        name: 'can / could (yetenek, izin)',
        explanation: '"can" şimdiki yetenek/izin, "could" geçmiş yetenek veya kibar rica.',
        formula: 'S + can/could + V1',
        examples: [
          'The drug can reduce fever quickly.',
          'Could you explain the diagnosis again?',
        ],
        examplesTr: [
          'İlaç ateşi hızlıca düşürebilir.',
          'Teşhisi tekrar açıklayabilir misiniz?',
        ],
      ),
      GrammarRule(
        name: 'must / have to (zorunluluk)',
        explanation: '"must" kişisel/güçlü zorunluluk, "have to" dışarıdan gelen zorunluluk. "must not" = yasak.',
        formula: 'S + must/have to + V1',
        examples: [
          'Patients must take this medicine twice a day.',
          'You mustn\'t smoke in the hospital.',
        ],
        examplesTr: [
          'Hastalar bu ilacı günde iki kez almalıdır.',
          'Hastanede sigara içmemelisin (yasak).',
        ],
      ),
      GrammarRule(
        name: 'should / ought to (tavsiye)',
        explanation: 'Tavsiye ve önerileri ifade eder. "-meli/-malı" anlamındadır ama zorunlu değildir.',
        formula: 'S + should/ought to + V1',
        examples: [
          'You should see a doctor immediately.',
          'People should exercise regularly.',
        ],
        examplesTr: [
          'Hemen bir doktora görünmelisin.',
          'İnsanlar düzenli egzersiz yapmalı.',
        ],
      ),
      GrammarRule(
        name: 'may / might (olasılık)',
        explanation: 'Zayıf-orta ihtimal bildirir. "might" biraz daha düşük olasılık taşır.',
        formula: 'S + may/might + V1',
        examples: [
          'This treatment may cause mild side effects.',
          'The results might change over time.',
        ],
        examplesTr: [
          'Bu tedavi hafif yan etkilere neden olabilir.',
          'Sonuçlar zamanla değişebilir.',
        ],
      ),
    ],
    yokdilTips: [
      'must + V1 (şimdi/gelecek zorunluluk) vs. must + have + V3 (geçmişe dair kesin çıkarım): He must have left. (Gitmiş olmalı.)',
      '"can\'t have + V3" = "olamaz" anlamında geçmişe dair kesin ihtimal dışı çıkarım.',
    ],
  ),

  GrammarTopic(
    title: 'Passive Voice (Edilgen Çatı)',
    icon: '🔄',
    level: 'Orta',
    description: 'Eylemi kimin yaptığından çok, eylemin kendisinin ve kime/neye yapıldığının önemli olduğu durumlarda kullanılır. Bilimsel/akademik metinlerde çok sık.',
    rules: [
      GrammarRule(
        name: 'Passive Voice Formülü',
        explanation: 'Özne değişir: eylemi yapan değil, eylemden etkilenen öne çıkar. "be" fiili + V3 (fiilin 3. hali).',
        formula: 'S(nesne) + am/is/are/was/were/have been + V3 (+ by ...)',
        examples: [
          'The vaccine was developed by researchers. (Active: Researchers developed the vaccine.)',
          'Blood samples are analysed in the laboratory.',
          'The patient has been treated successfully.',
        ],
        examplesTr: [
          'Aşı araştırmacılar tarafından geliştirildi. (Aktif: Araştırmacılar aşıyı geliştirdi.)',
          'Kan örnekleri laboratuvarda analiz edilir.',
          'Hasta başarıyla tedavi edildi.',
        ],
      ),
    ],
    yokdilTips: [
      'Akademik makalelerde eylemi yapan kişi önemli değilse passive kullanılır: "It has been shown that..." (Gösterilmiştir ki...)',
      'YÖKDİL\'de "by + kişi/kurum" ifadesi genelde cümlenin sonunda gelir ve bazen düşürülür.',
    ],
  ),

  GrammarTopic(
    title: 'Conditionals (Koşul Cümleleri - If)',
    icon: '🔀',
    level: 'Orta',
    description: '"Eğer... olursa" yapıları. Gerçek, olası ve hayali durumları anlatır.',
    rules: [
      GrammarRule(
        name: 'Zero & First Conditional (Gerçek / Olası)',
        explanation: 'Zero: her zaman doğru genel gerçekler. First: gelecekte gerçekleşmesi mümkün durumlar.',
        formula: 'Zero: If + Present, Present  |  First: If + Present, will + V1',
        examples: [
          'If the body loses too much water, it becomes dehydrated. (Zero)',
          'If you take this medicine, you will feel better. (First)',
        ],
        examplesTr: [
          'Vücut çok fazla su kaybederse susuz kalır. (genel gerçek)',
          'Bu ilacı alırsan kendini daha iyi hissedeceksin. (olası gelecek)',
        ],
      ),
      GrammarRule(
        name: 'Second Conditional (Hayali/Şimdiki)',
        explanation: 'Şimdiki zamana ait gerçek olmayan, hayali durumlar.',
        formula: 'If + Past Simple, would + V1',
        examples: [
          'If I were a doctor, I would help more people.',
          'If we had a cure, the disease would disappear.',
        ],
        examplesTr: [
          'Eğer doktor olsaydım daha çok insana yardım ederdim.',
          'Bir tedavimiz olsaydı hastalık kaybolurdu.',
        ],
      ),
      GrammarRule(
        name: 'Third Conditional (Geçmişe Dair Hayali)',
        explanation: 'Geçmişte olmamış, gerçekleşmemiş bir durum ve onun hayali sonucu. Genelde pişmanlık bildirir.',
        formula: 'If + Past Perfect, would have + V3',
        examples: [
          'If the disease had been diagnosed earlier, the patient would have survived.',
          'She would have recovered if she had taken the medicine.',
        ],
        examplesTr: [
          'Hastalık daha erken teşhis edilseydi, hasta hayatta kalırdı.',
          'İlacı almış olsaydı iyileşmiş olurdu.',
        ],
      ),
    ],
    yokdilTips: [
      'YÖKDİL\'de en sık sorulan tip Third Conditional\'dır (geçmişe dönük pişmanlık/çıkarım).',
      '"Unless" = "if not" anlamındadır: Unless treated, the infection will spread. (Tedavi edilmezse...)',
    ],
  ),

  GrammarTopic(
    title: 'Relative Clauses (Sıfat Cümlecikleri)',
    icon: '🔗',
    level: 'Orta',
    description: 'İki cümleyi tek bir cümlede birleştirmeye yarayan "who, which, that, whose" gibi bağlayıcılar.',
    rules: [
      GrammarRule(
        name: 'who / which / that / whose',
        explanation: '"who" kişiler için, "which" nesneler için, "that" her ikisi için (konuşma dilinde), "whose" iyelik bildirir.',
        formula: 'isim + who/which/that/whose + cümle',
        examples: [
          'The doctor who treated me was very kind.',
          'The medicine which she took had no side effects.',
          'The patient whose test results were abnormal needs further examination.',
        ],
        examplesTr: [
          'Beni tedavi eden doktor çok naziktir.',
          'Onun aldığı ilacın yan etkisi yoktu.',
          'Test sonuçları anormal olan hasta ileri muayeneye ihtiyaç duyar.',
        ],
      ),
    ],
    yokdilTips: [
      'Virgülle ayrılmış (non-defining) yan cümlelerde "that" KULLANILMAZ: Dr. Smith, who is a cardiologist, ...',
      '"that" kullanılamayan yer: virgülden sonra ve edattan sonra (in which, for whom vb.)',
    ],
  ),

  GrammarTopic(
    title: 'Gerund & Infinitive (-ing / to V)',
    icon: '✏️',
    level: 'Orta',
    description: 'Bir fiilden sonra "-ing" mi yoksa "to + fiil" mi geleceğini belirleyen kurallar.',
    rules: [
      GrammarRule(
        name: 'Gerund (V-ing)',
        explanation: 'Bazı fiillerden sonra ve her zaman edatlardan (in, on, about, for...) sonra "-ing" formu gelir.',
        formula: 'enjoy / avoid / stop / edat + V-ing',
        examples: [
          'Doctors recommend avoiding processed food.',
          'She is interested in studying medicine.',
        ],
        examplesTr: [
          'Doktorlar işlenmiş gıdadan kaçınmayı önerir.',
          'O tıp okumakla ilgileniyor.',
        ],
      ),
      GrammarRule(
        name: 'Infinitive (to + V1)',
        explanation: 'Amaç bildirmek için ve bazı fiillerden sonra "to + fiil" formu gelir.',
        formula: 'want / decide / need / amaç + to + V1',
        examples: [
          'The team decided to conduct further research.',
          'Patients need to follow the treatment plan to recover.',
        ],
        examplesTr: [
          'Ekip daha fazla araştırma yapmaya karar verdi.',
          'Hastaların iyileşmek için tedavi planını takip etmesi gerekir.',
        ],
      ),
    ],
    yokdilTips: [
      '"stop to do" (yapmak için durmak) ile "stop doing" (yapmayı bırakmak) anlam farkına dikkat!',
      'Amaç cümlelerinde "to + V1" veya "in order to + V1" kullanılır.',
    ],
  ),

  GrammarTopic(
    title: 'Comparatives & Superlatives (Karşılaştırma)',
    icon: '⚖️',
    level: 'Orta',
    description: 'İki veya daha fazla şeyi karşılaştırmak: "daha ... / en ...".',
    rules: [
      GrammarRule(
        name: 'Comparative (-er / more)',
        explanation: 'Kısa sıfatlara "-er", uzun sıfatlara "more" eklenir. "than" ile kullanılır.',
        formula: 'kısa sıfat+er than  |  more + uzun sıfat + than',
        examples: [
          'This treatment is more effective than the previous one.',
          'The new drug is cheaper than the old one.',
        ],
        examplesTr: [
          'Bu tedavi öncekinden daha etkilidir.',
          'Yeni ilaç eskisinden daha ucuzdur.',
        ],
      ),
      GrammarRule(
        name: 'Superlative (-est / the most)',
        explanation: 'Bir grup içinde "en" olanı belirtir.',
        formula: 'the + kısa sıfat+est  |  the most + uzun sıfat',
        examples: [
          'This is the most common side effect.',
          'She is the youngest doctor in the team.',
        ],
        examplesTr: [
          'Bu en yaygın yan etkidir.',
          'O, ekipteki en genç doktordur.',
        ],
      ),
    ],
    yokdilTips: [
      'Düzensizler: good→better→the best, bad→worse→the worst, far→further→the furthest.',
      '"as ... as" = "kadar": as effective as (kadar etkili).',
    ],
  ),
];

// ═══════════════════ İLERİ SEVİYE (YÖKDİL Odaklı) ═══════════════════
final List<GrammarTopic> grammarTopicsAdvanced = [
  GrammarTopic(
    title: 'Bağlaçlar: Because / Although / Despite',
    icon: '🧵',
    level: 'İleri',
    description: 'YÖKDİL\'in en kritik konusu. Sebep, zıtlık ve sonuç ilişkilerini kuran bağlaçlar (cümle vs kelime grubu alanlar).',
    rules: [
      GrammarRule(
        name: 'Sebep Bağlaçları',
        explanation: '"because/since/as" bir CÜMLE (özne+fiil) alır. "because of/due to/owing to" bir İSİM/İSİM GRUBU alır.',
        formula: 'because + cümle  |  because of + isim',
        examples: [
          'Because the patient had a fever, the doctor ordered tests.',
          'Because of the fever, the doctor ordered tests.',
        ],
        examplesTr: [
          'Hastanın ateşi olduğu için doktor testler istedi.',
          'Ateş nedeniyle doktor testler istedi.',
        ],
      ),
      GrammarRule(
        name: 'Zıtlık Bağlaçları',
        explanation: '"although/even though/while" bir CÜMLE alır. "despite/in spite of" bir İSİM/-ing alır.',
        formula: 'although + cümle  |  despite + isim/-ing',
        examples: [
          'Although the surgery was risky, it was successful.',
          'Despite the risks, the surgery was successful.',
        ],
        examplesTr: [
          'Ameliyat riskli olmasına rağmen başarılı oldu.',
          'Risklere rağmen ameliyat başarılı oldu.',
        ],
      ),
      GrammarRule(
        name: 'Sonuç Bağlaçları',
        explanation: '"so/therefore/thus/as a result" bir sonucu bildirir; genelde virgülle ya da noktalı virgülle ayrılır.',
        formula: 'sebep cümlesi + so/therefore + sonuç cümlesi',
        examples: [
          'The infection spread quickly; therefore, isolation was necessary.',
        ],
        examplesTr: [
          'Enfeksiyon hızla yayıldı; bu nedenle izolasyon gerekliydi.',
        ],
      ),
    ],
    yokdilTips: [
      'YÖKDİL\'de en çok karıştırılan konudur: "because of" + İSİM, "because" + CÜMLE.',
      '"Despite the fact that" = "although" ile eşdeğerdir (cümle alır).',
    ],
  ),

  GrammarTopic(
    title: 'Noun Clauses (İsim Cümlecikleri)',
    icon: '📐',
    level: 'İleri',
    description: 'Bir cümlenin tamamının, başka bir cümlede özne/nesne görevi görmesi. "that, whether, if, what, how" ile kurulur.',
    rules: [
      GrammarRule(
        name: 'that Clause',
        explanation: 'Bir gerçeği/görüşü aktarmak için "that + cümle" kullanılır. "that" bazen düşürülebilir.',
        formula: 'It is + sıfat + that + cümle  |  S + V + that + cümle',
        examples: [
          'It is believed that the drug reduces inflammation.',
          'Researchers found that the treatment was effective.',
        ],
        examplesTr: [
          'İlacın iltihabı azalttığına inanılmaktadır.',
          'Araştırmacılar tedavinin etkili olduğunu buldu.',
        ],
      ),
      GrammarRule(
        name: 'whether / if Clause',
        explanation: 'Bir belirsizliği/soruyu isim cümleciği olarak bildirmek için kullanılır.',
        formula: 'S + V + whether/if + cümle',
        examples: [
          'Doctors are unsure whether the treatment will work.',
        ],
        examplesTr: [
          'Doktorlar tedavinin işe yarayıp yaramayacağından emin değiller.',
        ],
      ),
    ],
    yokdilTips: [
      'Paragraf sorularında "It has been shown/found/suggested that..." kalıbı çok sık geçer.',
    ],
  ),

  GrammarTopic(
    title: 'Reduced Clauses (Kısaltılmış Yan Cümleler)',
    icon: '✂️',
    level: 'İleri',
    description: 'Akademik metinlerde cümleleri kısaltmak için kullanılan -ing ve -ed yapıları.',
    rules: [
      GrammarRule(
        name: '-ing ile Kısaltma (Aktif)',
        explanation: 'Özne aynıysa ve fiil aktifse, "who/which + be" kısmı silinip fiile "-ing" eklenir.',
        formula: 'kişi/nesne + [who/which is] + V-ing',
        examples: [
          'Patients suffering from diabetes need regular check-ups. (= who are suffering)',
        ],
        examplesTr: [
          'Diyabetten muzdarip hastaların düzenli kontrole ihtiyacı vardır.',
        ],
      ),
      GrammarRule(
        name: '-ed ile Kısaltma (Pasif)',
        explanation: 'Özne edilgense, "who/which + be" kısmı silinip fiile "-ed/V3" eklenir.',
        formula: 'kişi/nesne + [who/which is] + V3',
        examples: [
          'The drug approved by the FDA is now available. (= which was approved)',
        ],
        examplesTr: [
          'FDA tarafından onaylanan ilaç artık mevcuttur.',
        ],
      ),
    ],
    yokdilTips: [
      'YÖKDİL Sağlık paragraflarında bu yapı çok sık karşınıza çıkar; "who/which" gizli olabilir, dikkat edin.',
    ],
  ),

  GrammarTopic(
    title: 'Inversion & Emphatic Structures',
    icon: '🔁',
    level: 'İleri',
    description: 'Vurgu yapmak için özne-fiil sırasının değiştiği ileri düzey yapılar.',
    rules: [
      GrammarRule(
        name: 'Negative Inversion',
        explanation: 'Olumsuz zarflar (never, rarely, not only) cümle başına geldiğinde özne-yardımcı fiil ters çevrilir.',
        formula: 'Never/Rarely/Not only + yardımcı fiil + özne + V',
        examples: [
          'Never has a treatment shown such promising results.',
          'Not only did the drug reduce pain, but it also improved mobility.',
        ],
        examplesTr: [
          'Hiçbir tedavi böylesine umut verici sonuçlar göstermemiştir.',
          'İlaç sadece ağrıyı azaltmakla kalmadı, aynı zamanda hareketliliği de artırdı.',
        ],
      ),
    ],
    yokdilTips: [
      'Bu yapı YÖKDİL\'de nadir ama zor sorularda çıkar; "Not only" gördüğünüzde devrik yapı bekleyin.',
    ],
  ),
];

/// Tüm gramer konuları — seviyeye göre birleştirilmiş liste.
List<GrammarTopic> get allGrammarTopics => [
      ...grammarTopics,
      ...grammarTopicsIntermediate,
      ...grammarTopicsAdvanced,
    ];
