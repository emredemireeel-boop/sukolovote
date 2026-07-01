class HealthTerm {
  final String english;
  final String turkish;
  final String category;
  final String? example;

  const HealthTerm({
    required this.english,
    required this.turkish,
    required this.category,
    this.example,
  });
}

class TermCategory {
  final String name;
  final String icon;
  final String color;

  const TermCategory({required this.name, required this.icon, required this.color});
}

final List<TermCategory> termCategories = [
  const TermCategory(name: 'Anatomi', icon: '🦴', color: '#0F766E'),
  const TermCategory(name: 'Hastalıklar', icon: '🦠', color: '#DC2626'),
  const TermCategory(name: 'Tedavi & İlaç', icon: '💊', color: '#7C3AED'),
  const TermCategory(name: 'Fizyoloji', icon: '❤️', color: '#0891B2'),
  const TermCategory(name: 'Cerrahi', icon: '🔬', color: '#059669'),
  const TermCategory(name: 'Tanı & Teşhis', icon: '🔍', color: '#D97706'),
  const TermCategory(name: 'Halk Sağlığı', icon: '🏥', color: '#2563EB'),
  const TermCategory(name: 'Genel Tıp', icon: '⚕️', color: '#6366F1'),
];

final List<HealthTerm> healthTerms = [
  // Anatomi
  const HealthTerm(english: 'cardiovascular system', turkish: 'kardiyovasküler sistem', category: 'Anatomi', example: 'The cardiovascular system circulates blood throughout the body.'),
  const HealthTerm(english: 'respiratory tract', turkish: 'solunum yolu', category: 'Anatomi', example: 'Upper respiratory tract infections are common in winter.'),
  const HealthTerm(english: 'gastrointestinal tract', turkish: 'gastrointestinal sistem / sindirim kanalı', category: 'Anatomi', example: 'The gastrointestinal tract extends from the mouth to the anus.'),
  const HealthTerm(english: 'musculoskeletal system', turkish: 'kas-iskelet sistemi', category: 'Anatomi', example: 'The musculoskeletal system provides support and movement.'),
  const HealthTerm(english: 'nervous system', turkish: 'sinir sistemi', category: 'Anatomi'),
  const HealthTerm(english: 'endocrine system', turkish: 'endokrin sistem', category: 'Anatomi'),
  const HealthTerm(english: 'lymph node', turkish: 'lenf düğümü / nodu', category: 'Anatomi'),
  const HealthTerm(english: 'bone marrow', turkish: 'kemik iliği', category: 'Anatomi'),
  const HealthTerm(english: 'cerebral cortex', turkish: 'serebral korteks / beyin kabuğu', category: 'Anatomi'),
  const HealthTerm(english: 'spinal cord', turkish: 'omurilik', category: 'Anatomi'),
  const HealthTerm(english: 'artery', turkish: 'atardamar / arter', category: 'Anatomi'),
  const HealthTerm(english: 'vein', turkish: 'toplardamar / ven', category: 'Anatomi'),
  const HealthTerm(english: 'capillary', turkish: 'kılcal damar', category: 'Anatomi'),
  const HealthTerm(english: 'tissue', turkish: 'doku', category: 'Anatomi'),
  const HealthTerm(english: 'organ', turkish: 'organ', category: 'Anatomi'),
  const HealthTerm(english: 'cell membrane', turkish: 'hücre zarı', category: 'Anatomi'),
  const HealthTerm(english: 'thorax', turkish: 'göğüs kafesi', category: 'Anatomi'),
  const HealthTerm(english: 'abdomen', turkish: 'karın / batın', category: 'Anatomi'),
  const HealthTerm(english: 'pelvis', turkish: 'pelvis / leğen kemiği', category: 'Anatomi'),
  const HealthTerm(english: 'vertebra', turkish: 'omur', category: 'Anatomi'),

  // Hastalıklar
  const HealthTerm(english: 'chronic disease', turkish: 'kronik hastalık', category: 'Hastalıklar', example: 'Chronic diseases require long-term management.'),
  const HealthTerm(english: 'infectious disease', turkish: 'bulaşıcı hastalık', category: 'Hastalıklar', example: 'Infectious diseases spread from person to person.'),
  const HealthTerm(english: 'autoimmune disorder', turkish: 'otoimmün bozukluk', category: 'Hastalıklar'),
  const HealthTerm(english: 'malignant tumor', turkish: 'kötü huylu tümör', category: 'Hastalıklar'),
  const HealthTerm(english: 'benign tumor', turkish: 'iyi huylu tümör', category: 'Hastalıklar'),
  const HealthTerm(english: 'cardiovascular disease', turkish: 'kardiyovasküler hastalık', category: 'Hastalıklar'),
  const HealthTerm(english: 'diabetes mellitus', turkish: 'şeker hastalığı / diyabet', category: 'Hastalıklar'),
  const HealthTerm(english: 'hypertension', turkish: 'hipertansiyon / yüksek tansiyon', category: 'Hastalıklar'),
  const HealthTerm(english: 'pneumonia', turkish: 'zatürre / pnömoni', category: 'Hastalıklar'),
  const HealthTerm(english: 'tuberculosis', turkish: 'verem / tüberküloz', category: 'Hastalıklar'),
  const HealthTerm(english: 'anemia', turkish: 'kansızlık / anemi', category: 'Hastalıklar'),
  const HealthTerm(english: 'obesity', turkish: 'obezite / şişmanlık', category: 'Hastalıklar'),
  const HealthTerm(english: 'stroke', turkish: 'inme / felç', category: 'Hastalıklar'),
  const HealthTerm(english: 'heart attack / myocardial infarction', turkish: 'kalp krizi / miyokard enfarktüsü', category: 'Hastalıklar'),
  const HealthTerm(english: 'renal failure', turkish: 'böbrek yetmezliği', category: 'Hastalıklar'),
  const HealthTerm(english: 'liver cirrhosis', turkish: 'karaciğer sirozu', category: 'Hastalıklar'),
  const HealthTerm(english: 'epilepsy', turkish: 'epilepsi / sara', category: 'Hastalıklar'),
  const HealthTerm(english: 'asthma', turkish: 'astım', category: 'Hastalıklar'),
  const HealthTerm(english: 'allergy', turkish: 'alerji', category: 'Hastalıklar'),
  const HealthTerm(english: 'inflammation', turkish: 'iltihaplanma / enflamasyon', category: 'Hastalıklar'),
  const HealthTerm(english: 'infection', turkish: 'enfeksiyon', category: 'Hastalıklar'),
  const HealthTerm(english: 'epidemic', turkish: 'salgın', category: 'Hastalıklar'),
  const HealthTerm(english: 'pandemic', turkish: 'pandemi / küresel salgın', category: 'Hastalıklar'),
  const HealthTerm(english: 'syndrome', turkish: 'sendrom', category: 'Hastalıklar'),
  const HealthTerm(english: 'complication', turkish: 'komplikasyon', category: 'Hastalıklar'),

  // Tedavi & İlaç
  const HealthTerm(english: 'treatment', turkish: 'tedavi', category: 'Tedavi & İlaç', example: 'The treatment was effective in reducing symptoms.'),
  const HealthTerm(english: 'therapy', turkish: 'terapi', category: 'Tedavi & İlaç'),
  const HealthTerm(english: 'antibiotic', turkish: 'antibiyotik', category: 'Tedavi & İlaç'),
  const HealthTerm(english: 'vaccine / vaccination', turkish: 'aşı / aşılama', category: 'Tedavi & İlaç'),
  const HealthTerm(english: 'chemotherapy', turkish: 'kemoterapi', category: 'Tedavi & İlaç'),
  const HealthTerm(english: 'radiation therapy', turkish: 'radyoterapi', category: 'Tedavi & İlaç'),
  const HealthTerm(english: 'dosage', turkish: 'dozaj', category: 'Tedavi & İlaç'),
  const HealthTerm(english: 'side effect', turkish: 'yan etki', category: 'Tedavi & İlaç'),
  const HealthTerm(english: 'adverse effect', turkish: 'advers (olumsuz) etki', category: 'Tedavi & İlaç'),
  const HealthTerm(english: 'prescription', turkish: 'reçete', category: 'Tedavi & İlaç'),
  const HealthTerm(english: 'drug resistance', turkish: 'ilaç direnci', category: 'Tedavi & İlaç'),
  const HealthTerm(english: 'clinical trial', turkish: 'klinik çalışma / deneme', category: 'Tedavi & İlaç'),
  const HealthTerm(english: 'placebo', turkish: 'plasebo', category: 'Tedavi & İlaç'),
  const HealthTerm(english: 'immunotherapy', turkish: 'immünoterapi', category: 'Tedavi & İlaç'),
  const HealthTerm(english: 'rehabilitation', turkish: 'rehabilitasyon', category: 'Tedavi & İlaç'),
  const HealthTerm(english: 'analgesic', turkish: 'ağrı kesici', category: 'Tedavi & İlaç'),
  const HealthTerm(english: 'anti-inflammatory', turkish: 'anti-enflamatuar', category: 'Tedavi & İlaç'),
  const HealthTerm(english: 'sedative', turkish: 'sakinleştirici / sedatif', category: 'Tedavi & İlaç'),
  const HealthTerm(english: 'anesthesia', turkish: 'anestezi / uyuşturma', category: 'Tedavi & İlaç'),
  const HealthTerm(english: 'transplantation', turkish: 'nakil / transplantasyon', category: 'Tedavi & İlaç'),

  // Fizyoloji
  const HealthTerm(english: 'metabolism', turkish: 'metabolizma', category: 'Fizyoloji', example: 'Metabolism converts food into energy.'),
  const HealthTerm(english: 'blood pressure', turkish: 'kan basıncı / tansiyon', category: 'Fizyoloji'),
  const HealthTerm(english: 'heart rate', turkish: 'kalp atış hızı / nabız', category: 'Fizyoloji'),
  const HealthTerm(english: 'immune response', turkish: 'bağışıklık yanıtı', category: 'Fizyoloji'),
  const HealthTerm(english: 'hormone', turkish: 'hormon', category: 'Fizyoloji'),
  const HealthTerm(english: 'enzyme', turkish: 'enzim', category: 'Fizyoloji'),
  const HealthTerm(english: 'antibody', turkish: 'antikor', category: 'Fizyoloji'),
  const HealthTerm(english: 'antigen', turkish: 'antijen', category: 'Fizyoloji'),
  const HealthTerm(english: 'homeostasis', turkish: 'homeostaz / denge', category: 'Fizyoloji'),
  const HealthTerm(english: 'blood circulation', turkish: 'kan dolaşımı', category: 'Fizyoloji'),
  const HealthTerm(english: 'respiration', turkish: 'solunum', category: 'Fizyoloji'),
  const HealthTerm(english: 'digestion', turkish: 'sindirim', category: 'Fizyoloji'),
  const HealthTerm(english: 'absorption', turkish: 'emilim / absorpsiyon', category: 'Fizyoloji'),
  const HealthTerm(english: 'excretion', turkish: 'boşaltım', category: 'Fizyoloji'),
  const HealthTerm(english: 'neurotransmitter', turkish: 'nörotransmiter / sinir ileticisi', category: 'Fizyoloji'),
  const HealthTerm(english: 'platelet', turkish: 'trombosit', category: 'Fizyoloji'),
  const HealthTerm(english: 'white blood cell', turkish: 'beyaz kan hücresi / lökosit', category: 'Fizyoloji'),
  const HealthTerm(english: 'red blood cell', turkish: 'kırmızı kan hücresi / eritrosit', category: 'Fizyoloji'),
  const HealthTerm(english: 'hemoglobin', turkish: 'hemoglobin', category: 'Fizyoloji'),
  const HealthTerm(english: 'glucose', turkish: 'glikoz / kan şekeri', category: 'Fizyoloji'),

  // Cerrahi
  const HealthTerm(english: 'surgery', turkish: 'cerrahi / ameliyat', category: 'Cerrahi', example: 'The patient underwent surgery for appendicitis.'),
  const HealthTerm(english: 'incision', turkish: 'kesi / insizyon', category: 'Cerrahi'),
  const HealthTerm(english: 'suture', turkish: 'dikiş / sütür', category: 'Cerrahi'),
  const HealthTerm(english: 'biopsy', turkish: 'biyopsi', category: 'Cerrahi'),
  const HealthTerm(english: 'laparoscopy', turkish: 'laparoskopi', category: 'Cerrahi'),
  const HealthTerm(english: 'bypass surgery', turkish: 'bypass ameliyatı', category: 'Cerrahi'),
  const HealthTerm(english: 'organ transplant', turkish: 'organ nakli', category: 'Cerrahi'),
  const HealthTerm(english: 'prosthesis', turkish: 'protez', category: 'Cerrahi'),
  const HealthTerm(english: 'postoperative', turkish: 'ameliyat sonrası', category: 'Cerrahi'),
  const HealthTerm(english: 'preoperative', turkish: 'ameliyat öncesi', category: 'Cerrahi'),

  // Tanı & Teşhis
  const HealthTerm(english: 'diagnosis', turkish: 'tanı / teşhis', category: 'Tanı & Teşhis', example: 'Early diagnosis improves treatment outcomes.'),
  const HealthTerm(english: 'prognosis', turkish: 'prognoz / hastalık seyri', category: 'Tanı & Teşhis'),
  const HealthTerm(english: 'symptom', turkish: 'semptom / belirti', category: 'Tanı & Teşhis'),
  const HealthTerm(english: 'sign', turkish: 'bulgu', category: 'Tanı & Teşhis'),
  const HealthTerm(english: 'screening', turkish: 'tarama', category: 'Tanı & Teşhis'),
  const HealthTerm(english: 'blood test', turkish: 'kan testi / tahlili', category: 'Tanı & Teşhis'),
  const HealthTerm(english: 'X-ray', turkish: 'röntgen', category: 'Tanı & Teşhis'),
  const HealthTerm(english: 'ultrasound', turkish: 'ultrason', category: 'Tanı & Teşhis'),
  const HealthTerm(english: 'MRI (Magnetic Resonance Imaging)', turkish: 'MR (Manyetik Rezonans Görüntüleme)', category: 'Tanı & Teşhis'),
  const HealthTerm(english: 'CT scan', turkish: 'BT taraması', category: 'Tanı & Teşhis'),
  const HealthTerm(english: 'pathology', turkish: 'patoloji', category: 'Tanı & Teşhis'),
  const HealthTerm(english: 'laboratory findings', turkish: 'laboratuvar bulguları', category: 'Tanı & Teşhis'),
  const HealthTerm(english: 'differential diagnosis', turkish: 'ayırıcı tanı', category: 'Tanı & Teşhis'),
  const HealthTerm(english: 'misdiagnosis', turkish: 'yanlış tanı', category: 'Tanı & Teşhis'),

  // Halk Sağlığı
  const HealthTerm(english: 'public health', turkish: 'halk sağlığı', category: 'Halk Sağlığı', example: 'Public health measures can prevent disease outbreaks.'),
  const HealthTerm(english: 'prevalence', turkish: 'yaygınlık / prevalans', category: 'Halk Sağlığı'),
  const HealthTerm(english: 'incidence', turkish: 'insidans / görülme sıklığı', category: 'Halk Sağlığı'),
  const HealthTerm(english: 'mortality rate', turkish: 'ölüm oranı / mortalite', category: 'Halk Sağlığı'),
  const HealthTerm(english: 'morbidity', turkish: 'hastalık oranı / morbidite', category: 'Halk Sağlığı'),
  const HealthTerm(english: 'life expectancy', turkish: 'yaşam beklentisi / ömür süresi', category: 'Halk Sağlığı'),
  const HealthTerm(english: 'epidemiology', turkish: 'epidemiyoloji', category: 'Halk Sağlığı'),
  const HealthTerm(english: 'quarantine', turkish: 'karantina', category: 'Halk Sağlığı'),
  const HealthTerm(english: 'sanitation', turkish: 'hijyen / sanitasyon', category: 'Halk Sağlığı'),
  const HealthTerm(english: 'outbreak', turkish: 'salgın başlangıcı', category: 'Halk Sağlığı'),
  const HealthTerm(english: 'immunization', turkish: 'bağışıklama', category: 'Halk Sağlığı'),
  const HealthTerm(english: 'risk factor', turkish: 'risk faktörü', category: 'Halk Sağlığı'),
  const HealthTerm(english: 'prevention', turkish: 'önleme / korunma', category: 'Halk Sağlığı'),
  const HealthTerm(english: 'WHO (World Health Organization)', turkish: 'DSÖ (Dünya Sağlık Örgütü)', category: 'Halk Sağlığı'),

  // Genel Tıp
  const HealthTerm(english: 'patient', turkish: 'hasta', category: 'Genel Tıp'),
  const HealthTerm(english: 'physician', turkish: 'hekim / doktor', category: 'Genel Tıp'),
  const HealthTerm(english: 'surgeon', turkish: 'cerrah', category: 'Genel Tıp'),
  const HealthTerm(english: 'nurse', turkish: 'hemşire', category: 'Genel Tıp'),
  const HealthTerm(english: 'acute', turkish: 'akut / ani', category: 'Genel Tıp'),
  const HealthTerm(english: 'chronic', turkish: 'kronik / süreğen', category: 'Genel Tıp'),
  const HealthTerm(english: 'congenital', turkish: 'doğuştan / konjenital', category: 'Genel Tıp'),
  const HealthTerm(english: 'hereditary', turkish: 'kalıtsal', category: 'Genel Tıp'),
  const HealthTerm(english: 'lethal / fatal', turkish: 'ölümcül', category: 'Genel Tıp'),
  const HealthTerm(english: 'outpatient', turkish: 'ayaktan tedavi / poliklinik', category: 'Genel Tıp'),
  const HealthTerm(english: 'inpatient', turkish: 'yatan hasta', category: 'Genel Tıp'),
  const HealthTerm(english: 'emergency', turkish: 'acil', category: 'Genel Tıp'),
  const HealthTerm(english: 'intensive care unit (ICU)', turkish: 'yoğun bakım ünitesi', category: 'Genel Tıp'),
  const HealthTerm(english: 'relapse', turkish: 'nüks / tekrarlama', category: 'Genel Tıp'),
  const HealthTerm(english: 'remission', turkish: 'remisyon / iyileşme dönemi', category: 'Genel Tıp'),
  const HealthTerm(english: 'etiology', turkish: 'etiyoloji / hastalık nedeni', category: 'Genel Tıp'),
  const HealthTerm(english: 'pathogen', turkish: 'patojen / hastalık etkeni', category: 'Genel Tıp'),
  const HealthTerm(english: 'specimen', turkish: 'numune / örnek', category: 'Genel Tıp'),
  const HealthTerm(english: 'contraindication', turkish: 'kontrendikasyon', category: 'Genel Tıp'),
  const HealthTerm(english: 'clinical', turkish: 'klinik', category: 'Genel Tıp'),
];
