/// YÖKDİL Sağlık - Kapsamlı Kelime Havuzu
/// Sınavda sık çıkan akademik ve sağlık kelimeleri

class VocabWord {
  final String english;
  final String turkish;
  final String category;
  final String? example;
  final List<String>? synonyms;
  final List<String>? collocations;

  const VocabWord({
    required this.english,
    required this.turkish,
    required this.category,
    this.example,
    this.synonyms,
    this.collocations,
  });

  factory VocabWord.fromJson(Map<String, dynamic> json) {
    return VocabWord(
      english: json['english'] as String,
      turkish: json['turkish'] as String,
      category: json['category'] as String,
      example: json['example'] as String?,
      synonyms: (json['synonyms'] as List<dynamic>?)?.map((e) => e as String).toList(),
      collocations: (json['collocations'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );
  }
}

class VocabCategory {
  final String name;
  final String icon;
  final String color;
  final String description;

  const VocabCategory({
    required this.name,
    required this.icon,
    required this.color,
    required this.description,
  });
}

final List<VocabCategory> vocabCategories = [
  const VocabCategory(name: 'Sık Çıkan Fiiller', icon: '🔥', color: '#F43F5E', description: 'YÖKDİL\'de en sık karşılaşılan fiiller'),
  const VocabCategory(name: 'Sık Çıkan Sıfatlar', icon: '⭐', color: '#F59E0B', description: 'Sağlık metinlerinde yaygın sıfatlar'),
  const VocabCategory(name: 'Akademik Kelimeler', icon: '📚', color: '#6366F1', description: 'Akademik metinlerde kullanılan kelimeler'),
  const VocabCategory(name: 'Phrasal Verbs', icon: '🔗', color: '#0891B2', description: 'Sınavda çıkan phrasal verb\'ler'),
  const VocabCategory(name: 'Tıbbi Fiiller', icon: '💉', color: '#10B981', description: 'Tıp alanında kullanılan fiiller'),
  const VocabCategory(name: 'Araştırma Terimleri', icon: '🔬', color: '#8B5CF6', description: 'Bilimsel araştırma terminolojisi'),
  const VocabCategory(name: 'Edatlar & Kalıplar', icon: '📍', color: '#EC4899', description: 'Sabit edat kalıpları'),
  const VocabCategory(name: 'Oxford A1 Seviyesi', icon: '🟢', color: '#22C55E', description: 'Oxford 3000 - A1 Temel Kelimeler'),
  const VocabCategory(name: 'Oxford A2 Seviyesi', icon: '🟡', color: '#EAB308', description: 'Oxford 3000 - A2 Kelimeler'),
  const VocabCategory(name: 'Oxford B1 Seviyesi', icon: '📘', color: '#3B82F6', description: 'Oxford 3000 - B1 Akademik Kelimeler'),
  const VocabCategory(name: 'Oxford B2 Seviyesi', icon: '📙', color: '#F97316', description: 'Oxford 3000 - B2 İleri Seviye Kelimeler'),
];

final List<VocabWord> vocabWords = [
  // === SIK ÇIKAN FİİLLER ===
  const VocabWord(
    english: 'affect', turkish: 'etkilemek',
    category: 'Sık Çıkan Fiiller',
    example: 'Smoking significantly affects lung function.',
    synonyms: ['influence', 'impact', 'have an effect on'],
    collocations: ['adversely affect', 'significantly affect', 'directly affect'],
  ),
  const VocabWord(
    english: 'reveal', turkish: 'ortaya koymak / göstermek',
    category: 'Sık Çıkan Fiiller',
    example: 'The study revealed a strong correlation between diet and heart disease.',
    synonyms: ['disclose', 'uncover', 'show'],
  ),
  const VocabWord(
    english: 'indicate', turkish: 'göstermek / işaret etmek',
    category: 'Sık Çıkan Fiiller',
    example: 'Recent findings indicate that the virus mutates rapidly.',
    synonyms: ['suggest', 'show', 'demonstrate', 'point to'],
  ),
  const VocabWord(
    english: 'determine', turkish: 'belirlemek / saptamak',
    category: 'Sık Çıkan Fiiller',
    example: 'Further tests are needed to determine the cause of the illness.',
    synonyms: ['establish', 'ascertain', 'identify'],
  ),
  const VocabWord(
    english: 'contribute', turkish: 'katkıda bulunmak',
    category: 'Sık Çıkan Fiiller',
    example: 'Several factors contribute to the development of diabetes.',
    synonyms: ['lead to', 'play a role in'],
    collocations: ['contribute TO'],
  ),
  const VocabWord(
    english: 'enhance', turkish: 'artırmak / geliştirmek',
    category: 'Sık Çıkan Fiiller',
    example: 'This drug enhances the immune response against the virus.',
    synonyms: ['improve', 'boost', 'strengthen', 'augment'],
  ),
  const VocabWord(
    english: 'alleviate', turkish: 'hafifletmek / azaltmak',
    category: 'Sık Çıkan Fiiller',
    example: 'Painkillers can alleviate the symptoms but not cure the disease.',
    synonyms: ['relieve', 'ease', 'mitigate', 'lessen'],
  ),
  const VocabWord(
    english: 'deteriorate', turkish: 'kötüleşmek / bozulmak',
    category: 'Sık Çıkan Fiiller',
    example: 'The patient\'s condition deteriorated rapidly overnight.',
    synonyms: ['worsen', 'decline', 'degrade'],
  ),
  const VocabWord(
    english: 'inhibit', turkish: 'engellemek / baskılamak',
    category: 'Sık Çıkan Fiiller',
    example: 'The drug inhibits the growth of cancer cells.',
    synonyms: ['suppress', 'block', 'prevent', 'hinder'],
  ),
  const VocabWord(
    english: 'trigger', turkish: 'tetiklemek',
    category: 'Sık Çıkan Fiiller',
    example: 'Allergens can trigger an asthma attack.',
    synonyms: ['cause', 'provoke', 'induce', 'set off'],
  ),
  const VocabWord(
    english: 'undergo', turkish: 'geçirmek / maruz kalmak',
    category: 'Sık Çıkan Fiiller',
    example: 'The patient underwent a series of diagnostic tests.',
    synonyms: ['experience', 'go through'],
    collocations: ['undergo surgery', 'undergo treatment', 'undergo testing'],
  ),
  const VocabWord(
    english: 'yield', turkish: 'vermek / sağlamak (sonuç)',
    category: 'Sık Çıkan Fiiller',
    example: 'The clinical trial yielded promising results.',
    synonyms: ['produce', 'generate', 'provide'],
  ),
  const VocabWord(
    english: 'comprise', turkish: 'kapsamak / oluşmak',
    category: 'Sık Çıkan Fiiller',
    example: 'The study group comprised 200 patients with Type 2 diabetes.',
    synonyms: ['consist of', 'be composed of', 'include'],
  ),
  const VocabWord(
    english: 'administer', turkish: 'uygulamak (ilaç/tedavi)',
    category: 'Sık Çıkan Fiiller',
    example: 'The vaccine was administered to all healthcare workers.',
    synonyms: ['give', 'apply', 'dispense'],
  ),
  const VocabWord(
    english: 'impair', turkish: 'bozmak / zayıflatmak',
    category: 'Sık Çıkan Fiiller',
    example: 'Excessive alcohol consumption can impair liver function.',
    synonyms: ['damage', 'weaken', 'harm', 'compromise'],
  ),
  const VocabWord(
    english: 'eliminate', turkish: 'ortadan kaldırmak',
    category: 'Sık Çıkan Fiiller',
    example: 'Vaccination programs aim to eliminate infectious diseases.',
    synonyms: ['eradicate', 'remove', 'get rid of'],
  ),
  const VocabWord(
    english: 'attribute', turkish: 'atfetmek / bağlamak',
    category: 'Sık Çıkan Fiiller',
    example: 'The disease is attributed to genetic factors.',
    collocations: ['attribute TO', 'be attributed TO'],
  ),
  const VocabWord(
    english: 'assess', turkish: 'değerlendirmek',
    category: 'Sık Çıkan Fiiller',
    example: 'Doctors need to assess the patient\'s condition before surgery.',
    synonyms: ['evaluate', 'examine', 'appraise'],
  ),
  const VocabWord(
    english: 'accumulate', turkish: 'birikmek / biriktirmek',
    category: 'Sık Çıkan Fiiller',
    example: 'Fat tends to accumulate in the arteries over time.',
    synonyms: ['build up', 'gather', 'collect'],
  ),
  const VocabWord(
    english: 'manifest', turkish: 'kendini göstermek / ortaya çıkmak',
    category: 'Sık Çıkan Fiiller',
    example: 'Symptoms of the disease usually manifest within two weeks.',
    synonyms: ['appear', 'emerge', 'show up'],
  ),

  // === SIK ÇIKAN SIFATLAR ===
  const VocabWord(
    english: 'significant', turkish: 'önemli / anlamlı',
    category: 'Sık Çıkan Sıfatlar',
    example: 'There was a significant reduction in blood pressure.',
    synonyms: ['considerable', 'substantial', 'notable', 'remarkable'],
  ),
  const VocabWord(
    english: 'substantial', turkish: 'önemli / büyük',
    category: 'Sık Çıkan Sıfatlar',
    synonyms: ['significant', 'considerable', 'large'],
  ),
  const VocabWord(
    english: 'prevalent', turkish: 'yaygın / sık görülen',
    category: 'Sık Çıkan Sıfatlar',
    example: 'Obesity is increasingly prevalent in developed countries.',
    synonyms: ['widespread', 'common', 'frequent'],
  ),
  const VocabWord(
    english: 'detrimental', turkish: 'zararlı',
    category: 'Sık Çıkan Sıfatlar',
    example: 'Smoking is detrimental to overall health.',
    synonyms: ['harmful', 'damaging', 'adverse', 'injurious'],
  ),
  const VocabWord(
    english: 'vulnerable', turkish: 'savunmasız / hassas',
    category: 'Sık Çıkan Sıfatlar',
    example: 'Elderly patients are more vulnerable to infections.',
    synonyms: ['susceptible', 'at risk', 'prone to'],
    collocations: ['vulnerable TO'],
  ),
  const VocabWord(
    english: 'crucial', turkish: 'kritik / çok önemli',
    category: 'Sık Çıkan Sıfatlar',
    synonyms: ['vital', 'essential', 'critical', 'pivotal'],
  ),
  const VocabWord(
    english: 'adverse', turkish: 'olumsuz / yan',
    category: 'Sık Çıkan Sıfatlar',
    example: 'The medication has several adverse effects.',
    synonyms: ['negative', 'unfavorable', 'harmful'],
    collocations: ['adverse effect', 'adverse reaction', 'adverse outcome'],
  ),
  const VocabWord(
    english: 'underlying', turkish: 'altta yatan / temel',
    category: 'Sık Çıkan Sıfatlar',
    example: 'The doctor identified the underlying cause of the symptoms.',
    synonyms: ['fundamental', 'root', 'basic'],
    collocations: ['underlying cause', 'underlying condition', 'underlying mechanism'],
  ),
  const VocabWord(
    english: 'feasible', turkish: 'uygulanabilir / mümkün',
    category: 'Sık Çıkan Sıfatlar',
    synonyms: ['viable', 'achievable', 'practicable'],
  ),
  const VocabWord(
    english: 'robust', turkish: 'güçlü / sağlam',
    category: 'Sık Çıkan Sıfatlar',
    example: 'The study produced robust evidence supporting the new treatment.',
    synonyms: ['strong', 'solid', 'reliable'],
  ),
  const VocabWord(
    english: 'potent', turkish: 'güçlü / etkili (ilaç)',
    category: 'Sık Çıkan Sıfatlar',
    example: 'This is a highly potent antibiotic.',
    synonyms: ['powerful', 'strong', 'effective'],
  ),
  const VocabWord(
    english: 'promising', turkish: 'umut verici',
    category: 'Sık Çıkan Sıfatlar',
    example: 'The new therapy has shown promising results in clinical trials.',
    synonyms: ['encouraging', 'hopeful', 'optimistic'],
  ),

  // === AKADEMİK KELİMELER ===
  const VocabWord(
    english: 'hypothesis', turkish: 'hipotez / varsayım',
    category: 'Akademik Kelimeler',
    example: 'The researchers tested the hypothesis that stress causes heart disease.',
  ),
  const VocabWord(
    english: 'correlation', turkish: 'korelasyon / ilişki',
    category: 'Akademik Kelimeler',
    example: 'There is a strong correlation between smoking and lung cancer.',
    synonyms: ['relationship', 'connection', 'association', 'link'],
  ),
  const VocabWord(
    english: 'implication', turkish: 'çıkarım / doğurgu / sonuç',
    category: 'Akademik Kelimeler',
    example: 'The findings have important implications for public health policy.',
  ),
  const VocabWord(
    english: 'phenomenon', turkish: 'olgu / fenomen',
    category: 'Akademik Kelimeler',
    example: 'Antibiotic resistance is a growing phenomenon worldwide.',
  ),
  const VocabWord(
    english: 'paradigm', turkish: 'paradigma / model',
    category: 'Akademik Kelimeler',
    example: 'The discovery of penicillin shifted the paradigm of infectious disease treatment.',
  ),
  const VocabWord(
    english: 'prevalence', turkish: 'yaygınlık',
    category: 'Akademik Kelimeler',
    example: 'The prevalence of diabetes has doubled in the last 30 years.',
  ),
  const VocabWord(
    english: 'consensus', turkish: 'uzlaşı / fikir birliği',
    category: 'Akademik Kelimeler',
    example: 'There is a scientific consensus that vaccines are safe and effective.',
  ),
  const VocabWord(
    english: 'discrepancy', turkish: 'tutarsızlık / uyumsuzluk',
    category: 'Akademik Kelimeler',
    example: 'There is a discrepancy between the two studies\' findings.',
    synonyms: ['inconsistency', 'difference', 'gap'],
  ),
  const VocabWord(
    english: 'rationale', turkish: 'gerekçe / mantıksal temel',
    category: 'Akademik Kelimeler',
    example: 'The rationale behind the new treatment protocol was explained in the paper.',
  ),
  const VocabWord(
    english: 'scrutiny', turkish: 'inceleme / dikkatli araştırma',
    category: 'Akademik Kelimeler',
    example: 'The clinical trial came under intense scrutiny after unexpected side effects.',
  ),

  // === PHRASAL VERBS ===
  const VocabWord(
    english: 'carry out', turkish: 'yürütmek / gerçekleştirmek',
    category: 'Phrasal Verbs',
    example: 'Scientists carried out extensive research on the virus.',
    synonyms: ['conduct', 'perform', 'execute'],
  ),
  const VocabWord(
    english: 'bring about', turkish: 'neden olmak / yol açmak',
    category: 'Phrasal Verbs',
    example: 'The new policy brought about significant changes in healthcare delivery.',
    synonyms: ['cause', 'lead to', 'result in'],
  ),
  const VocabWord(
    english: 'break down', turkish: 'parçalamak / bozulmak',
    category: 'Phrasal Verbs',
    example: 'Enzymes break down food into nutrients the body can absorb.',
    synonyms: ['decompose', 'disintegrate'],
  ),
  const VocabWord(
    english: 'set in', turkish: 'başlamak (olumsuz) / yerleşmek',
    category: 'Phrasal Verbs',
    example: 'If untreated, infection may set in after surgery.',
  ),
  const VocabWord(
    english: 'rule out', turkish: 'dışlamak / elemek',
    category: 'Phrasal Verbs',
    example: 'The doctor ordered tests to rule out cancer.',
    synonyms: ['exclude', 'eliminate'],
  ),
  const VocabWord(
    english: 'make up', turkish: 'oluşturmak',
    category: 'Phrasal Verbs',
    example: 'Women make up the majority of nursing professionals.',
    synonyms: ['constitute', 'comprise', 'account for'],
  ),
  const VocabWord(
    english: 'come up with', turkish: 'bulmak / ortaya koymak',
    category: 'Phrasal Verbs',
    example: 'Researchers came up with a novel approach to treat the disease.',
    synonyms: ['develop', 'devise', 'discover'],
  ),
  const VocabWord(
    english: 'give rise to', turkish: 'yol açmak / neden olmak',
    category: 'Phrasal Verbs',
    example: 'Poor sanitation gives rise to various infectious diseases.',
    synonyms: ['cause', 'lead to', 'result in'],
  ),
  const VocabWord(
    english: 'take into account', turkish: 'dikkate almak / göz önünde bulundurmak',
    category: 'Phrasal Verbs',
    example: 'Doctors must take the patient\'s medical history into account.',
    synonyms: ['consider', 'take into consideration'],
  ),
  const VocabWord(
    english: 'stem from', turkish: 'kaynaklanmak / ...den gelmek',
    category: 'Phrasal Verbs',
    example: 'Many health problems stem from unhealthy lifestyle habits.',
    synonyms: ['originate from', 'arise from', 'result from'],
  ),

  // === TIBBI FİİLLER ===
  const VocabWord(
    english: 'diagnose', turkish: 'teşhis koymak',
    category: 'Tıbbi Fiiller',
    example: 'The patient was diagnosed with Type 2 diabetes.',
    collocations: ['diagnose WITH', 'be diagnosed WITH'],
  ),
  const VocabWord(
    english: 'prescribe', turkish: 'reçete yazmak / öngörmek',
    category: 'Tıbbi Fiiller',
    example: 'The doctor prescribed antibiotics for the infection.',
    collocations: ['prescribe medication FOR'],
  ),
  const VocabWord(
    english: 'relapse', turkish: 'nüksetmek / tekrarlamak',
    category: 'Tıbbi Fiiller',
    example: 'Cancer patients may relapse even after successful treatment.',
  ),
  const VocabWord(
    english: 'transmit', turkish: 'bulaştırmak / iletmek',
    category: 'Tıbbi Fiiller',
    example: 'The virus can be transmitted through respiratory droplets.',
    synonyms: ['spread', 'pass on', 'transfer'],
  ),
  const VocabWord(
    english: 'alleviate', turkish: 'hafifletmek',
    category: 'Tıbbi Fiiller',
    example: 'Anti-inflammatory drugs can alleviate joint pain.',
    synonyms: ['relieve', 'ease', 'reduce'],
  ),
  const VocabWord(
    english: 'exacerbate', turkish: 'kötüleştirmek / şiddetlendirmek',
    category: 'Tıbbi Fiiller',
    example: 'Stress can exacerbate symptoms of chronic diseases.',
    synonyms: ['worsen', 'aggravate', 'intensify'],
  ),
  const VocabWord(
    english: 'monitor', turkish: 'izlemek / takip etmek',
    category: 'Tıbbi Fiiller',
    example: 'Patients on this medication should be closely monitored.',
    collocations: ['closely monitor', 'regularly monitor'],
  ),

  // === ARAŞTIRMA TERİMLERİ ===
  const VocabWord(
    english: 'sample size', turkish: 'örneklem büyüklüğü',
    category: 'Araştırma Terimleri',
    example: 'A larger sample size would increase the reliability of the results.',
  ),
  const VocabWord(
    english: 'randomized controlled trial', turkish: 'randomize kontrollü çalışma',
    category: 'Araştırma Terimleri',
    example: 'The gold standard for clinical research is the randomized controlled trial.',
  ),
  const VocabWord(
    english: 'peer-reviewed', turkish: 'hakemli / bilirkişi denetimli',
    category: 'Araştırma Terimleri',
    example: 'The findings were published in a peer-reviewed journal.',
  ),
  const VocabWord(
    english: 'longitudinal study', turkish: 'uzunlamasına çalışma',
    category: 'Araştırma Terimleri',
    example: 'The longitudinal study followed patients over a 10-year period.',
  ),
  const VocabWord(
    english: 'efficacy', turkish: 'etkinlik / etkililik',
    category: 'Araştırma Terimleri',
    example: 'The efficacy of the new drug was proven in clinical trials.',
    synonyms: ['effectiveness'],
  ),
  const VocabWord(
    english: 'variable', turkish: 'değişken',
    category: 'Araştırma Terimleri',
    example: 'Researchers controlled for confounding variables in the study.',
  ),

  // === EDATLAR & KALIPLAR ===
  const VocabWord(
    english: 'be associated with', turkish: '...ile ilişkilendirilmek',
    category: 'Edatlar & Kalıplar',
    example: 'Obesity is associated with an increased risk of heart disease.',
  ),
  const VocabWord(
    english: 'be susceptible to', turkish: '...e yatkın/hassas olmak',
    category: 'Edatlar & Kalıplar',
    example: 'Children are more susceptible to respiratory infections.',
  ),
  const VocabWord(
    english: 'be resistant to', turkish: '...e dirençli olmak',
    category: 'Edatlar & Kalıplar',
    example: 'Some bacteria have become resistant to common antibiotics.',
  ),
  const VocabWord(
    english: 'account for', turkish: '...ini oluşturmak / ...ini açıklamak',
    category: 'Edatlar & Kalıplar',
    example: 'Heart disease accounts for nearly 30% of all deaths worldwide.',
  ),
  const VocabWord(
    english: 'result in', turkish: '...ile sonuçlanmak',
    category: 'Edatlar & Kalıplar',
    example: 'Untreated infections can result in serious complications.',
  ),
  const VocabWord(
    english: 'result from', turkish: '...den kaynaklanmak',
    category: 'Edatlar & Kalıplar',
    example: 'Many chronic diseases result from poor lifestyle choices.',
  ),
  const VocabWord(
    english: 'comply with', turkish: '...e uymak / ...e riayet etmek',
    category: 'Edatlar & Kalıplar',
    example: 'Patients must comply with the prescribed treatment regimen.',
  ),
  const VocabWord(
    english: 'be prone to', turkish: '...e eğilimli olmak',
    category: 'Edatlar & Kalıplar',
    example: 'Diabetic patients are prone to developing foot ulcers.',
  ),
  const VocabWord(
    english: 'give rise to', turkish: '...e yol açmak',
    category: 'Edatlar & Kalıplar',
    example: 'Genetic mutations can give rise to various types of cancer.',
  ),
  const VocabWord(
    english: 'in terms of', turkish: '... açısından / bakımından',
    category: 'Edatlar & Kalıplar',
    example: 'In terms of effectiveness, the new drug outperforms the old one.',
  ),

  // === OXFORD B1 SEVİYESİ ===
  const VocabWord(
    english: 'accurate', turkish: 'doğru / kesin',
    category: 'Oxford B1 Seviyesi',
    example: 'Accurate diagnosis is essential for effective treatment.',
    synonyms: ['precise', 'correct', 'exact'],
  ),
  const VocabWord(
    english: 'acquire', turkish: 'elde etmek / kazanmak / edinmek',
    category: 'Oxford B1 Seviyesi',
    example: 'Patients can acquire immunity after recovering from the infection.',
    synonyms: ['obtain', 'gain', 'get'],
  ),
  const VocabWord(
    english: 'adjust', turkish: 'ayarlamak / uyum sağlamak',
    category: 'Oxford B1 Seviyesi',
    example: 'The doctor may need to adjust your medication dosage.',
    synonyms: ['adapt', 'modify', 'alter'],
  ),
  const VocabWord(
    english: 'alternative', turkish: 'alternatif / seçenek',
    category: 'Oxford B1 Seviyesi',
    example: 'Alternative therapies such as acupuncture are becoming popular.',
    synonyms: ['option', 'substitute', 'choice'],
  ),
  const VocabWord(
    english: 'analysis', turkish: 'analiz / inceleme',
    category: 'Oxford B1 Seviyesi',
    example: 'A blood analysis revealed a vitamin D deficiency.',
    synonyms: ['examination', 'evaluation'],
  ),
  const VocabWord(
    english: 'approach', turkish: 'yaklaşım / yaklaşmak',
    category: 'Oxford B1 Seviyesi',
    example: 'A multidisciplinary approach is required for treating cancer.',
    synonyms: ['method', 'strategy', 'technique'],
  ),
  const VocabWord(
    english: 'assume', turkish: 'varsaymak / üstlenmek',
    category: 'Oxford B1 Seviyesi',
    example: 'We cannot assume that the disease has been entirely eradicated.',
    synonyms: ['presume', 'suppose', 'take for granted'],
  ),
  const VocabWord(
    english: 'benefit', turkish: 'fayda / yarar',
    category: 'Oxford B1 Seviyesi',
    example: 'The benefits of vaccination strongly outweigh the risks.',
    synonyms: ['advantage', 'profit', 'gain'],
  ),
  const VocabWord(
    english: 'capable', turkish: 'yetenekli / yapabilen',
    category: 'Oxford B1 Seviyesi',
    example: 'The virus is capable of mutating rapidly to evade the immune system.',
    synonyms: ['able', 'competent'],
    collocations: ['capable OF'],
  ),
  const VocabWord(
    english: 'capacity', turkish: 'kapasite / hacim',
    category: 'Oxford B1 Seviyesi',
    example: 'Lung capacity often decreases as people get older.',
    synonyms: ['volume', 'ability', 'potential'],
  ),
  const VocabWord(
    english: 'characteristic', turkish: 'karakteristik / özellik',
    category: 'Oxford B1 Seviyesi',
    example: 'A high fever is a defining characteristic of this illness.',
    synonyms: ['feature', 'trait', 'property'],
  ),
  const VocabWord(
    english: 'consequence', turkish: 'sonuç / netice',
    category: 'Oxford B1 Seviyesi',
    example: 'Obesity can have severe health consequences.',
    synonyms: ['result', 'outcome', 'effect'],
  ),
  const VocabWord(
    english: 'consistent', turkish: 'tutarlı / istikrarlı',
    category: 'Oxford B1 Seviyesi',
    example: 'These findings are consistent with previous research.',
    synonyms: ['steady', 'constant', 'uniform'],
    collocations: ['consistent WITH'],
  ),
  const VocabWord(
    english: 'deficiency', turkish: 'eksiklik / yetersizlik',
    category: 'Oxford B1 Seviyesi',
    example: 'Iron deficiency is the most common cause of anemia.',
    synonyms: ['lack', 'shortage', 'inadequacy'],
  ),

  // === OXFORD B2 SEVİYESİ ===
  const VocabWord(
    english: 'abandon', turkish: 'terk etmek / vazgeçmek',
    category: 'Oxford B2 Seviyesi',
    example: 'The researchers had to abandon the clinical trial due to safety concerns.',
    synonyms: ['leave', 'give up', 'desert'],
  ),
  const VocabWord(
    english: 'adequate', turkish: 'yeterli / uygun',
    category: 'Oxford B2 Seviyesi',
    example: 'An adequate intake of vitamins is vital for a healthy immune system.',
    synonyms: ['sufficient', 'enough', 'satisfactory'],
  ),
  const VocabWord(
    english: 'anticipate', turkish: 'ummak / beklemek / öngörmek',
    category: 'Oxford B2 Seviyesi',
    example: 'Doctors anticipate a full recovery within six months.',
    synonyms: ['expect', 'predict', 'foresee'],
  ),
  const VocabWord(
    english: 'cease', turkish: 'durdurmak / sona ermek',
    category: 'Oxford B2 Seviyesi',
    example: 'The patient\'s breathing momentarily ceased during the seizure.',
    synonyms: ['stop', 'halt', 'end'],
  ),
  const VocabWord(
    english: 'compensate', turkish: 'telafi etmek',
    category: 'Oxford B2 Seviyesi',
    example: 'The heart works harder to compensate for the damaged valve.',
    synonyms: ['make up for', 'balance', 'offset'],
    collocations: ['compensate FOR'],
  ),
  const VocabWord(
    english: 'comprehensive', turkish: 'kapsamlı / detaylı',
    category: 'Oxford B2 Seviyesi',
    example: 'A comprehensive study was conducted to evaluate the new drug.',
    synonyms: ['thorough', 'extensive', 'complete'],
  ),
  const VocabWord(
    english: 'crucial', turkish: 'kritik / son derece önemli',
    category: 'Oxford B2 Seviyesi',
    example: 'Early diagnosis is crucial for successfully treating cancer.',
    synonyms: ['vital', 'essential', 'pivotal'],
  ),
  const VocabWord(
    english: 'derive', turkish: 'türetmek / elde etmek / kaynaklanmak',
    category: 'Oxford B2 Seviyesi',
    example: 'Many modern medicines are derived from plants.',
    synonyms: ['obtain', 'originate', 'stem'],
    collocations: ['derive FROM'],
  ),
  const VocabWord(
    english: 'diminish', turkish: 'azaltmak / azalmak',
    category: 'Oxford B2 Seviyesi',
    example: 'The effectiveness of the antibiotic diminishes over time.',
    synonyms: ['decrease', 'reduce', 'lessen'],
  ),
  const VocabWord(
    english: 'eliminate', turkish: 'ortadan kaldırmak / yok etmek',
    category: 'Oxford B2 Seviyesi',
    example: 'The primary goal is to eliminate the virus from the body.',
    synonyms: ['remove', 'eradicate', 'destroy'],
  ),
  const VocabWord(
    english: 'empirical', turkish: 'deneysel / gözleme dayalı',
    category: 'Oxford B2 Seviyesi',
    example: 'There is strong empirical evidence linking smoking to lung disease.',
    synonyms: ['experimental', 'observed', 'practical'],
  ),
  const VocabWord(
    english: 'evaluate', turkish: 'değerlendirmek',
    category: 'Oxford B2 Seviyesi',
    example: 'The medical board will evaluate the results of the recent trial.',
    synonyms: ['assess', 'analyze', 'appraise'],
  ),
  const VocabWord(
    english: 'inevitable', turkish: 'kaçınılmaz',
    category: 'Oxford B2 Seviyesi',
    example: 'Without proper treatment, heart failure is inevitable in these patients.',
    synonyms: ['unavoidable', 'certain', 'inescapable'],
  ),
  const VocabWord(
    english: 'intervene', turkish: 'müdahale etmek / araya girmek',
    category: 'Oxford B2 Seviyesi',
    example: 'Surgeons had to intervene to stop the internal bleeding.',
    synonyms: ['interfere', 'step in', 'mediate'],
  ),
  const VocabWord(
    english: 'modification', turkish: 'değişiklik / uyarlama',
    category: 'Oxford B2 Seviyesi',
    example: 'Lifestyle modifications, such as diet and exercise, can prevent diabetes.',
    synonyms: ['change', 'alteration', 'adjustment'],
  ),
];
