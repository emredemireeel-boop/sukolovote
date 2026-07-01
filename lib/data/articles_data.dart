/// YÖKDİL Sağlık - Makale Modülü
/// Sınavda çıkabilecek formatta akademik sağlık makaleleri, kelimeler ve sorular
import 'articles_extra.dart';

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

  // ─── MAKALE 5 ───
  const Article(
    id: 5,
    title: 'Alzheimer\'s Disease: Unraveling a Complex Puzzle',
    turkishTitle: 'Alzheimer Hastalığı: Karmaşık Bir Bulmacayı Çözmek',
    category: 'Nöroloji',
    difficulty: 'Zor',
    source: 'Lancet Neurology',
    estimatedMinutes: 7,
    passage: '''Alzheimer\'s disease (AD), the most common form of dementia, currently afflicts an estimated 55 million individuals worldwide, a figure projected to triple by 2050 as populations age. Characterized by progressive cognitive decline, memory loss, and behavioral changes, AD imposes an immense burden on patients, caregivers, and healthcare systems alike.

For decades, the "amyloid cascade hypothesis" has dominated research. According to this framework, the accumulation of beta-amyloid plaques in the brain initiates a cascade of pathological events, including neurofibrillary tangles composed of hyperphosphorylated tau protein, neuronal dysfunction, and eventual cell death. However, the repeated failure of anti-amyloid drugs to produce meaningful clinical benefits has prompted many researchers to reconsider whether amyloid is truly the primary driver of the disease.

Recent breakthroughs have nonetheless kept the hypothesis alive. Monoclonal antibodies such as lecanemab and donanemab have demonstrated modest slowing of cognitive decline in patients with early-stage AD, marking the first disease-modifying therapies to receive regulatory approval. Yet these treatments carry significant risks, including amyloid-related imaging abnormalities that can manifest as brain edema or microhemorrhages.

Parallel research has highlighted the roles of neuroinflammation, vascular dysfunction, and gut microbiota alterations. Lifestyle interventions targeting cardiovascular health, cognitive engagement, and social interaction have shown promise in delaying onset. Ultimately, addressing Alzheimer\'s will likely require a combination of early diagnosis through biomarker screening, personalized pharmacotherapy, and public health strategies that promote brain health from midlife onward.''',
    turkishSummary: 'Alzheimer, amiloid ve tau birikimiyle ilerleyen bilişsel bozulma hastalığıdır. Yeni monoklonal antikorlar sınırlı yarar sağlarken; damar sağlığı, iltihaplanma ve yaşam tarzı da önemli araştırma alanlarıdır.',
    vocabulary: [
      ArticleVocab(english: 'dementia', turkish: 'bunama, demans', partOfSpeech: 'n'),
      ArticleVocab(english: 'progressive', turkish: 'ilerleyici', partOfSpeech: 'adj'),
      ArticleVocab(english: 'cascade', turkish: 'zincirleme etki', partOfSpeech: 'n'),
      ArticleVocab(english: 'accumulation', turkish: 'birikim', partOfSpeech: 'n'),
      ArticleVocab(english: 'tangle', turkish: 'yumak, karışıklık', partOfSpeech: 'n'),
      ArticleVocab(english: 'dysfunction', turkish: 'işlev bozukluğu', partOfSpeech: 'n'),
      ArticleVocab(english: 'prompt', turkish: 'yol açmak', partOfSpeech: 'v'),
      ArticleVocab(english: 'modest', turkish: 'mütevazı, sınırlı', partOfSpeech: 'adj'),
      ArticleVocab(english: 'edema', turkish: 'ödem', partOfSpeech: 'n'),
      ArticleVocab(english: 'microhemorrhage', turkish: 'mikro kanama', partOfSpeech: 'n'),
      ArticleVocab(english: 'vascular', turkish: 'damarsal', partOfSpeech: 'adj'),
      ArticleVocab(english: 'onset', turkish: 'başlangıç', partOfSpeech: 'n'),
      ArticleVocab(english: 'biomarker', turkish: 'biyobelirteç', partOfSpeech: 'n'),
      ArticleVocab(english: 'midlife', turkish: 'orta yaş', partOfSpeech: 'n'),
      ArticleVocab(english: 'unravel', turkish: 'çözmek', partOfSpeech: 'v'),
    ],
    questions: [
      ArticleQuestion(
        question: 'According to the passage, what does the amyloid cascade hypothesis propose?',
        options: [
          'Alzheimer\'s is caused only by aging.',
          'Beta-amyloid buildup triggers a chain of pathological events leading to neuronal death.',
          'Tau tangles have no role in the disease.',
          'Alzheimer\'s is entirely a vascular disorder.',
        ],
        correctIndex: 1,
        explanation: 'İkinci paragrafta amiloid birikiminin tau, nöronal disfonksiyon ve hücre ölümü zincirini başlattığı belirtilmiş.',
        questionType: 'Detay',
      ),
      ArticleQuestion(
        question: 'The word "modest" in the third paragraph is closest in meaning to ----.',
        options: ['exaggerated', 'limited', 'irrelevant', 'permanent'],
        correctIndex: 1,
        explanation: '"Modest" burada sınırlı fayda anlamında kullanılmıştır; "limited" ile eşdeğerdir.',
        questionType: 'Kelime',
      ),
      ArticleQuestion(
        question: 'What can be inferred about anti-amyloid drug development?',
        options: [
          'It has been a complete success.',
          'It has faced repeated failures, leading some to question the amyloid hypothesis.',
          'It has been abandoned entirely.',
          'It targets only genetic causes.',
        ],
        correctIndex: 1,
        explanation: '"Repeated failure of anti-amyloid drugs" ifadesi hipotezin sorgulanmasına yol açmış.',
        questionType: 'Çıkarım',
      ),
      ArticleQuestion(
        question: 'Which of the following is presented as an alternative or additional research avenue?',
        options: [
          'gene editing of embryos',
          'neuroinflammation and gut microbiota',
          'organ transplantation',
          'chemotherapy',
        ],
        correctIndex: 1,
        explanation: 'Son paragrafta nöroinflamasyon, damar disfonksiyonu ve bağırsak mikrobiyotası araştırma alanları olarak listelenmiş.',
        questionType: 'Detay',
      ),
      ArticleQuestion(
        question: 'What is the author\'s overall stance on Alzheimer\'s research?',
        options: [
          'It is a lost cause.',
          'Only lifestyle matters.',
          'A multifaceted approach combining biomarkers, drugs, and lifestyle is needed.',
          'The amyloid hypothesis alone is sufficient.',
        ],
        correctIndex: 2,
        explanation: 'Yazar tek yaklaşımın yetmeyeceğini, çok yönlü bir stratejinin gerektiğini vurguluyor.',
        questionType: 'Ana Fikir',
      ),
    ],
  ),

  // ─── MAKALE 6 ───
  const Article(
    id: 6,
    title: 'The mRNA Vaccine Revolution',
    turkishTitle: 'mRNA Aşı Devrimi',
    category: 'İmmünoloji',
    difficulty: 'Orta',
    source: 'Science Translational Medicine',
    estimatedMinutes: 6,
    passage: '''For decades, messenger RNA (mRNA) technology remained a laboratory curiosity, plagued by instability and unwanted immune reactions. The COVID-19 pandemic, however, catapulted mRNA vaccines from obscurity to global prominence, offering the first commercially successful application of a technology that many scientists had privately doubted would ever reach patients.

Unlike conventional vaccines that introduce weakened pathogens or protein fragments, mRNA vaccines deliver genetic instructions that prompt the body\'s own cells to produce a viral antigen, typically the spike protein of SARS-CoV-2. This antigen then triggers a robust immune response, priming the body to recognize and neutralize the virus upon subsequent exposure. The elegance of the approach lies in its speed: once a target antigen is identified, an mRNA vaccine can be designed in days rather than months.

The key innovations enabling mRNA vaccines were the modification of nucleoside bases to reduce inflammation and the encapsulation of the fragile mRNA in lipid nanoparticles that facilitate cellular uptake. These advances, developed over many years by researchers including Nobel laureates Katalin Karikó and Drew Weissman, laid the groundwork for the rapid deployment of vaccines during the pandemic.

Looking beyond COVID-19, mRNA platforms hold enormous promise for a wide range of infectious diseases, from influenza to HIV, and for personalized cancer vaccines that target patient-specific tumor mutations. Nonetheless, challenges remain, including the need for cold-chain logistics, the durability of induced immunity, and public confidence in a technology that some perceive as new despite its long developmental history.''',
    turkishSummary: 'mRNA aşıları hücrelere antijen üretme talimatı verir; hızlı geliştirilebilir. COVID-19 sırasında öne çıktı ve şimdi kanser dahil birçok hastalıkta kullanılmak üzere araştırılıyor.',
    vocabulary: [
      ArticleVocab(english: 'plagued by', turkish: 'ile boğuşan', partOfSpeech: 'phr'),
      ArticleVocab(english: 'catapult', turkish: 'fırlatmak', partOfSpeech: 'v'),
      ArticleVocab(english: 'obscurity', turkish: 'bilinmezlik', partOfSpeech: 'n'),
      ArticleVocab(english: 'prominence', turkish: 'öne çıkma', partOfSpeech: 'n'),
      ArticleVocab(english: 'weakened', turkish: 'zayıflatılmış', partOfSpeech: 'adj'),
      ArticleVocab(english: 'antigen', turkish: 'antijen', partOfSpeech: 'n'),
      ArticleVocab(english: 'robust', turkish: 'güçlü', partOfSpeech: 'adj'),
      ArticleVocab(english: 'prime (v)', turkish: 'hazırlamak', partOfSpeech: 'v'),
      ArticleVocab(english: 'subsequent', turkish: 'sonraki', partOfSpeech: 'adj'),
      ArticleVocab(english: 'encapsulation', turkish: 'kapsülleme', partOfSpeech: 'n'),
      ArticleVocab(english: 'fragile', turkish: 'kırılgan, hassas', partOfSpeech: 'adj'),
      ArticleVocab(english: 'facilitate', turkish: 'kolaylaştırmak', partOfSpeech: 'v'),
      ArticleVocab(english: 'deployment', turkish: 'sahaya sürme', partOfSpeech: 'n'),
      ArticleVocab(english: 'durability', turkish: 'dayanıklılık', partOfSpeech: 'n'),
      ArticleVocab(english: 'perceive', turkish: 'algılamak', partOfSpeech: 'v'),
    ],
    questions: [
      ArticleQuestion(
        question: 'What makes mRNA vaccines different from conventional vaccines?',
        options: [
          'They use weakened live viruses.',
          'They introduce protein fragments only.',
          'They deliver genetic instructions so the body\'s own cells produce the antigen.',
          'They require surgery to administer.',
        ],
        correctIndex: 2,
        explanation: 'İkinci paragrafta mRNA aşılarının hücreye antijen üretme talimatı verdiği açıkça belirtilmiş.',
        questionType: 'Detay',
      ),
      ArticleQuestion(
        question: 'The word "catapulted" in paragraph one is closest in meaning to ----.',
        options: ['delayed', 'suppressed', 'propelled', 'reduced'],
        correctIndex: 2,
        explanation: '"Catapult" fırlatmak, hızla öne çıkarmak demektir; "propel" ile eşdeğerdir.',
        questionType: 'Kelime',
      ),
      ArticleQuestion(
        question: 'Why is speed considered an advantage of mRNA vaccine design?',
        options: [
          'Because it uses expensive equipment',
          'Because a vaccine can be designed in days once the antigen is identified',
          'Because it does not require testing',
          'Because it skips clinical trials',
        ],
        correctIndex: 1,
        explanation: 'Antijen belirlendikten sonra günler içinde aşı tasarlanabildiği belirtilmiş.',
        questionType: 'Detay',
      ),
      ArticleQuestion(
        question: 'What role did nucleoside modification and lipid nanoparticles play?',
        options: [
          'They increased side effects.',
          'They enabled reduced inflammation and effective cellular delivery.',
          'They made vaccines unusable.',
          'They eliminated the need for antigens.',
        ],
        correctIndex: 1,
        explanation: 'Üçüncü paragrafta bu iki yenilik iltihabı azaltıp hücre içine girişi kolaylaştıran anahtar teknolojiler olarak sunulmuş.',
        questionType: 'Detay',
      ),
      ArticleQuestion(
        question: 'Which of the following is NOT mentioned as a future application of mRNA technology?',
        options: ['influenza', 'HIV', 'personalized cancer vaccines', 'antibiotic replacement'],
        correctIndex: 3,
        explanation: 'Metinde antibiyotik yerine kullanılabileceğinden bahsedilmez; diğer üç uygulama sayılmıştır.',
        questionType: 'Detay',
      ),
    ],
  ),

  // ─── MAKALE 7 ───
  const Article(
    id: 7,
    title: 'The Global Obesity Epidemic',
    turkishTitle: 'Küresel Obezite Salgını',
    category: 'Halk Sağlığı',
    difficulty: 'Orta',
    source: 'WHO Bulletin',
    estimatedMinutes: 6,
    passage: '''Once regarded primarily as a problem of affluent Western nations, obesity has evolved into a truly global epidemic, with rates rising alarmingly in low- and middle-income countries as well. The World Health Organization estimates that more than 1 billion people worldwide are now obese, including 39 million children under the age of five. This shift threatens to overwhelm health systems already grappling with the burden of noncommunicable diseases.

Obesity is a multifactorial condition shaped by biology, environment, and behavior. Genetic variations influence appetite regulation, energy metabolism, and fat distribution, but genes alone cannot account for the dramatic increase observed over recent decades. Rather, obesogenic environments, characterized by the ubiquitous availability of energy-dense processed foods, aggressive marketing, and declining physical activity, have driven population-level weight gain.

The health consequences of obesity extend far beyond aesthetics. Excess adiposity increases the risk of type 2 diabetes, cardiovascular disease, several cancers, obstructive sleep apnea, and musculoskeletal disorders. Perhaps less appreciated is the psychological toll: individuals with obesity frequently face weight-based stigma, contributing to depression, anxiety, and disordered eating.

Interventions must operate at multiple levels. At the individual level, sustained dietary changes and physical activity remain foundational, while newer pharmacological agents such as GLP-1 receptor agonists have produced unprecedented weight loss and improved metabolic outcomes. At the population level, however, policies addressing food environments—taxation of sugar-sweetened beverages, restrictions on junk food marketing to children, and urban planning that promotes active transport—are essential. Treating obesity solely as a matter of personal willpower ignores the powerful structural forces that shape everyday choices.''',
    turkishSummary: 'Obezite artık gelişmiş ülkelere özgü değil, küresel bir salgın. Genetik, çevresel ve davranışsal nedenlerin ötesinde gıda politikaları da belirleyicidir. GLP-1 agonistleri gibi yeni ilaçlar umut vaadediyor.',
    vocabulary: [
      ArticleVocab(english: 'affluent', turkish: 'varlıklı', partOfSpeech: 'adj'),
      ArticleVocab(english: 'alarmingly', turkish: 'endişe verici biçimde', partOfSpeech: 'adv'),
      ArticleVocab(english: 'overwhelm', turkish: 'baş edilemez hale getirmek', partOfSpeech: 'v'),
      ArticleVocab(english: 'grapple with', turkish: 'boğuşmak', partOfSpeech: 'phr'),
      ArticleVocab(english: 'multifactorial', turkish: 'çok etkenli', partOfSpeech: 'adj'),
      ArticleVocab(english: 'ubiquitous', turkish: 'her yerde bulunan', partOfSpeech: 'adj'),
      ArticleVocab(english: 'energy-dense', turkish: 'kalorisi yüksek', partOfSpeech: 'adj'),
      ArticleVocab(english: 'aesthetics', turkish: 'estetik', partOfSpeech: 'n'),
      ArticleVocab(english: 'adiposity', turkish: 'yağlanma', partOfSpeech: 'n'),
      ArticleVocab(english: 'musculoskeletal', turkish: 'kas-iskelet', partOfSpeech: 'adj'),
      ArticleVocab(english: 'toll', turkish: 'bedel', partOfSpeech: 'n'),
      ArticleVocab(english: 'sustained', turkish: 'sürekli', partOfSpeech: 'adj'),
      ArticleVocab(english: 'unprecedented', turkish: 'benzeri görülmemiş', partOfSpeech: 'adj'),
      ArticleVocab(english: 'willpower', turkish: 'irade gücü', partOfSpeech: 'n'),
      ArticleVocab(english: 'structural', turkish: 'yapısal', partOfSpeech: 'adj'),
    ],
    questions: [
      ArticleQuestion(
        question: 'The passage argues that treating obesity as a matter of personal willpower alone is ----.',
        options: [
          'the most effective strategy',
          'inadequate because it ignores structural factors',
          'supported by all researchers',
          'the only ethical approach',
        ],
        correctIndex: 1,
        explanation: 'Son cümlede yazar sadece kişisel iradeye odaklanmanın yapısal güçleri göz ardı ettiğini söylüyor.',
        questionType: 'Ana Fikir',
      ),
      ArticleQuestion(
        question: 'The word "ubiquitous" in paragraph two means ----.',
        options: ['rare', 'expensive', 'omnipresent', 'nutritious'],
        correctIndex: 2,
        explanation: '"Ubiquitous" her yerde bulunan demektir; "omnipresent" ile eşdeğerdir.',
        questionType: 'Kelime',
      ),
      ArticleQuestion(
        question: 'Which is presented as a population-level policy in the passage?',
        options: [
          'genetic testing for children',
          'taxation of sugar-sweetened beverages',
          'mandatory gym memberships',
          'banning all restaurants',
        ],
        correctIndex: 1,
        explanation: 'Yazar şekerli içeceklere vergi ve çocuklara yönelik reklamların kısıtlanmasını politika örneği olarak sayıyor.',
        questionType: 'Detay',
      ),
      ArticleQuestion(
        question: 'What can be inferred about GLP-1 receptor agonists?',
        options: [
          'They cause weight gain.',
          'They have led to unprecedented weight loss results.',
          'They replace physical activity entirely.',
          'They are illegal in most countries.',
        ],
        correctIndex: 1,
        explanation: 'Metinde GLP-1 agonistlerinin "unprecedented weight loss" sağladığı belirtilmiş.',
        questionType: 'Çıkarım',
      ),
      ArticleQuestion(
        question: 'According to the passage, which of the following is often overlooked about obesity?',
        options: [
          'its link to diabetes',
          'its cardiovascular risks',
          'its psychological toll and weight-based stigma',
          'its effect on sleep',
        ],
        correctIndex: 2,
        explanation: 'Metin "less appreciated is the psychological toll" ifadesiyle bu noktayı vurgular.',
        questionType: 'Detay',
      ),
    ],
  ),

  // ─── MAKALE 8 ───
  const Article(
    id: 8,
    title: 'Telemedicine After the Pandemic',
    turkishTitle: 'Pandemi Sonrası Uzaktan Sağlık Hizmeti',
    category: 'Sağlık Sistemleri',
    difficulty: 'Kolay',
    source: 'BMJ Health & Technology',
    estimatedMinutes: 5,
    passage: '''The COVID-19 pandemic accelerated the adoption of telemedicine at a pace no policymaker could have anticipated. Within weeks, video consultations replaced in-person visits for millions of patients, and regulations that once hindered virtual care were relaxed almost overnight. Now that acute crisis has subsided, health systems around the world are reassessing the role that telemedicine should play in routine practice.

Proponents argue that telemedicine expands access, particularly for patients in rural areas or those with mobility limitations. Follow-up visits for chronic conditions such as hypertension and diabetes lend themselves well to virtual formats, and behavioral health services delivered online have shown outcomes comparable to face-to-face therapy. Additionally, telemedicine can reduce the burden of travel, time off work, and childcare arrangements, thereby increasing adherence to care.

Nevertheless, virtual care is not universally suitable. Physical examinations remain essential in many clinical scenarios, and technology gaps can exclude older adults or lower-income households, potentially widening rather than narrowing health disparities. Concerns have also been raised about diagnostic accuracy in situations where subtle physical signs may be missed on a video screen.

Going forward, a hybrid model that thoughtfully combines in-person and virtual care appears most promising. Success will depend on reimbursement policies that recognize the value of telemedicine, investments in digital infrastructure, training for clinicians in remote assessment techniques, and safeguards for privacy and data security. Handled well, telemedicine could enhance both efficiency and equity; handled poorly, it could deepen existing inequalities.''',
    turkishSummary: 'Pandemi ile hızla yaygınlaşan telemedicine kronik hasta takibi ve ruh sağlığında etkili olabilir, ancak muayene gerektiren durumlarda ve dijital erişimin sınırlı olduğu gruplarda eşitsizlik yaratabilir.',
    vocabulary: [
      ArticleVocab(english: 'accelerate', turkish: 'hızlandırmak', partOfSpeech: 'v'),
      ArticleVocab(english: 'anticipate', turkish: 'öngörmek', partOfSpeech: 'v'),
      ArticleVocab(english: 'consultation', turkish: 'muayene, danışma', partOfSpeech: 'n'),
      ArticleVocab(english: 'relax (regulations)', turkish: 'gevşetmek (kuralları)', partOfSpeech: 'v'),
      ArticleVocab(english: 'subside', turkish: 'yatışmak', partOfSpeech: 'v'),
      ArticleVocab(english: 'proponent', turkish: 'destekçi', partOfSpeech: 'n'),
      ArticleVocab(english: 'lend itself to', turkish: 'uygun olmak', partOfSpeech: 'phr'),
      ArticleVocab(english: 'adherence', turkish: 'uyum', partOfSpeech: 'n'),
      ArticleVocab(english: 'suitable', turkish: 'uygun', partOfSpeech: 'adj'),
      ArticleVocab(english: 'exclude', turkish: 'dışlamak', partOfSpeech: 'v'),
      ArticleVocab(english: 'disparity', turkish: 'eşitsizlik', partOfSpeech: 'n'),
      ArticleVocab(english: 'subtle', turkish: 'ince, sezilmesi güç', partOfSpeech: 'adj'),
      ArticleVocab(english: 'reimbursement', turkish: 'geri ödeme', partOfSpeech: 'n'),
      ArticleVocab(english: 'safeguard (n)', turkish: 'koruma önlemi', partOfSpeech: 'n'),
      ArticleVocab(english: 'equity', turkish: 'hakkaniyet', partOfSpeech: 'n'),
    ],
    questions: [
      ArticleQuestion(
        question: 'What is the author\'s overall attitude toward telemedicine?',
        options: ['fully enthusiastic', 'entirely negative', 'balanced, recognizing benefits and drawbacks', 'indifferent'],
        correctIndex: 2,
        explanation: 'Yazar hem faydaları hem de riskleri dengeli biçimde sunuyor.',
        questionType: 'Yazarın Tutumu',
      ),
      ArticleQuestion(
        question: 'According to the passage, which patients benefit most clearly from telemedicine?',
        options: [
          'patients needing surgery',
          'those requiring physical exams for new symptoms',
          'patients with chronic conditions needing follow-up and those in rural areas',
          'children with acute injuries',
        ],
        correctIndex: 2,
        explanation: 'Kronik hastalık takibi ve kırsalda yaşayanlar açıkça öne çıkarılıyor.',
        questionType: 'Detay',
      ),
      ArticleQuestion(
        question: 'The word "subside" in paragraph one is closest in meaning to ----.',
        options: ['intensify', 'diminish', 'appear', 'complicate'],
        correctIndex: 1,
        explanation: '"Subside" azalmak, yatışmak demektir; "diminish" ile eş anlamlıdır.',
        questionType: 'Kelime',
      ),
      ArticleQuestion(
        question: 'What potential downside of telemedicine is highlighted?',
        options: [
          'it eliminates the need for doctors',
          'it may deepen existing inequalities if not implemented carefully',
          'it costs the same as in-person care',
          'it always misses serious diagnoses',
        ],
        correctIndex: 1,
        explanation: 'Yazar yanlış uygulanırsa eşitsizlikleri artırabileceğini açıkça söylüyor.',
        questionType: 'Detay',
      ),
      ArticleQuestion(
        question: 'What model does the passage recommend going forward?',
        options: [
          'a purely virtual model',
          'abandoning telemedicine',
          'a hybrid model combining in-person and virtual care',
          'in-person care only',
        ],
        correctIndex: 2,
        explanation: 'Son paragrafta hibrit modelin en umut verici yaklaşım olduğu vurgulanıyor.',
        questionType: 'Ana Fikir',
      ),
    ],
  ),

  // ─── MAKALE 9 ───
  const Article(
    id: 9,
    title: 'Stem Cell Therapy: Promise and Challenges',
    turkishTitle: 'Kök Hücre Tedavisi: Umut ve Zorluklar',
    category: 'Rejeneratif Tıp',
    difficulty: 'Zor',
    source: 'Cell Stem Cell',
    estimatedMinutes: 7,
    passage: '''Stem cell therapy represents one of the most exciting frontiers in modern medicine, offering the potential to repair or replace damaged tissues and organs. Stem cells are unique in their ability to self-renew and differentiate into specialised cell types, making them invaluable for regenerative medicine.

There are several types of stem cells used in research and clinical applications. Embryonic stem cells, derived from early-stage embryos, possess the greatest differentiation potential but raise significant ethical concerns. Adult stem cells, found in bone marrow and other tissues, are less controversial but have more limited plasticity. Induced pluripotent stem cells (iPSCs), created by reprogramming adult cells, combine ethical acceptability with broad differentiation capacity.

Clinical applications of stem cell therapy have expanded rapidly. Haematopoietic stem cell transplantation has long been used to treat blood cancers and immune disorders. More recently, mesenchymal stem cells have shown promise in treating conditions ranging from osteoarthritis to spinal cord injuries. However, the field faces challenges including tumour formation risk, immune rejection, and the difficulty of controlling differentiation in vivo.

Despite these obstacles, ongoing research continues to refine techniques for safer and more effective therapies. The development of personalised stem cell treatments derived from a patient\'s own cells may ultimately overcome rejection issues, bringing regenerative medicine closer to routine clinical practice.''',
    turkishSummary: 'Kök hücre tedavisi hasarlı dokuları onarma potansiyeli sunar. Embriyonik, erişkin ve iPSC türleri farklı avantajlar taşır. Tümör riski ve bağışıklık reddi gibi zorluklar devam etmektedir.',
    vocabulary: [
      ArticleVocab(english: 'frontier', turkish: 'sınır, öncü alan', partOfSpeech: 'n'),
      ArticleVocab(english: 'self-renew', turkish: 'kendini yenilemek', partOfSpeech: 'v'),
      ArticleVocab(english: 'differentiate', turkish: 'farklılaşmak', partOfSpeech: 'v'),
      ArticleVocab(english: 'invaluable', turkish: 'paha biçilmez', partOfSpeech: 'adj'),
      ArticleVocab(english: 'derive', turkish: 'elde etmek', partOfSpeech: 'v'),
      ArticleVocab(english: 'plasticity', turkish: 'esneklik', partOfSpeech: 'n'),
      ArticleVocab(english: 'reprogramming', turkish: 'yeniden programlama', partOfSpeech: 'n'),
      ArticleVocab(english: 'haematopoietic', turkish: 'kan yapıcı', partOfSpeech: 'adj'),
      ArticleVocab(english: 'mesenchymal', turkish: 'mezenkimal', partOfSpeech: 'adj'),
      ArticleVocab(english: 'osteoarthritis', turkish: 'kireçlenme', partOfSpeech: 'n'),
      ArticleVocab(english: 'tumour formation', turkish: 'tümör oluşumu', partOfSpeech: 'n'),
      ArticleVocab(english: 'in vivo', turkish: 'canlı ortamda', partOfSpeech: 'adv'),
      ArticleVocab(english: 'refine', turkish: 'geliştirmek', partOfSpeech: 'v'),
    ],
    questions: [
      ArticleQuestion(question: 'What makes stem cells unique according to the passage?', options: ['They can only form blood cells.', 'They can self-renew and differentiate into specialised cells.', 'They are found only in embryos.', 'They cannot be used in therapy.'], correctIndex: 1, explanation: 'Metin kök hücrelerin kendini yenileyebildiğini ve özelleşmiş hücrelere dönüşebildiğini belirtir.', questionType: 'Detay'),
      ArticleQuestion(question: 'Why are embryonic stem cells ethically controversial?', options: ['Because they are ineffective', 'Because they are derived from early-stage embryos', 'Because they cause cancer', 'Because they are too expensive'], correctIndex: 1, explanation: 'Metinde erken evre embriyolardan elde edildikleri için etik kaygı doğurduğu belirtilir.', questionType: 'Detay'),
      ArticleQuestion(question: 'The word "invaluable" is closest in meaning to ----.',  options: ['worthless', 'extremely valuable', 'cheap', 'temporary'], correctIndex: 1, explanation: '"Invaluable" = paha biçilmez, son derece değerli.', questionType: 'Kelime'),
      ArticleQuestion(question: 'What can be inferred about iPSCs?', options: ['They are less useful than adult stem cells.', 'They combine ethical benefits with broad differentiation.', 'They can only become blood cells.', 'They are banned worldwide.'], correctIndex: 1, explanation: 'iPSC\'ler etik kabul edilebilirliği geniş farklılaşma kapasitesiyle birleştirir.', questionType: 'Çıkarım'),
      ArticleQuestion(question: 'What is the main idea of the passage?', options: ['Stem cells are dangerous and should be banned.', 'Stem cell therapy offers great promise but faces significant challenges.', 'Only embryonic stem cells are useful.', 'Stem cell research has been abandoned.'], correctIndex: 1, explanation: 'Metin hem umut hem zorlukları dengeli biçimde sunar.', questionType: 'Ana Fikir'),
    ],
  ),

  // ─── MAKALE 10 ───
  const Article(
    id: 10,
    title: 'Cardiovascular Disease Prevention',
    turkishTitle: 'Kalp Damar Hastalıkları Önleme',
    category: 'Kardiyoloji',
    difficulty: 'Orta',
    source: 'European Heart Journal',
    estimatedMinutes: 6,
    passage: '''Cardiovascular disease (CVD) remains the leading cause of death globally, accounting for approximately 17.9 million lives lost each year. However, a substantial proportion of CVD is preventable through modification of lifestyle risk factors and appropriate medical management.

The primary modifiable risk factors include hypertension, dyslipidaemia, smoking, physical inactivity, unhealthy diet, obesity, and diabetes. Of these, hypertension is the single greatest contributor to CVD mortality. Controlling blood pressure through dietary changes, regular exercise, and medication when necessary can dramatically reduce the risk of stroke and heart attack.

Smoking cessation provides perhaps the most immediate benefit; within a year of quitting, the excess cardiovascular risk drops by approximately 50 percent. Regular physical activity of at least 150 minutes per week at moderate intensity reduces CVD risk by 20-30 percent. The Mediterranean diet, rich in fruits, vegetables, whole grains, fish, and olive oil, has consistently demonstrated cardioprotective effects.

Secondary prevention in patients with established CVD involves antiplatelet therapy, statins, and management of comorbidities. Cardiac rehabilitation programmes combining exercise, education, and psychological support have been shown to reduce mortality by up to 25 percent in post-myocardial infarction patients.''',
    turkishSummary: 'Kalp damar hastalıkları dünyada en çok ölüme neden olur ama büyük ölçüde önlenebilir. Hipertansiyon kontrolü, sigara bırakma, egzersiz ve Akdeniz diyeti temel önleyici yaklaşımlardır.',
    vocabulary: [
      ArticleVocab(english: 'modifiable', turkish: 'değiştirilebilir', partOfSpeech: 'adj'),
      ArticleVocab(english: 'dyslipidaemia', turkish: 'kan yağı bozukluğu', partOfSpeech: 'n'),
      ArticleVocab(english: 'cessation', turkish: 'bırakma, durma', partOfSpeech: 'n'),
      ArticleVocab(english: 'cardioprotective', turkish: 'kalp koruyucu', partOfSpeech: 'adj'),
      ArticleVocab(english: 'antiplatelet', turkish: 'kan sulandırıcı', partOfSpeech: 'adj'),
      ArticleVocab(english: 'statin', turkish: 'kolesterol ilacı', partOfSpeech: 'n'),
      ArticleVocab(english: 'comorbidity', turkish: 'eşlik eden hastalık', partOfSpeech: 'n'),
      ArticleVocab(english: 'rehabilitation', turkish: 'rehabilitasyon', partOfSpeech: 'n'),
      ArticleVocab(english: 'myocardial infarction', turkish: 'kalp krizi', partOfSpeech: 'n'),
      ArticleVocab(english: 'proportion', turkish: 'oran', partOfSpeech: 'n'),
      ArticleVocab(english: 'dramatically', turkish: 'çarpıcı biçimde', partOfSpeech: 'adv'),
      ArticleVocab(english: 'established', turkish: 'mevcut, yerleşmiş', partOfSpeech: 'adj'),
    ],
    questions: [
      ArticleQuestion(question: 'According to the passage, what is the leading cause of death globally?', options: ['Cancer', 'Cardiovascular disease', 'Diabetes', 'Infectious diseases'], correctIndex: 1, explanation: 'Metinde KVH\'nin dünya genelinde en çok ölüme neden olduğu belirtilir.', questionType: 'Detay'),
      ArticleQuestion(question: 'The word "cessation" is closest in meaning to ----.',  options: ['beginning', 'stopping', 'increasing', 'enjoying'], correctIndex: 1, explanation: '"Cessation" = bırakma, durma; "stopping" ile eşdeğerdir.', questionType: 'Kelime'),
      ArticleQuestion(question: 'How much does smoking cessation reduce excess cardiovascular risk within a year?', options: ['10%', '25%', '50%', '100%'], correctIndex: 2, explanation: 'Metinde bir yıl içinde fazla riskin yaklaşık %50 düştüğü belirtilir.', questionType: 'Detay'),
      ArticleQuestion(question: 'What can be inferred about the Mediterranean diet?', options: ['It increases CVD risk.', 'It has proven heart-protective effects.', 'It is only useful for diabetics.', 'It replaces all medication.'], correctIndex: 1, explanation: '"consistently demonstrated cardioprotective effects" ifadesi kanıtlanmış kalp koruyucu etkileri ima eder.', questionType: 'Çıkarım'),
      ArticleQuestion(question: 'The author\'s primary purpose is to ----.',  options: ['promote a specific drug', 'explain how CVD can be prevented', 'criticise modern medicine', 'describe a single case study'], correctIndex: 1, explanation: 'Metnin amacı KVH\'nin nasıl önlenebileceğini kapsamlı biçimde açıklamaktır.', questionType: 'Yazarın Tutumu'),
    ],
  ),

  // ─── MAKALE 11 ───
  const Article(
    id: 11,
    title: 'Genetics and Personalized Medicine',
    turkishTitle: 'Genetik ve Kişiselleştirilmiş Tıp',
    category: 'Genetik',
    difficulty: 'Zor',
    source: 'Nature Genetics',
    estimatedMinutes: 7,
    passage: '''The completion of the Human Genome Project in 2003 ushered in an era of unprecedented opportunity for personalized medicine. By understanding the genetic variations that influence drug metabolism, disease susceptibility, and treatment response, clinicians can tailor therapies to individual patients rather than relying on one-size-fits-all approaches.

Pharmacogenomics, the study of how genes affect a person\'s response to drugs, is perhaps the most immediately practical application. Genetic testing can now identify patients who metabolise certain medications too rapidly or too slowly, enabling dose adjustments that improve efficacy and reduce adverse reactions. For example, variations in the CYP2C19 gene influence the activation of clopidogrel, a widely prescribed antiplatelet agent.

Beyond pharmacology, genome-wide association studies have identified thousands of genetic variants linked to complex diseases such as breast cancer, coronary artery disease, and schizophrenia. Polygenic risk scores, which aggregate the effects of many variants, are being developed to stratify patients by disease risk, potentially enabling earlier and more targeted interventions.

However, translating genomic discoveries into clinical practice presents challenges. Issues of data privacy, equitable access across socioeconomic groups, and the limited predictive power of genetics for many multifactorial diseases remain significant barriers. Nevertheless, the trajectory toward genomically informed healthcare appears irreversible.''',
    turkishSummary: 'İnsan Genom Projesi kişiselleştirilmiş tıbbın önünü açtı. Farmakogenomik ilaç dozlarını kişiye göre ayarlamaya olanak tanır. Poligenik risk skorları hastalık riskini katmanlaştırabilir ama gizlilik ve erişim sorunları devam eder.',
    vocabulary: [
      ArticleVocab(english: 'usher in', turkish: 'başlatmak', partOfSpeech: 'phr'),
      ArticleVocab(english: 'susceptibility', turkish: 'yatkınlık', partOfSpeech: 'n'),
      ArticleVocab(english: 'tailor', turkish: 'uyarlamak', partOfSpeech: 'v'),
      ArticleVocab(english: 'pharmacogenomics', turkish: 'farmakogenomik', partOfSpeech: 'n'),
      ArticleVocab(english: 'metabolise', turkish: 'metabolize etmek', partOfSpeech: 'v'),
      ArticleVocab(english: 'efficacy', turkish: 'etkinlik', partOfSpeech: 'n'),
      ArticleVocab(english: 'aggregate', turkish: 'toplamak', partOfSpeech: 'v'),
      ArticleVocab(english: 'stratify', turkish: 'katmanlaştırmak', partOfSpeech: 'v'),
      ArticleVocab(english: 'equitable', turkish: 'adil', partOfSpeech: 'adj'),
      ArticleVocab(english: 'multifactorial', turkish: 'çok etkenli', partOfSpeech: 'adj'),
      ArticleVocab(english: 'trajectory', turkish: 'gidişat', partOfSpeech: 'n'),
      ArticleVocab(english: 'irreversible', turkish: 'geri dönüşü olmayan', partOfSpeech: 'adj'),
    ],
    questions: [
      ArticleQuestion(question: 'What did the Human Genome Project enable?', options: ['It cured all genetic diseases.', 'It opened the era of personalized medicine.', 'It eliminated the need for drugs.', 'It replaced all surgeries.'], correctIndex: 1, explanation: 'Metin genom projesinin kişiselleştirilmiş tıp çağını başlattığını belirtir.', questionType: 'Detay'),
      ArticleQuestion(question: 'The word "tailor" in paragraph one is closest in meaning to ----.',  options: ['standardize', 'customize', 'remove', 'ignore'], correctIndex: 1, explanation: '"Tailor" burada kişiye özel uyarlamak anlamındadır.', questionType: 'Kelime'),
      ArticleQuestion(question: 'What is pharmacogenomics primarily concerned with?', options: ['How genes affect drug response', 'How to edit genes directly', 'How to clone organisms', 'How to prevent mutations'], correctIndex: 0, explanation: 'Farmakogenomik genlerin ilaç yanıtını nasıl etkilediğini inceler.', questionType: 'Detay'),
      ArticleQuestion(question: 'What barrier to personalized medicine is NOT mentioned?', options: ['Data privacy', 'Equitable access', 'Religious objections', 'Limited predictive power'], correctIndex: 2, explanation: 'Dini itirazlar metinde engel olarak belirtilmemiştir.', questionType: 'Çıkarım'),
      ArticleQuestion(question: 'The author\'s view toward genomically informed healthcare is ----.',  options: ['entirely pessimistic', 'cautiously optimistic', 'neutral and indifferent', 'sarcastically critical'], correctIndex: 1, explanation: 'Yazar zorlukları kabul ederken gidişatın geri dönüşü olmayan olduğunu belirtir; temkinli iyimserdir.', questionType: 'Yazarın Tutumu'),
    ],
  ),

  // ─── MAKALE 12 ───
  const Article(
    id: 12,
    title: 'The Gut Microbiome and Human Health',
    turkishTitle: 'Bağırsak Mikrobiyomu ve İnsan Sağlığı',
    category: 'Gastroenteroloji',
    difficulty: 'Orta',
    source: 'Nature Reviews Gastroenterology',
    estimatedMinutes: 6,
    passage: '''The human gut harbours trillions of microorganisms collectively known as the gut microbiome. Far from being passive passengers, these bacteria, fungi, and viruses play active roles in digestion, immune regulation, and even mental health through the gut-brain axis.

A diverse and balanced microbiome is associated with good health, whereas dysbiosis—an imbalance in microbial communities—has been linked to conditions ranging from inflammatory bowel disease and obesity to depression and autoimmune disorders. Diet is the single most influential factor shaping gut microbial composition; fibre-rich diets promote beneficial bacteria, while diets high in processed food and sugar encourage pathogenic species.

Emerging therapeutic strategies aim to restore microbial balance. Probiotics (live beneficial bacteria) and prebiotics (substances that feed them) are widely available, though evidence for their efficacy varies. Faecal microbiota transplantation (FMT) has proven remarkably effective for recurrent Clostridioides difficile infections and is being investigated for other conditions.

Research into the microbiome is still in its early stages, and many questions remain unanswered, including how best to define a "healthy" microbiome and how individual variation affects treatment outcomes. Nonetheless, the growing understanding of host-microbe interactions holds enormous promise for the future of preventive and therapeutic medicine.''',
    turkishSummary: 'Bağırsak mikrobiyomu sindirim, bağışıklık ve ruh sağlığını etkiler. Disbiyoz birçok hastalıkla ilişkilendirilir. Diyet en belirleyici faktördür. Probiyotikler ve dışkı nakli umut verici tedavi yaklaşımlarıdır.',
    vocabulary: [
      ArticleVocab(english: 'harbour', turkish: 'barındırmak', partOfSpeech: 'v'),
      ArticleVocab(english: 'dysbiosis', turkish: 'disbiyoz', partOfSpeech: 'n'),
      ArticleVocab(english: 'gut-brain axis', turkish: 'bağırsak-beyin ekseni', partOfSpeech: 'n'),
      ArticleVocab(english: 'fibre-rich', turkish: 'lifli', partOfSpeech: 'adj'),
      ArticleVocab(english: 'pathogenic', turkish: 'hastalık yapıcı', partOfSpeech: 'adj'),
      ArticleVocab(english: 'probiotic', turkish: 'probiyotik', partOfSpeech: 'n'),
      ArticleVocab(english: 'prebiotic', turkish: 'prebiyotik', partOfSpeech: 'n'),
      ArticleVocab(english: 'faecal', turkish: 'dışkıyla ilgili', partOfSpeech: 'adj'),
      ArticleVocab(english: 'recurrent', turkish: 'tekrarlayan', partOfSpeech: 'adj'),
      ArticleVocab(english: 'host-microbe', turkish: 'konak-mikrop', partOfSpeech: 'adj'),
      ArticleVocab(english: 'preventive', turkish: 'önleyici', partOfSpeech: 'adj'),
      ArticleVocab(english: 'composition', turkish: 'bileşim', partOfSpeech: 'n'),
    ],
    questions: [
      ArticleQuestion(question: 'What role does the gut microbiome play according to the passage?', options: ['It only aids digestion.', 'It is involved in digestion, immunity, and mental health.', 'It has no known function.', 'It causes only diseases.'], correctIndex: 1, explanation: 'Metin sindirim, bağışıklık düzenlemesi ve ruh sağlığı rollerini sayar.', questionType: 'Detay'),
      ArticleQuestion(question: 'The word "harbour" is closest in meaning to ----.',  options: ['destroy', 'contain', 'reject', 'reduce'], correctIndex: 1, explanation: '"Harbour" burada barındırmak/içermek anlamındadır.', questionType: 'Kelime'),
      ArticleQuestion(question: 'What is the most influential factor shaping gut microbial composition?', options: ['Genetics', 'Diet', 'Age', 'Gender'], correctIndex: 1, explanation: 'Metin diyetin tek başına en etkili faktör olduğunu belirtir.', questionType: 'Detay'),
      ArticleQuestion(question: 'What can be inferred about FMT?', options: ['It is ineffective.', 'It works well for C. difficile and may help other conditions.', 'It is banned globally.', 'It only helps digestion.'], correctIndex: 1, explanation: 'FMT C. difficile için etkili ve diğer durumlar için araştırılıyor.', questionType: 'Çıkarım'),
      ArticleQuestion(question: 'The author\'s overall tone is ----.',  options: ['dismissive', 'hopeful but acknowledges unknowns', 'entirely negative', 'sarcastic'], correctIndex: 1, explanation: 'Yazar umut verici olduğunu söylerken birçok sorunun yanıtlanmadığını kabul eder.', questionType: 'Yazarın Tutumu'),
    ],
  ),
  // MAKALE 13-20 aşağıda
  ...articlesExtra,
];
