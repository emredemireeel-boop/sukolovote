/// YÖKDİL Sağlık - Makale Modülü
/// Sınavda çıkabilecek formatta akademik sağlık makaleleri, kelimeler ve sorular

class Article {
  final int id;
  final String title;
  final String turkishTitle;
  final String category;
  final String difficulty; // 'Kolay', 'Orta', 'Zor'
  final String source;
  final int estimatedMinutes;
  final String passage;
  final String turkishSummary;
  final List<ArticleVocab> vocabulary;
  final List<ArticleQuestion> questions;

  const Article({
    required this.id,
    required this.title,
    required this.turkishTitle,
    required this.category,
    required this.difficulty,
    required this.source,
    required this.estimatedMinutes,
    required this.passage,
    required this.turkishSummary,
    required this.vocabulary,
    required this.questions,
  });
}

class ArticleVocab {
  final String english;
  final String turkish;
  final String? partOfSpeech;
  final String? sampleSentence;

  const ArticleVocab({
    required this.english,
    required this.turkish,
    this.partOfSpeech,
    this.sampleSentence,
  });
}

class ArticleQuestion {
  final String question;
  final List<String> options;
  final int correctIndex;
  final String explanation;
  final String questionType; // 'Ana Fikir', 'Detay', 'Çıkarım', 'Kelime', 'Yazarın Tutumu'

  const ArticleQuestion({
    required this.question,
    required this.options,
    required this.correctIndex,
    required this.explanation,
    required this.questionType,
  });
}

final List<Article> articles = [
  // ─── MAKALE 1 ───
  const Article(
    id: 1,
    title: 'Type 2 Diabetes and Insulin Resistance',
    turkishTitle: 'Tip 2 Diyabet ve İnsülin Direnci',
    category: 'Endokrinoloji',
    difficulty: 'Orta',
    source: 'The Lancet Diabetes & Endocrinology',
    estimatedMinutes: 6,
    passage: '''Type 2 diabetes mellitus (T2DM) has emerged as one of the most prevalent chronic diseases of the modern era, affecting approximately 462 million people worldwide. Unlike type 1 diabetes, which results from the autoimmune destruction of pancreatic beta cells, T2DM is primarily characterized by insulin resistance, a condition in which cells fail to respond adequately to circulating insulin.

The pathophysiology of insulin resistance is complex and involves multiple organs. In skeletal muscle, which accounts for the majority of glucose disposal after meals, resistance leads to impaired glucose uptake. Simultaneously, the liver continues to produce glucose despite adequate insulin levels, further contributing to hyperglycemia. Adipose tissue, once considered merely a storage depot for fat, is now recognized as an active endocrine organ that secretes pro-inflammatory cytokines when dysfunctional.

Lifestyle factors play a substantial role in the development of T2DM. Sedentary behavior, excessive caloric intake, and diets rich in refined carbohydrates and saturated fats accelerate the onset of insulin resistance. However, genetic predisposition should not be underestimated; individuals with a first-degree relative diagnosed with T2DM face a threefold increased risk.

Recent advances in pharmacotherapy have transformed diabetes management. Beyond traditional agents such as metformin, novel drug classes including GLP-1 receptor agonists and SGLT2 inhibitors have demonstrated remarkable benefits, not only in glycemic control but also in reducing cardiovascular events and preserving renal function. Despite these therapeutic breakthroughs, prevention through lifestyle modification remains the cornerstone of public health strategies aimed at curbing the diabetes epidemic.''',
    turkishSummary: 'Tip 2 diyabet, insülin direnciyle karakterize kronik bir hastalıktır. Yaşam tarzı ve genetik faktörler kombinasyonuyla gelişir. Yeni ilaç sınıfları hem kan şekeri kontrolü hem de kalp-böbrek koruması sağlar.',
    vocabulary: [
      ArticleVocab(english: 'prevalent', turkish: 'yaygın', partOfSpeech: 'adj', sampleSentence: 'Obesity is prevalent in developed countries.'),
      ArticleVocab(english: 'autoimmune', turkish: 'otoimmün', partOfSpeech: 'adj'),
      ArticleVocab(english: 'pathophysiology', turkish: 'patofizyoloji', partOfSpeech: 'n'),
      ArticleVocab(english: 'impaired', turkish: 'bozulmuş', partOfSpeech: 'adj'),
      ArticleVocab(english: 'hyperglycemia', turkish: 'yüksek kan şekeri', partOfSpeech: 'n'),
      ArticleVocab(english: 'adipose tissue', turkish: 'yağ dokusu', partOfSpeech: 'n'),
      ArticleVocab(english: 'secrete', turkish: 'salgılamak', partOfSpeech: 'v'),
      ArticleVocab(english: 'sedentary', turkish: 'hareketsiz', partOfSpeech: 'adj'),
      ArticleVocab(english: 'predisposition', turkish: 'yatkınlık', partOfSpeech: 'n'),
      ArticleVocab(english: 'threefold', turkish: 'üç kat', partOfSpeech: 'adv'),
      ArticleVocab(english: 'pharmacotherapy', turkish: 'ilaç tedavisi', partOfSpeech: 'n'),
      ArticleVocab(english: 'renal', turkish: 'böbreğe ait', partOfSpeech: 'adj'),
      ArticleVocab(english: 'breakthrough', turkish: 'çığır açan gelişme', partOfSpeech: 'n'),
      ArticleVocab(english: 'cornerstone', turkish: 'temel taş', partOfSpeech: 'n'),
      ArticleVocab(english: 'curb', turkish: 'sınırlamak', partOfSpeech: 'v'),
    ],
    questions: [
      ArticleQuestion(
        question: 'What is the main difference between type 1 and type 2 diabetes according to the passage?',
        options: [
          'Type 1 affects children while type 2 affects only adults.',
          'Type 1 results from autoimmune destruction of beta cells, whereas type 2 is characterized by insulin resistance.',
          'Type 2 is more dangerous than type 1 in every respect.',
          'Type 1 requires lifestyle change while type 2 does not.',
        ],
        correctIndex: 1,
        explanation: 'İkinci paragrafın hemen üstünde açıkça belirtilmiş: Tip 1 otoimmün beta hücre yıkımıyla, Tip 2 ise insülin direnciyle karakterizedir.',
        questionType: 'Detay',
      ),
      ArticleQuestion(
        question: 'According to the passage, adipose tissue is best described as ----.',
        options: [
          'a passive fat storage compartment only',
          'the primary site of glucose disposal',
          'an active endocrine organ that can release pro-inflammatory substances',
          'a tissue unrelated to insulin resistance',
        ],
        correctIndex: 2,
        explanation: 'Metin, yağ dokusunun artık pasif bir depo değil, sitokin salgılayan aktif bir endokrin organ olduğunu vurguluyor.',
        questionType: 'Detay',
      ),
      ArticleQuestion(
        question: 'The word "curbing" in the last sentence is closest in meaning to ----.',
        options: ['worsening', 'limiting', 'ignoring', 'measuring'],
        correctIndex: 1,
        explanation: '"Curb" fiili "sınırlamak, dizginlemek" anlamına gelir; "limiting" ile eşdeğerdir.',
        questionType: 'Kelime',
      ),
      ArticleQuestion(
        question: 'What can be inferred about newer diabetes medications from the passage?',
        options: [
          'They completely replace the need for lifestyle change.',
          'They only lower blood sugar without other benefits.',
          'They offer benefits beyond glycemic control, including cardiovascular and renal protection.',
          'They are less effective than metformin.',
        ],
        correctIndex: 2,
        explanation: 'GLP-1 ve SGLT2 inhibitörlerinin kardiyovasküler olayları azalttığı ve böbrek fonksiyonunu koruduğu belirtilmiş.',
        questionType: 'Çıkarım',
      ),
      ArticleQuestion(
        question: 'Which of the following best expresses the main idea of the passage?',
        options: [
          'Genetic factors are the sole cause of type 2 diabetes.',
          'Type 2 diabetes is a multifactorial disease driven by insulin resistance, with prevention and new therapies both playing key roles.',
          'Metformin is now obsolete in diabetes treatment.',
          'Lifestyle modification alone can cure T2DM.',
        ],
        correctIndex: 1,
        explanation: 'Metin; nedenleri, mekanizmayı, ilaçları ve önlemeyi bir arada ele alıyor. En kapsayıcı ifade budur.',
        questionType: 'Ana Fikir',
      ),
    ],
  ),

  // ─── MAKALE 2 ───
  const Article(
    id: 2,
    title: 'The Rise of Antimicrobial Resistance',
    turkishTitle: 'Antimikrobiyal Direncin Yükselişi',
    category: 'Enfeksiyon Hastalıkları',
    difficulty: 'Zor',
    source: 'WHO Global Antimicrobial Resistance Report',
    estimatedMinutes: 7,
    passage: '''Antimicrobial resistance (AMR) represents one of the most formidable threats to global health in the 21st century. The World Health Organization has warned that, without decisive action, humanity risks entering a "post-antibiotic era" in which routine infections could once again become fatal. Current estimates suggest that AMR contributes to at least 1.27 million deaths annually, and this figure could rise dramatically by 2050 if current trends persist.

The primary driver of resistance is the misuse and overuse of antimicrobial agents in both clinical and agricultural settings. In many low- and middle-income countries, antibiotics are dispensed without prescription, often for viral infections against which they are entirely ineffective. Meanwhile, the routine administration of antibiotics to healthy livestock as growth promoters has created enormous reservoirs of resistant bacteria that can transfer to humans through the food chain.

Compounding the problem is a dwindling pipeline of new antibiotics. Pharmaceutical companies have largely abandoned antibiotic research due to poor return on investment; a novel antibiotic is typically reserved as a last-line therapy and used sparingly, generating minimal revenue. Consequently, the emergence of multidrug-resistant organisms such as carbapenem-resistant Enterobacteriaceae has outpaced the development of new treatments.

Combating AMR requires a coordinated, multisectoral approach known as "One Health," which acknowledges the interconnectedness of human, animal, and environmental health. Strategies include stewardship programs to ensure prudent antibiotic use, investment in rapid diagnostic tools to distinguish bacterial from viral infections, and incentives for pharmaceutical innovation. Ultimately, safeguarding the effectiveness of antibiotics is a shared responsibility that transcends borders and disciplines.''',
    turkishSummary: 'Antimikrobiyal direnç 21. yüzyılın en büyük halk sağlığı tehditlerinden biridir. Antibiyotiklerin insan ve tarımdaki aşırı kullanımı, yeni ilaç araştırmalarının azalması ve dirençli mikropların çoğalması çok yönlü "Tek Sağlık" yaklaşımını zorunlu kılmaktadır.',
    vocabulary: [
      ArticleVocab(english: 'formidable', turkish: 'zorlu, korkutucu', partOfSpeech: 'adj'),
      ArticleVocab(english: 'decisive', turkish: 'kesin, kararlı', partOfSpeech: 'adj'),
      ArticleVocab(english: 'fatal', turkish: 'ölümcül', partOfSpeech: 'adj'),
      ArticleVocab(english: 'dispense', turkish: 'dağıtmak, vermek', partOfSpeech: 'v'),
      ArticleVocab(english: 'livestock', turkish: 'çiftlik hayvanları', partOfSpeech: 'n'),
      ArticleVocab(english: 'reservoir', turkish: 'kaynak, rezervuar', partOfSpeech: 'n'),
      ArticleVocab(english: 'compound (v)', turkish: 'ağırlaştırmak', partOfSpeech: 'v'),
      ArticleVocab(english: 'dwindling', turkish: 'azalan', partOfSpeech: 'adj'),
      ArticleVocab(english: 'abandon', turkish: 'terk etmek', partOfSpeech: 'v'),
      ArticleVocab(english: 'sparingly', turkish: 'idareli biçimde', partOfSpeech: 'adv'),
      ArticleVocab(english: 'outpace', turkish: 'geride bırakmak', partOfSpeech: 'v'),
      ArticleVocab(english: 'stewardship', turkish: 'yönetim, denetim', partOfSpeech: 'n'),
      ArticleVocab(english: 'prudent', turkish: 'basiretli, tedbirli', partOfSpeech: 'adj'),
      ArticleVocab(english: 'safeguard', turkish: 'korumak', partOfSpeech: 'v'),
      ArticleVocab(english: 'transcend', turkish: 'aşmak', partOfSpeech: 'v'),
    ],
    questions: [
      ArticleQuestion(
        question: 'According to the passage, what is meant by a "post-antibiotic era"?',
        options: [
          'An era with better antibiotics than today',
          'A future in which common infections could once again become deadly due to resistance',
          'A period when antibiotics are used only in hospitals',
          'A time when antibiotics are illegal',
        ],
        correctIndex: 1,
        explanation: '"Post-antibiotic era" ifadesi, sıradan enfeksiyonların bile tekrar öldürücü olabileceği bir gelecek anlamında kullanılmış.',
        questionType: 'Kelime',
      ),
      ArticleQuestion(
        question: 'Why have pharmaceutical companies largely abandoned antibiotic research?',
        options: [
          'Because antibiotics no longer work',
          'Because governments have banned research',
          'Because the return on investment is poor since new antibiotics are used sparingly',
          'Because there are no more bacteria to target',
        ],
        correctIndex: 2,
        explanation: 'Metinde açıkça yeni antibiyotiklerin son çare olarak saklandığı ve az kullanıldığı için gelir üretmediği söyleniyor.',
        questionType: 'Detay',
      ),
      ArticleQuestion(
        question: 'The "One Health" approach is described as ----.',
        options: [
          'a strategy limited to hospital settings',
          'an approach recognizing the links between human, animal, and environmental health',
          'a treatment protocol for AMR patients',
          'a marketing campaign for antibiotics',
        ],
        correctIndex: 1,
        explanation: '"One Health" insan, hayvan ve çevre sağlığının birbirine bağlı olduğunu kabul eden çok sektörlü bir yaklaşımdır.',
        questionType: 'Detay',
      ),
      ArticleQuestion(
        question: 'What is the author\'s attitude toward addressing AMR?',
        options: ['pessimistic', 'indifferent', 'urgent yet solutions-oriented', 'sarcastic'],
        correctIndex: 2,
        explanation: 'Yazar tehdidi ciddi biçimde ortaya koyarken çözüm önerileri de sunuyor; ton acil ancak yapıcı.',
        questionType: 'Yazarın Tutumu',
      ),
      ArticleQuestion(
        question: 'It can be inferred from the passage that ----.',
        options: [
          'AMR is only a problem in wealthy nations',
          'individual countries can solve AMR on their own',
          'the food chain plays a role in spreading resistant bacteria',
          'antibiotics are no longer needed in modern medicine',
        ],
        correctIndex: 2,
        explanation: 'Hayvanlara verilen antibiyotiklerin gıda zinciri yoluyla insanlara dirençli bakteri taşıdığı ifade ediliyor.',
        questionType: 'Çıkarım',
      ),
    ],
  ),

  // ─── MAKALE 3 ───
  const Article(
    id: 3,
    title: 'Cancer Immunotherapy: Harnessing the Body\'s Defenses',
    turkishTitle: 'Kanser İmmünoterapisi: Vücudun Savunmasını Kullanmak',
    category: 'Onkoloji',
    difficulty: 'Zor',
    source: 'Nature Reviews Cancer',
    estimatedMinutes: 7,
    passage: '''Cancer immunotherapy has revolutionized oncology by shifting the therapeutic paradigm from directly attacking tumor cells to empowering the patient\'s own immune system to recognize and eliminate malignancies. Central to this revolution are immune checkpoint inhibitors, monoclonal antibodies that block regulatory pathways such as PD-1/PD-L1 and CTLA-4, thereby unleashing T lymphocytes that would otherwise be suppressed within the tumor microenvironment.

Since the approval of ipilimumab for metastatic melanoma in 2011, checkpoint inhibitors have been extended to a broad spectrum of malignancies, including non-small cell lung cancer, renal cell carcinoma, and Hodgkin lymphoma. Remarkably, a subset of patients who once faced dismal prognoses now experience durable remissions lasting several years, a phenomenon rarely observed with conventional chemotherapy.

Nevertheless, immunotherapy is not without limitations. Response rates vary considerably across tumor types, and reliable biomarkers to predict who will benefit remain elusive. Furthermore, unleashing the immune system can precipitate autoimmune adverse events affecting virtually any organ, from thyroiditis to fatal myocarditis. Managing these immune-related toxicities requires vigilant monitoring and prompt intervention with corticosteroids.

Beyond checkpoint blockade, another promising avenue is chimeric antigen receptor (CAR) T-cell therapy, in which a patient\'s T cells are genetically engineered to target tumor-specific antigens. CAR-T therapy has produced extraordinary results in relapsed B-cell malignancies but faces significant hurdles in solid tumors due to antigen heterogeneity and an immunosuppressive microenvironment. As research continues, combining different immunotherapeutic modalities and integrating them with conventional treatments may unlock even greater benefits for cancer patients.''',
    turkishSummary: 'İmmünoterapi, hastanın kendi bağışıklık sistemini kullanarak kanseri hedefler. Checkpoint inhibitörleri melanoma ve akciğer kanseri gibi hastalıklarda uzun süreli remisyon sağlar ama yan etkileri ve dirençli tümör tipleri hâlâ zorlu alanlardır.',
    vocabulary: [
      ArticleVocab(english: 'harness', turkish: 'kullanmak, faydalanmak', partOfSpeech: 'v'),
      ArticleVocab(english: 'paradigm', turkish: 'paradigma, model', partOfSpeech: 'n'),
      ArticleVocab(english: 'empower', turkish: 'güçlendirmek', partOfSpeech: 'v'),
      ArticleVocab(english: 'malignancy', turkish: 'kötü huylu tümör', partOfSpeech: 'n'),
      ArticleVocab(english: 'checkpoint inhibitor', turkish: 'kontrol noktası inhibitörü', partOfSpeech: 'n'),
      ArticleVocab(english: 'unleash', turkish: 'serbest bırakmak', partOfSpeech: 'v'),
      ArticleVocab(english: 'dismal', turkish: 'kasvetli, kötü', partOfSpeech: 'adj'),
      ArticleVocab(english: 'remission', turkish: 'remisyon, iyileşme', partOfSpeech: 'n'),
      ArticleVocab(english: 'elusive', turkish: 'yakalanması güç', partOfSpeech: 'adj'),
      ArticleVocab(english: 'precipitate', turkish: 'yol açmak', partOfSpeech: 'v'),
      ArticleVocab(english: 'vigilant', turkish: 'uyanık, tetikte', partOfSpeech: 'adj'),
      ArticleVocab(english: 'avenue', turkish: 'yol, yaklaşım', partOfSpeech: 'n'),
      ArticleVocab(english: 'heterogeneity', turkish: 'heterojenlik', partOfSpeech: 'n'),
      ArticleVocab(english: 'hurdle', turkish: 'engel', partOfSpeech: 'n'),
      ArticleVocab(english: 'modality', turkish: 'yöntem, biçim', partOfSpeech: 'n'),
    ],
    questions: [
      ArticleQuestion(
        question: 'How does cancer immunotherapy fundamentally differ from traditional chemotherapy?',
        options: [
          'It uses radiation instead of drugs.',
          'It boosts the patient\'s immune system to fight cancer rather than directly killing tumor cells.',
          'It only works for melanoma.',
          'It requires surgery in every case.',
        ],
        correctIndex: 1,
        explanation: 'İlk paragrafta paradigmanın "tümör hücrelerine doğrudan saldırıdan" "bağışıklık sistemini güçlendirmeye" kaydığı belirtilmiş.',
        questionType: 'Ana Fikir',
      ),
      ArticleQuestion(
        question: 'The word "dismal" in paragraph two most nearly means ----.',
        options: ['excellent', 'gloomy', 'uncertain', 'ordinary'],
        correctIndex: 1,
        explanation: '"Dismal" olumsuz, karamsar prognoz anlamındadır; "gloomy" ile eş anlamlıdır.',
        questionType: 'Kelime',
      ),
      ArticleQuestion(
        question: 'What is a major limitation of checkpoint inhibitor therapy mentioned in the passage?',
        options: [
          'It cures every patient.',
          'It causes no side effects.',
          'Response rates vary and it can trigger autoimmune adverse events.',
          'It is only used in pediatric patients.',
        ],
        correctIndex: 2,
        explanation: 'Yanıt oranlarının değişkenliği ve otoimmün yan etkiler açıkça sınırlılık olarak sunulmuş.',
        questionType: 'Detay',
      ),
      ArticleQuestion(
        question: 'Why is CAR-T therapy less effective in solid tumors according to the passage?',
        options: [
          'Because solid tumors do not have any antigens',
          'Because of antigen heterogeneity and an immunosuppressive microenvironment',
          'Because it is not approved for adults',
          'Because it is too new to test',
        ],
        correctIndex: 1,
        explanation: 'Solid tümörlerdeki antijen çeşitliliği ve baskılayıcı mikroçevre engeller olarak açıkça sıralanmış.',
        questionType: 'Detay',
      ),
      ArticleQuestion(
        question: 'The author\'s overall tone regarding immunotherapy can best be described as ----.',
        options: ['dismissive', 'cautiously optimistic', 'openly skeptical', 'nostalgic'],
        correctIndex: 1,
        explanation: 'Yazar başarıları vurgulamakla birlikte zorluklardan da bahsediyor; ton temkinli ama olumlu.',
        questionType: 'Yazarın Tutumu',
      ),
    ],
  ),

  // ─── MAKALE 4 ───
  const Article(
    id: 4,
    title: 'Depression: More Than Just Sadness',
    turkishTitle: 'Depresyon: Sadece Üzüntüden Fazlası',
    category: 'Psikiyatri',
    difficulty: 'Orta',
    source: 'The New England Journal of Medicine',
    estimatedMinutes: 6,
    passage: '''Major depressive disorder (MDD) affects more than 280 million people globally, making it one of the leading causes of disability worldwide. Contrary to a common misconception that equates depression with prolonged sadness, MDD is a heterogeneous condition involving persistent low mood, loss of interest, cognitive impairment, and often somatic symptoms such as insomnia, appetite changes, and chronic fatigue.

The neurobiological underpinnings of depression are increasingly understood in terms of dysregulated monoamine neurotransmission, particularly of serotonin, norepinephrine, and dopamine. However, this "chemical imbalance" hypothesis, though useful, oversimplifies a condition that also involves neuroinflammation, structural changes in brain regions such as the hippocampus and prefrontal cortex, and disrupted stress-response systems.

Treatment strategies typically combine pharmacotherapy with psychotherapy. Selective serotonin reuptake inhibitors (SSRIs) remain first-line agents, offering a favorable side-effect profile compared with older antidepressants. Cognitive behavioral therapy (CBT) has demonstrated comparable efficacy to medication in mild to moderate cases and can produce longer-lasting benefits by equipping patients with coping strategies. Emerging therapies such as ketamine and transcranial magnetic stimulation offer hope for treatment-resistant depression, a category that afflicts roughly one-third of patients.

Nevertheless, stigma continues to hinder access to care. Many individuals delay seeking help for fear of being labeled "weak" or "unstable." Public health campaigns emphasizing depression as a medical illness, coupled with the integration of mental health services into primary care, are essential to closing the treatment gap and reducing the immense societal burden of this condition.''',
    turkishSummary: 'Depresyon sadece üzüntü değildir; nörotransmitter dengesizliği, inflamasyon ve stres sistemi bozuklukları içerir. SSRI ve BDT birinci basamak tedavilerdir, damgalama ise erişimin önündeki büyük engeldir.',
    vocabulary: [
      ArticleVocab(english: 'misconception', turkish: 'yanlış anlama', partOfSpeech: 'n'),
      ArticleVocab(english: 'equate', turkish: 'eşitlemek', partOfSpeech: 'v'),
      ArticleVocab(english: 'heterogeneous', turkish: 'farklı türlerden oluşan', partOfSpeech: 'adj'),
      ArticleVocab(english: 'persistent', turkish: 'sürekli, ısrarlı', partOfSpeech: 'adj'),
      ArticleVocab(english: 'somatic', turkish: 'bedensel', partOfSpeech: 'adj'),
      ArticleVocab(english: 'insomnia', turkish: 'uykusuzluk', partOfSpeech: 'n'),
      ArticleVocab(english: 'underpinnings', turkish: 'temeller', partOfSpeech: 'n'),
      ArticleVocab(english: 'oversimplify', turkish: 'aşırı basitleştirmek', partOfSpeech: 'v'),
      ArticleVocab(english: 'disrupted', turkish: 'bozulmuş', partOfSpeech: 'adj'),
      ArticleVocab(english: 'favorable', turkish: 'olumlu, uygun', partOfSpeech: 'adj'),
      ArticleVocab(english: 'comparable', turkish: 'karşılaştırılabilir', partOfSpeech: 'adj'),
      ArticleVocab(english: 'afflict', turkish: 'sıkıntı vermek', partOfSpeech: 'v'),
      ArticleVocab(english: 'stigma', turkish: 'damgalama', partOfSpeech: 'n'),
      ArticleVocab(english: 'hinder', turkish: 'engellemek', partOfSpeech: 'v'),
      ArticleVocab(english: 'burden', turkish: 'yük', partOfSpeech: 'n'),
    ],
    questions: [
      ArticleQuestion(
        question: 'Which of the following is NOT mentioned as a symptom of major depressive disorder?',
        options: [
          'persistent low mood',
          'chronic fatigue',
          'increased muscle strength',
          'appetite changes',
        ],
        correctIndex: 2,
        explanation: 'Metinde artan kas gücü yer almıyor; diğer üç seçenek doğrudan sayılmış.',
        questionType: 'Detay',
      ),
      ArticleQuestion(
        question: 'The passage suggests that the "chemical imbalance" hypothesis ----.',
        options: [
          'fully explains depression',
          'is completely incorrect',
          'is useful but oversimplifies the condition',
          'was recently rejected by all researchers',
        ],
        correctIndex: 2,
        explanation: 'Yazar "though useful, oversimplifies" ifadesini kullanmış; hipotez faydalı ama tek başına yetersiz.',
        questionType: 'Detay',
      ),
      ArticleQuestion(
        question: 'The word "hinder" in the last paragraph is closest in meaning to ----.',
        options: ['encourage', 'obstruct', 'evaluate', 'ignore'],
        correctIndex: 1,
        explanation: '"Hinder" engellemek anlamındadır; "obstruct" ile eş anlamlıdır.',
        questionType: 'Kelime',
      ),
      ArticleQuestion(
        question: 'What can be inferred about cognitive behavioral therapy (CBT) from the passage?',
        options: [
          'It is inferior to medication in all cases.',
          'It only works alongside ketamine.',
          'It can be as effective as medication in mild to moderate depression and may have lasting effects.',
          'It is used only for severe depression.',
        ],
        correctIndex: 2,
        explanation: 'CBT\'nin hafif-orta vakalarda ilaçlarla karşılaştırılabilir ve daha kalıcı olduğu belirtilmiş.',
        questionType: 'Çıkarım',
      ),
      ArticleQuestion(
        question: 'What is the main point of the final paragraph?',
        options: [
          'Depression is untreatable.',
          'Stigma and lack of integration in primary care limit access to depression treatment.',
          'Public campaigns are unnecessary.',
          'Only severe cases need help.',
        ],
        correctIndex: 1,
        explanation: 'Son paragrafın odağı damgalama ve tedaviye erişim engelidir.',
        questionType: 'Ana Fikir',
      ),
    ],
  ),
];
