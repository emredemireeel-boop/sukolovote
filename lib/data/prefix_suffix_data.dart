class AffixItem {
  final String affix;
  final String meaning;
  final String type; // 'Prefix' (Ön Ek), 'Suffix' (Son Ek), 'Root' (Kök)
  final List<String> examples; // [EN - TR, EN - TR, ...]
  final String tip; // YÖKDİL ipucu

  const AffixItem({
    required this.affix,
    required this.meaning,
    required this.type,
    required this.examples,
    this.tip = '',
  });

  // Eski API uyumluluğu
  String get exampleEn => examples.isNotEmpty ? examples.first.split(' – ').first : '';
  String get exampleTr => examples.isNotEmpty ? examples.first.split(' – ').last : '';
}

/// Bir tıbbi terimin parçalarını gösterir
class WordBreakdown {
  final String word;
  final String turkishMeaning;
  final List<WordPart> parts;

  const WordBreakdown({
    required this.word,
    required this.turkishMeaning,
    required this.parts,
  });
}

class WordPart {
  final String text;
  final String meaning;
  final String type; // 'Prefix', 'Root', 'Suffix'

  const WordPart({required this.text, required this.meaning, required this.type});
}

// ═══════════════════════════════════════════════════════════
//  KELIME PARÇALAMA ÖRNEKLERİ (Anatomy of a Word)
// ═══════════════════════════════════════════════════════════

const List<WordBreakdown> wordBreakdowns = [
  WordBreakdown(word: 'Cardiology', turkishMeaning: 'Kalp bilimi', parts: [
    WordPart(text: 'Cardi', meaning: 'Kalp', type: 'Root'),
    WordPart(text: 'o', meaning: 'Bağlayıcı', type: 'Root'),
    WordPart(text: 'logy', meaning: 'Bilim dalı', type: 'Suffix'),
  ]),
  WordBreakdown(word: 'Hypertension', turkishMeaning: 'Yüksek tansiyon', parts: [
    WordPart(text: 'Hyper', meaning: 'Aşırı / Yüksek', type: 'Prefix'),
    WordPart(text: 'tens', meaning: 'Gerginlik / Basınç', type: 'Root'),
    WordPart(text: 'ion', meaning: 'Durum / Süreç', type: 'Suffix'),
  ]),
  WordBreakdown(word: 'Osteoporosis', turkishMeaning: 'Kemik erimesi', parts: [
    WordPart(text: 'Osteo', meaning: 'Kemik', type: 'Root'),
    WordPart(text: 'por', meaning: 'Gözenek / Geçirgen', type: 'Root'),
    WordPart(text: 'osis', meaning: 'Anormal durum', type: 'Suffix'),
  ]),
  WordBreakdown(word: 'Endocrinology', turkishMeaning: 'İç salgı bezleri bilimi', parts: [
    WordPart(text: 'Endo', meaning: 'İç', type: 'Prefix'),
    WordPart(text: 'crin', meaning: 'Salgılamak', type: 'Root'),
    WordPart(text: 'o', meaning: 'Bağlayıcı', type: 'Root'),
    WordPart(text: 'logy', meaning: 'Bilim dalı', type: 'Suffix'),
  ]),
  WordBreakdown(word: 'Bradycardia', turkishMeaning: 'Kalp atışının yavaşlaması', parts: [
    WordPart(text: 'Brady', meaning: 'Yavaş', type: 'Prefix'),
    WordPart(text: 'card', meaning: 'Kalp', type: 'Root'),
    WordPart(text: 'ia', meaning: 'Durum', type: 'Suffix'),
  ]),
  WordBreakdown(word: 'Tachycardia', turkishMeaning: 'Kalp atışının hızlanması', parts: [
    WordPart(text: 'Tachy', meaning: 'Hızlı', type: 'Prefix'),
    WordPart(text: 'card', meaning: 'Kalp', type: 'Root'),
    WordPart(text: 'ia', meaning: 'Durum', type: 'Suffix'),
  ]),
  WordBreakdown(word: 'Subcutaneous', turkishMeaning: 'Cilt altı', parts: [
    WordPart(text: 'Sub', meaning: 'Altında', type: 'Prefix'),
    WordPart(text: 'cutan', meaning: 'Cilt / Deri', type: 'Root'),
    WordPart(text: 'eous', meaning: '...ile ilgili', type: 'Suffix'),
  ]),
  WordBreakdown(word: 'Hemorrhage', turkishMeaning: 'Kanama', parts: [
    WordPart(text: 'Hemo', meaning: 'Kan', type: 'Root'),
    WordPart(text: 'rrhage', meaning: 'Patlama / Akış', type: 'Suffix'),
  ]),
  WordBreakdown(word: 'Hepatomegaly', turkishMeaning: 'Karaciğer büyümesi', parts: [
    WordPart(text: 'Hepato', meaning: 'Karaciğer', type: 'Root'),
    WordPart(text: 'megaly', meaning: 'Büyüme', type: 'Suffix'),
  ]),
  WordBreakdown(word: 'Gastroenteritis', turkishMeaning: 'Mide-bağırsak iltihabı', parts: [
    WordPart(text: 'Gastro', meaning: 'Mide', type: 'Root'),
    WordPart(text: 'enter', meaning: 'Bağırsak', type: 'Root'),
    WordPart(text: 'itis', meaning: 'İltihap', type: 'Suffix'),
  ]),
  WordBreakdown(word: 'Pneumonectomy', turkishMeaning: 'Akciğer çıkarılması', parts: [
    WordPart(text: 'Pneumon', meaning: 'Akciğer', type: 'Root'),
    WordPart(text: 'ectomy', meaning: 'Cerrahi çıkarma', type: 'Suffix'),
  ]),
  WordBreakdown(word: 'Electrocardiogram', turkishMeaning: 'Kalp ritim kaydı (EKG)', parts: [
    WordPart(text: 'Electro', meaning: 'Elektrik', type: 'Prefix'),
    WordPart(text: 'cardio', meaning: 'Kalp', type: 'Root'),
    WordPart(text: 'gram', meaning: 'Kayıt / Görüntü', type: 'Suffix'),
  ]),
];

// ═══════════════════════════════════════════════════════════
//  ANA VERİ: ÖN EKLER + KÖKLER + SON EKLER
// ═══════════════════════════════════════════════════════════

const List<AffixItem> medicalAffixes = [
  // ──────────────────────── ÖN EKLER (PREFIXES) ────────────────────────
  AffixItem(
    affix: 'a-, an-',
    meaning: 'Yokluk, eksiklik',
    type: 'Prefix',
    examples: ['Anemia – Kansızlık', 'Anoxia – Oksijensizlik', 'Apnea – Nefes durması'],
    tip: 'YÖKDİL\'de "a" ile başlayan tıbbi terim görürsen "olumsuzluk" düşün.',
  ),
  AffixItem(
    affix: 'anti-',
    meaning: 'Karşı, zıt',
    type: 'Prefix',
    examples: ['Antibiotic – Antibiyotik', 'Antidote – Panzehir', 'Antiseptic – Mikrop öldürücü'],
    tip: 'Sınavda "anti-inflammatory" (iltihap önleyici) çok çıkar.',
  ),
  AffixItem(
    affix: 'auto-',
    meaning: 'Kendi kendine',
    type: 'Prefix',
    examples: ['Autoimmune – Bağışıklığın kendi vücuda saldırması', 'Autopsy – Otopsi'],
    tip: '"Autoimmune disease" YÖKDİL sağlık paragraflarında sık geçer.',
  ),
  AffixItem(
    affix: 'bi-',
    meaning: 'İki, çift',
    type: 'Prefix',
    examples: ['Bilateral – İki taraflı', 'Bipolar – İki kutuplu'],
    tip: '"Bilateral" ameliyat konularında sık kullanılır.',
  ),
  AffixItem(
    affix: 'brady-',
    meaning: 'Yavaş',
    type: 'Prefix',
    examples: ['Bradycardia – Kalp atışının yavaşlaması', 'Bradypnea – Yavaş solunum'],
    tip: 'Karşıtı "tachy-" (hızlı). İkisi birlikte çıkabilir.',
  ),
  AffixItem(
    affix: 'contra-',
    meaning: 'Karşıt, zıt yönde',
    type: 'Prefix',
    examples: ['Contraindication – Kullanım sakıncası', 'Contraception – Doğum kontrol'],
    tip: '"Contraindicated" ilaç paragraflarında sıkça geçer.',
  ),
  AffixItem(
    affix: 'de-',
    meaning: 'Ayrılma, azalma, uzaklaşma',
    type: 'Prefix',
    examples: ['Dehydration – Su kaybı', 'Decomposition – Çürüme, ayrışma'],
    tip: '"Dehydration" neredeyse her sağlık metninde geçer.',
  ),
  AffixItem(
    affix: 'dys-',
    meaning: 'Zor, ağrılı, anormal',
    type: 'Prefix',
    examples: ['Dyspnea – Nefes darlığı', 'Dysfunction – İşlev bozukluğu', 'Dysphagia – Yutma güçlüğü'],
    tip: '"Dysfunction" genel sağlık metinlerinde en sık çıkan terimlerden.',
  ),
  AffixItem(
    affix: 'ecto-, exo-, extra-',
    meaning: 'Dışında',
    type: 'Prefix',
    examples: ['Ectopic – Olması gereken yer dışında', 'Extracellular – Hücre dışı'],
    tip: '"Ectopic pregnancy" sık çıkan tıbbi terimlerden.',
  ),
  AffixItem(
    affix: 'endo-',
    meaning: 'İç, içinde',
    type: 'Prefix',
    examples: ['Endoscopy – İç organları inceleme', 'Endocrine – İç salgı bezleri'],
    tip: '"Endocrine system" hormon paragraflarında geçer.',
  ),
  AffixItem(
    affix: 'epi-',
    meaning: 'Üzerinde, üstünde',
    type: 'Prefix',
    examples: ['Epidermis – Üst deri tabakası', 'Epidemic – Salgın'],
    tip: '"Epidemic vs Pandemic" farkı sınavda sorulabilir.',
  ),
  AffixItem(
    affix: 'hyper-',
    meaning: 'Aşırı, yüksek, fazla',
    type: 'Prefix',
    examples: ['Hypertension – Yüksek tansiyon', 'Hyperglycemia – Yüksek kan şekeri', 'Hyperthermia – Aşırı ısınma'],
    tip: 'Her "hyper-" gördüğünde "aşırı/yüksek" anlamını düşün.',
  ),
  AffixItem(
    affix: 'hypo-',
    meaning: 'Düşük, altında, yetersiz',
    type: 'Prefix',
    examples: ['Hypoglycemia – Düşük kan şekeri', 'Hypothermia – Vücut ısısının düşmesi', 'Hypotension – Düşük tansiyon'],
    tip: '"Hyper-" vs "Hypo-" farkı çok sorulur. İkisini karıştırma!',
  ),
  AffixItem(
    affix: 'inter-',
    meaning: 'Arasında',
    type: 'Prefix',
    examples: ['Intercellular – Hücreler arası', 'Interaction – Etkileşim'],
    tip: '"Drug interaction" (ilaç etkileşimi) farmakoloji metinlerinde sık geçer.',
  ),
  AffixItem(
    affix: 'intra-',
    meaning: 'İçinde',
    type: 'Prefix',
    examples: ['Intravenous (IV) – Damar içi', 'Intracellular – Hücre içi'],
    tip: '"Intravenous" klinik paragraflarının olmazsa olmaz terimi.',
  ),
  AffixItem(
    affix: 'macro-',
    meaning: 'Büyük',
    type: 'Prefix',
    examples: ['Macrophage – Büyük yiyici hücre', 'Macroscopic – Çıplak gözle görülebilen'],
    tip: 'Karşıtı "micro-" (küçük).',
  ),
  AffixItem(
    affix: 'micro-',
    meaning: 'Küçük',
    type: 'Prefix',
    examples: ['Microscope – Mikroskop', 'Microorganism – Mikro canlı', 'Microbiology – Mikrobiyoloji'],
    tip: '"Microorganism" enfeksiyon/bağışıklık paragraflarında çıkar.',
  ),
  AffixItem(
    affix: 'neo-',
    meaning: 'Yeni',
    type: 'Prefix',
    examples: ['Neonatal – Yeni doğana ait', 'Neoplasm – Yeni doku oluşumu (tümör)'],
    tip: '"Neonatal" bebek/doğum metinlerinde çok sık kullanılır.',
  ),
  AffixItem(
    affix: 'pan-',
    meaning: 'Tüm, hepsi',
    type: 'Prefix',
    examples: ['Pandemic – Tüm dünyaya yayılan salgın', 'Pancreas – Pankreas (tümüyle et/organ)'],
    tip: '"Pandemic vs Epidemic" farkı: pan = tüm dünya, epi = bölgesel.',
  ),
  AffixItem(
    affix: 'peri-',
    meaning: 'Etrafında, çevresinde',
    type: 'Prefix',
    examples: ['Pericardium – Kalp zarı', 'Perinatal – Doğum çevresinde'],
    tip: '"Perinatal" anne-bebek sağlığı metinlerinde geçer.',
  ),
  AffixItem(
    affix: 'poly-',
    meaning: 'Çok, fazla',
    type: 'Prefix',
    examples: ['Polyuria – Çok idrara çıkma', 'Polypharmacy – Çok ilaç kullanımı'],
    tip: '"Polypharmacy" yaşlı hasta metinlerinde sık çıkan terim.',
  ),
  AffixItem(
    affix: 'post-',
    meaning: 'Sonra',
    type: 'Prefix',
    examples: ['Postoperative – Ameliyat sonrası', 'Postpartum – Doğum sonrası'],
    tip: '"Postoperative care" cerrahi metinlerinde sık kullanılır.',
  ),
  AffixItem(
    affix: 'pre-',
    meaning: 'Önce',
    type: 'Prefix',
    examples: ['Prenatal – Doğum öncesi', 'Prediabetes – Diyabet öncesi evre'],
    tip: '"Prenatal care" gebelik paragraflarında sıkça geçer.',
  ),
  AffixItem(
    affix: 'sub-',
    meaning: 'Altında, yetersiz',
    type: 'Prefix',
    examples: ['Subcutaneous – Cilt altı', 'Sublingual – Dil altı'],
    tip: '"Subcutaneous injection" ilaç uygulama yollarında geçer.',
  ),
  AffixItem(
    affix: 'supra-',
    meaning: 'Üstünde',
    type: 'Prefix',
    examples: ['Suprarenal – Böbreküstü (adrenal)', 'Supraventricular – Karıncık üstünde'],
    tip: '"Suprarenal glands" = adrenal bezler.',
  ),
  AffixItem(
    affix: 'tachy-',
    meaning: 'Hızlı',
    type: 'Prefix',
    examples: ['Tachycardia – Kalp atışının hızlanması', 'Tachypnea – Hızlı solunum'],
    tip: 'Karşıtı "brady-" (yavaş). Kalp hastalıkları paragraflarında sık çıkar.',
  ),
  AffixItem(
    affix: 'trans-',
    meaning: 'Arasından, öteye',
    type: 'Prefix',
    examples: ['Transplant – Organ nakli', 'Transfusion – Kan nakli'],
    tip: '"Blood transfusion" ve "organ transplant" klinik metinlerde çok geçer.',
  ),

  // ──────────────────────── KÖKLER (ROOTS) ────────────────────────
  AffixItem(
    affix: 'cardi/o',
    meaning: 'Kalp',
    type: 'Root',
    examples: ['Cardiology – Kalp bilimi', 'Cardiovascular – Kalp-damar sistemi', 'Myocardium – Kalp kası'],
    tip: '"Cardiovascular disease" YÖKDİL\'in en sevdiği terimlerden biridir.',
  ),
  AffixItem(
    affix: 'cephal/o',
    meaning: 'Baş, kafa',
    type: 'Root',
    examples: ['Cephalgia – Baş ağrısı', 'Encephalitis – Beyin iltihabı'],
    tip: '"Encephalitis" beyin hastalıkları paragraflarında geçer.',
  ),
  AffixItem(
    affix: 'cerebr/o',
    meaning: 'Beyin',
    type: 'Root',
    examples: ['Cerebral – Beyinle ilgili', 'Cerebrovascular – Beyin damarlarıyla ilgili'],
    tip: '"Cerebrovascular accident" = felç. Sınavda çıkabilir.',
  ),
  AffixItem(
    affix: 'cyt/o',
    meaning: 'Hücre',
    type: 'Root',
    examples: ['Cytology – Hücre bilimi', 'Leukocyte – Beyaz kan hücresi', 'Erythrocyte – Kırmızı kan hücresi'],
    tip: '"Cytokine" bağışıklık ve enfeksiyon metinlerinde çok sık geçer.',
  ),
  AffixItem(
    affix: 'derm/o, dermat/o',
    meaning: 'Deri, cilt',
    type: 'Root',
    examples: ['Dermatitis – Cilt iltihabı', 'Dermatology – Cilt bilimi', 'Epidermis – Üst deri'],
    tip: '"Dermatological conditions" cilt hastalıkları paragraflarında.',
  ),
  AffixItem(
    affix: 'enter/o',
    meaning: 'Bağırsak',
    type: 'Root',
    examples: ['Enteritis – Bağırsak iltihabı', 'Gastroenterology – Mide-bağırsak bilimi'],
    tip: '"Enteric" sindirim sistemi metinlerinde karşına çıkar.',
  ),
  AffixItem(
    affix: 'gastr/o',
    meaning: 'Mide',
    type: 'Root',
    examples: ['Gastric – Mide ile ilgili', 'Gastritis – Mide iltihabı', 'Gastroenteritis – Mide-bağırsak iltihabı'],
    tip: '"Gastric bypass" obezite ameliyatı metinlerinde sık geçer.',
  ),
  AffixItem(
    affix: 'hem/o, hemat/o',
    meaning: 'Kan',
    type: 'Root',
    examples: ['Hemorrhage – Kanama', 'Hematology – Kan bilimi', 'Hemoglobin – Kan proteini'],
    tip: '"Hemoglobin levels" YÖKDİL kan değerleri metinlerinin temel terimi.',
  ),
  AffixItem(
    affix: 'hepat/o',
    meaning: 'Karaciğer',
    type: 'Root',
    examples: ['Hepatitis – Karaciğer iltihabı', 'Hepatomegaly – Karaciğer büyümesi', 'Hepatocyte – Karaciğer hücresi'],
    tip: '"Hepatitis B/C" aşı ve enfeksiyon paragraflarında çıkar.',
  ),
  AffixItem(
    affix: 'immun/o',
    meaning: 'Bağışıklık',
    type: 'Root',
    examples: ['Immunology – Bağışıklık bilimi', 'Immunodeficiency – Bağışıklık yetersizliği', 'Immunotherapy – Bağışıklık tedavisi'],
    tip: '"Immune system" YÖKDİL sağlık metinlerinde neredeyse her sınavda çıkar.',
  ),
  AffixItem(
    affix: 'my/o',
    meaning: 'Kas',
    type: 'Root',
    examples: ['Myocardium – Kalp kası', 'Myalgia – Kas ağrısı', 'Myopathy – Kas hastalığı'],
    tip: '"Myocardial infarction" = kalp krizi. En sık çıkan terimlerden.',
  ),
  AffixItem(
    affix: 'nephr/o, ren/o',
    meaning: 'Böbrek',
    type: 'Root',
    examples: ['Nephrology – Böbrek bilimi', 'Renal – Böbrekle ilgili', 'Nephritis – Böbrek iltihabı'],
    tip: '"Renal failure" (böbrek yetmezliği) klinik metinlerde sık geçer.',
  ),
  AffixItem(
    affix: 'neur/o',
    meaning: 'Sinir',
    type: 'Root',
    examples: ['Neurology – Sinir bilimi', 'Neuropathy – Sinir hastalığı', 'Neurotransmitter – Sinir iletici'],
    tip: '"Neurodegenerative diseases" (Alzheimer, Parkinson) sınavda çıkar.',
  ),
  AffixItem(
    affix: 'onc/o',
    meaning: 'Tümör, kanser',
    type: 'Root',
    examples: ['Oncology – Kanser bilimi', 'Oncologist – Kanser uzmanı'],
    tip: '"Oncological treatment" kanser paragraflarında standart terim.',
  ),
  AffixItem(
    affix: 'oste/o',
    meaning: 'Kemik',
    type: 'Root',
    examples: ['Osteoporosis – Kemik erimesi', 'Osteomyelitis – Kemik iltihabı', 'Osteoarthritis – Kemik eklem iltihabı'],
    tip: '"Osteoporosis" yaşlılık/menapoz paragraflarında çok sık çıkar.',
  ),
  AffixItem(
    affix: 'path/o',
    meaning: 'Hastalık',
    type: 'Root',
    examples: ['Pathology – Hastalık bilimi', 'Pathogen – Hastalık yapıcı', 'Psychopathology – Ruhsal hastalık bilimi'],
    tip: '"Pathogen" enfeksiyon metinlerinde sıkça geçer.',
  ),
  AffixItem(
    affix: 'pneum/o, pulmon/o',
    meaning: 'Akciğer, solunum',
    type: 'Root',
    examples: ['Pneumonia – Zatürre', 'Pulmonary – Akciğerle ilgili', 'Pulmonologist – Akciğer doktoru'],
    tip: '"Pulmonary embolism" acil tıp metinlerinde çıkabilir.',
  ),
  AffixItem(
    affix: 'psych/o',
    meaning: 'Zihin, ruh',
    type: 'Root',
    examples: ['Psychology – Psikoloji', 'Psychiatry – Psikiyatri', 'Psychosomatic – Ruhsal kökenli fiziksel'],
    tip: '"Psychosomatic disorders" ruh sağlığı paragraflarında geçer.',
  ),
  AffixItem(
    affix: 'thromb/o',
    meaning: 'Pıhtı',
    type: 'Root',
    examples: ['Thrombosis – Pıhtı oluşumu', 'Thrombus – Kan pıhtısı', 'Thrombocyte – Trombosit (pıhtı hücresi)'],
    tip: '"Deep vein thrombosis (DVT)" damar hastalıkları paragraflarında çıkar.',
  ),
  AffixItem(
    affix: 'vas/o, angi/o',
    meaning: 'Damar',
    type: 'Root',
    examples: ['Vascular – Damarla ilgili', 'Angiography – Damar görüntüleme', 'Vasodilation – Damar genişlemesi'],
    tip: '"Cardiovascular" teriminin "vascular" kısmı buradan gelir.',
  ),

  // ──────────────────────── SON EKLER (SUFFIXES) ────────────────────────
  AffixItem(
    affix: '-algia',
    meaning: 'Ağrı',
    type: 'Suffix',
    examples: ['Neuralgia – Sinir ağrısı', 'Myalgia – Kas ağrısı', 'Arthralgia – Eklem ağrısı'],
    tip: '"-algia" gördüğün yerde ağrıdan bahsediliyor demektir.',
  ),
  AffixItem(
    affix: '-ectomy',
    meaning: 'Cerrahi olarak çıkarma',
    type: 'Suffix',
    examples: ['Appendectomy – Apandisin alınması', 'Mastectomy – Meme alınması', 'Tonsillectomy – Bademcik alınması'],
    tip: '"-ectomy" = Kes ve çıkar! Cerrahi metinlerde çok çıkar.',
  ),
  AffixItem(
    affix: '-emia',
    meaning: 'Kan durumu',
    type: 'Suffix',
    examples: ['Anemia – Kansızlık', 'Leukemia – Kan kanseri', 'Septicemia – Kan zehirlenmesi'],
    tip: '"Hyperglycemia" vs "Hypoglycemia" farkını iyi bil.',
  ),
  AffixItem(
    affix: '-genic',
    meaning: '...den kaynaklanan, üreten',
    type: 'Suffix',
    examples: ['Carcinogenic – Kanserojen', 'Pathogenic – Hastalık yapıcı', 'Iatrogenic – Tedaviden kaynaklanan'],
    tip: '"Carcinogenic substances" kanser paragraflarının olmazsa olmazı.',
  ),
  AffixItem(
    affix: '-gram, -graph, -graphy',
    meaning: 'Kayıt, görüntüleme',
    type: 'Suffix',
    examples: ['Electrocardiogram (ECG) – Kalp ritim kaydı', 'Mammography – Meme görüntüleme', 'Radiography – Röntgen'],
    tip: '"-gram" = sonuç/kayıt, "-graph" = alet, "-graphy" = işlem.',
  ),
  AffixItem(
    affix: '-itis',
    meaning: 'İltihap, yangı',
    type: 'Suffix',
    examples: ['Arthritis – Eklem iltihabı', 'Bronchitis – Bronş iltihabı', 'Hepatitis – Karaciğer iltihabı'],
    tip: 'YÖKDİL\'de en sık çıkan son ek! "-itis" = iltihap, kesinlikle ezberle.',
  ),
  AffixItem(
    affix: '-logy, -logist',
    meaning: 'Bilim dalı / Uzman',
    type: 'Suffix',
    examples: ['Cardiology – Kalp bilimi', 'Neurologist – Nörolog', 'Dermatology – Cilt bilimi'],
    tip: '"-logy" = bilim dalı, "-logist" = o dalın uzmanı.',
  ),
  AffixItem(
    affix: '-lysis',
    meaning: 'Parçalanma, yıkım',
    type: 'Suffix',
    examples: ['Hemolysis – Kan hücrelerinin parçalanması', 'Dialysis – Diyaliz (kan süzme)'],
    tip: '"Dialysis" böbrek yetmezliği metinlerinde sıkça geçer.',
  ),
  AffixItem(
    affix: '-megaly',
    meaning: 'Büyüme',
    type: 'Suffix',
    examples: ['Hepatomegaly – Karaciğer büyümesi', 'Cardiomegaly – Kalp büyümesi', 'Splenomegaly – Dalak büyümesi'],
    tip: 'Hangi organ büyümüş? Öndeki kök sana söyler.',
  ),
  AffixItem(
    affix: '-oma',
    meaning: 'Tümör, kitle',
    type: 'Suffix',
    examples: ['Carcinoma – Kanseröz tümör', 'Melanoma – Cilt kanseri', 'Lymphoma – Lenf kanseri'],
    tip: '"-oma" gördüğünde "tümör" düşün. Kanser paragraflarında sık çıkar.',
  ),
  AffixItem(
    affix: '-osis',
    meaning: 'Anormal durum, hastalık (iltihapsız)',
    type: 'Suffix',
    examples: ['Osteoporosis – Kemik erimesi', 'Fibrosis – Doku sertleşmesi', 'Thrombosis – Pıhtı oluşumu'],
    tip: '"-itis" = iltihaplı hastalık, "-osis" = iltihapsız/kronik durum. Farkı önemli!',
  ),
  AffixItem(
    affix: '-pathy',
    meaning: 'Hastalık',
    type: 'Suffix',
    examples: ['Neuropathy – Sinir hastalığı', 'Myopathy – Kas hastalığı', 'Retinopathy – Retina hastalığı'],
    tip: '"Diabetic retinopathy" diyabet paragraflarında geçer.',
  ),
  AffixItem(
    affix: '-phobia',
    meaning: 'Aşırı korku',
    type: 'Suffix',
    examples: ['Claustrophobia – Kapalı alan korkusu', 'Agoraphobia – Açık alan korkusu', 'Hydrophobia – Su korkusu'],
    tip: 'Psikoloji/psikiyatri metinlerinde çıkabilir.',
  ),
  AffixItem(
    affix: '-plasty',
    meaning: 'Cerrahi onarım, şekil verme',
    type: 'Suffix',
    examples: ['Rhinoplasty – Burun estetiği', 'Angioplasty – Damar açma', 'Arthroplasty – Eklem protezi'],
    tip: '"Angioplasty" kalp-damar paragraflarında geçer.',
  ),
  AffixItem(
    affix: '-rrhage, -rrhagia',
    meaning: 'Patlama, akış (genellikle kanama)',
    type: 'Suffix',
    examples: ['Hemorrhage – Kanama', 'Menorrhagia – Aşırı adet kanaması'],
    tip: '"-rrhage" gördüğünde "kontrolsüz kanama" düşün.',
  ),
  AffixItem(
    affix: '-scopy, -scope',
    meaning: 'Görsel inceleme / Alet',
    type: 'Suffix',
    examples: ['Endoscopy – İç organ incelemesi', 'Stethoscope – Stetoskop', 'Arthroscopy – Eklem incelemesi'],
    tip: '"-scopy" = işlem, "-scope" = alet.',
  ),
  AffixItem(
    affix: '-stasis',
    meaning: 'Durma, denge, kontrol',
    type: 'Suffix',
    examples: ['Homeostasis – İç denge', 'Hemostasis – Kanamanın durması'],
    tip: '"Homeostasis" YÖKDİL\'de çok sık sorulan kavram!',
  ),
  AffixItem(
    affix: '-therapy',
    meaning: 'Tedavi',
    type: 'Suffix',
    examples: ['Chemotherapy – Kemoterapi', 'Physiotherapy – Fizyoterapi', 'Immunotherapy – Bağışıklık tedavisi'],
    tip: '"-therapy" gördüğünde "tedavi yöntemi" düşün.',
  ),
  AffixItem(
    affix: '-tomy',
    meaning: 'Kesme, açma (çıkarmadan)',
    type: 'Suffix',
    examples: ['Anatomy – Anatomi (yapıyı kesip inceleme)', 'Craniotomy – Kafatası açma', 'Tracheotomy – Nefes borusu açma'],
    tip: '"-ectomy" = kes ve çıkar, "-tomy" = sadece kes ve aç. Farkı önemli!',
  ),
];
