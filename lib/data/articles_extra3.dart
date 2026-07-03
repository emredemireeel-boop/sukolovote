import 'articles_data.dart';

final List<Article> articlesExtra3 = [
  // ═══════════════════════════════════════════════════════
  // MAKALE 41 — ADLİ TIP
  // ═══════════════════════════════════════════════════════
  const Article(
    id: 41,
    title: 'Forensic Pathology: Determining the Cause and Manner of Death',
    turkishTitle: 'Adli Patoloji: Ölüm Nedeninin ve Şeklinin Belirlenmesi',
    category: 'Adli Tıp',
    difficulty: 'Zor',
    source: 'American Journal of Forensic Medicine and Pathology',
    estimatedMinutes: 8,
    passage: '''Forensic pathology is a specialized branch of medicine that applies the principles of pathology and other medical sciences to questions of legal relevance. Forensic pathologists are physicians who perform autopsies to determine the cause and manner of death, particularly in cases where death occurs under suspicious, unexpected, or violent circumstances. Their findings often serve as critical evidence in criminal investigations and judicial proceedings.

The autopsy, also known as a postmortem examination, represents the cornerstone of forensic pathology. During an autopsy, the pathologist conducts a systematic external and internal examination of the body. The external examination documents injuries such as gunshot wounds, stab marks, ligature marks, and signs of blunt force trauma. The internal examination involves the dissection and analysis of major organ systems, with particular attention to the cardiovascular, respiratory, and central nervous systems. Toxicological samples including blood, urine, vitreous humor, and liver tissue are routinely collected to detect drugs, poisons, or alcohol that may have contributed to death.

One of the most critical distinctions in forensic pathology is between the cause of death and the manner of death. The cause of death refers to the disease, injury, or physiological mechanism that directly led to the cessation of life — for example, a cerebral hemorrhage or myocardial infarction. The manner of death, conversely, classifies the circumstances into one of five categories: natural, accident, suicide, homicide, or undetermined. This classification carries profound legal implications, as a ruling of homicide may trigger criminal prosecution.

Estimating the postmortem interval — the time elapsed since death — is another fundamental task. Forensic pathologists rely on indicators such as rigor mortis (stiffening of muscles), livor mortis (gravitational pooling of blood), algor mortis (cooling of the body), and the progression of decomposition. Advanced techniques including entomological analysis, which examines insect colonization patterns, and vitreous potassium levels provide additional precision, though no single method can determine the exact time of death with absolute certainty.''',
    turkishSummary: 'Adli patoloji, ölüm nedenini ve şeklini belirlemek için otopsi yapan tıp dalıdır. Ölüm sebebi (hastalık/yaralanma) ile ölüm şekli (doğal, kaza, intihar, cinayet, belirsiz) ayrımı hukuki açıdan kritiktir. Ölüm sonrası süre tahmini rigor mortis, livor mortis ve algor mortis gibi göstergelerle yapılır.',
    vocabulary: [
      ArticleVocab(english: 'forensic pathology', turkish: 'adli patoloji', partOfSpeech: 'n', sampleSentence: 'Forensic pathology plays a crucial role in criminal investigations.'),
      ArticleVocab(english: 'autopsy', turkish: 'otopsi', partOfSpeech: 'n', sampleSentence: 'An autopsy was performed to determine the cause of death.'),
      ArticleVocab(english: 'postmortem', turkish: 'ölüm sonrası', partOfSpeech: 'adj'),
      ArticleVocab(english: 'ligature marks', turkish: 'bağ/ip izleri', partOfSpeech: 'n'),
      ArticleVocab(english: 'blunt force trauma', turkish: 'künt travma', partOfSpeech: 'n'),
      ArticleVocab(english: 'dissection', turkish: 'diseksiyon, kesip inceleme', partOfSpeech: 'n'),
      ArticleVocab(english: 'toxicological', turkish: 'toksikolojik', partOfSpeech: 'adj'),
      ArticleVocab(english: 'vitreous humor', turkish: 'camsı sıvı (göz)', partOfSpeech: 'n'),
      ArticleVocab(english: 'cessation', turkish: 'durma, son bulma', partOfSpeech: 'n'),
      ArticleVocab(english: 'cerebral hemorrhage', turkish: 'beyin kanaması', partOfSpeech: 'n'),
      ArticleVocab(english: 'homicide', turkish: 'cinayet', partOfSpeech: 'n'),
      ArticleVocab(english: 'prosecution', turkish: 'kovuşturma', partOfSpeech: 'n'),
      ArticleVocab(english: 'rigor mortis', turkish: 'ölüm sertliği', partOfSpeech: 'n'),
      ArticleVocab(english: 'livor mortis', turkish: 'ölüm morluğu', partOfSpeech: 'n'),
      ArticleVocab(english: 'algor mortis', turkish: 'ölüm soğuması', partOfSpeech: 'n'),
      ArticleVocab(english: 'decomposition', turkish: 'çürüme', partOfSpeech: 'n'),
      ArticleVocab(english: 'entomological', turkish: 'entomolojik (böcek bilimi)', partOfSpeech: 'adj'),
    ],
    questions: [
      ArticleQuestion(question: 'What is the primary role of a forensic pathologist according to the passage?', options: ['To treat patients with trauma injuries', 'To perform autopsies and determine the cause and manner of death', 'To testify only in civil court cases', 'To develop new surgical techniques'], correctIndex: 1, explanation: 'Adli patologların otopsi yaparak ölüm nedenini ve şeklini belirlediği ilk paragrafta açıkça belirtilmiştir.', questionType: 'Detay'),
      ArticleQuestion(question: 'According to the passage, what is the difference between the "cause of death" and the "manner of death"?', options: ['They mean the same thing.', 'Cause refers to the disease or injury; manner classifies the circumstances into categories like homicide or suicide.', 'Cause is about how long ago death occurred; manner is about the weapon used.', 'Only the manner of death is relevant in court.'], correctIndex: 1, explanation: 'Ölüm sebebi hastalık/yaralanmayı, ölüm şekli ise koşulları (doğal, kaza, intihar, cinayet, belirsiz) sınıflandırır.', questionType: 'Detay'),
      ArticleQuestion(question: 'The word "cessation" in paragraph three is closest in meaning to ----.', options: ['acceleration', 'continuation', 'stopping', 'improvement'], correctIndex: 2, explanation: '"Cessation" durma, son bulma anlamına gelir. "Stopping" ile eşanlamlıdır.', questionType: 'Kelime'),
      ArticleQuestion(question: 'It can be inferred from the passage that estimating the time of death ----.', options: ['is a straightforward process with a single reliable method', 'involves multiple indicators but cannot be determined with absolute certainty', 'is only done using insect analysis', 'is no longer necessary in modern forensic medicine'], correctIndex: 1, explanation: '"No single method can determine the exact time of death with absolute certainty" ifadesinden çıkarılabilir.', questionType: 'Çıkarım'),
      ArticleQuestion(question: 'Which of the following best expresses the main idea of the passage?', options: ['Forensic pathology is only useful in homicide cases.', 'Forensic pathology uses autopsies and scientific methods to determine death circumstances for legal purposes.', 'The manner of death is always easily determined.', 'Toxicology is the most important part of forensic medicine.'], correctIndex: 1, explanation: 'Makale adli patolojinin otopsi ve bilimsel yöntemlerle ölüm koşullarını hukuki amaçlarla belirlediğini anlatır.', questionType: 'Ana Fikir'),
    ],
  ),

  // ═══════════════════════════════════════════════════════
  // MAKALE 42 — ADLİ TIP
  // ═══════════════════════════════════════════════════════
  const Article(
    id: 42,
    title: 'DNA Profiling in Criminal Investigations',
    turkishTitle: 'Ceza Soruşturmalarında DNA Profilleme',
    category: 'Adli Tıp',
    difficulty: 'Zor',
    source: 'Forensic Science International: Genetics',
    estimatedMinutes: 8,
    passage: '''Since its introduction in the mid-1980s by Sir Alec Jeffreys, DNA profiling has transformed criminal justice systems worldwide, providing an unparalleled degree of certainty in linking suspects to crime scenes or exonerating the wrongly accused. The technique exploits the fact that, with the exception of identical twins, no two individuals share the same DNA sequence, making it a powerful tool for personal identification.

Modern forensic DNA analysis relies primarily on short tandem repeat (STR) typing, which examines specific regions of the genome where short nucleotide sequences are repeated in tandem. The number of repeats at each locus varies between individuals, and the combined profile across 20 or more loci yields a statistical probability of a random match that can exceed one in several billion. This extraordinary discriminating power has made STR typing the gold standard in forensic genetics.

The sensitivity of contemporary techniques is remarkable. Polymerase chain reaction (PCR) amplification enables profiling from minute quantities of biological material — a single hair root, a trace of saliva on a cigarette butt, or epithelial cells transferred through touch. However, this sensitivity also introduces challenges: contamination from extraneous DNA, secondary transfer (where DNA is passed indirectly from person A to person B to an object), and degradation in harsh environmental conditions can complicate interpretation.

DNA databases, such as the Combined DNA Index System (CODIS) in the United States, have further expanded the utility of forensic genetics by enabling searches against millions of stored profiles. Cold cases that remained unsolved for decades have been cracked through database hits or, more recently, through investigative genetic genealogy, which uses public genealogy databases to identify suspects through distant familial relationships. While these developments have undeniably advanced justice, they also raise profound ethical concerns regarding privacy, informed consent, and the potential for genetic surveillance.''',
    turkishSummary: 'DNA profilleme, suç mahallindeki biyolojik kanıtlarla şüphelileri eşleştirmede en güçlü araçtır. STR tiplemesi altın standartken, PCR amplifikasyonu çok küçük örneklerden bile profil çıkarmayı mümkün kılar. DNA veritabanları soğuk davaları çözmede devrim yaratmıştır.',
    vocabulary: [
      ArticleVocab(english: 'DNA profiling', turkish: 'DNA profilleme', partOfSpeech: 'n'),
      ArticleVocab(english: 'exonerate', turkish: 'aklamak, beraat ettirmek', partOfSpeech: 'v'),
      ArticleVocab(english: 'short tandem repeat', turkish: 'kısa ardışık tekrar (STR)', partOfSpeech: 'n'),
      ArticleVocab(english: 'locus (loci)', turkish: 'lokus (konumlar)', partOfSpeech: 'n'),
      ArticleVocab(english: 'discriminating power', turkish: 'ayırt edici güç', partOfSpeech: 'n'),
      ArticleVocab(english: 'amplification', turkish: 'çoğaltma', partOfSpeech: 'n'),
      ArticleVocab(english: 'epithelial cells', turkish: 'epitel hücreleri', partOfSpeech: 'n'),
      ArticleVocab(english: 'contamination', turkish: 'kontaminasyon, bulaşma', partOfSpeech: 'n'),
      ArticleVocab(english: 'degradation', turkish: 'bozunma', partOfSpeech: 'n'),
      ArticleVocab(english: 'cold case', turkish: 'soğuk dava (çözülmemiş)', partOfSpeech: 'n'),
      ArticleVocab(english: 'genealogy', turkish: 'soy bilimi', partOfSpeech: 'n'),
      ArticleVocab(english: 'surveillance', turkish: 'gözetim', partOfSpeech: 'n'),
      ArticleVocab(english: 'unparalleled', turkish: 'eşsiz, benzersiz', partOfSpeech: 'adj'),
      ArticleVocab(english: 'minute (adj)', turkish: 'çok küçük', partOfSpeech: 'adj'),
    ],
    questions: [
      ArticleQuestion(question: 'What makes DNA profiling so powerful for personal identification?', options: ['Everyone has identical DNA.', 'Except for identical twins, no two people share the same DNA sequence.', 'DNA cannot be found at crime scenes.', 'STR typing only works on blood samples.'], correctIndex: 1, explanation: 'Tek yumurta ikizleri hariç hiçbir iki bireyin aynı DNA dizisini paylaşmadığı belirtilmiştir.', questionType: 'Detay'),
      ArticleQuestion(question: 'The word "exonerating" in the first paragraph is closest in meaning to ----.', options: ['convicting', 'accusing', 'clearing of blame', 'investigating'], correctIndex: 2, explanation: '"Exonerate" suçsuzluğunu kanıtlamak, aklamak anlamına gelir.', questionType: 'Kelime'),
      ArticleQuestion(question: 'What challenge does PCR sensitivity introduce?', options: ['It makes DNA analysis slower.', 'It can lead to contamination and secondary transfer issues.', 'It requires large quantities of biological material.', 'It only works on fresh samples.'], correctIndex: 1, explanation: 'PCR\'ın yüksek hassasiyeti kontaminasyon ve dolaylı transfer sorunlarına yol açabilir.', questionType: 'Detay'),
      ArticleQuestion(question: 'It can be inferred that investigative genetic genealogy ----.', options: ['is universally accepted without controversy', 'raises ethical concerns about privacy and consent', 'is the only method used to solve cold cases', 'has replaced STR typing entirely'], correctIndex: 1, explanation: 'Son paragrafta gizlilik, onam ve genetik gözetim konularında ciddi etik kaygılar dile getirilmiştir.', questionType: 'Çıkarım'),
      ArticleQuestion(question: 'The author\'s attitude toward DNA databases can best be described as ----.', options: ['entirely negative', 'balanced, acknowledging both benefits and ethical concerns', 'enthusiastically supportive without reservations', 'indifferent'], correctIndex: 1, explanation: 'Yazar hem adalete katkıyı hem de etik kaygıları dengeli biçimde sunmaktadır.', questionType: 'Yazarın Tutumu'),
    ],
  ),

  // ═══════════════════════════════════════════════════════
  // MAKALE 43 — ADLİ TIP
  // ═══════════════════════════════════════════════════════
  const Article(
    id: 43,
    title: 'Forensic Toxicology: Detecting Poisons and Drugs in the Deceased',
    turkishTitle: 'Adli Toksikoloji: Ölülerde Zehir ve İlaç Tespiti',
    category: 'Adli Tıp',
    difficulty: 'Zor',
    source: 'Journal of Analytical Toxicology',
    estimatedMinutes: 7,
    passage: '''Forensic toxicology occupies a critical intersection between analytical chemistry, pharmacology, and the law. Its principal objective is to identify and quantify drugs, poisons, and other potentially harmful substances in biological specimens obtained during medicolegal death investigations. The findings of a forensic toxicologist frequently determine whether a death is classified as an overdose, a poisoning homicide, or a natural death with incidental drug use.

The analytical workflow begins with specimen selection. Blood, urine, vitreous humor, bile, hair, and liver tissue each offer distinct advantages depending on the suspected substance and the postmortem interval. Blood provides information about drug concentrations at or near the time of death, whereas hair analysis can reveal chronic drug exposure spanning months. Postmortem redistribution — the phenomenon whereby drug concentrations change after death due to autolysis and diffusion — complicates interpretation and necessitates the collection of samples from multiple sites.

Instrumental methods have advanced dramatically. Immunoassay-based screening tests provide rapid preliminary results, while confirmation and quantitation rely on chromatographic techniques coupled with mass spectrometry, particularly liquid chromatography–tandem mass spectrometry (LC-MS/MS). These instruments can detect substances at nanogram-per-milliliter concentrations, enabling the identification of novel psychoactive substances, designer drugs, and trace levels of toxins that earlier technology would have missed entirely.

Interpreting toxicological results in a postmortem context demands specialized expertise. A forensic toxicologist must consider pharmacokinetics, tolerance, postmortem redistribution, and the possibility of polydrug interactions. A blood alcohol concentration that would be lethal for a naïve individual might be survivable in a chronic alcoholic, illustrating the danger of applying simple numerical thresholds without clinical context. Ultimately, forensic toxicology bridges the gap between laboratory science and courtroom testimony, providing crucial evidence that can shape the outcome of criminal and civil proceedings.''',
    turkishSummary: 'Adli toksikoloji ölüm sonrası biyolojik örneklerde ilaç ve zehir tespiti yapar. Kan, idrar, saç ve karaciğer dokusu farklı bilgiler sunar. LC-MS/MS gibi ileri teknikler nanogram düzeyinde madde tespiti sağlar. Sonuçların yorumlanması farmakokinetik ve tolerans bilgisi gerektirir.',
    vocabulary: [
      ArticleVocab(english: 'forensic toxicology', turkish: 'adli toksikoloji', partOfSpeech: 'n'),
      ArticleVocab(english: 'quantify', turkish: 'nicelleştirmek, miktar belirlemek', partOfSpeech: 'v'),
      ArticleVocab(english: 'specimen', turkish: 'numune, örnek', partOfSpeech: 'n'),
      ArticleVocab(english: 'medicolegal', turkish: 'tıbbi-hukuki', partOfSpeech: 'adj'),
      ArticleVocab(english: 'overdose', turkish: 'aşırı doz', partOfSpeech: 'n'),
      ArticleVocab(english: 'autolysis', turkish: 'otoliz (kendi kendine erime)', partOfSpeech: 'n'),
      ArticleVocab(english: 'immunoassay', turkish: 'immünoassay (bağışıklık testi)', partOfSpeech: 'n'),
      ArticleVocab(english: 'chromatographic', turkish: 'kromatografik', partOfSpeech: 'adj'),
      ArticleVocab(english: 'mass spectrometry', turkish: 'kütle spektrometrisi', partOfSpeech: 'n'),
      ArticleVocab(english: 'nanogram', turkish: 'nanogram', partOfSpeech: 'n'),
      ArticleVocab(english: 'pharmacokinetics', turkish: 'farmakokinetik', partOfSpeech: 'n'),
      ArticleVocab(english: 'tolerance', turkish: 'tolerans, dayanıklılık', partOfSpeech: 'n'),
      ArticleVocab(english: 'polydrug', turkish: 'çoklu ilaç', partOfSpeech: 'adj'),
      ArticleVocab(english: 'threshold', turkish: 'eşik değer', partOfSpeech: 'n'),
      ArticleVocab(english: 'testimony', turkish: 'tanıklık, ifade', partOfSpeech: 'n'),
    ],
    questions: [
      ArticleQuestion(question: 'What is the principal objective of forensic toxicology?', options: ['To develop new drugs', 'To identify and quantify harmful substances in biological specimens during death investigations', 'To prescribe medication to patients', 'To manufacture laboratory equipment'], correctIndex: 1, explanation: 'İlk paragrafta adli toksikolojinin biyolojik örneklerde ilaç ve zehir tespiti yaptığı belirtilmiştir.', questionType: 'Ana Fikir'),
      ArticleQuestion(question: 'Why is hair analysis useful in forensic toxicology?', options: ['It shows drug concentrations at the exact time of death.', 'It can reveal chronic drug exposure spanning months.', 'It is the only specimen collected during autopsy.', 'It eliminates the need for blood testing.'], correctIndex: 1, explanation: 'Saç analizinin aylarca süren kronik madde kullanımını ortaya koyabildiği belirtilmiştir.', questionType: 'Detay'),
      ArticleQuestion(question: 'The word "necessitates" in paragraph two is closest in meaning to ----.', options: ['eliminates', 'prevents', 'requires', 'delays'], correctIndex: 2, explanation: '"Necessitate" zorunlu kılmak, gerektirmek anlamına gelir.', questionType: 'Kelime'),
      ArticleQuestion(question: 'Why might the same blood alcohol level have different effects on different individuals?', options: ['Because alcohol is always lethal.', 'Because chronic alcoholics develop tolerance, making simple numerical thresholds misleading.', 'Because blood alcohol is not measurable.', 'Because all people have identical metabolism.'], correctIndex: 1, explanation: 'Kronik alkoliklerin tolerans geliştirmesi nedeniyle basit eşik değerlerinin yanıltıcı olabileceği belirtilmiştir.', questionType: 'Çıkarım'),
      ArticleQuestion(question: 'What does "postmortem redistribution" refer to?', options: ['The movement of the body after death', 'Drug concentration changes after death due to autolysis and diffusion', 'The process of embalming', 'The distribution of autopsy reports'], correctIndex: 1, explanation: 'Ölüm sonrası otoliz ve difüzyon nedeniyle ilaç konsantrasyonlarının değişmesi olarak tanımlanmıştır.', questionType: 'Detay'),
    ],
  ),

  // ═══════════════════════════════════════════════════════
  // MAKALE 44 — ADLİ TIP
  // ═══════════════════════════════════════════════════════
  const Article(
    id: 44,
    title: 'Wound Analysis in Forensic Medicine: Differentiating Injury Mechanisms',
    turkishTitle: 'Adli Tıpta Yara Analizi: Yaralanma Mekanizmalarının Ayırt Edilmesi',
    category: 'Adli Tıp',
    difficulty: 'Zor',
    source: 'Forensic Science, Medicine, and Pathology',
    estimatedMinutes: 7,
    passage: '''The systematic examination and classification of wounds is a fundamental competency in forensic medicine, providing essential information about the nature of an injury, the weapon or mechanism involved, and the circumstances surrounding a violent death or assault. A forensic physician must be able to distinguish between different wound types, as this distinction frequently determines whether an injury is consistent with the account given by a suspect or victim.

Abrasions are superficial injuries caused by friction between a rough surface and the skin. While typically not life-threatening in themselves, patterned abrasions — such as those produced by the tread of a tire or the weave of a ligature — can provide invaluable forensic evidence linking an injury to a specific object. Contusions, or bruises, result from blunt force impact that ruptures blood vessels beneath intact skin. The color evolution of a bruise, progressing from reddish-purple through green-yellow to brown before fading, was historically used to estimate injury age, although modern research has demonstrated that this approach is unreliable.

Lacerations are tears in tissue caused by blunt force that exceeds the tensile strength of the skin. They are characterized by irregular edges, bridging tissue strands, and intact hair follicles at wound margins — features that distinguish them from incised wounds. Incised wounds, produced by sharp-edged objects such as knives or glass, exhibit clean, well-defined edges, no tissue bridging, and divided hair follicles. The length of an incised wound typically exceeds its depth, whereas stab wounds penetrate deeper than they are wide on the surface.

Gunshot wounds present unique forensic challenges. The entrance wound is generally smaller and may display an abrasion collar, soot deposits, and stippling (unburned gunpowder particles embedded in the skin), the presence and pattern of which enable estimation of the firing distance. Exit wounds, by contrast, are typically larger and more irregular, lacking soot and stippling. The trajectory of the bullet through the body, documented through careful internal examination, helps reconstruct the positions of the shooter and victim — information vital for corroborating or refuting witness accounts.''',
    turkishSummary: 'Adli tıpta yara analizi, yaralanma mekanizmasını ve koşullarını belirler. Sıyrıklar, çürükler, yırtıklar ve kesik yaralar farklı özelliklere sahiptir. Ateşli silah yaralarında giriş-çıkış deliği ayrımı ve atış mesafesi tahmini kritiktir.',
    vocabulary: [
      ArticleVocab(english: 'abrasion', turkish: 'sıyrık', partOfSpeech: 'n'),
      ArticleVocab(english: 'contusion', turkish: 'çürük, kontüzyon', partOfSpeech: 'n'),
      ArticleVocab(english: 'laceration', turkish: 'yırtık yara', partOfSpeech: 'n'),
      ArticleVocab(english: 'incised wound', turkish: 'kesik yara', partOfSpeech: 'n'),
      ArticleVocab(english: 'stab wound', turkish: 'bıçak yarası', partOfSpeech: 'n'),
      ArticleVocab(english: 'gunshot wound', turkish: 'ateşli silah yarası', partOfSpeech: 'n'),
      ArticleVocab(english: 'tensile strength', turkish: 'çekme dayanımı', partOfSpeech: 'n'),
      ArticleVocab(english: 'tissue bridging', turkish: 'doku köprüleşmesi', partOfSpeech: 'n'),
      ArticleVocab(english: 'hair follicle', turkish: 'kıl kökü', partOfSpeech: 'n'),
      ArticleVocab(english: 'abrasion collar', turkish: 'sıyrık halkası', partOfSpeech: 'n'),
      ArticleVocab(english: 'stippling', turkish: 'barut tanecikleri', partOfSpeech: 'n'),
      ArticleVocab(english: 'trajectory', turkish: 'yörünge, kurşun yolu', partOfSpeech: 'n'),
      ArticleVocab(english: 'corroborate', turkish: 'doğrulamak', partOfSpeech: 'v'),
      ArticleVocab(english: 'refute', turkish: 'çürütmek', partOfSpeech: 'v'),
    ],
    questions: [
      ArticleQuestion(question: 'What is the main purpose of wound analysis in forensic medicine?', options: ['To provide first aid treatment', 'To determine the nature of an injury, the weapon involved, and the circumstances of the event', 'To perform reconstructive surgery', 'To prescribe antibiotics for wound infections'], correctIndex: 1, explanation: 'İlk paragrafta yara analizinin yaralanmanın doğası, silah ve koşulları belirlediği açıklanmıştır.', questionType: 'Ana Fikir'),
      ArticleQuestion(question: 'How can lacerations be distinguished from incised wounds?', options: ['Lacerations have clean edges while incised wounds have irregular edges.', 'Lacerations have irregular edges and tissue bridging; incised wounds have clean edges and no tissue bridging.', 'There is no difference between them.', 'Both are caused by sharp objects.'], correctIndex: 1, explanation: 'Yırtıkların düzensiz kenarlı ve doku köprüleşmeli, kesik yaraların ise düzgün kenarlı olduğu belirtilmiştir.', questionType: 'Detay'),
      ArticleQuestion(question: 'The word "corroborating" in the last paragraph is closest in meaning to ----.', options: ['contradicting', 'confirming', 'ignoring', 'creating'], correctIndex: 1, explanation: '"Corroborate" doğrulamak, desteklemek anlamına gelir.', questionType: 'Kelime'),
      ArticleQuestion(question: 'Why is the color evolution of bruises considered unreliable for dating injuries?', options: ['Because bruises never change color.', 'Because modern research has demonstrated that this approach is unreliable.', 'Because bruises always look the same.', 'Because only forensic pathologists can see bruise colors.'], correctIndex: 1, explanation: 'Modern araştırmaların çürük renginin yaş tahmininde güvenilir olmadığını gösterdiği belirtilmiştir.', questionType: 'Detay'),
      ArticleQuestion(question: 'What can be inferred about gunshot entrance and exit wounds?', options: ['Exit wounds are always smaller than entrance wounds.', 'Entrance wounds may show soot and stippling that help determine firing distance, while exit wounds lack these features.', 'Entrance and exit wounds are identical in appearance.', 'Only exit wounds contain gunpowder residue.'], correctIndex: 1, explanation: 'Giriş deliklerinin is ve barut tanecikleri gösterdiği, çıkış deliklerinin ise bunlardan yoksun olduğu belirtilmiştir.', questionType: 'Çıkarım'),
    ],
  ),

  // ═══════════════════════════════════════════════════════
  // MAKALE 45 — NÖROBİLİM
  // ═══════════════════════════════════════════════════════
  const Article(
    id: 45,
    title: 'Neuroplasticity: The Brain\'s Remarkable Ability to Rewire Itself',
    turkishTitle: 'Nöroplastisite: Beynin Kendini Yeniden Şekillendirme Yeteneği',
    category: 'Nöroloji',
    difficulty: 'Orta',
    source: 'Nature Neuroscience',
    estimatedMinutes: 7,
    passage: '''For much of the twentieth century, neuroscientists held the dogma that the adult brain was a fixed, hard-wired organ incapable of significant structural change. This view has been comprehensively overturned by decades of research demonstrating that the brain possesses a remarkable capacity for reorganization known as neuroplasticity — the ability of neural circuits to change their structure and function in response to experience, learning, and injury.

Neuroplasticity operates through several mechanisms. At the synaptic level, long-term potentiation (LTP) strengthens connections between frequently co-activated neurons, providing the cellular substrate for learning and memory. Conversely, long-term depression (LTD) weakens synapses that are infrequently used, allowing the brain to prune unnecessary connections and reallocate resources. At a larger scale, entire cortical maps can reorganize: following amputation of a finger, for instance, the cortical territory formerly devoted to that digit is gradually invaded by representations of adjacent fingers.

The clinical implications of neuroplasticity are profound. Rehabilitation after stroke, once considered futile beyond a narrow time window, has been transformed by constraint-induced movement therapy and intensive task-specific training, which exploit plastic mechanisms to reassign lost motor functions to undamaged brain regions. Similarly, cochlear implants in congenitally deaf children succeed partly because auditory cortex retains sufficient plasticity to interpret novel electrical inputs.

However, neuroplasticity is not always beneficial. Maladaptive plasticity underlies conditions such as phantom limb pain, where the brain continues to generate pain sensations from an amputated limb, and chronic pain syndromes, where repeated pain signaling sensitizes neural pathways, amplifying pain perception. Understanding when plasticity is adaptive versus maladaptive represents a frontier in neuroscience with direct implications for therapeutic intervention.''',
    turkishSummary: 'Nöroplastisite, beynin deneyime, öğrenmeye ve yaralanmaya yanıt olarak yeniden yapılanma kapasitesidir. İnme rehabilitasyonu ve koklear implantlar plastisiteden yararlanır. Ancak hayalet uzuv ağrısı gibi maladaptif plastisite de mevcuttur.',
    vocabulary: [
      ArticleVocab(english: 'neuroplasticity', turkish: 'nöroplastisite', partOfSpeech: 'n'),
      ArticleVocab(english: 'dogma', turkish: 'dogma, değişmez görüş', partOfSpeech: 'n'),
      ArticleVocab(english: 'hard-wired', turkish: 'sabit bağlantılı', partOfSpeech: 'adj'),
      ArticleVocab(english: 'long-term potentiation', turkish: 'uzun süreli güçlenme (LTP)', partOfSpeech: 'n'),
      ArticleVocab(english: 'prune', turkish: 'budamak, kırpmak', partOfSpeech: 'v'),
      ArticleVocab(english: 'cortical map', turkish: 'kortikal harita', partOfSpeech: 'n'),
      ArticleVocab(english: 'amputation', turkish: 'ampütasyon, uzuv kesimi', partOfSpeech: 'n'),
      ArticleVocab(english: 'rehabilitation', turkish: 'rehabilitasyon', partOfSpeech: 'n'),
      ArticleVocab(english: 'futile', turkish: 'beyhude, faydasız', partOfSpeech: 'adj'),
      ArticleVocab(english: 'cochlear implant', turkish: 'koklear implant', partOfSpeech: 'n'),
      ArticleVocab(english: 'congenitally', turkish: 'doğuştan', partOfSpeech: 'adv'),
      ArticleVocab(english: 'maladaptive', turkish: 'uyumsuz, zararlı', partOfSpeech: 'adj'),
      ArticleVocab(english: 'phantom limb', turkish: 'hayalet uzuv', partOfSpeech: 'n'),
      ArticleVocab(english: 'sensitize', turkish: 'duyarlılaştırmak', partOfSpeech: 'v'),
    ],
    questions: [
      ArticleQuestion(question: 'The passage is mainly about ----.', options: ['the history of neurosurgery', 'the brain\'s capacity to reorganize itself in response to experience and injury', 'how to treat all neurological diseases', 'the structure of individual neurons'], correctIndex: 1, explanation: 'Makale beynin deneyime ve yaralanmaya yanıt olarak kendini yeniden organize etme kapasitesini anlatmaktadır.', questionType: 'Ana Fikir'),
      ArticleQuestion(question: 'The word "futile" in paragraph three is closest in meaning to ----.', options: ['effective', 'pointless', 'expensive', 'rapid'], correctIndex: 1, explanation: '"Futile" beyhude, faydasız anlamına gelir.', questionType: 'Kelime'),
      ArticleQuestion(question: 'What is an example of maladaptive plasticity?', options: ['Recovery from stroke', 'Learning a new language', 'Phantom limb pain after amputation', 'Successful cochlear implant adaptation'], correctIndex: 2, explanation: 'Hayalet uzuv ağrısı maladaptif plastisitenin bir örneği olarak sunulmuştur.', questionType: 'Detay'),
      ArticleQuestion(question: 'It can be inferred that neuroplasticity ----.', options: ['is always beneficial for patients', 'can be both helpful and harmful depending on the context', 'only occurs in children', 'was well understood in the early 20th century'], correctIndex: 1, explanation: 'Makale hem yararlı (rehabilitasyon) hem de zararlı (kronik ağrı) plastisite örnekleri vermektedir.', questionType: 'Çıkarım'),
    ],
  ),

  // ═══════════════════════════════════════════════════════
  // MAKALE 46 — ORGAN NAKLİ
  // ═══════════════════════════════════════════════════════
  const Article(
    id: 46,
    title: 'Organ Transplantation: Bridging the Gap Between Supply and Demand',
    turkishTitle: 'Organ Nakli: Arz ve Talep Arasındaki Uçurum',
    category: 'Cerrahi',
    difficulty: 'Orta',
    source: 'The Lancet',
    estimatedMinutes: 7,
    passage: '''Organ transplantation stands as one of the most remarkable achievements of modern medicine, offering a lifeline to patients with end-stage organ failure for whom no alternative therapy exists. Since the first successful kidney transplant between identical twins in 1954, the field has expanded to encompass heart, liver, lung, pancreas, and intestinal transplantation, transforming formerly fatal conditions into manageable chronic diseases.

Despite extraordinary surgical and immunological advances, a persistent and widening gap between organ supply and demand remains the field's greatest challenge. In the United States alone, more than 100,000 patients currently await transplantation, yet only approximately 40,000 procedures are performed annually. This shortfall results in thousands of preventable deaths each year and has spurred interest in strategies to expand the donor pool, including the use of donation after circulatory death, split-liver techniques, and living-donor programs.

Immunological rejection continues to be a central concern. The recipient's immune system recognizes the transplanted organ as foreign and mounts an attack that, if unchecked, destroys the graft. Lifelong immunosuppressive therapy, typically involving calcineurin inhibitors, antimetabolites, and corticosteroids, is therefore essential but carries its own risks, including increased susceptibility to infections and malignancies. The quest for immune tolerance — a state in which the recipient accepts the graft without chronic immunosuppression — remains a holy grail of transplant medicine.

Emerging technologies offer tantalizing possibilities. Xenotransplantation, which involves transplanting organs from genetically modified animals (particularly pigs) into humans, has achieved landmark milestones including the first pig-to-human heart transplant. Bioengineered organs grown on decellularized scaffolds and three-dimensional bioprinting represent longer-term aspirations that could ultimately render the concept of organ shortage obsolete.''',
    turkishSummary: 'Organ nakli son evre organ yetmezliği hastalarına yaşam sunar. Arz-talep dengesizliği en büyük sorundur. İmmünosupresyon ömür boyu gereklidir. Ksenotransplantasyon ve biyomühendislik gelecek için umut vericidir.',
    vocabulary: [
      ArticleVocab(english: 'transplantation', turkish: 'nakil, transplantasyon', partOfSpeech: 'n'),
      ArticleVocab(english: 'end-stage', turkish: 'son evre', partOfSpeech: 'adj'),
      ArticleVocab(english: 'shortfall', turkish: 'açık, eksiklik', partOfSpeech: 'n'),
      ArticleVocab(english: 'spur', turkish: 'teşvik etmek', partOfSpeech: 'v'),
      ArticleVocab(english: 'rejection', turkish: 'ret, doku reddi', partOfSpeech: 'n'),
      ArticleVocab(english: 'graft', turkish: 'greft, nakledilen doku', partOfSpeech: 'n'),
      ArticleVocab(english: 'immunosuppressive', turkish: 'bağışıklık baskılayıcı', partOfSpeech: 'adj'),
      ArticleVocab(english: 'susceptibility', turkish: 'hassasiyet, yatkınlık', partOfSpeech: 'n'),
      ArticleVocab(english: 'xenotransplantation', turkish: 'ksenotransplantasyon (türler arası nakil)', partOfSpeech: 'n'),
      ArticleVocab(english: 'decellularized', turkish: 'hücreden arındırılmış', partOfSpeech: 'adj'),
      ArticleVocab(english: 'scaffold', turkish: 'iskelet, yapı iskeleti', partOfSpeech: 'n'),
      ArticleVocab(english: 'obsolete', turkish: 'demode, kullanım dışı', partOfSpeech: 'adj'),
    ],
    questions: [
      ArticleQuestion(question: 'What is the greatest challenge in organ transplantation according to the passage?', options: ['Surgical technique', 'The gap between organ supply and demand', 'Cost of surgery', 'Patient age limitations'], correctIndex: 1, explanation: 'Organ arz-talep dengesizliğinin alanın en büyük zorluğu olduğu açıkça belirtilmiştir.', questionType: 'Ana Fikir'),
      ArticleQuestion(question: 'The word "obsolete" in the last paragraph means ----.', options: ['essential', 'outdated/no longer needed', 'expensive', 'common'], correctIndex: 1, explanation: '"Obsolete" artık gerekli olmayan, modası geçmiş anlamına gelir.', questionType: 'Kelime'),
      ArticleQuestion(question: 'Why is lifelong immunosuppressive therapy necessary after transplantation?', options: ['To prevent the body from rejecting the transplanted organ', 'To strengthen the immune system', 'To cure the original disease', 'To reduce pain after surgery'], correctIndex: 0, explanation: 'Alıcının bağışıklık sistemi nakledilen organı yabancı olarak tanıyıp saldırdığı için sürekli baskılama gerekir.', questionType: 'Detay'),
      ArticleQuestion(question: 'It can be inferred that xenotransplantation ----.', options: ['is widely available in all hospitals', 'is an experimental approach involving organs from animals', 'has completely solved the organ shortage', 'is only used for kidney transplants'], correctIndex: 1, explanation: 'Genetik modifiye hayvanlardan (özellikle domuzlardan) organ nakli deneysel bir yaklaşımdır.', questionType: 'Çıkarım'),
    ],
  ),

  // ═══════════════════════════════════════════════════════
  // MAKALE 47 — EPİDEMİYOLOJİ
  // ═══════════════════════════════════════════════════════
  const Article(
    id: 47,
    title: 'Epidemiological Surveillance in the Age of Emerging Infectious Diseases',
    turkishTitle: 'Yeni Ortaya Çıkan Enfeksiyon Hastalıkları Çağında Epidemiyolojik Sürveyans',
    category: 'Epidemiyoloji',
    difficulty: 'Zor',
    source: 'The Lancet Infectious Diseases',
    estimatedMinutes: 7,
    passage: '''The past two decades have witnessed an unprecedented succession of emerging and re-emerging infectious disease threats, from SARS in 2003 through Ebola, Zika, and ultimately the COVID-19 pandemic. These events have underscored the critical importance of epidemiological surveillance — the systematic collection, analysis, and interpretation of health data — as the foundation of an effective public health response.

Traditional surveillance relies on passive reporting systems in which healthcare providers submit notifiable disease reports to public health authorities. While this approach captures clinically significant cases, it is inherently delayed and prone to underreporting, particularly in resource-limited settings where diagnostic capacity is constrained. Syndromic surveillance, which monitors clinical syndromes rather than confirmed diagnoses, offers a faster albeit less specific alternative by detecting unusual clusters of illness before laboratory confirmation is available.

The digital revolution has opened entirely new frontiers. Wastewater-based epidemiology, which detects pathogen genetic material in sewage, can identify community-level transmission of viruses such as SARS-CoV-2 and poliovirus before clinical cases emerge. Genomic surveillance through whole-genome sequencing of pathogens enables real-time tracking of variant evolution, transmission chains, and antimicrobial resistance patterns. Meanwhile, digital epidemiology leverages social media posts, internet search queries, and mobility data to complement traditional data streams, although concerns about data quality and privacy persist.

Ultimately, the effectiveness of any surveillance system depends on its integration into a broader preparedness framework that includes rapid laboratory diagnostics, transparent data sharing across borders, trained field epidemiologists, and the political will to act decisively on early warning signals. The lessons of COVID-19 must not be forgotten: delayed recognition and response to emerging threats carries catastrophic consequences measured in lives, economic disruption, and societal trust.''',
    turkishSummary: 'Epidemiyolojik sürveyans sağlık verilerinin sistematik toplanması ve analizidir. Geleneksel bildirim sistemleri, sendromik sürveyans, atık su epidemiyolojisi ve genomik sürveyans farklı yaklaşımlardır. COVID-19, erken uyarının önemini göstermiştir.',
    vocabulary: [
      ArticleVocab(english: 'surveillance', turkish: 'sürveyans, gözetim', partOfSpeech: 'n'),
      ArticleVocab(english: 'emerging', turkish: 'yeni ortaya çıkan', partOfSpeech: 'adj'),
      ArticleVocab(english: 're-emerging', turkish: 'yeniden ortaya çıkan', partOfSpeech: 'adj'),
      ArticleVocab(english: 'notifiable disease', turkish: 'bildirimi zorunlu hastalık', partOfSpeech: 'n'),
      ArticleVocab(english: 'underreporting', turkish: 'eksik bildirim', partOfSpeech: 'n'),
      ArticleVocab(english: 'syndromic', turkish: 'sendromik', partOfSpeech: 'adj'),
      ArticleVocab(english: 'wastewater', turkish: 'atık su', partOfSpeech: 'n'),
      ArticleVocab(english: 'genomic sequencing', turkish: 'genomik dizileme', partOfSpeech: 'n'),
      ArticleVocab(english: 'variant', turkish: 'varyant, değişken', partOfSpeech: 'n'),
      ArticleVocab(english: 'mobility data', turkish: 'hareketlilik verisi', partOfSpeech: 'n'),
      ArticleVocab(english: 'preparedness', turkish: 'hazırlıklılık', partOfSpeech: 'n'),
      ArticleVocab(english: 'catastrophic', turkish: 'felaket boyutunda', partOfSpeech: 'adj'),
    ],
    questions: [
      ArticleQuestion(question: 'What is the primary purpose of epidemiological surveillance?', options: ['To treat individual patients', 'To systematically collect and analyze health data for public health response', 'To develop new vaccines', 'To perform clinical trials'], correctIndex: 1, explanation: 'Sağlık verilerinin sistematik toplanması, analizi ve yorumlanması olarak tanımlanmıştır.', questionType: 'Detay'),
      ArticleQuestion(question: 'Why does traditional passive reporting have limitations?', options: ['It is too fast.', 'It is delayed and prone to underreporting.', 'It uses too much technology.', 'It only tracks mental health.'], correctIndex: 1, explanation: 'Gecikmeli olduğu ve eksik bildirime açık olduğu belirtilmiştir.', questionType: 'Detay'),
      ArticleQuestion(question: 'The word "catastrophic" is closest in meaning to ----.', options: ['minor', 'devastating', 'predictable', 'helpful'], correctIndex: 1, explanation: '"Catastrophic" felaket boyutunda, yıkıcı anlamına gelir.', questionType: 'Kelime'),
      ArticleQuestion(question: 'It can be inferred that wastewater-based epidemiology ----.', options: ['is useless in modern medicine', 'can detect community-level infection before clinical cases appear', 'replaces all other surveillance methods', 'only works for bacterial infections'], correctIndex: 1, explanation: 'Klinik vakalar ortaya çıkmadan önce toplum düzeyinde bulaşmayı tespit edebildiği belirtilmiştir.', questionType: 'Çıkarım'),
    ],
  ),

  // ═══════════════════════════════════════════════════════
  // MAKALE 48 — FARMAKOLOJİ
  // ═══════════════════════════════════════════════════════
  const Article(
    id: 48,
    title: 'Pharmacogenomics: Tailoring Drug Therapy to Individual Genotypes',
    turkishTitle: 'Farmakogenomik: İlaç Tedavisini Bireysel Genotiplere Uyarlama',
    category: 'Farmakoloji',
    difficulty: 'Zor',
    source: 'Clinical Pharmacology & Therapeutics',
    estimatedMinutes: 7,
    passage: '''Pharmacogenomics — the study of how an individual's genetic makeup influences drug response — represents a paradigm shift from the traditional "one-size-fits-all" approach to prescribing medications. By identifying genetic variants that affect drug metabolism, efficacy, and toxicity, pharmacogenomics aims to optimize therapeutic outcomes while minimizing adverse drug reactions, which account for approximately 6.5% of hospital admissions in developed countries.

The cytochrome P450 (CYP) enzyme family, particularly CYP2D6 and CYP2C19, has been the most extensively studied pharmacogenomic target. Patients can be classified as poor, intermediate, extensive, or ultra-rapid metabolizers based on their CYP allele combinations. A poor metabolizer of codeine, for example, cannot convert the prodrug to its active form (morphine), rendering it therapeutically useless, whereas an ultra-rapid metabolizer may experience dangerously elevated morphine levels from a standard dose, potentially leading to respiratory depression and death.

Beyond drug-metabolizing enzymes, pharmacogenomics also examines variants in drug targets and transporters. The HLA-B*57:01 allele, for instance, predicts severe hypersensitivity to the antiretroviral drug abacavir with such reliability that pre-prescription screening has become standard of care, virtually eliminating this potentially fatal reaction. Similarly, variants in the VKORC1 gene influence warfarin sensitivity, enabling clinicians to calibrate dosing more precisely and reduce the risk of hemorrhagic complications.

Despite its promise, the clinical implementation of pharmacogenomics faces significant barriers. These include the cost and turnaround time of genetic testing, the limited diversity of populations represented in genomic studies, the complexity of incorporating results into electronic health records, and clinician unfamiliarity with genetic data interpretation. Nonetheless, as sequencing costs continue to plummet and evidence accumulates, preemptive pharmacogenomic testing — in which a patient's genotype is determined before any prescription is needed — is poised to become a standard component of precision medicine.''',
    turkishSummary: 'Farmakogenomik, bireyin genetik yapısının ilaç yanıtını nasıl etkilediğini inceler. CYP enzimleri ilaç metabolizmasını belirler. HLA-B*57:01 taraması abacavir hipersensitivitesini önler. Klinik uygulamada maliyet ve eğitim engelleri devam etmektedir.',
    vocabulary: [
      ArticleVocab(english: 'pharmacogenomics', turkish: 'farmakogenomik', partOfSpeech: 'n'),
      ArticleVocab(english: 'genotype', turkish: 'genotip', partOfSpeech: 'n'),
      ArticleVocab(english: 'metabolism', turkish: 'metabolizma', partOfSpeech: 'n'),
      ArticleVocab(english: 'adverse drug reaction', turkish: 'advers ilaç reaksiyonu', partOfSpeech: 'n'),
      ArticleVocab(english: 'allele', turkish: 'alel', partOfSpeech: 'n'),
      ArticleVocab(english: 'prodrug', turkish: 'ön ilaç', partOfSpeech: 'n'),
      ArticleVocab(english: 'respiratory depression', turkish: 'solunum depresyonu', partOfSpeech: 'n'),
      ArticleVocab(english: 'hypersensitivity', turkish: 'aşırı duyarlılık', partOfSpeech: 'n'),
      ArticleVocab(english: 'hemorrhagic', turkish: 'hemorajik, kanamalı', partOfSpeech: 'adj'),
      ArticleVocab(english: 'preemptive', turkish: 'önleyici', partOfSpeech: 'adj'),
      ArticleVocab(english: 'plummet', turkish: 'hızla düşmek', partOfSpeech: 'v'),
      ArticleVocab(english: 'calibrate', turkish: 'kalibre etmek, ayarlamak', partOfSpeech: 'v'),
    ],
    questions: [
      ArticleQuestion(question: 'What is the main goal of pharmacogenomics?', options: ['To develop new drugs from scratch', 'To optimize drug therapy based on individual genetic makeup', 'To replace all existing medications', 'To study animal genetics'], correctIndex: 1, explanation: 'İlk paragrafta bireysel genetik yapıya göre ilaç tedavisini optimize etmeyi amaçladığı belirtilmiştir.', questionType: 'Ana Fikir'),
      ArticleQuestion(question: 'Why might a standard dose of codeine be dangerous for an ultra-rapid metabolizer?', options: ['Because they cannot metabolize codeine at all.', 'Because they convert it too quickly to morphine, causing dangerously high levels.', 'Because codeine is always toxic.', 'Because they are allergic to codeine.'], correctIndex: 1, explanation: 'Ultra-hızlı metabolize edicilerin kodeini çok hızlı morfine dönüştürerek tehlikeli düzeylere ulaşabileceği belirtilmiştir.', questionType: 'Detay'),
      ArticleQuestion(question: 'The word "plummet" in the last paragraph is closest in meaning to ----.', options: ['increase gradually', 'remain stable', 'fall sharply', 'fluctuate'], correctIndex: 2, explanation: '"Plummet" hızla düşmek anlamına gelir.', questionType: 'Kelime'),
      ArticleQuestion(question: 'It can be inferred that preemptive pharmacogenomic testing ----.', options: ['is already standard practice everywhere', 'may become routine as costs decrease and evidence grows', 'is unnecessary for patient safety', 'only applies to cancer patients'], correctIndex: 1, explanation: 'Dizileme maliyetlerinin düşmesiyle önleyici testlerin standart hale gelebileceği belirtilmiştir.', questionType: 'Çıkarım'),
    ],
  ),

  // ═══════════════════════════════════════════════════════
  // MAKALE 49 — HALK SAĞLIĞI
  // ═══════════════════════════════════════════════════════
  const Article(
    id: 49,
    title: 'The Social Determinants of Health: Beyond Clinical Medicine',
    turkishTitle: 'Sağlığın Sosyal Belirleyicileri: Klinik Tıbbın Ötesinde',
    category: 'Halk Sağlığı',
    difficulty: 'Orta',
    source: 'WHO Commission on Social Determinants of Health',
    estimatedMinutes: 6,
    passage: '''Health outcomes are shaped not only by biological factors and medical interventions but also by the conditions in which people are born, grow, live, work, and age. These conditions, collectively termed the social determinants of health (SDH), encompass income, education, employment, housing, food security, social support networks, and access to healthcare services. Research consistently demonstrates that SDH account for a far greater proportion of health variation — estimated between 30% and 55% — than clinical care, which contributes roughly 10-20%.

The mechanisms through which social disadvantage translates into poor health are multifaceted. Poverty limits access to nutritious food, safe housing, and quality healthcare, while chronic psychosocial stress associated with financial insecurity activates the hypothalamic-pituitary-adrenal axis, elevating cortisol levels and promoting systemic inflammation. Low educational attainment correlates with reduced health literacy, delayed preventive care, and higher rates of risk behaviors such as smoking and physical inactivity.

Health inequities — systematic, avoidable differences in health outcomes between population groups — represent a moral imperative. Life expectancy can vary by more than 20 years between the wealthiest and poorest neighborhoods within a single city. Indigenous populations, racial and ethnic minorities, and migrants frequently experience disproportionately high rates of chronic disease, mental illness, and premature mortality.

Addressing SDH demands action beyond the health sector. Urban planning that ensures green spaces and active transport, progressive taxation that reduces income inequality, universal early childhood education, and living-wage policies all contribute to healthier populations. Within healthcare, screening for social needs and connecting patients with community resources through social prescribing is gaining traction. Ultimately, achieving health equity requires recognizing that health is a product of society, not merely of medicine.''',
    turkishSummary: 'Sağlık sonuçları gelir, eğitim, barınma ve sosyal destek gibi sosyal belirleyiciler tarafından güçlü biçimde şekillendirilir. Sağlık eşitsizlikleri kent planlaması, eğitim ve gelir politikalarıyla ele alınmalıdır. Sağlık eşitliği tıbbın ötesinde toplumsal bir sorumluluktur.',
    vocabulary: [
      ArticleVocab(english: 'social determinants', turkish: 'sosyal belirleyiciler', partOfSpeech: 'n'),
      ArticleVocab(english: 'food security', turkish: 'gıda güvenliği', partOfSpeech: 'n'),
      ArticleVocab(english: 'psychosocial stress', turkish: 'psikososyal stres', partOfSpeech: 'n'),
      ArticleVocab(english: 'health literacy', turkish: 'sağlık okuryazarlığı', partOfSpeech: 'n'),
      ArticleVocab(english: 'health inequity', turkish: 'sağlık eşitsizliği', partOfSpeech: 'n'),
      ArticleVocab(english: 'life expectancy', turkish: 'yaşam beklentisi', partOfSpeech: 'n'),
      ArticleVocab(english: 'premature mortality', turkish: 'erken ölüm', partOfSpeech: 'n'),
      ArticleVocab(english: 'progressive taxation', turkish: 'artan oranlı vergilendirme', partOfSpeech: 'n'),
      ArticleVocab(english: 'social prescribing', turkish: 'sosyal reçeteleme', partOfSpeech: 'n'),
      ArticleVocab(english: 'health equity', turkish: 'sağlık eşitliği', partOfSpeech: 'n'),
      ArticleVocab(english: 'disproportionately', turkish: 'orantısız biçimde', partOfSpeech: 'adv'),
      ArticleVocab(english: 'imperative', turkish: 'zorunluluk', partOfSpeech: 'n'),
    ],
    questions: [
      ArticleQuestion(question: 'According to the passage, what percentage of health variation is attributed to social determinants?', options: ['5-10%', '10-20%', '30-55%', '70-90%'], correctIndex: 2, explanation: 'Sosyal belirleyicilerin sağlık farklılıklarının %30-55\'ini açıkladığı belirtilmiştir.', questionType: 'Detay'),
      ArticleQuestion(question: 'The word "disproportionately" is closest in meaning to ----.', options: ['equally', 'unfairly/unequally high', 'predictably', 'temporarily'], correctIndex: 1, explanation: '"Disproportionately" orantısız biçimde, dengesiz olarak anlamına gelir.', questionType: 'Kelime'),
      ArticleQuestion(question: 'What does "social prescribing" refer to in the passage?', options: ['Prescribing social media use', 'Connecting patients with community resources to address social needs', 'Prescribing medication in social settings', 'Conducting surveys about social behavior'], correctIndex: 1, explanation: 'Hastaları sosyal ihtiyaçları için toplum kaynaklarına yönlendirme olarak tanımlanmıştır.', questionType: 'Detay'),
      ArticleQuestion(question: 'The passage suggests that achieving health equity requires ----.', options: ['only building more hospitals', 'action beyond the health sector, including urban planning, education, and income policies', 'eliminating all genetic diseases', 'reducing the number of doctors'], correctIndex: 1, explanation: 'Sağlık eşitliğinin sağlık sektörünün ötesinde toplumsal eylem gerektirdiği vurgulanmıştır.', questionType: 'Çıkarım'),
    ],
  ),

  // ═══════════════════════════════════════════════════════
  // MAKALE 50 — GERONTOLOJİ
  // ═══════════════════════════════════════════════════════
  const Article(
    id: 50,
    title: 'The Biology of Aging: From Cellular Senescence to Longevity Research',
    turkishTitle: 'Yaşlanmanın Biyolojisi: Hücresel Yaşlanmadan Uzun Ömür Araştırmalarına',
    category: 'Gerontoloji',
    difficulty: 'Zor',
    source: 'Cell',
    estimatedMinutes: 8,
    passage: '''Aging is a universal biological process characterized by the progressive accumulation of cellular and molecular damage over time, leading to functional decline, increased vulnerability to disease, and ultimately death. While once considered an inevitable and largely immutable aspect of life, aging is increasingly understood as a modifiable biological process, a perspective that has invigorated the emerging field of geroscience.

At the cellular level, several hallmarks of aging have been identified. Telomere attrition — the shortening of protective caps at chromosome ends with each cell division — eventually triggers replicative senescence, a state in which cells cease dividing but remain metabolically active, secreting pro-inflammatory mediators collectively termed the senescence-associated secretory phenotype (SASP). Accumulation of senescent cells contributes to chronic low-grade inflammation, aptly named "inflammaging," which accelerates age-related pathology in virtually every organ system.

Mitochondrial dysfunction represents another critical hallmark. As mitochondria age, they produce increasing quantities of reactive oxygen species (ROS), which damage DNA, proteins, and lipids. Simultaneously, the efficiency of cellular quality control mechanisms — autophagy, the ubiquitin-proteasome pathway, and DNA repair enzymes — declines, allowing damaged components to accumulate. Epigenetic alterations, including changes in DNA methylation patterns and histone modifications, further disrupt gene expression, contributing to the aging phenotype.

The identification of these hallmarks has catalyzed a search for interventions that target fundamental aging mechanisms rather than individual diseases. Caloric restriction and its pharmacological mimics, such as rapamycin and metformin, have extended lifespan in model organisms by modulating nutrient-sensing pathways like mTOR and AMPK. Senolytic drugs, designed to selectively eliminate senescent cells, have shown promise in preclinical studies for alleviating age-related conditions including osteoarthritis and pulmonary fibrosis. While translating these findings into safe and effective human therapies remains a formidable challenge, the prospect of extending not merely lifespan but healthspan — the period of life spent in good health — represents one of the most ambitious goals of twenty-first century medicine.''',
    turkishSummary: 'Yaşlanma hücresel ve moleküler hasarın ilerleyici birikimidir. Telomer kısalması, mitokondriyal disfonksiyon ve epigenetik değişiklikler temel mekanizmalardır. Kalorik kısıtlama, rapamisin ve senolitik ilaçlar yaşlanmayı hedefleyen umut verici yaklaşımlardır.',
    vocabulary: [
      ArticleVocab(english: 'senescence', turkish: 'hücresel yaşlanma', partOfSpeech: 'n'),
      ArticleVocab(english: 'telomere', turkish: 'telomer', partOfSpeech: 'n'),
      ArticleVocab(english: 'attrition', turkish: 'aşınma, kısalma', partOfSpeech: 'n'),
      ArticleVocab(english: 'replicative', turkish: 'çoğalmaya ilişkin', partOfSpeech: 'adj'),
      ArticleVocab(english: 'inflammaging', turkish: 'yaşlanma iltihabı', partOfSpeech: 'n'),
      ArticleVocab(english: 'mitochondrial', turkish: 'mitokondriyal', partOfSpeech: 'adj'),
      ArticleVocab(english: 'reactive oxygen species', turkish: 'reaktif oksijen türleri', partOfSpeech: 'n'),
      ArticleVocab(english: 'autophagy', turkish: 'otofaji (kendini yeme)', partOfSpeech: 'n'),
      ArticleVocab(english: 'epigenetic', turkish: 'epigenetik', partOfSpeech: 'adj'),
      ArticleVocab(english: 'caloric restriction', turkish: 'kalorik kısıtlama', partOfSpeech: 'n'),
      ArticleVocab(english: 'senolytic', turkish: 'senolitik', partOfSpeech: 'adj'),
      ArticleVocab(english: 'healthspan', turkish: 'sağlıklı yaşam süresi', partOfSpeech: 'n'),
      ArticleVocab(english: 'lifespan', turkish: 'yaşam süresi', partOfSpeech: 'n'),
      ArticleVocab(english: 'modifiable', turkish: 'değiştirilebilir', partOfSpeech: 'adj'),
      ArticleVocab(english: 'formidable', turkish: 'zorlu, çetin', partOfSpeech: 'adj'),
    ],
    questions: [
      ArticleQuestion(question: 'What is the main idea of the passage?', options: ['Aging is completely preventable.', 'Aging is a modifiable biological process with identifiable hallmarks and emerging therapeutic targets.', 'Only caloric restriction can extend lifespan.', 'Aging only affects the cardiovascular system.'], correctIndex: 1, explanation: 'Yaşlanmanın değiştirilebilir bir biyolojik süreç olduğu, belirlenmiş mekanizmaları ve terapötik hedefleri olduğu anlatılmaktadır.', questionType: 'Ana Fikir'),
      ArticleQuestion(question: 'What is "inflammaging" according to the passage?', options: ['Acute inflammation from infection', 'Chronic low-grade inflammation caused by accumulation of senescent cells', 'Inflammation that only occurs in children', 'A type of allergic reaction'], correctIndex: 1, explanation: 'Yaşlanan hücrelerin birikmesiyle oluşan kronik düşük dereceli iltihap olarak tanımlanmıştır.', questionType: 'Detay'),
      ArticleQuestion(question: 'The word "formidable" in the last paragraph is closest in meaning to ----.', options: ['simple', 'manageable', 'tremendously challenging', 'irrelevant'], correctIndex: 2, explanation: '"Formidable" son derece zorlu, çetin anlamına gelir.', questionType: 'Kelime'),
      ArticleQuestion(question: 'What is the difference between "lifespan" and "healthspan"?', options: ['They mean exactly the same thing.', 'Lifespan is total life duration; healthspan is the period spent in good health.', 'Healthspan is always longer than lifespan.', 'Lifespan only applies to animals.'], correctIndex: 1, explanation: 'Yaşam süresi toplam ömrü, sağlıklı yaşam süresi ise sağlıklı geçen dönemi ifade eder.', questionType: 'Detay'),
      ArticleQuestion(question: 'It can be inferred that senolytic drugs ----.', options: ['are already widely used in clinical practice', 'aim to remove senescent cells and may help age-related diseases', 'increase the number of senescent cells', 'have no therapeutic potential'], correctIndex: 1, explanation: 'Senolitik ilaçların yaşlanan hücreleri seçici olarak ortadan kaldırmayı hedeflediği ve yaşa bağlı hastalıklarda umut verici olduğu belirtilmiştir.', questionType: 'Çıkarım'),
    ],
  ),
];
