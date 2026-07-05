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
  // 0 — İngilizce Cümle Yapısı
  GrammarTopic(
    title: 'İngilizce Cümle Yapısı (S-V-O)',
    icon: '🏗️',
    level: 'Başlangıç',
    description: 'İngilizcenin temel cümle dizilimi. Türkçe "Özne + Nesne + Yüklem" iken, İngilizcede "Özne + Yüklem + Nesne" (S-V-O) kuralı geçerlidir.',
    rules: [
      GrammarRule(
        name: 'S-V-O (Subject - Verb - Object)',
        explanation: 'İngilizcede cümlenin omurgası her zaman Özne (Subject), ardından Fiil/Yüklem (Verb) ve sonrasında Nesne (Object) şeklindedir. Tıbbi metinlerde özne ne kadar uzun olursa olsun her zaman fiilden önce gelir.',
        formula: 'Özne (S) + Fiil (V) + Nesne (O) + Yer + Zaman',
        examples: [
          'The doctor (S) examined (V) the patient (O).',
          'Antibiotics (S) kill (V) bacteria (O) in the human body.',
        ],
        examplesTr: [
          'Doktor hastayı muayene etti.',
          'Antibiyotikler insan vücudundaki bakterileri öldürür.',
        ],
      ),
      GrammarRule(
        name: 'Zaman ve Yer Bildiren İfadeler',
        explanation: 'Türkçede zaman genelde cümlenin başında söylenirken, İngilizcede zaman ve yer ifadeleri kural olarak cümlenin EN SONUNA atılır. (Önce Yer, Sonra Zaman gelir - PT kuralı).',
        formula: 'S + V + O + Yer (Place) + Zaman (Time)',
        examples: [
          'The nurse (S) gave (V) the injection (O) in the clinic (Yer) yesterday (Zaman).',
          'Researchers (S) discovered (V) a new genetic mutation (O) at the university lab (Yer) last year (Zaman).',
        ],
        examplesTr: [
          'Hemşire dün klinikte iğneyi yaptı.',
          'Araştırmacılar geçen yıl üniversite laboratuvarında yeni bir genetik mutasyon keşfettiler.',
        ],
      ),
      GrammarRule(
        name: 'Uzun Özneler (Noun Phrases)',
        explanation: 'Akademik metinlerde (YÖKDİL vb.) özne tek bir kelime (The doctor) olmayabilir. Fiile (Verb) gelene kadar okuduğunuz bütün kelime grubu tek bir ÖZNE (Subject) kabul edilir.',
        formula: '[Uzun Özne Grubu] + Fiil (V) + Nesne (O)',
        examples: [
          '[Patients with a family history of diabetes] (S) require (V) [close monitoring] (O).',
          '[The newly discovered treatment for severe asthma] (S) reduces (V) [airway inflammation] (O).',
        ],
        examplesTr: [
          'Ailesinde diyabet öyküsü olan hastalar yakın takip gerektirir.',
          'Şiddetli astım için yeni keşfedilen tedavi havayolu inflamasyonunu azaltır.',
        ],
      ),
      GrammarRule(
        name: 'Türkçe ile İngilizce Arasındaki Dizilim Farkı',
        explanation: 'Çeviri sorularında en çok dikkat etmeniz gereken kural: Türkçede cümlenin sonunda olan eylem (yüklem), İngilizcede cümlenin başlarında (özneden hemen sonra) yer alır.',
        formula: 'İngilizce: S + V + O  <--->  Türkçe: Özne + Nesne + Fiil',
        examples: [
          'Vaccines (S) prevent (V) infectious diseases (O).',
          'Regular exercise (S) improves (V) cardiovascular health (O).',
        ],
        examplesTr: [
          'Aşılar bulaşıcı hastalıkları önler.',
          'Düzenli egzersiz kardiyovasküler sağlığı iyileştirir.',
        ],
      ),
    ],
    yokdilTips: [
      'Uzun bir YÖKDİL cümlesiyle karşılaştığınızda ilk yapacağınız şey YÜKLEMİ (Fiili) bulmaktır. Fiili bulduğunuz an, ondan önceki her şeyin cümlenin öznesi olduğunu anlarsınız.',
      'Çeviri sorularında, Türkçe cümlenin son kelimesine (yükleme) bakın ve seçeneklerde özneden hemen sonra bu fiilin verildiği şıkkı arayın. Çoğu şıkkı sadece fiilden eleyebilirsiniz.',
    ],
  ),

  // 0.5 — İsim ve Fiil Cümleleri
  GrammarTopic(
    title: 'İsim Cümleleri vs. Fiil Cümleleri',
    icon: '⚖️',
    level: 'Başlangıç',
    description: 'İngilizcedeki cümleler temel olarak ikiye ayrılır: Durum bildiren "İsim Cümleleri" ve Eylem bildiren "Fiil Cümleleri". Aralarındaki farkı bilmek grameri çözmenin anahtarıdır.',
    rules: [
      GrammarRule(
        name: 'İsim Cümleleri (Durum / Noun Sentences)',
        explanation: 'Cümlede belirgin bir HAREKET (koşmak, kesmek, iyileşmek) yoktur. Sadece bir durum, kimlik, özellik veya meslek bildirir. "To Be" (am/is/are/was/were) fiili cümlenin ana fiili görevindedir.',
        formula: 'Özne + am/is/are/was/were + İsim/Sıfat',
        examples: [
          'The patient is very weak today. (Durum/Sıfat bildirir, hareket yok)',
          'Dr. Smith was a successful surgeon. (Meslek bildirir, hareket yok)',
        ],
        examplesTr: [
          'Hasta bugün çok zayıf/halsiz.',
          'Dr. Smith başarılı bir cerrahtı.',
        ],
      ),
      GrammarRule(
        name: 'İsim Cümlesinde "Soru" Nasıl Sorulur?',
        explanation: 'İsim cümlelerinde soru yaparken dışarıdan "Do/Does/Did" gibi yardımcı fiiller getirilmez. Direkt olarak "am/is/are/was/were" cümlenin en başına alınır.',
        formula: 'Am/Is/Are/Was/Were + Özne + İsim/Sıfat ?',
        examples: [
          'Is the patient ready for the surgery?',
          'Were the test results positive?',
        ],
        examplesTr: [
          'Hasta ameliyat için hazır mı?',
          'Test sonuçları pozitif miydi?',
        ],
      ),
      GrammarRule(
        name: 'Fiil Cümleleri (Eylem / Action Sentences)',
        explanation: 'Cümlede fiziksel veya zihinsel bir HAREKET, EYLEM vardır (examine, treat, recover, sleep). Bu cümlelerde ana eylem yalın halde (V1) veya geçmiş zamanda (V2) bulunur.',
        formula: 'Özne + Ana Fiil (V) + Nesne',
        examples: [
          'The doctor examines the patient. (Hareket var: Muayene etmek)',
          'The wound healed completely after two weeks. (Hareket var: İyileşmek)',
        ],
        examplesTr: [
          'Doktor hastayı muayene eder.',
          'Yara iki hafta sonra tamamen iyileşti.',
        ],
      ),
      GrammarRule(
        name: 'Fiil Cümlesinde "Soru" Nasıl Sorulur?',
        explanation: 'Fiil cümleleri kendi başlarına soru olamazlar! Dışarıdan "Do / Does / Did" gibi bir destek (yardımcı fiil) almaları şarttır. Fiil yalın hale (V1) döner.',
        formula: 'Do/Does/Did + Özne + Fiil(V1) + Nesne ?',
        examples: [
          'Does the doctor examine the patient every day?',
          'Did the wound heal completely?',
        ],
        examplesTr: [
          'Doktor hastayı her gün muayene eder mi?',
          'Yara tamamen iyileşti mi?',
        ],
      ),
    ],
    yokdilTips: [
      'En büyük hata: "I am go" (Yanlış!). Çünkü "am" isim cümlesi yapar, "go" fiildir. İkisi aynı cümlede yan yana bulunamaz! Ya "I go" (Giderim) ya da "I am going" (Gidiyorum) olmalıdır.',
      'YÖKDİL Çeviri Sorularında Taktik: Türkçe cümlenin sonu "-dır/dir", "hastadır", "önemlidir" gibi bitiyorsa bu bir İsim Cümlesidir, şıklarda mutlaka am/is/are/was/were arayın.',
      'Eğer Türkçe cümlenin sonu "iyileşti", "azalttı", "tedavi eder" gibi bir eylemle bitiyorsa bu bir Fiil Cümlesidir, şıklarda eylemi yapan bir fiil (healed, reduced, treats) arayın.',
    ],
  ),

  // 1 — Şahıs Zamirleri & To Be
  GrammarTopic(
    title: 'Şampiyonların Rehberi: Detaylı Pronouns (Zamirler) Analizi',
    icon: '👤',
    level: 'Başlangıç',
    description: 'YÖKDİL paragraf sorularının ve cümle tamamlama sorularının %50\'sini çözdüren sırdır. "It" neye gidiyor, "They" kimi kastediyor? Tüm zamir türleri tek ekranda.',
    rules: [
      GrammarRule(
        name: '1. Subject Pronouns (Özne Zamirleri)',
        explanation: 'Cümlenin ÖZNESİ (işi yapan) konumunda bulunurlar. Cümlenin her zaman en başında, FİİLDEN ÖNCE yer alırlar.',
        formula: 'I, You, He, She, It, We, They + Fiil (V)',
        examples: [
          'They discovered a new antibody. (Onlar keşfetti - Yapanlar belli)',
          'It affects the central nervous system. (O etkiler - Nörolojik bir hastalık kastediliyor)',
        ],
        examplesTr: [
          'Onlar yeni bir antikor keşfettiler.',
          'O, merkezi sinir sistemini etkiler.',
        ],
      ),
      GrammarRule(
        name: '2. Object Pronouns (Nesne Zamirleri)',
        explanation: 'Cümlenin NESNESİ konumundadırlar. FİİLDEN veya EDATTAN (in, at, on, for, with) SONRA gelirler. Çevirileri genelde "-i, -e" ekleriyle biter (beni, sana, ona).',
        formula: 'Fiil/Edat + me, you, him, her, it, us, them',
        examples: [
          'The doctor examined him carefully. (Fiilden sonra - Onu muayene etti)',
          'This medication is very important for them. (Edattan sonra - Onlar için)',
        ],
        examplesTr: [
          'Doktor onu dikkatlice muayene etti.',
          'Bu ilaç onlar için çok önemlidir.',
        ],
      ),
      GrammarRule(
        name: '3. Possessive Adjectives (İyelik Sıfatları)',
        explanation: 'SAHİPLİK bildirirler ancak KESİNLİKLE tek başlarına kullanılamazlar. Yanlarında daima bir İSİM (Noun) olmak zorundadır. Benim arabam, senin hastalığın...',
        formula: 'my, your, his, her, its, our, their + İSİM',
        examples: [
          'The virus changes its structure frequently. (Kendi yapısını)',
          'Our research focuses on genetic disorders. (Bizim araştırmamız)',
        ],
        examplesTr: [
          'Virüs (kendi) yapısını sık sık değiştirir.',
          'Araştırmamız genetik bozukluklara odaklanmaktadır.',
        ],
      ),
      GrammarRule(
        name: '4. Possessive Pronouns (İyelik Zamirleri)',
        explanation: 'İyelik sıfatlarının isimle BİRLEŞMİŞ (ismi yutmuş) halidir. Asla yanlarına isim almazlar, tek başlarına dururlar. "Benim arabam" demez, "Benimki" der.',
        formula: 'mine, yours, his, hers, ours, theirs',
        examples: [
          'This stethoscope is not mine; it is hers. (mine = my stethoscope, hers = her stethoscope)',
          'Their results are positive, but ours are negative. (ours = our results)',
        ],
        examplesTr: [
          'Bu stetoskop benimki değil; onunki.',
          'Onların sonuçları pozitif, ama bizimki negatif.',
        ],
      ),
      GrammarRule(
        name: '5. Reflexive Pronouns (Dönüşlülük Zamirleri)',
        explanation: 'Özne ve Nesne AYNI KİŞİ olduğunda kullanılır. "Kendi kendime, kendi kendine" anlamı verir. "By" ile kullanılırsa "tek başına, yardımsız" (alone) anlamına gelir.',
        formula: 'myself, yourself, himself, herself, itself, ourselves, yourselves, themselves',
        examples: [
          'The body can heal itself over time. (Vücut kendi kendini iyileştirebilir)',
          'The elderly patient managed to walk by himself. (Kendi başına / Yardımsız yürüdü)',
        ],
        examplesTr: [
          'Vücut zamanla kendi kendini iyileştirebilir.',
          'Yaşlı hasta kendi başına / yardımsız yürümeyi başardı.',
        ],
      ),
      GrammarRule(
        name: 'Pratik Egzersizler: Doğru Zamiri Bul!',
        explanation: 'Aşağıdaki boşlukları doldurun:\n1. The nurses are doing ___ best to save the patient. (onların ellerinden geleni)\n2. The cat licked ___ paw. (kendi patisini)\n3. This responsibility is entirely ___ . (seninki)',
        formula: 'İpuçları: 1. İsimden önce sahiplik (Their). 2. Cansız/Hayvan sahipliği (Its). 3. İsimsiz sahiplik (Yours).',
        examples: [
          'Cevap 1: their (best kelimesinden önce iyelik sıfatı)',
          'Cevap 2: its (kediye ait bir pati)',
          'Cevap 3: yours (arkasında isim yok, "seninki" anlamında)',
        ],
        examplesTr: [
          '1) Hemşireler hastayı kurtarmak için ellerinden geleni (onların en iyisini) yapıyorlar.',
          '2) Kedi kendi patisini yaladı.',
          '3) Bu sorumluluk tamamen seninki.',
        ],
      ),
    ],
    yokdilTips: [
      'PARAGRAF TAKTİĞİ: YÖKDİL okuma parçalarında "They" veya "It" gördüğünüz an okumayı DURDURUN. Bir önceki cümleye dönüp "They" kelimesinin hangi çoğul ismi, "It" kelimesinin hangi tekil ismi karşıladığını bulun. Soru oradan gelecektir!',
      'GÖZ YANILGISI: "It\'s" (It is = o şudur) ile "Its" (onun = sahiplik) kelimelerini asla karıştırmayın. İlki fiildir, ikincisi sıfattır. "It\'s a virus and its structure is complex." (O bir virüstür ve onun yapısı karmaşıktır.)',
      'By himself = alone (yalnız başına), on his own = alone (yalnız başına). Bu kalıplar eş anlamlıdır ve sınavlarda şık elerler.',
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
    title: 'Modals: Tavsiye ve Gereklilik (Should, vb.)',
    icon: '💡',
    level: 'Orta',
    description: 'Tıbbi bağlamda tavsiye vermek, klinik gereklilik bildirmek ve güçlü önerilerde bulunmak için kullanılan Kip Belirteçleri (Modals).',
    rules: [
      GrammarRule(
        name: 'Should / Ought to (Tavsiye / Öneri)',
        explanation: 'Bir şeyin yapılmasının tıbben veya bilimsel olarak doğru, iyi ve gerekli olduğunu belirtmek için kullanılır. Makalelerde, hasta yönergelerinde ve kılavuzlarda sıklıkla karşımıza çıkar. "Ought to" ile "should" eş anlamlıdır.',
        formula: 'S + should / ought to + V1',
        examples: [
          'Patients with high blood pressure should avoid salty foods.',
          'The government ought to allocate more funds for genetic research.',
          'You shouldn\'t stop taking the medication without consulting your doctor.',
        ],
        examplesTr: [
          'Yüksek tansiyonu olan hastalar tuzlu yiyeceklerden kaçınmalıdır.',
          'Hükümet genetik araştırmalara daha fazla fon ayırmalıdır.',
          'Doktorunuza danışmadan ilacı almayı bırakmamalısınız.',
        ],
      ),
      GrammarRule(
        name: 'Had better (Güçlü Tavsiye / Uyarı)',
        explanation: 'Anlam olarak "should" yapısına benzer ancak arkasında ciddi bir tıbbi uyarı barındırır. "Yapsan iyi olur, yoksa kötü sonuçları (komplikasyon, nüksetme) olur" anlamı taşır.',
        formula: 'S + had better (\'d better) + V1',
        examples: [
          'You had better take your antibiotics exactly as prescribed to prevent resistance.',
          'The surgeon had better double-check the patient\'s allergies before the operation.',
        ],
        examplesTr: [
          'Direnci önlemek için antibiyotiklerinizi tam olarak reçete edildiği gibi alsanız iyi olur.',
          'Cerrah, ameliyattan önce hastanın alerjilerini tekrar kontrol etse iyi olur.',
        ],
      ),
      GrammarRule(
        name: 'Should have V3 (Geçmişe Dönük Eleştiri / Pişmanlık)',
        explanation: 'Geçmişte yapılması tıbben gereken ama "yapılmayan", veya yapılmaması gereken ama "yapılan" hatalı durumları eleştirmek için kullanılır.',
        formula: 'S + should have + V3',
        examples: [
          'The medical team should have noticed the early signs of infection.',
          'He shouldn\'t have ignored the persistent chest pain for weeks.',
        ],
        examplesTr: [
          'Sağlık ekibi enfeksiyonun erken belirtilerini fark etmeliydi. (Ama fark etmediler)',
          'Haftalarca süren inatçı göğüs ağrısını görmezden gelmemeliydi. (Ama görmezden geldi)',
        ],
      ),
      GrammarRule(
        name: 'Pasif Kullanım (Should be V3)',
        explanation: 'YÖKDİL ve tıp literatüründe "tedavi edilmelidir", "incelenmelidir" gibi edilgen yapılar "should" ile çok sık kullanılır.',
        formula: 'S + should be + V3',
        examples: [
          'All surgical instruments should be sterilized prior to use.',
          'Patients presenting with severe symptoms ought to be hospitalized immediately.',
        ],
        examplesTr: [
          'Kullanımdan önce tüm cerrahi aletler sterilize edilmelidir.',
          'Şiddetli semptomlarla başvuran hastalar derhal hastaneye yatırılmalıdır.',
        ],
      ),
    ],
    yokdilTips: [
      '"Should" tıbbi akademik metinlerde "must" kadar kesin ve emredici değildir, ancak klinik rehberlerde standart "öneri" dilidir.',
      'Sınavda "should have + V3" yapısını gördüğünüzde eylemin geçmişte kaldığını ve cümlenin asıl mesajının "olanın tam tersi" olduğunu unutmayın.',
      'Boşluk doldurma (Cloze Test) sorularında cümlenin genelinde tavsiye veya ideal bir durum anlatılıyorsa cevap genellikle "should" veya "ought to" olur.',
    ],
  ),
  GrammarTopic(
    title: 'Şampiyonların Rehberi: Detaylı Present Tenses',
    icon: '⏳',
    level: 'Orta',
    description: 'Şimdiki zamanı, genel geçer doğruları, alışkanlıkları ve geçmişte başlayıp etkisi süren olayları kapsayan 4 ana zaman yapısının YÖKDİL odaklı tüm deşifreleri.',
    rules: [
      GrammarRule(
        name: 'Simple Present Tense (Geniş Zaman)',
        explanation: 'En temel zaman. Doğa kanunları, anatomik/fizyolojik değişmez gerçekler, rutin hastane işleyişleri ve kalıcı durumlar için kullanılır. Cümle kurulumu çok basittir ancak He/She/It öznelerinde fiile gelen -s takısı hayatidir.',
        formula: 'Olumlu: Özne + V1 (-s/-es) | Olumsuz: Özne + don\'t/doesn\'t + V1 | Soru: Do/Does + Özne + V1',
        examples: [
          'The human heart beats approximately 100,000 times a day. (Bilimsel, değişmez gerçek)',
          'Type 1 diabetes occurs when the pancreas completely fails to produce insulin. (Tıbbi tanım)',
          'The clinic doesn\'t accept walk-in patients on weekends. (Rutin/Genel durum - Olumsuz)',
          'Does the new drug interact with common painkillers? (Soru)',
        ],
        examplesTr: [
          'İnsan kalbi günde yaklaşık 100.000 kez atar.',
          'Tip 1 diyabet, pankreas tamamen insülin üretemediğinde ortaya çıkar.',
          'Klinik hafta sonları randevusuz hasta kabul etmez.',
          'Yeni ilaç yaygın ağrı kesicilerle etkileşime girer mi?',
        ],
      ),
      GrammarRule(
        name: 'Present Continuous Tense (Şimdiki Zaman)',
        explanation: 'Şu anda yapılmakta olan, geçici durumları veya YÖKDİL\'de çok sevilen "zaman içinde değişen, gelişen" durumları (trendleri) anlatır. Süreklilik arz eden geçici durumlardır.',
        formula: 'Olumlu: am/is/are + V-ing | Olumsuz: am/is/are not + V-ing | Soru: Am/Is/Are + Özne + V-ing',
        examples: [
          'Scientists are currently testing a new mRNA vaccine against the mutated virus. (Geçici, süren eylem)',
          'The patient\'s blood pressure is dropping rapidly, we need to intervene! (Konuşma anı / Değişen durum)',
          'Obesity rates are increasing globally at an alarming rate. (Gelişen/Değişen trend)',
        ],
        examplesTr: [
          'Bilim insanları şu sıralar mutasyona uğramış virüse karşı yeni bir mRNA aşısı test ediyor.',
          'Hastanın tansiyonu hızla düşüyor, müdahale etmemiz gerek!',
          'Obezite oranları küresel olarak endişe verici bir hızla artıyor.',
        ],
      ),
      GrammarRule(
        name: 'KRİTİK UYARI: Stative Verbs (Durum Fiilleri)',
        explanation: 'Bazı fiiller zihinsel durum, sahiplik veya algı bildirdikleri için "şu anda" yapılsalar bile -ing takısı ALAMAZLAR. Bunlar her zaman Simple Present Tense ile yazılır.',
        formula: 'Yasaklı Fiiller: know, understand, believe, want, need, prefer, belong, consist of, contain, seem, possess.',
        examples: [
          'I understand the risks of the surgery. (YANLIŞ: I am understanding...)',
          'This blood sample contains high levels of glucose. (YANLIŞ: This blood sample is containing...)',
        ],
        examplesTr: [
          'Ameliyatın risklerini anlıyorum.',
          'Bu kan örneği yüksek seviyelerde glikoz içeriyor.',
        ],
      ),
      GrammarRule(
        name: 'Present Perfect Tense (Yakın / Belirsiz Geçmiş Zaman)',
        explanation: 'Türkçede tam bir karşılığı olmadığı için en çok zorlanılan zamandır. Olay "geçmişte" olmuştur, ancak:\n1. Olayın ETKİSİ veya SONUCU şu an hala devam ediyordur.\n2. Olayın NE ZAMAN olduğu önemli değildir, olayın KENDİSİ önemlidir (haber verirken).\n3. Olay geçmişte başlamış ve henüz sonlanmamıştır.',
        formula: 'Olumlu: have/has + V3 | Olumsuz: haven\'t/hasn\'t + V3 | Soru: Have/Has + Özne + V3',
        examples: [
          'Medical science has made significant progress in cancer treatment over the last decade. (Süreç: Son 10 yıl)',
          'The WHO has recently published a new guideline on mental health. (Haber verme, zaman belli değil)',
          'The patient has lost a lot of blood; he needs a transfusion immediately. (Olay geçmişte oldu, sonucu şu an kritik)',
        ],
        examplesTr: [
          'Tıp bilimi son on yılda kanser tedavisinde önemli ilerleme kaydetti.',
          'DSÖ (WHO) yakın zamanda ruh sağlığı üzerine yeni bir kılavuz yayınladı.',
          'Hasta çok kan kaybetti; derhal nakil gerekiyor.',
        ],
      ),
      GrammarRule(
        name: 'Present Perfect Continuous Tense (Süregelen Yakın Geçmiş)',
        explanation: 'Present Perfect ile aynı ailedendir ancak eylemin BİTMEDİĞİNİ, eylemin kendisinin şu ana kadar KESİNTİSİZ devam ettiğini ve "ne kadar süredir" devam ettiğini (for/since) vurgular. Eylemin süreci odak noktasıdır.',
        formula: 'Olumlu: have/has been + V-ing | Olumsuz: haven\'t/hasn\'t been + V-ing',
        examples: [
          'The patient has been coughing severely for three hours. (Eylem 3 saat önce başladı, hala aralıksız öksürüyor)',
          'Researchers have been studying the genetic causes of autism since 2005. (2005\'te başladı, süreç hiç kopmadan bugüne geldi)',
        ],
        examplesTr: [
          'Hasta üç saattir şiddetli öksürüyor.',
          'Araştırmacılar 2005\'ten beri otizmin genetik nedenlerini inceliyor.',
        ],
      ),
    ],
    yokdilTips: [
      'Simple Present Taktik: Genellikle "A study, research, experts" kelimeleri özneyse ve genel bir kanı belirtiliyorsa fiil (show, indicate, suggest, demonstrate) Simple Present V1 halinde kullanılır.',
      'Trend Bildiren Kelimeler: Cümlede "increase, decrease, rise, fall, develop, evolve" gibi değişim fiilleri varsa ve zaman olarak "nowadays, these days" varsa cevap kesinlikle Present Continuous (am/is/are V-ing) olmalıdır.',
      'Present Perfect Anahtar Kelimeleri (Görünce işaretle): "Recently, lately, so far, up to now, to date, over the last few years, in recent decades".',
      'SINCE Kuralı: "Since + [Geçmiş Zaman/Olay]" (Örn: since the pandemic began) yapısı gördüyseniz, o cümlenin ana fiili DAİMA Present Perfect (has/have V3) veya Present Perfect Continuous (has/have been V-ing) olmak zorundadır.',
      'YÖKDİL\'de Yüzde 90 Kuralı: Eğer cümle bilimsel bir gerçekten, hastalığın tanımından veya anatomiden bahsediyorsa, zaman zarfı olmasa bile cevap Simple Present (V1) işaretlenmelidir.',
    ],
  ),

  GrammarTopic(
    title: 'Şampiyonların Rehberi: Detaylı Past Tenses ve Egzersizler',
    icon: '🕰️',
    level: 'Orta',
    description: 'YÖKDİL metinlerinin belkemiği olan geçmiş zamanların tam analizi. Tıbbi tarihçeler, vaka sunumları ve geçmiş keşifler tamamen bu zamanlarla anlatılır.',
    rules: [
      GrammarRule(
        name: 'Simple Past Tense (Di\'li Geçmiş Zaman)',
        explanation: 'Geçmişte BİTMİŞ, tamamlanmış ve zamanı kesin olarak belli olan olayları anlatır. Tıbbi vaka raporlarının (case reports) %90\'ı bu zamanla yazılır. Düzenli fiiller "-ed" alır, düzensizler (V2) şekil değiştirir (go -> went).',
        formula: 'Olumlu: Özne + V2 | Olumsuz: Özne + didn\'t + V1 | Soru: Did + Özne + V1',
        examples: [
          'Alexander Fleming discovered penicillin in 1928. (Geçmişte kesin bir tarih var: 1928)',
          'The patient did not (didn\'t) respond to the first line of antibiotics. (Geçmişte bitmiş başarısız bir durum)',
          'Did the symptoms begin suddenly or gradually? (Soru - Hastanın geçmişi sorgulanıyor)',
        ],
        examplesTr: [
          'Alexander Fleming penisilini 1928\'de keşfetti.',
          'Hasta ilk basamak antibiyotiklere yanıt vermedi.',
          'Semptomlar aniden mi yoksa kademeli olarak mı başladı?',
        ],
      ),
      GrammarRule(
        name: 'Past Continuous Tense (Geçmişte Süren Zaman)',
        explanation: 'Geçmişte belirli bir süre DEVAM ETMİŞ, genelde başka bir olay tarafından "bölünmüş" veya geçmişte bir kesitte arka planda yaşanan olayları anlatır.',
        formula: 'Olumlu: was/were + V-ing | Olumsuz: wasn\'t/weren\'t + V-ing | Soru: Was/Were + Özne + V-ing',
        examples: [
          'The surgeon was operating on a critical patient when the power went out. (Ameliyat ediyordu -> Elektrik kesildi ve böldü)',
          'What were the researchers investigating before the funding was cut? (Soru)',
        ],
        examplesTr: [
          'Elektrikler kesildiğinde cerrah kritik bir hastayı ameliyat ediyordu.',
          'Fon kesilmeden önce araştırmacılar neyi inceliyordu?',
        ],
      ),
      GrammarRule(
        name: 'When ve While Kuralları (Zaman Bağlaçları)',
        explanation: '"When" (Dığında) genelde anlık olaylar için kullanılır ve arkasından Simple Past (V2) alır. "While" (İken) ise süreç anlatan olaylar için kullanılır ve arkasından Past Continuous (was/were V-ing) alır.',
        formula: 'When + V2, (was/were V-ing)  |  While + (was/were V-ing), V2',
        examples: [
          'When the ambulance arrived (V2), the patient was bleeding profusely (was V-ing).',
          'While we were analyzing the blood samples (were V-ing), we noticed a severe anomaly (V2).',
        ],
        examplesTr: [
          'Ambulans geldiğinde, hasta şiddetli bir şekilde kanıyordu.',
          'Kan örneklerini analiz ederken ciddi bir anomali fark ettik.',
        ],
      ),
      GrammarRule(
        name: 'Past Perfect Tense (Miş\'li Geçmiş - Geçmişin Geçmişi)',
        explanation: 'YÖKDİL\'de çok sorulur. Geçmişte gerçekleşmiş İKİ farklı olaydan "DAHA ESKİ OLANINI" belirtmek için kullanılır. Önce had+V3 olan eylem gerçekleşmiştir, sonra V2 olan.',
        formula: 'Olumlu: had + V3 | Olumsuz: hadn\'t + V3 | Soru: Had + Özne + V3',
        examples: [
          'By the time the ambulance arrived (V2), the bleeding had stopped (had V3). (Önce kanama durdu, sonra ambulans geldi)',
          'The tumor had already spread to the lymph nodes before they diagnosed it. (Önce tümör yayıldı, sonra teşhis edildi)',
        ],
        examplesTr: [
          'Ambulans geldiğinde, kanama çoktan durmuştu.',
          'Tümör onlar teşhis etmeden önce çoktan lenf bezlerine yayılmıştı.',
        ],
      ),
      GrammarRule(
        name: 'Past Perfect Continuous (Geçmişin Süregelen Zamanı)',
        explanation: 'Geçmişte bir olaya kadar kesintisiz devam etmiş süreci anlatır. Past Perfect\'ten tek farkı eylemin ne kadar sürdüğüne (sürece) odaklanmasıdır.',
        formula: 'Özne + had been + V-ing',
        examples: [
          'The patient had been experiencing severe migraines for months before he sought medical help. (Aylarca sürdü)',
        ],
        examplesTr: [
          'Hasta tıbbi yardım aramadan önce aylarca şiddetli migren yaşamaktaydı.',
        ],
      ),
      GrammarRule(
        name: 'Pratik Egzersizler: Kendini Test Et!',
        explanation: 'Aşağıdaki boşlukları düşünün (Cevaplar ipuçlarında):\n1. Alexander Fleming ___ (discover) penicillin in 1928.\n2. While the nurse ___ (prepare) the injection, the patient fainted.\n3. By the time we reached the hospital, the operation ___ (finish).',
        formula: 'Zaman ipuçlarına dikkat et: "in 1928", "While", "By the time".',
        examples: [
          'Egzersiz 1 İpucu: in 1928 -> Kesin geçmiş zaman.',
          'Egzersiz 2 İpucu: While -> İken, süreç bildirir.',
          'Egzersiz 3 İpucu: By the time -> "O zamana kadar" (Geçmişin geçmişi).',
        ],
        examplesTr: [
          'Cevap 1: discovered (V2)',
          'Cevap 2: was preparing (was V-ing)',
          'Cevap 3: had finished (had V3)',
        ],
      ),
    ],
    yokdilTips: [
      'Simple Past Taktikleri: Cümlede "in 1990, last week, yesterday, previously, initially, historically" gibi kelimeler varsa %100 V2 (Simple Past) işaretlenmelidir. (Asla have/has V3 olmaz!)',
      'Past Perfect Taktikleri: YÖKDİL\'de "By the time, before, after, until" bağlaçları genellikle bir tarafa Simple Past (V2), diğer tarafa Past Perfect (had V3) alarak iki geçmişi birbirine bağlar.',
      'Egzersiz Cevapları: 1) discovered (in 1928 kesin tarih). 2) was preparing (While arkasından süreç alır). 3) had finished (By the time geçmişte iki olayı kıyaslar, ameliyatın bitmesi daha önce olmuştur).',
      'Çeviri Taktikleri: "hasta iyileşiyordu" (was recovering), "hasta iyileşti" (recovered), "hasta çoktan iyileşmişti" (had recovered). Zaman algısı cümlenin son kelimesinde saklıdır.',
    ],
  ),

  GrammarTopic(
    title: 'Şampiyonların Rehberi: Detaylı Future Tenses ve Egzersizler',
    icon: '🚀',
    level: 'Orta',
    description: 'Gelecek zaman kurguları, "will" ile "going to" arasındaki o ince tıbbi çizgiler ve YÖKDİL\'de çok can yakan "By the year 2050" formüllerinin tam analizi.',
    rules: [
      GrammarRule(
        name: 'Simple Future (Will) - Tahmin ve Anlık Karar',
        explanation: 'Önceden planlanmamış anlık eylemler, kişisel tahminler, söz verme veya gönüllü olma durumlarında kullanılır. Bilimsel makalelerde geleceğe yönelik genel "öngörüler" (predict, expect, hope, estimate fiilleriyle) "will" ile yapılır.',
        formula: 'Olumlu: Özne + will + V1 | Olumsuz: Özne + won\'t + V1 | Soru: Will + Özne + V1',
        examples: [
          'We expect that the new virus will mutate again next year. (Tahmin/Öngörü)',
          'I will immediately prescribe a stronger painkiller for you. (Anlık Karar/Söz)',
        ],
        examplesTr: [
          'Yeni virüsün gelecek yıl tekrar mutasyona uğrayacağını öngörüyoruz.',
          'Size hemen daha güçlü bir ağrı kesici yazacağım.',
        ],
      ),
      GrammarRule(
        name: 'Be Going To - Planlanmış Gelecek ve Kesin Kanıt',
        explanation: '1. Önceden planlanmış, ayarlanmış eylemler (Ameliyat programları vb.).\n2. Şu andaki KESİN BİR KANITA dayanarak gelecekle ilgili yapılan çıkarımlar (Örn: Hastanın değerleri düştü, kriz geçirecek).',
        formula: 'Olumlu: am/is/are + going to + V1 | Olumsuz: am/is/are not + going to + V1',
        examples: [
          'Look at his blood pressure; he is going to have a stroke! (Kanıt var: Tansiyon)',
          'The surgical team is going to perform the transplant tomorrow morning. (Planlanmış program)',
        ],
        examplesTr: [
          'Şu tansiyonuna bak; felç geçirecek! (Kanıta dayalı güçlü tahmin)',
          'Cerrahi ekip nakli yarın sabah gerçekleştirecek. (Planlı eylem)',
        ],
      ),
      GrammarRule(
        name: 'Future Continuous Tense (Gelecekte Süren Zaman)',
        explanation: 'Gelecekte belirli bir anda "yapılıyor, devam ediyor" olacak eylemleri anlatır. Çevirisi "...yapıyor olacağım/olacak" şeklindedir.',
        formula: 'Özne + will be + V-ing',
        examples: [
          'This time tomorrow, the patient will be resting in the recovery room.',
          'Next week, the scientists will be testing the drug on human subjects.',
        ],
        examplesTr: [
          'Yarın bu saatlerde hasta derlenme odasında dinleniyor olacak.',
          'Haftaya bilim insanları ilacı insan denekler üzerinde test ediyor olacaklar.',
        ],
      ),
      GrammarRule(
        name: 'Future Perfect Tense (YÖKDİL\'in Favorisi)',
        explanation: 'YÖKDİL\'de en çok test edilen zamanlardan biridir. Gelecekte belli bir zamana KADAR (By...) bitmiş olacak eylemleri belirtir. O zamana ulaşıldığında o iş "çoktan bitmiş" olacaktır.',
        formula: 'Özne + will have + V3',
        examples: [
          'By the year 2050, scientists will have found a definitive cure for Alzheimer\'s.',
          'By next month, the patient will have completed his chemotherapy sessions.',
        ],
        examplesTr: [
          '2050 yılına KADAR, bilim insanları Alzheimer için kesin bir tedavi bulmuş olacaklar.',
          'Gelecek aya KADAR, hasta kemoterapi seanslarını tamamlamış olacak.',
        ],
      ),
      GrammarRule(
        name: 'Future Perfect Continuous (Gelecekte Süreç)',
        explanation: 'Gelecekte belirli bir ana kadar bir eylemin ne kadar süredir devam ediyor olacağını vurgular. Genelde hem "By..." (gelecek zaman noktası) hem de "For..." (süreç) barındırır.',
        formula: 'Özne + will have been + V-ing',
        examples: [
          'By the end of this year, Dr. House will have been treating this rare disease for 20 years.',
        ],
        examplesTr: [
          'Bu yılın sonuna gelindiğinde, Dr. House bu nadir hastalığı 20 yıldır tedavi ediyor olacak.',
        ],
      ),
      GrammarRule(
        name: 'Pratik Egzersizler: Kendini Test Et!',
        explanation: 'Aşağıdaki boşlukları tamamlayın (Cevaplar İpuçlarında):\n1. The sky is completely dark; it ___ (rain) very soon.\n2. By 2030, the global temperature ___ (rise) significantly.\n3. I think they ___ (discover) a new antibiotic soon.',
        formula: 'İpuçları: "Kanıt var", "By + Gelecek Zaman", "I think (Tahmin)".',
        examples: [
          'Egzersiz 1 İpucu: Gökyüzü karanlık -> Kanıt var.',
          'Egzersiz 2 İpucu: By 2030 -> 2030\'a kadar (gelecek öncesi bitiş).',
          'Egzersiz 3 İpucu: I think -> Şahsi tahmin.',
        ],
        examplesTr: [
          'Cevap 1: is going to rain',
          'Cevap 2: will have risen',
          'Cevap 3: will discover',
        ],
      ),
    ],
    yokdilTips: [
      'BY Kuralı: YÖKDİL\'de cümlenin başında "By the year 2040, by the end of this century, by next week" gibi geleceğe dönük bir sınır görüyorsanız, şıklarda GÖZÜ KAPALI "will have + V3" (Future Perfect) işaretleyebilirsiniz.',
      'Predict/Expect/Hope/Estimate: Eğer cümlenin ana fiili "researchers predict that..." (öngörüyorlar ki) şeklindeyse arkasından gelecek cümlenin fiili %90 "will" ile kurulur.',
      'When/If ile Gelecek Zaman: "When the doctor arrives (Simple Present), the surgery will begin." Zaman bağlaçlarının (When, If, As soon as) YANINDAKİ cümleye ASLA "will" gelmez. Diğer tarafa (ana cümleye) "will" gelir.',
      'Egzersiz Çözümleri: 1) is going to rain (Kanıt var). 2) will have risen (By + Gelecek Tarih formülü). 3) will discover (I think/Tahmin = Will).',
    ],
  ),

  GrammarTopic(
    title: 'Şampiyonların Rehberi: Modal & Semi-Modal Analizi',
    icon: '🧩',
    level: 'Orta',
    description: 'YÖKDİL\'in şifresi: İhtimal, zorunluluk, tavsiye ve yetenek bildiren Modallar ile onların kılık değiştirmiş halleri olan Semi-Modalların tam karşılaştırması.',
    rules: [
      GrammarRule(
        name: 'Modals ve Semi-Modals Nedir? Farkı Ne?',
        explanation: 'Modallar (can, must, should, may, might) TEK BAŞLARINA yardımcı fiildir, "s/es" takısı veya "to" almazlar (Örn: "must to go" YANLIŞTIR). Semi-Modallar ise (have to, ought to, be able to, be going to, be supposed to) içlerinde "to" veya "be/have" barındıran, zamanlara göre çekimlenebilen kılık değiştirmiş modallardır.',
        formula: 'Modal: Özne + must/can/should + V1 | Semi-Modal: Özne + have to / is able to + V1',
        examples: [
          'The doctor must examine you. (Modal - "to" yok, s takısı yok)',
          'The doctor has to examine you. (Semi-Modal - "have to", he/she/it için "has to" oldu)',
        ],
        examplesTr: [
          'Doktor seni muayene etmeli.',
          'Doktor seni muayene etmek zorunda.',
        ],
      ),
      GrammarRule(
        name: 'Zorunluluk: Must vs. Have To',
        explanation: 'İkisi de "zorunda/meli-malı" demektir ancak büyük bir fark vardır: "Must" içsel/kişisel/otoriter bir zorunluluktur (Doktorun hastaya emri). "Have to" ise dışsal, yasal, kurala dayalı zorunluluktur (Hastane prosedürü gereği). Ayrıca "must" geçmiş zamana çekimlenemez, geçmiş için mecburen "had to" kullanılır.',
        formula: 'Must (İçsel/Şimdi) | Have to (Dışsal/Şimdi) | Had to (Geçmiş Zorunluluk)',
        examples: [
          'You must quit smoking immediately. (İçsel/Otoriter tavsiye)',
          'Nurses have to wear uniforms. (Dışsal kural/Prosedür)',
          'The surgeon had to stop the operation because of bleeding. (Geçmiş zorunluluk)',
        ],
        examplesTr: [
          'Hemen sigarayı bırakmalısın.',
          'Hemşireler forma giymek zorundadır.',
          'Cerrah kanama yüzünden ameliyatı durdurmak zorunda kaldı.',
        ],
      ),
      GrammarRule(
        name: 'Yasak ve İhtiyatsızlık: Mustn\'t vs. Don\'t Have To',
        explanation: 'En çok sorulan tuzak! "Mustn\'t" kesin bir YASAK (yapmamalısın) bildirir. "Don\'t have to" / "Needn\'t" ise YASAK DEĞİLDİR, "yapmak zorunda değilsin / gerek yok" (ama istersen yapabilirsin) anlamı taşır.',
        formula: 'Mustn\'t = Yasak! | Don\'t have to / Needn\'t = Gerek yok, sana kalmış',
        examples: [
          'Patients with pacemakers mustn\'t enter the MRI room. (Kesin yasak! Girerlerse ölürler)',
          'You don\'t have to stay in the hospital tonight; you can go home. (Kalmak zorunda değilsin, gerek yok)',
        ],
        examplesTr: [
          'Kalp pili olan hastalar MRI odasına girmemelidir.',
          'Bu gece hastanede kalmak zorunda değilsin; eve gidebilirsin.',
        ],
      ),
      GrammarRule(
        name: 'Yetenek: Can vs. Be Able To',
        explanation: '"Can" genel, şu anki yetenekleri anlatır (I can swim). "Be able to" ise her zamana uyarlanabilen ("will be able to", "have been able to") ve özellikle ZORLU BİR DURUMUN üstesinden gelerek başarılan özel durumlarda (manage to) kullanılır.',
        formula: 'Can (Genel) | Be able to (Zorlu başarı veya farklı zamanlar)',
        examples: [
          'This new drug can reduce the tumor size. (Genel yetenek)',
          'Despite the complications, the surgical team was able to save the patient. (Zorlu bir durumu başarmak)',
          'We will be able to cure genetic diseases in the future. (Gelecek zaman çekimi)',
        ],
        examplesTr: [
          'Bu yeni ilaç tümör boyutunu küçültebilir.',
          'Komplikasyonlara rağmen cerrahi ekip hastayı kurtarmayı başardı.',
          'Gelecekte genetik hastalıkları tedavi edebileceğiz.',
        ],
      ),
      GrammarRule(
        name: 'Tavsiye: Should vs. Ought To vs. Had Better',
        explanation: '"Should" genel tıbbi tavsiye, öneri. "Ought to" tamamen aynıdır (semi-modal versiyonu). "Had better" ise tehdit/uyarı barındırır: "Yapsan iyi olur, yoksa kötü sonuçları olacak".',
        formula: 'Should = Ought to (Tavsiye) | Had better (Tehditli/Acil Tavsiye)',
        examples: [
          'You should (ought to) drink plenty of water. (Genel tavsiye)',
          'His fever is 40°C; we had better call an ambulance. (Acil durum/Uyarı)',
        ],
        examplesTr: [
          'Bol su içmelisin.',
          'Ateşi 40°C; ambulans çağırsak iyi olur (yoksa kötü şeyler olacak).',
        ],
      ),
      GrammarRule(
        name: 'Pratik Egzersizler: Kendini Test Et!',
        explanation: 'Boşluklara uygun modal / semi-modal yapıyı getirin:\n1. You ___ smoke in the ICU! (Yasak)\n2. I ___ wear glasses when I was a child. (Geçmiş zorunluluk)\n3. We ___ leave now, there is no hurry. (Gerek yok)',
        formula: 'İpuçları: Yasak (Mustn\'t), Geçmiş Zorunluluk (Had to), Gerek Yok (Don\'t have to/Needn\'t).',
        examples: [
          'Cevap 1: mustn\'t (Yoğun bakımda sigara içmek kesin yasaktır)',
          'Cevap 2: had to (Geçmişte "must" kullanılamaz, "had to" kullanılır)',
          'Cevap 3: don\'t have to / needn\'t (Acele yoksa gitmek "zorunda değiliz" demektir)',
        ],
        examplesTr: [
          '1) Yoğun bakımda sigara içmemelisin!',
          '2) Çocukken gözlük takmak zorundaydım.',
          '3) Şimdi çıkmak zorunda değiliz, acelemiz yok.',
        ],
      ),
    ],
    yokdilTips: [
      'PAST MODALS (Geçmiş Modallar): Modal fiilin arkasına "have + V3" gelirse olay tamamen geçmişte gerçekleşmiş bir çıkarıma döner.',
      'Must have V3: Kesin kanıtlı geçmiş çıkarım ("Hastanın değerleri çok düzelmiş, ilacını almış olmalı").',
      'Can\'t have V3: Kesin ihtimal dışı çıkarım ("İyileşmiş olamaz, tümör çok büyüktü").',
      'Should have V3: Geçmişte yapılması gereken ama YAPILMAYAN tavsiye ("O ameliyatı olmalıydı... ama olmadı").',
      'YÖKDİL Çeviri Taktikleri: Cümle "yapmayı başardı" diye bitiyorsa (was able to / managed to); "zorundadır" diye bitiyorsa (has to/must); "ihtimali var" diye bitiyorsa (may/might) arayın.',
    ],
  ),

  GrammarTopic(
    title: 'Şampiyonların Rehberi: Nouns (İsimler) & Quantifiers',
    icon: '🍎',
    level: 'Başlangıç',
    description: 'YÖKDİL\'de İngilizcenin temel taşı olan isimler! Sayılabilen/Sayılamayan tıbbi terimler, "A few, Little, Much, Many" gibi miktar bildiren yapıların altın kuralları.',
    rules: [
      GrammarRule(
        name: 'Sayılabilen (Countable) İsimler',
        explanation: 'Tekil olarak "a/an" alabilen ve çoğul yapmak için sonuna "-s" takısı alabilen isimlerdir. Tıpta hücre, organ, hasta, ilaç, hastalık (genellikle) sayılabilir.',
        formula: 'Tekil: a cell, a patient | Çoğul: cells, patients',
        examples: [
          'The doctor examined [a patient]. (Bir hasta - Tekil)',
          'The doctor examined 20 [patients]. (Hastalar - Çoğul)',
        ],
        examplesTr: [
          'Doktor BİR HASTAYI muayene etti.',
          'Doktor 20 HASTAYI muayene etti.',
        ],
      ),
      GrammarRule(
        name: 'Sayılamayan (Uncountable) İsimler - YÖKDİL İÇİN KRİTİK',
        explanation: 'Asla "a/an" almayan ve asla sonuna "-s" (çoğul takısı) ALAMAYAN isimlerdir. İngilizcede akışkanlar (blood, water), gazlar (oxygen), tozlar ve SOYUT KAVRAMLAR sayılamaz. YÖKDİL\'de bilmeniz gereken en kritik sayılamayan isimler: Information, Research, Evidence, Advice, Equipment, Knowledge, Damage, Blood.',
        formula: 'Research, Information, Evidence, Blood + Tekil Fiil (is/has/was)',
        examples: [
          'The [evidence] IS very clear. (Evidences DENMEZ!)',
          'Much [research] HAS been done on this virus. (Researches DENMEZ!)',
          'We need some [equipment]. (Equipments DENMEZ!)',
        ],
        examplesTr: [
          'KANIT (Kanıtlar) çok açık.',
          'Bu virüs üzerine çok ARAŞTIRMA (Araştırmalar) yapıldı.',
          'Biraz EKİPMAN (Ekipmanlar) ihtiyacımız var.',
        ],
      ),
      GrammarRule(
        name: 'Quantifiers: Miktar Belirleyiciler (Many / Much)',
        explanation: 'SAYILABİLEN çoğul isimlerle MANY (çok), FEW (az), A FEW (birkaç) kullanılır.\nSAYILAMAYAN isimlerle MUCH (çok), LITTLE (az), A LITTLE (biraz) kullanılır.',
        formula: 'Many/Few + Sayılabilen(s) | Much/Little + Sayılamayan',
        examples: [
          'There are [many cells] in the body. (Hücre sayılabilir -> Many)',
          'There is [much blood] loss. (Kan sayılamaz -> Much)',
          'He has [a few] days to live. (Gün sayılabilir -> A few)',
          'We have [little] hope. (Umut sayılamaz -> Little)',
        ],
        examplesTr: [
          'Vücutta ÇOK HÜCRE vardır.',
          'ÇOK KAN kaybı var.',
          'Yaşayacak BİRKAÇ GÜNÜ var.',
          'ÇOK AZ (yok denecek kadar az) UMUDUMUZ var.',
        ],
      ),
      GrammarRule(
        name: 'Some, Any, A lot of, Plenty of',
        explanation: 'Bu gruptakiler çok cömerttir; HEM sayılabilen HEM sayılamayan isimlerle kullanılırlar.\nSOME (Biraz/Birkaç): Olumlu cümlelerde kullanılır.\nANY (Hiç): Olumsuz cümle ve sorularda kullanılır.\nA LOT OF / PLENTY OF (Çok fazla/Bol miktarda): Genelde olumlu cümlelerde.',
        formula: 'Some / A lot of + Sayılabilen(s) VEYA Sayılamayan',
        examples: [
          'I need [some] pills. (Sayılabilen) / I need [some] water. (Sayılamayan)',
          'The patient didn\'t show [any] symptoms. (Olumsuz cümle)',
          'Drinking [plenty of] water is good for kidneys. (Bol miktarda)',
        ],
        examplesTr: [
          'Birkaç HAP lazım. / Biraz SU lazım.',
          'Hasta HİÇBİR BELİRTİ göstermedi.',
          'BOL MİKTARDA SU içmek böbrekler için iyidir.',
        ],
      ),
      GrammarRule(
        name: 'A Few vs Few / A Little vs Little (HAYATİ FARK)',
        explanation: 'Başında "A" varsa anlam OLUMLUDUR (Az ama yeterli). Başında "A" YOKSA anlam OLUMSUZDUR (Yok denecek kadar az, yetersiz).',
        formula: 'A few / A little (Yeterli)  vs  Few / Little (Yetersiz)',
        examples: [
          'The doctor has [a little] time. (Biraz zamanı var, sana bakabilir - Olumlu)',
          'The doctor has [little] time. (Yok denecek kadar az zamanı var, bakamaz - Olumsuz)',
          'There are [few] treatments for this disease. (Neredeyse hiç tedavi yok - Olumsuz)',
        ],
        examplesTr: [
          'Doktorun BİRAZ zamanı var.',
          'Doktorun ÇOK AZ zamanı var.',
          'Bu hastalık için YOK DENECEK KADAR AZ tedavi var.',
        ],
      ),
    ],
    yokdilTips: [
      'ALTIN BİLGİ: "Research, Information, Evidence" YÖKDİL\'de şıklarda çoğul "s" takısı almış haliyle (researches, informations) verilirse o şıkkı GÖZÜNÜZ KAPALI ELEYİN. Bunlar asla "s" almaz!',
      'YÖKDİL TAKTİĞİ: "A number of" sayılabilen çoğul isimlerle (a number of cells), "An amount of" sayılamayan isimlerle (an amount of blood) kullanılır.',
      'DİKKAT: Cümlede "hardly, barely, rarely" gibi olumsuzluk bildiren kelimeler varsa, arkasından SOME gelmez, ANY gelir. "He has hardly ANY chance." (Neredeyse HİÇ şansı yok).',
    ],
  ),

  GrammarTopic(
    title: 'Şampiyonların Rehberi: Noun Clause (İsim Cümlecikleri)',
    icon: '📦',
    level: 'İleri',
    description: 'YÖKDİL metinlerinin sırrı! Bilim insanları bir şeyi "kanıtlar, bulur, keşfeder". Peki neyi? İşte o "neyi" sorusunun cevabı koca bir cümleyse, o cümleyi bir kutuya koyup İSİM yapmamız gerekir.',
    rules: [
      GrammarRule(
        name: 'Noun Clause Nedir?',
        explanation: 'Normalde "I know the truth" (Gerçeği biliyorum) derken nesnemiz "the truth" kelimesidir. Eğer "Ben senin yalan söylediğini biliyorum" diyeceksek, "sen yalan söylüyorsun" cümlesini paketleyip bir "İsim/Nesne" haline getirmeliyiz: I know [that you are lying]. İşte bu paketleme işlemine Noun Clause denir.',
        formula: 'Ana Fiil + [Bağlaç + Cümle]',
        examples: [
          'Researchers proved [the theory]. (Normal nesne)',
          'Researchers proved [that the virus mutates quickly]. (Noun Clause nesnesi)',
        ],
        examplesTr: [
          'Araştırmacılar teoriyi kanıtladı.',
          'Araştırmacılar [virüsün hızla mutasyona uğradığını] kanıtladı.',
        ],
      ),
      GrammarRule(
        name: '1. "That" Bağlacı (-dığı, -eceği)',
        explanation: 'Eğer paketlemek istediğimiz cümle normal (düz) bir cümleyse, başına "That" koyarız. YÖKDİL\'de özellikle show, indicate, suggest, prove, believe, state gibi bilimsel fiillerin arkasından %99 "that" gelir.',
        formula: 'Fiil + That + Özne + Yüklem',
        examples: [
          'Studies show [that regular exercise prevents heart disease].',
          'It is estimated [that the population will double by 2050].',
        ],
        examplesTr: [
          'Çalışmalar [düzenli egzersizin kalp hastalığını önlediğini] göstermektedir.',
          '[Nüfusun 2050 yılına kadar iki katına çıkacağı] tahmin edilmektedir.',
        ],
      ),
      GrammarRule(
        name: '2. "Soru Kelimeleri" (What, Where, How, Why)',
        explanation: 'Eğer paketlemek istediğimiz şey bir bilgi, bir yöntem veya bir yer ise (Soru Cümlesiyse) bu kelimeler kullanılır. Çevirileri "...diğini, ...dığını" veya doğrudan sorunun kendisi (nasıl, nerede) şeklinde yapılır. DİKKAT: Noun clause içinde soru kelimesinden sonra DEVAM EDEN CÜMLE DÜZ OLMAK ZORUNDADIR. (Soru devriği yapılmaz!)',
        formula: 'Fiil + Soru Kelimesi + Özne + Yüklem',
        examples: [
          'Scientists are trying to understand [how the brain stores memories].',
          'The doctor explained [what we should do next].',
          'They don\'t know [why the patient didn\'t respond to the treatment].',
        ],
        examplesTr: [
          'Bilim insanları [beynin anıları nasıl depoladığını] anlamaya çalışıyorlar.',
          'Doktor [bundan sonra ne yapmamız gerektiğini] açıkladı.',
          '[Hastanın tedaviye neden yanıt vermediğini] bilmiyorlar.',
        ],
      ),
      GrammarRule(
        name: '3. "If / Whether" (Olup Olmadığı)',
        explanation: 'Eğer paketlemek istediğimiz cümle bir "Evet/Hayır" sorusu ise (Is he sick?), bunu "Acaba hasta mı?" veya "Hasta olup olmadığı" şeklinde cümleye bağlarız. Genellikle arkasından "or not" gelir (Whether ... or not).',
        formula: 'Fiil + If / Whether + Özne + Yüklem (+ or not)',
        examples: [
          'We must determine [whether the tumor is malignant or not].',
          'The nurse asked [if I had any allergies].',
        ],
        examplesTr: [
          '[Tümörün kötü huylu olup olmadığını] belirlemeliyiz.',
          'Hemşire [herhangi bir alerjim olup olmadığını] sordu.',
        ],
      ),
      GrammarRule(
        name: 'Pratik Egzersizler: Doğru Bağlacı Bul!',
        explanation: 'Boşluklara (that, how, whether) kelimelerinden birini getirin:\n1. The test results show ___ the patient is healthy.\n2. We are not sure ___ this drug is safe for pregnant women or not.\n3. The article explains ___ the new vaccine works in the body.',
        formula: 'İpuçları: 1. Kesin bilgi ve show fiili (that). 2. or not var (whether). 3. Bir çalışma mekanizması açıklanıyor (how).',
        examples: [
          'Cevap 1: that (Kesin/Düz Cümle)',
          'Cevap 2: whether (... olup olmadığı)',
          'Cevap 3: how (nasıl çalıştığı)',
        ],
        examplesTr: [
          '1) Test sonuçları hastanın sağlıklı olduğunu gösteriyor.',
          '2) Bu ilacın hamile kadınlar için güvenli olup olmadığından emin değiliz.',
          '3) Makale yeni aşının vücutta nasıl çalıştığını açıklıyor.',
        ],
      ),
    ],
    yokdilTips: [
      'ALTIN TAVSİYE: YÖKDİL cümle tamamlama sorularında boşluk "show, demonstrate, point out" fiillerinden hemen sonra açılmışsa, şıklarda doğrudan "that" ile başlayan cümleyi arayın.',
      'DİKKAT: "What" kelimesi Noun Clause yaparken çoğu zaman "Şey" olarak çevrilir. Örn: "You are what you eat." (Sen yediğin ŞEYSİN). "The doctor did what was necessary." (Doktor gerekli olan ŞEYİ yaptı.)',
      'ÇEVİRİ TAKTİĞİ: Türkçe cümlenin yüklemi "bilinmektedir, sanılmaktadır, iddia edilmektedir" ise İngilizcesi kesinlikle "It is known that..., It is thought that..., It is claimed that..." kalıbıdır.',
    ],
  ),

  GrammarTopic(
    title: 'Şampiyonların Rehberi: İngilizcenin Kalbi CLAUSE (Yan Cümle) Ailesi',
    icon: '🧬',
    level: 'İleri',
    description: 'YÖKDİL\'deki o 4 satırlık devasa cümleleri okuyabilmenin tek sırrı: Noun Clause, Relative Clause ve Adverbial Clause yapılarının anatomisi. Tüm yan cümlecikler tek ekranda.',
    rules: [
      GrammarRule(
        name: 'Clause (Cümlecik) Nedir?',
        explanation: 'İngilizcede içinde en az bir Özne (S) ve bir Yüklem (V) barındıran kelime gruplarına "Clause" denir. İkiye ayrılır:\n1. Main Clause (Ana Cümle): Tek başına ayakta durabilen tam cümledir.\n2. Subordinate/Dependent Clause (Yan Cümle): Tek başına hiçbir anlam ifade etmeyen, ana cümleye yama gibi yapışan cümleciklerdir. YÖKDİL cümlelerini uzatan ana unsur bunlardır.',
        formula: '[Yan Cümle] + [Ana Cümle] veya [Ana Cümle] + [Yan Cümle]',
        examples: [
          'The patient died. (Ana Cümle - Tek başına anlamlı)',
          'Because the doctor made a mistake... (Yan Cümle - Tek başına anlamsız, havada kalır)',
          'The patient died [because the doctor made a mistake]. (Birleşmiş YÖKDİL Cümlesi)',
        ],
        examplesTr: [
          'Hasta öldü.',
          'Çünkü doktor bir hata yaptı... (Ee sonra?)',
          'Doktor bir hata yaptığı için hasta öldü.',
        ],
      ),
      GrammarRule(
        name: '1. Noun Clause (İsim Cümleciği)',
        explanation: 'Normalde tek bir kelime olan "isim" veya "nesne" görevini koca bir cümlenin üstlenmesidir. Genellikle "That", "What", "How", "If/Whether" bağlaçlarıyla başlarlar. Fiilden (özellikle know, think, believe, discover fiillerinden) hemen SONRA gelirler ve "-diğini, -dığını" şeklinde çevrilirler.',
        formula: 'Ana Fiil + [That/What/How/Whether + Özne + Yüklem]',
        examples: [
          'Researchers discovered [that the new virus spreads rapidly]. (Neyi keşfettiler? -> o koca yan cümleyi)',
          'It is not clear [whether the treatment will succeed or not]. (Ne belli değil? -> o koca yan cümle)',
          'We must understand [how the disease affects the brain].',
        ],
        examplesTr: [
          'Araştırmacılar, [yeni virüsün hızla yayıldığını] keşfettiler.',
          '[Tedavinin başarılı olup olmayacağı] net değildir.',
          '[Hastalığın beyni nasıl etkilediğini] anlamalıyız.',
        ],
      ),
      GrammarRule(
        name: '2. Relative Clause (Adjective Clause / Sıfat Cümleciği)',
        explanation: 'İngilizcede sıfatlar ismin önünde yer alır (red apple). Ancak bir ismi koca bir CÜMLE ile nitelemek isterseniz, bu cümle ismin ARKASINA gelir. Buna Relative (veya Adjective) Clause denir. "Who" (insanlar için), "Which" (hayvanlar/nesneler için), "That" (her ikisi için), "Whose" (sahiplik), "Where" (yer) bağlaçlarıyla isme yapışırlar.',
        formula: 'Nitelenecek İsim + [Who/Which/That + Yüklem/Özne]',
        examples: [
          'The doctor [who performed the complicated surgery] is very experienced. (Hangi doktor? -> Ameliyatı yapan doktor)',
          'Antibiotics are drugs [which kill harmful bacteria]. (Hangi ilaçlar? -> Bakterileri öldüren ilaçlar)',
          'Patients [whose immune systems are weak] should stay at home. (Kimin bağışıklığı? -> Hastaların)',
        ],
        examplesTr: [
          '[Karmaşık ameliyatı gerçekleştiren] doktor çok tecrübelidir.',
          'Antibiyotikler [zararlı bakterileri öldüren] ilaçlardır.',
          '[Bağışıklık sistemleri zayıf olan] hastalar evde kalmalıdır.',
        ],
      ),
      GrammarRule(
        name: 'Relative Clause Kısaltmaları (Reductions) - ŞAMPİYON SEVİYESİ',
        explanation: 'YÖKDİL\'de "who/which" bağlaçları genellikle YAZILMAZ, cümle kısaltılır. Kısaltmanın iki altın kuralı vardır:\n1. Eğer nitelediğiniz isim o işi KENDİ YAPIYORSA (Aktif), fiil "V-ing" (yapan/eden) halini alır.\n2. Eğer isim o işten ETKİLENİYORSA (Pasif), fiil "V3" (yapılan/edilen) halini alır.',
        formula: 'Aktif -> İsim + V-ing | Pasif -> İsim + V3',
        examples: [
          'The doctor [performing the surgery] was sweating. (Aktif: Ameliyatı YAPAN doktor)',
          'The drug [prescribed by the doctor] caused side effects. (Pasif: Doktor tarafından YAZILAN ilaç)',
          'Cells [producing insulin] are destroyed in Type 1 Diabetes. (Aktif: İnsülin ÜRETEN hücreler)',
        ],
        examplesTr: [
          'Ameliyatı yapan doktor terliyordu.',
          'Doktor tarafından yazılan ilaç yan etkilere neden oldu.',
          'Tip 1 Diyabette insülin üreten hücreler yok edilir.',
        ],
      ),
      GrammarRule(
        name: '3. Adverbial Clause (Zarf Cümleciği)',
        explanation: 'Ana cümlenin NEDEN, NE ZAMAN, HANGİ ŞARTLA yapıldığını belirten yan cümleciklerdir. YÖKDİL okuma parçalarının %80\'i bu bağlaçlarla uzatılır. Başlıca bağlaçlar: Because, Although, When, If, While.',
        formula: '[Bağlaç + Cümle 1] , [Ana Cümle 2]',
        examples: [
          '[Although the surgery was successful], the patient died. (Zıtlık Yan Cümlesi)',
          '[Because antibiotics are overused], bacteria are becoming resistant. (Neden Yan Cümlesi)',
        ],
        examplesTr: [
          '[Ameliyat başarılı olmasına rağmen], hasta öldü.',
          '[Antibiyotikler aşırı kullanıldığı için], bakteriler dirençli hale geliyor.',
        ],
      ),
      GrammarRule(
        name: 'Pratik Egzersizler: Hangi Clause?',
        explanation: 'Aşağıdaki köşeli parantez içindeki yan cümlelerin türünü (Noun, Relative veya Adverbial) belirleyin:\n1. We know [that smoking causes cancer].\n2. The patient [who is waiting outside] has a fever.\n3. [When the ambulance arrived], it was too late.',
        formula: 'İpuçları: 1. Fiilden sonra mı gelmiş? (Noun) | 2. İsimden hemen sonra mı gelmiş? (Relative) | 3. Cümleye zaman/neden mi katmış? (Adverbial)',
        examples: [
          'Cevap 1: Noun Clause (Fiil olan "know" kelimesinden sonra nesne olarak gelmiş)',
          'Cevap 2: Relative Clause ("The patient" ismini niteliyor)',
          'Cevap 3: Adverbial Clause ("When" zaman bağlacı ile ana cümleyi niteliyor)',
        ],
        examplesTr: [
          '1) Sigaranın kansere neden olduğunu biliyoruz.',
          '2) Dışarıda bekleyen hastanın ateşi var.',
          '3) Ambulans geldiğinde çok geçti.',
        ],
      ),
    ],
    yokdilTips: [
      'ALTIN KURAL 1: Bir İngilizce cümlede "Who, Which, That" kelimelerini gördüğünüzde, bir nefes alın. Oradan itibaren ANA CÜMLEYE DEĞİL, yeni bir yan cümleye (Clause) girdiğinizi bilin.',
      'ALTIN KURAL 2: Çeviri sorularında Noun Clause ("that...") varsa, Türkçe cümlenin sonu genellikle "...diğini gösterir", "...dığı düşünülmektedir" şeklinde biter. "gösterir" (show) ana fiildir.',
      'ALTIN KURAL 3: Bir cümlenin başı "Because, Although, If" gibi bir bağlaçla başlıyorsa, o cümlenin YÜKLEMİ, o bağlacın olduğu yerdeki yüklem DEĞİLDİR. Virgülü takip edin, asıl yüklem virgülden sonraki ana cümlededir.',
    ],
  ),

  GrammarTopic(
    title: 'Şampiyonların Rehberi: Reduction of Relative Clause (Kısaltmalar)',
    icon: '✂️',
    level: 'İleri',
    description: 'YÖKDİL\'in en zor sorularının %90\'ı "who/which" bağlaçlarının saklanmasıyla oluşur. Aktif ve pasif kısaltmaların şifreleri bu ekranda.',
    rules: [
      GrammarRule(
        name: 'Reduction (Kısaltma) Neden Yapılır?',
        explanation: 'Akademik dilde "The doctor who treats the patient" demek yerine, "who/which/that" atılır ve fiil kısaltılarak daha akıcı bir cümle elde edilir: "The doctor treating the patient". Bunun YÖKDİL\'deki iki temel kuralı vardır: Aktif (V-ing) ve Pasif (V3).',
        formula: 'Aktif: İsim + V-ing | Pasif: İsim + V3',
        examples: [
          'The virus [which causes] the disease... -> The virus [causing] the disease...',
          'The medicine [which is prescribed] by him... -> The medicine [prescribed] by him...',
        ],
        examplesTr: [
          'Hastalığa neden olan virüs...',
          'Onun tarafından yazılan ilaç...',
        ],
      ),
      GrammarRule(
        name: 'Aktif Kısaltma: V-ing (Yapan/Eden)',
        explanation: 'Eğer nitelenen İSİM o eylemi BİZZAT KENDİ YAPIYORSA, fiil sonuna "-ing" takısı alır. Çevirisi her zaman "yapan, eden" şeklindedir.',
        formula: 'İsim + Fiil-ing',
        examples: [
          'Patients [suffering from asthma] should avoid cold air.',
          'The cells [producing insulin] are found in the pancreas.',
          'A new hormone [affecting the brain] was discovered.',
        ],
        examplesTr: [
          'Astımdan MÜZDARİP OLAN hastalar soğuk havadan kaçınmalıdır.',
          'İnsülin ÜRETEN hücreler pankreasta bulunur.',
          'Beyni ETKİLEYEN yeni bir hormon keşfedildi.',
        ],
      ),
      GrammarRule(
        name: 'Pasif Kısaltma: V3 (Yapılan/Edilen)',
        explanation: 'Eğer nitelenen İSİM o eylemi yapmıyor, o eylemden ETKİLENİYORSA, fiil 3. halde (V3) bırakılır. Çevirisi "yapılan, edilen" şeklindedir. Özellikle arkasından "by" geliyorsa %100 pasif kısaltmadır.',
        formula: 'İsim + Fiil(V3)',
        examples: [
          'The treatment [recommended by the doctor] is expensive.',
          'Babies [born prematurely] need special care.',
          'The organs [donated to the hospital] saved three lives.',
        ],
        examplesTr: [
          'Doktor tarafından TAVSİYE EDİLEN tedavi pahalıdır.',
          'Erken DOĞAN (doğurulan) bebekler özel bakıma ihtiyaç duyar.',
          'Hastaneye BAĞIŞLANAN organlar üç hayat kurtardı.',
        ],
      ),
      GrammarRule(
        name: 'To V1 ve To Be V3 Kısaltmaları (İstisnalar)',
        explanation: 'İsmin önünde the first, the last, the only, the best gibi kelimeler varsa, kısaltma V-ing veya V3 ile DEĞİL, "to + V1" (aktif) veya "to be + V3" (pasif) ile yapılır.',
        formula: 'the first/last/only + İsim + to V1 / to be V3',
        examples: [
          'He was the first surgeon [to perform] this operation. (Aktif)',
          'She is the only patient [to be cured] so far. (Pasif)',
        ],
        examplesTr: [
          'O, bu ameliyatı gerçekleştiren ilk cerrahtı.',
          'O, şu ana kadar tedavi edilen tek hastadır.',
        ],
      ),
      GrammarRule(
        name: 'Pratik Egzersizler: V-ing mi, V3 mü?',
        explanation: 'Aşağıdaki boşlukları düşünün:\n1. The scientist ___ (discover) the virus won a Nobel prize.\n2. The virus ___ (discover) in Africa is very deadly.\n3. He was the first doctor ___ (arrive) at the scene.',
        formula: 'İpuçları: Bilim insanı kendi keşfeder (Aktif). Virüs keşfedilir (Pasif). İlk (the first) doktor gelir (To V1).',
        examples: [
          'Cevap 1: discovering (Aktif: Keşfeden bilim insanı)',
          'Cevap 2: discovered (Pasif: Keşfedilen virüs)',
          'Cevap 3: to arrive (İstisna kuralı: the first to arrive)',
        ],
        examplesTr: [
          '1) Virüsü keşfeden bilim insanı Nobel kazandı.',
          '2) Afrika\'da keşfedilen virüs çok ölümcüldür.',
          '3) Olay yerine gelen ilk doktordu.',
        ],
      ),
    ],
    yokdilTips: [
      'GÖRSEL TAKTİK: Bir ismin hemen arkasında boşluk varsa ve o boşluktan sonra bir NESNE (isim) geliyorsa cevap %90 V-ing (Aktif) dir. Eğer boşluktan sonra BY, IN, ON gibi bir EDAT geliyorsa cevap %90 V3 (Pasif) dir.',
      'ÖRNEK: The drug ___ [the disease] -> affecting (Aktif, nesne var).',
      'ÖRNEK: The drug ___ [by the doctor] -> prescribed (Pasif, edat var).',
      'Çeviri Taktikleri: YÖKDİL çeviri sorularında cümlenin öznesi "X tarafından geliştirilen Y ilacı..." ise İngilizcede cümlenin başlangıcını "The drug Y developed by X..." şeklinde aramalısınız.',
    ],
  ),

  GrammarTopic(
    title: 'Şampiyonların Rehberi: If Clauses (Koşul Cümleleri) & Conditionals',
    icon: '⚖️',
    level: 'İleri',
    description: 'YÖKDİL sınavının vazgeçilmezidir. Hastaya şu ilacı verirsen ne olur? Ya geçmişte ameliyat olmasaydı ne olurdu? Type 0\'dan Mixed Type\'a kadar tüm koşul senaryoları.',
    rules: [
      GrammarRule(
        name: 'Type 0: Bilimsel Gerçekler (Hep Aynı Sonuç)',
        explanation: 'Doğa kanunları, biyolojik veya kimyasal kesin gerçekleri anlatırken kullanılır. Koşul gerçekleşirse, sonucun gerçekleşme ihtimali %100\'dür. İki taraf da Geniş Zaman (Present Simple) ile çekimlenir.',
        formula: 'If + Present Simple (V1), Present Simple (V1)',
        examples: [
          'If you heat ice, it melts. (Isıtırsan erir - %100 kesin)',
          'If the brain lacks oxygen for a few minutes, permanent damage occurs.',
        ],
        examplesTr: [
          'Buzu ısıtırsan erir.',
          'Beyin birkaç dakika oksijensiz kalırsa, kalıcı hasar oluşur.',
        ],
      ),
      GrammarRule(
        name: 'Type 1: Geleceğe Dair Güçlü İhtimal',
        explanation: 'Eğer şu anda bir şey olursa, gelecekte şu sonucun olma ihtimali çok yüksektir. YÖKDİL\'de hastanın tedavi süreci veya ilaçların potansiyel etkileri genelde Type 1 ile anlatılır.',
        formula: 'If + Present Simple (V1), Will / Can / May + V1',
        examples: [
          'If the patient takes this medicine, he will recover quickly.',
          'If we don\'t stop the bleeding, she may go into shock.',
        ],
        examplesTr: [
          'Eğer hasta bu ilacı alırsa, hızla iyileşecek.',
          'Eğer kanamayı durdurmazsak, (hasta) şoka girebilir.',
        ],
      ),
      GrammarRule(
        name: 'Type 2: Şu Anki Gerçeğe Aykırı Hayaller (Varsayım)',
        explanation: 'Şu an gerçekleşmesi imkansız olan, hayali durumlardan bahsederiz. Gerçekte durum böyle DEĞİLDİR. ŞU AN\'dan bahsetmemize rağmen yapısal olarak "Past" (V2) kullanılır.',
        formula: 'If + Past Simple (V2), Would / Could / Might + V1',
        examples: [
          'If we had the vaccine now, we could save thousands. (Gerçekte aşı YOK)',
          'If I were the surgeon, I wouldn\'t perform this operation. (Gerçekte cerrah ben DEĞİLİM)',
        ],
        examplesTr: [
          'Eğer şu an aşıya sahip olsaydık, binlerce kişiyi kurtarabilirdik.',
          'Eğer cerrah ben olsaydım, bu ameliyatı yapmazdım. (Not: Type 2\'de tüm öznelerde "were" kullanılır)',
        ],
      ),
      GrammarRule(
        name: 'Type 3: Geçmişe Dair Pişmanlık (Tamamen Geçmiş)',
        explanation: 'Olay bitmiş, hasta kaybedilmiş veya kurtulmuştur. Geriye dönük "Eğer şöyle yapsaydık, böyle olurdu" şeklindeki geçmiş varsayımlarıdır.',
        formula: 'If + Past Perfect (Had V3), Would/Could/Might have + V3',
        examples: [
          'If the ambulance had arrived earlier, the patient wouldn\'t have died. (Ama geç geldi ve öldü)',
          'If she had taken her pills, her blood pressure wouldn\'t have spiked.',
        ],
        examplesTr: [
          'Ambulans daha erken gelseydi, hasta ölmeyecekti.',
          'Eğer haplarını içmiş olsaydı, tansiyonu fırlamayacaktı.',
        ],
      ),
      GrammarRule(
        name: 'Mixed Type (Karışık Tip) - ZOR SEVİYE',
        explanation: 'Geçmişte yaşanan bir olayın (Type 3) sonucunun ŞU ANI (Type 2) etkilemesidir. YÖKDİL\'de cümlenin bir yarısında "yesterday/in the past", diğer yarısında "now/today" varsa kesin Mixed Type\'tır.',
        formula: 'If + Had V3 (Geçmiş Neden) , Would V1 + now/today (Şu Anki Sonuç)',
        examples: [
          'If he had quit smoking years ago, he wouldn\'t have lung cancer now.',
          'If the virus hadn\'t mutated last month, the current vaccines would be effective today.',
        ],
        examplesTr: [
          'Eğer yıllar önce sigarayı bırakmış olsaydı, ŞU AN akciğer kanseri olmazdı.',
          'Virüs geçen ay mutasyona uğramasaydı, mevcut aşılar BUGÜN etkili olurdu.',
        ],
      ),
      GrammarRule(
        name: 'Pratik Egzersizler: Hangi Type?',
        explanation: 'Cümlelerin hangi koşul tipi olduğunu bulun:\n1. If you don\'t drink water, you die.\n2. If I had studied harder, I would have passed the exam last week.\n3. If she takes a rest, she will feel better tomorrow.',
        formula: 'İpuçları: Bilimsel/Genel (Type 0). Tamamen geçmiş ve bitmiş (Type 3). Gelecekte ihtimal (Type 1).',
        examples: [
          'Cevap 1: Type 0 (Su içmezsen ölürsün - Doğa kanunu)',
          'Cevap 2: Type 3 (Geçen haftaki sınava çalışmadım - Geçmiş pişmanlık)',
          'Cevap 3: Type 1 (Yarınki iyileşme ihtimali)',
        ],
        examplesTr: [
          '1) Su içmezsen ölürsün.',
          '2) Daha sıkı çalışsaydım geçen haftaki sınavı geçerdim.',
          '3) Eğer dinlenirse, yarın daha iyi hissedecek.',
        ],
      ),
    ],
    yokdilTips: [
      'GİZLİ IF (Inversion / Devrik Yapı): Eğer cümlenin başında "Had the doctor arrived...", "Were I you...", veya "Should you need..." görüyorsanız, bunlar aslında gizli bir "IF" cümlesidir! (Eğer doktor gelseydi... Eğer yerinde olsaydım... Eğer ihtiyacın olursa...)',
      'UNLESS = IF NOT: "Unless" (mezse, mazsa) zaten kendiliğinden olumsuzdur. Yanındaki cümle asla "not" ALMAZ. "Unless the patient breathes = If the patient doesn\'t breathe" (Hasta nefes almazsa).',
      'ZAMAN UYUMU KURALI: "If" in bağlandığı yan cümlede (If I will go...) ASLA will, would, shall, be going to kullanılmaz! "If" geleceği sevmez. Gelecek zaman asıl cümlede (virgülden sonra) olmalıdır.',
    ],
  ),

  GrammarTopic(
    title: 'Şampiyonların Rehberi: Participle Clauses (Zarf Kısaltmaları)',
    icon: '🏃',
    level: 'İleri',
    description: 'YÖKDİL\'de cümlenin en başında virgülden önce duran o garip "V-ing" veya "V3" yapılarının sırrı. İki farklı eylemin aynı anda veya art arda yapılmasının kısaltılmış hali.',
    rules: [
      GrammarRule(
        name: 'Participle Nedir? (Cümle Başı Kısaltmaları)',
        explanation: 'İki farklı cümleyi "Because, When, After" gibi bağlaçlarla bağlamak yerine, bağlacı ve özneyi çöpe atıp, FİİLİ kısaltarak en başa koyduğumuz yapıdır. En önemli kural: İki cümlenin ÖZNESİ AYNI olmak zorundadır!',
        formula: 'V-ing / V3 / Having V3 , [Ana Cümle ÖZNESİ] + Yüklem',
        examples: [
          'Because he felt ill, the doctor went home. -> [Feeling ill], the doctor went home.',
          'When it is used correctly, this drug is safe. -> [Used correctly], this drug is safe.',
        ],
        examplesTr: [
          'Hasta hissettiği için, doktor eve gitti. -> [Hasta hissederek], doktor eve gitti.',
          'Doğru kullanıldığında, bu ilaç güvenlidir. -> [Doğru kullanılarak / kullanıldığında], bu ilaç güvenlidir.',
        ],
      ),
      GrammarRule(
        name: 'Aktif Participle: V-ing (Yapan/Eden/Yaparak)',
        explanation: 'Eğer virgülden sonraki ana cümlenin öznesi, cümlenin başındaki kısaltılmış eylemi BİZZAT YAPIYORSA, fiil "-ing" alır. Çevirisi genellikle "-erek, -arak" veya "yapınca" şeklindedir.',
        formula: 'V-ing (Aktif) , Özne (İşi yapan)',
        examples: [
          '[Examining the patient], the doctor noticed a rash. (Muayene eden kim? Doktor)',
          '[Working in the lab all night], the scientist found the cure.',
        ],
        examplesTr: [
          '[Hastayı muayene ederken/ederek], doktor bir döküntü fark etti.',
          '[Tüm gece laboratuvarda çalışarak], bilim insanı tedaviyi buldu.',
        ],
      ),
      GrammarRule(
        name: 'Pasif Participle: V3 (Yapılan/Edilen)',
        explanation: 'Eğer virgülden sonraki özne, baştaki eylemi KENDİ YAPMIYOR, o eylemden ETKİLENİYORSA, fiil V3 (3. hal) olur. Çevirisi "yapıldığında, yapılmış olarak" şeklindedir.',
        formula: 'V3 (Pasif) , Özne (İşten etkilenen)',
        examples: [
          '[Discovered in 1928], penicillin saved millions. (Penisilin kendi kendini keşfetmez, keşfedilir)',
          '[Treated with antibiotics], the patient recovered quickly.',
        ],
        examplesTr: [
          '[1928\'de keşfedilen / keşfedildiğinde], penisilin milyonları kurtardı.',
          '[Antibiyotiklerle tedavi edilen / edilerek], hasta hızla iyileşti.',
        ],
      ),
      GrammarRule(
        name: 'Zaman Farkı: Having V3 / Having been V3',
        explanation: 'Eğer kısaltılan olay, ana cümleden DAHA ÖNCE TAMAMLANMIŞSA (Önce şu oldu, SONRA bu oldu), olayın bittiğini vurgulamak için "Having V3" (Aktif) veya "Having been V3" (Pasif) kullanılır.',
        formula: 'Having V3 (Aktif - Yaptıktan sonra) | Having been V3 (Pasif - Yapıldıktan sonra)',
        examples: [
          '[Having finished the surgery], the team took a break. (Önce bitti, sonra mola)',
          '[Having been diagnosed with cancer], he started chemotherapy. (Önce teşhis kondu, sonra tedavi)',
        ],
        examplesTr: [
          '[Ameliyatı bitirdikten sonra], ekip mola verdi.',
          '[Kanser teşhisi konulduktan sonra], kemoterapiye başladı.',
        ],
      ),
      GrammarRule(
        name: 'Pratik Egzersizler: V-ing mi, V3 mü?',
        explanation: 'Cümlenin başındaki boşluğa uygun yapıyı getirin:\n1. ___ (Bite) by a snake, the boy was rushed to the hospital.\n2. ___ (Realize) the danger, the nurse called the doctor.\n3. ___ (Test) successfully on mice, the drug is now ready for humans.',
        formula: 'İpuçları: 1. Çocuk kendi ısırmaz, ısırılır (Pasif). 2. Hemşire tehlikeyi kendi fark eder (Aktif). 3. İlaç test edilir (Pasif - Önceden bittiği için Having been V3 de olur).',
        examples: [
          'Cevap 1: Bitten (Pasif - Yılan tarafından ısırıldığında)',
          'Cevap 2: Realizing (Aktif - Tehlikeyi fark edince/ederek)',
          'Cevap 3: Tested / Having been tested (Pasif - Fareler üzerinde test edildikten sonra)',
        ],
        examplesTr: [
          '1) Bir yılan tarafından ısırılan çocuk hızla hastaneye kaldırıldı.',
          '2) Tehlikeyi fark eden hemşire doktoru çağırdı.',
          '3) Fareler üzerinde başarıyla test edilen ilaç artık insanlar için hazır.',
        ],
      ),
    ],
    yokdilTips: [
      'GÖRSEL TAKTİK: Cümle boşlukla başlıyorsa (____ , The patient...) virgülden sonraki ÖZNEYİ bulun. Hasta kendi kendine mi yapıyor (V-ing), yoksa hastaya bir şey mi yapılıyor (V3)? Bunu sormak %100 doğru cevaba götürür.',
      'DİKKAT: "By" edatı varsa cevap %90 Pasif (V3 veya Being V3 / Having been V3) olur.',
      'ANLAM BİLGİSİ: Bu yapılar cümleye genelde "When (zaman)", "Because (neden)", veya "By (-erek/-arak yöntem)" anlamı katar.',
    ],
  ),

  GrammarTopic(
    title: 'Şampiyonların Rehberi: İngilizcenin Şifresi BAĞLAÇLAR (Conjunctions)',
    icon: '🔗',
    level: 'İleri',
    description: 'YÖKDİL paragraf ve cümle tamamlama sorularının KALBİ. Tüm bağlaç grupları, "Cümle alanlar" ve "İsim alanlar" ayrımıyla tek bir ekranda.',
    rules: [
      GrammarRule(
        name: 'Bağlaçların En Büyük Sırrı: Cümle mi, İsim mi?',
        explanation: 'İngilizcede "Rağmen" anlamına gelen hem ALTHOUGH hem de DESPITE vardır. Peki farkı nedir? ALTHOUGH arkasından tam bir cümle (Özne + Yüklem) alırken, DESPITE sadece bir isim (veya V-ing) alır. YÖKDİL sorularının %50\'si bu kuraldan çözülür!',
        formula: 'Cümle Alanlar (S+V+O)  vs  İsim Alanlar (Noun / V-ing)',
        examples: [
          '[Although] he was ill (Cümle), he went to work.',
          '[Despite] his illness (İsim), he went to work.',
        ],
        examplesTr: [
          'Hasta OLMASINA RAĞMEN işe gitti.',
          'Hastalığına RAĞMEN işe gitti.',
        ],
      ),
      GrammarRule(
        name: '1. Zıtlık ve Beklenmedik Sonuç Bağlaçları',
        explanation: 'İki zıt durumu veya beklenmeyen bir sonucu bağlarlar. YÖKDİL\'de bir taraf "tedavi/olumlu", diğer taraf "yan etki/ölüm/olumsuz" ise cevap %100 zıtlıktır.\n\nCÜMLE ALANLAR (-e rağmen, oysa): Although, Even though, Though, While, Whereas.\nİSİM ALANLAR (-e rağmen): Despite, In spite of.\nGEÇİŞ BAĞLAÇLARI (Ancak, yine de): However, Nevertheless, Nonetheless (bunlar genellikle iki nokta arasına veya virgülden sonra gelir).',
        formula: 'Olumlu + [Zıtlık Bağlacı] + Olumsuz (veya tam tersi)',
        examples: [
          '[Although] the surgery was successful, the patient died of an infection.',
          'The drug is very effective; [however], it has severe side effects.',
          '[Despite] the new treatments, cancer remains a major problem.',
        ],
        examplesTr: [
          'Ameliyat başarılı OLMASINA RAĞMEN, hasta enfeksiyondan öldü.',
          'İlaç çok etkilidir; ANCAK, ciddi yan etkileri vardır.',
          'Yeni tedavilere RAĞMEN, kanser büyük bir sorun olmaya devam ediyor.',
        ],
      ),
      GrammarRule(
        name: '2. Sebep - Sonuç Bağlaçları',
        explanation: 'Bir olayın NEDENİNİ veya SONUCUNU açıklarlar.\n\nNEDEN BİLDİREN/CÜMLE ALANLAR (-dığı için, çünkü): Because, Since, As, Seeing that.\nNEDEN BİLDİREN/İSİM ALANLAR (-den dolayı, yüzünden): Because of, Due to, Owing to.\nSONUÇ BİLDİREN GEÇİŞ BAĞLAÇLARI (Bu yüzden, dolayısıyla): Therefore, Thus, Hence, As a result.',
        formula: 'Neden + [Sonuç Bağlacı] + Sonuç | [Sebep Bağlacı] + Neden , Sonuç',
        examples: [
          '[Since] the patient is allergic to penicillin, we used an alternative antibiotic.',
          'The road was icy; [therefore], the ambulance arrived late.',
          'The flights were canceled [due to] the heavy snow.',
        ],
        examplesTr: [
          'Hasta penisiline alerjik OLDUĞU İÇİN (MADEM Kİ), alternatif bir antibiyotik kullandık.',
          'Yol buzluydu; BU YÜZDEN ambulans geç geldi.',
          'Yoğun kar YÜZÜNDEN uçuşlar iptal edildi.',
        ],
      ),
      GrammarRule(
        name: '3. Ekleme ve Paralellik Bağlaçları (Ek Bilgi)',
        explanation: 'Var olan bir fikre YENİ, AYNI YÖNDE bir bilgi eklerken kullanılır.\n\nCÜMLE ALAN/GEÇİŞ (Dahası, Üstelik, Ayrıca): Moreover, Furthermore, In addition, Besides.\nİSİM ALANLAR (-e ek olarak, yanısıra): In addition to, Along with, As well as.',
        formula: 'Olumlu + [Ekleme Bağlacı] + Olumlu (veya Olumsuz + Olumsuz)',
        examples: [
          'Smoking causes lung cancer. [Furthermore], it increases the risk of heart disease.',
          '[In addition to] causing cancer, smoking damages the skin.',
        ],
        examplesTr: [
          'Sigara akciğer kanserine neden olur. DAHASI, kalp hastalığı riskini artırır.',
          'Kansere neden OLMASINA EK OLARAK, sigara cilde de zarar verir.',
        ],
      ),
      GrammarRule(
        name: '4. Amaç ve Durum/Şart Bağlaçları',
        explanation: 'Bir eylemin hangi AMAÇLA veya HANGİ ŞARTLA yapıldığını anlatır.\n\nAMAÇ: So that (sın diye, amacıyla - Cümle alır), In order to (amacıyla - V1 alır).\nDURUM/TEDBİR: In case (...olur diye, durumunda - Cümle alır).\nŞART: Provided that, As long as (...şartıyla - Cümle alır).',
        formula: 'Eylem + [Amaç/Durum Bağlacı] + Hedef/Şart',
        examples: [
          'The surgeon washed his hands carefully [so that] he wouldn\'t infect the patient.',
          'Keep the emergency kit ready [in case] there is an earthquake.',
          'You will recover [provided that] you take your pills.',
        ],
        examplesTr: [
          'Cerrah, hastaya enfeksiyon bulaştırmaSIN DİYE (amacıyla) ellerini dikkatlice yıkadı.',
          'Deprem OLUR DİYE (ihtimaline karşı) acil durum çantasını hazır tutun.',
          'Haplarını içmen ŞARTIYLA iyileşeceksin.',
        ],
      ),
      GrammarRule(
        name: 'Pratik Egzersizler: Cümle mi, İsim mi?',
        explanation: 'Aşağıdaki boşluklara uygun bağlacı seçin (Although / Despite / Because / Due to):\n1. ___ the heavy rain (isim), we went out.\n2. ___ it was raining heavily (cümle), we went out.\n3. The match was canceled ___ the heavy rain (isim).\n4. The match was canceled ___ it was raining heavily (cümle).',
        formula: 'İpuçları: Arkasından yüklemi olan tam bir cümle (it was raining) geliyorsa (Although/Because). Sadece bir isim (the heavy rain) geliyorsa (Despite/Due to).',
        examples: [
          'Cevap 1: Despite (Yağmura rağmen - İsim aldı)',
          'Cevap 2: Although (Yağmur yağmasına rağmen - Cümle aldı)',
          'Cevap 3: Due to / Because of (Yağmur yüzünden - İsim aldı)',
          'Cevap 4: Because / Since (Yağmur yağdığı için - Cümle aldı)',
        ],
        examplesTr: [
          '1) Yoğun yağmura rağmen dışarı çıktık.',
          '2) Yoğun yağmur yağmasına rağmen dışarı çıktık.',
          '3) Maç yoğun yağmur yüzünden iptal edildi.',
          '4) Maç yoğun yağmur yağdığı için iptal edildi.',
        ],
      ),
    ],
    yokdilTips: [
      'ALTIN ZITLIK TAKTİĞİ: "While" ve "Whereas" YÖKDİL\'de genellikle iki farklı öznenin kıyaslamasında kullanılır. "While Europe is aging, Africa has a young population." (Avrupa yaşlanırken, Afrika genç bir nüfusa sahiptir). Şıklarda While/Whereas varsa, virgülün iki yanındaki öznelerin (Europe vs Africa) farklı olup olmadığına bakın.',
      'THEREFORE vs BECAUSE: "Because" NEDENİN önüne gelir. "Therefore" SONUCUN önüne gelir. "He is sick because he ate poison." (Zehir yediği İÇİN hasta). "He ate poison; therefore, he is sick." (Zehir yedi, BU YÜZDEN hasta).',
      'BOŞLUK TAKTİĞİ: Eğer boşluktan sonra "the lack of..." (eksikliği), "the development of..." (gelişimi) gibi the ile başlayan KOCA BİR İSİM GRUBU varsa ve hiç fiil yoksa şıklardan "Although, Because, Since" gibi cümle alanları anında ELEYİN. Cevap %100 "Despite, Because of, Due to" gibi isim alan edatlardan biridir.',
    ],
  ),

  GrammarTopic(
    title: 'Şampiyonların Rehberi: Gerunds & Infinitives (Fiilimsiler)',
    icon: '🏃',
    level: 'İleri',
    description: 'YÖKDİL\'de iki fiilin yan yana geldiği durumlarda (istemek-gitmek, denemek-yapmak) ikinci fiilin "-ing" mi yoksa "to" mu alacağının şifreleri. Soru kaçırmamanız için en kritik fiiller.',
    rules: [
      GrammarRule(
        name: 'Gerund (V-ing) ve Infinitive (To V1) Nedir?',
        explanation: 'İngilizcede iki eylem doğrudan yan yana gelemez (I want go -> YANLIŞ). İkinci eylem ya "to" alarak Infinitive olur (I want to go) ya da "-ing" alarak Gerund olur (I enjoy going). Hangi fiilin ne alacağı kurala bağlıdır.',
        formula: 'Fiil 1 + TO V1 (Infinitive)  VEYA  Fiil 1 + V-ing (Gerund)',
        examples: [
          'The patient decided [to undergo] surgery. (Decide daima "to" alır)',
          'The doctor recommended [resting] for a week. (Recommend daima "V-ing" alır)',
        ],
        examplesTr: [
          'Hasta ameliyat OLMAYA karar verdi.',
          'Doktor bir hafta DİNLENMEYİ tavsiye etti.',
        ],
      ),
      GrammarRule(
        name: 'Daima GERUND (V-ing) Alan Kritik YÖKDİL Fiilleri',
        explanation: 'Bu fiillerden sonra gelen ikinci eylem istisnasız olarak "-ing" takısı alır. Özellikle tıbbi metinlerde risk, öneri ve kaçınma bildiren fiiller bu gruptadır.',
        formula: 'Avoid, Consider, Delay, Deny, Enjoy, Involve, Postpone, Recommend, Risk, Suggest + V-ing',
        examples: [
          'Asthma patients should avoid [smoking]. (Kaçınmak)',
          'The treatment involves [injecting] the drug directly. (İçermek / Gerektirmek)',
          'He delayed [going] to the hospital. (Ertelemek)',
        ],
        examplesTr: [
          'Astım hastaları sigara İÇMEKTEN kaçınmalıdır.',
          'Tedavi ilacın doğrudan ENJEKTE EDİLMESİNİ gerektirir.',
          'O, hastaneye GİTMEYİ erteledi.',
        ],
      ),
      GrammarRule(
        name: 'Daima INFINITIVE (To V1) Alan Kritik YÖKDİL Fiilleri',
        explanation: 'Bu fiillerden sonra gelen eylem daima "to V1" alır. Genellikle gelecek yönelimli, plan, istek, karar veya çaba bildiren fiillerdir.',
        formula: 'Agree, Attempt, Decide, Expect, Fail, Hope, Manage, Plan, Promise, Refuse, Tend + To V1',
        examples: [
          'The surgeons managed [to save] the patient. (Başarmak)',
          'The virus tends [to mutate] rapidly. (Eğiliminde olmak)',
          'He refused [to take] the medicine. (Reddetmek)',
        ],
        examplesTr: [
          'Cerrahlar hastayı KURTARMAYI başardılar.',
          'Virüs hızla MUTASYONA UĞRAMA eğilimindedir.',
          'O, ilacı ALMAYI reddetti.',
        ],
      ),
      GrammarRule(
        name: 'PREPOSITION (Edat) Sonrası Kuralı - %100 Çalışan Taktik!',
        explanation: 'İngilizcede in, on, at, about, for, of, with, without gibi herhangi bir EDATTAN sonra eylem geliyorsa, o eylem %100 oranında "-ing" (Gerund) olmak ZORUNDADIR. YÖKDİL\'de hayat kurtarır.',
        formula: 'Edat (in/of/for/about...) + V-ing',
        examples: [
          'He is interested [in researching] rare diseases.',
          'They succeeded [in finding] a cure.',
          'She died [without waking] up from the coma.',
        ],
        examplesTr: [
          'Nadir hastalıkları ARAŞTIRMAYA ilgi duyuyor.',
          'Bir tedavi BULMAKTA başarılı oldular.',
          'Komadan UYANMADAN öldü.',
        ],
      ),
      GrammarRule(
        name: 'Anlamı Değişen İki Yüzlü Fiiller (Stop / Remember / Try)',
        explanation: 'Bu üç fiil hem "to" hem "-ing" alabilir ama anlam TAMAMEN değişir.\n\nSTOP + V-ing: Yaptığı işi (sigarayı vs) tamamen bırakmak.\nSTOP + to V1: Bir şey YAPMAK İÇİN durmak.\n\nREMEMBER + V-ing: Geçmişteki bir anıyı hatırlamak.\nREMEMBER + to V1: Gelecekteki bir görevi hatırlamak.\n\nTRY + V-ing: Bir şeyi sadece "denemek" (ilaç denemek gibi).\nTRY + to V1: Bir şeyi başarmak için çabalamak / uğraşmak.',
        formula: 'Stop V-ing (Bırak) vs Stop To V1 (İçin dur)',
        examples: [
          'He stopped [smoking]. (Sigara içmeyi bıraktı)',
          'He stopped [to smoke]. (Sigara içmek için durdu)',
          'The doctors are trying [to save] her. (Kurtarmak için ÇABALIYORLAR)',
        ],
        examplesTr: [
          'Sigarayı bıraktı.',
          'Sigara içmek için durdu.',
          'Doktorlar onu kurtarmak için çabalıyorlar.',
        ],
      ),
    ],
    yokdilTips: [
      'ZAMAN FARKI (Having V3 / To have V3): Eğer ana fiilden "DAHA ÖNCE" olmuş, bitmiş bir olayı anlatıyorsak Perfect Gerund (having V3) veya Perfect Infinitive (to have V3) kullanırız. Örn: "He admitted [having stolen] the drugs." (İlaçları önceden çaldığını (şimdi) itiraf etti).',
      'PASİF (Edilgen) FİİLİMSİLER: Bir fiilimsi pasif yapılıyorsa "Being V3" (Gerund) veya "To be V3" (Infinitive) halini alır. Örn: "The patient dislikes [being touched]." (Hasta DOKUNULMAKTAN hoşlanmaz).',
      'TAKTiK: Boşluktan hemen önce bir SIFAT (important, easy, difficult, necessary) varsa, boşluğa %99 "to V1" gelir. "It is important [to drink] water." (Su içmek önemlidir).',
    ],
  ),

  GrammarTopic(
    title: 'Şampiyonların Rehberi: Passive (Edilgen) Yapıların Sırrı',
    icon: '🔄',
    level: 'Orta',
    description: 'Tıp dünyasında makalelerin %80\'i "Passive Voice" ile yazılır. Hastalıkların nasıl tedavi edildiği, ameliyatların nasıl yapıldığı tamamen bu yapıyla anlatılır.',
    rules: [
      GrammarRule(
        name: 'Neden Passive Kullanırız?',
        explanation: 'İngilizcede ve tıpta eylemi KİMİN yaptığı değil, eylemin KİME/NEYE yapıldığı önemliyse Passive (Edilgen) kullanılır. "Aşıyı kim buldu?" yerine "Aşı bulundu" denir. Formül her zaman: "be" fiilinin uygun zamana çekimi + V3 (fiilin 3. hali).',
        formula: 'Özne(Nesne) + am/is/are/was/were/been/be + V3 (+ by...)',
        examples: [
          'Active: Researchers developed the vaccine in 2020. (Etken - Yapan belli)',
          'Passive: The vaccine was developed in 2020. (Edilgen - Kime yapıldığı/Nesne odaklı)',
        ],
        examplesTr: [
          'Araştırmacılar aşıyı 2020\'de geliştirdi.',
          'Aşı 2020\'de geliştirildi.',
        ],
      ),
      GrammarRule(
        name: 'Tüm Zamanlarda Passive Çekimleri',
        explanation: 'Passive yapı her zamana uyarlanabilir. Tek değişen "be" fiilidir.',
        formula: 'Present: is/are + V3 | Past: was/were + V3 | Future: will be + V3 | Perfect: has/have been + V3',
        examples: [
          'Blood samples are analysed daily. (Geniş Zaman)',
          'The tumor was removed successfully yesterday. (Geçmiş Zaman)',
          'The patient will be discharged tomorrow. (Gelecek Zaman)',
          'A new cure has been discovered recently. (Yakın Geçmiş Zaman)',
        ],
        examplesTr: [
          'Kan örnekleri her gün analiz edilir.',
          'Tümör dün başarıyla çıkarıldı.',
          'Hasta yarın taburcu edilecek.',
          'Son zamanlarda yeni bir tedavi keşfedildi.',
        ],
      ),
      GrammarRule(
        name: 'Modallarda Passive (can be, must be)',
        explanation: 'Modal fiillerle (can, must, should) edilgen yapı kurarken formül çok basittir: Modal + BE + V3.',
        formula: 'Modal + be + V3',
        examples: [
          'This medicine must be kept in the fridge. (Tutulmalı)',
          'The surgery can be performed under local anesthesia. (Gerçekleştirilebilir)',
          'Side effects should be monitored closely. (İzlenmeli)',
        ],
        examplesTr: [
          'Bu ilaç buzdolabında tutulmalıdır.',
          'Ameliyat lokal anestezi altında gerçekleştirilebilir.',
          'Yan etkiler yakından izlenmelidir.',
        ],
      ),
      GrammarRule(
        name: 'İleri Seviye: Impersonal Passive (It is said that...)',
        explanation: 'Akademik metinlerin belkemiğidir. Genel kanıları, araştırmaları aktarırken kullanılır.',
        formula: 'It is + V3 (said/thought/known/believed/reported) + that + Cümle',
        examples: [
          'It is known that smoking causes lung cancer.',
          'It was reported that the virus mutated rapidly.',
        ],
        examplesTr: [
          'Sigaranın akciğer kanserine neden olduğu bilinmektedir.',
          'Virüsün hızla mutasyona uğradığı rapor edilmiştir.',
        ],
      ),
      GrammarRule(
        name: 'Pratik Egzersizler: Aktif mi, Pasif mi?',
        explanation: 'Aşağıdaki cümlelerdeki boşluklara fiilin AKTİF veya PASİF halini getirin:\n1. Alexander Fleming ___ (discover) penicillin.\n2. Penicillin ___ (discover) by Alexander Fleming.\n3. The patient ___ (must / examine) immediately.',
        formula: 'İpuçları: Eylemi yapan belliyse Aktif. Nesne özne konumundaysa Pasif. "By" bağlacına dikkat.',
        examples: [
          'Cevap 1: discovered (Aktif V2 - Fleming keşfetti)',
          'Cevap 2: was discovered (Pasif - Penicilin keşfedildi)',
          'Cevap 3: must be examined (Pasif Modal - Hasta muayene EDİLMELİ)',
        ],
        examplesTr: [
          '1) Alexander Fleming penisilini keşfetti.',
          '2) Penisin Alexander Fleming tarafından keşfedildi.',
          '3) Hasta hemen muayene edilmeli.',
        ],
      ),
    ],
    yokdilTips: [
      'ALTIN KURAL: YÖKDİL\'de bir cümle boşluğundan hemen sonra "by" (tarafından) kelimesi veya başka bir edat (in, at, on, with) varsa, %90 ihtimalle o boşluğa PASSIVE (Edilgen) bir yapı gelecektir.',
      'DİKKAT: Geçişsiz fiiller (happen, occur, die, emerge) KESİNLİKLE PASSIVE YAPILAMAZ! "It was happened" veya "The patient was died" YANLIŞTIR. Doğrusu: "It happened" veya "The patient died".',
      'Çeviri Taktikleri: Türkçe çevirilerde "edilmektedir, gösterilmiştir, düşünülmektedir, yapılmalıdır" gibi -il / -in / -n ekleri varsa İngilizcede Passive arayın.',
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
