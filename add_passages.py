import re

content_to_append = """  // ─── PARÇA 21 ───
  const ReadingPassage(
    id: 21,
    title: 'Telemedicine and Remote Healthcare',
    difficulty: 'Orta',
    topic: 'Sağlık Teknolojileri',
    passage: '''Telemedicine involves the use of electronic communications and software to provide clinical services to patients without an in-person visit. This technology is frequently used for follow-up visits, management of chronic conditions, medication management, and specialist consultation.

The COVID-19 pandemic significantly accelerated the adoption of telehealth services. By minimizing physical contact, telemedicine reduces the risk of transmitting infectious diseases. Furthermore, it improves access to care for patients residing in rural or remote areas who might otherwise have to travel long distances to see a healthcare provider. However, challenges such as the digital divide and reimbursement policies still need to be addressed.''',
    vocabulary: [
      PassageVocab(english: 'in-person', turkish: 'yüz yüze, şahsen', partOfSpeech: 'adj'),
      PassageVocab(english: 'accelerate', turkish: 'hızlandırmak', partOfSpeech: 'verb'),
      PassageVocab(english: 'rural', turkish: 'kırsal', partOfSpeech: 'adj'),
      PassageVocab(english: 'digital divide', turkish: 'dijital uçurum (teknolojiye erişim eşitsizliği)', partOfSpeech: 'noun'),
    ],
    questions: [
      PassageQuestion(
        question: 'Which of the following is NOT mentioned as a common use of telemedicine?',
        options: [
          'Follow-up visits',
          'Surgical procedures',
          'Medication management',
          'Specialist consultation',
        ],
        correctIndex: 1,
        explanation: 'Parçada cerrahi müdahalelerden (Surgical procedures) bahsedilmemektedir.',
      ),
      PassageQuestion(
        question: 'According to the passage, what is one major benefit of telemedicine for people in rural areas?',
        options: [
          'It provides them with free electronic devices.',
          'It improves their access to healthcare providers.',
          'It eliminates the need for any medication.',
          'It increases the risk of transmitting infectious diseases.',
        ],
        correctIndex: 1,
        explanation: 'Kırsal bölgelerde yaşayanların sağlık hizmetlerine erişimini kolaylaştırdığı (improves access to care) belirtilmiştir.',
      ),
    ],
  ),
  // ─── PARÇA 22 ───
  const ReadingPassage(
    id: 22,
    title: 'The Gut Microbiome',
    difficulty: 'Zor',
    topic: 'Gastroenteroloji',
    passage: '''The human gut microbiome consists of trillions of microorganisms, including bacteria, viruses, and fungi, residing in the gastrointestinal tract. These microorganisms play a crucial role in human health by aiding in digestion, synthesizing essential vitamins, and regulating the immune system.

Recent research has highlighted the gut-brain axis, a bidirectional communication network linking the enteric and central nervous systems. Dysbiosis, an imbalance in the gut microbial community, has been associated with various pathological conditions, including inflammatory bowel disease, obesity, and even neurological disorders like depression and Parkinson\\'s disease. Consequently, interventions such as probiotics and dietary modifications are being explored to restore microbial balance.''',
    vocabulary: [
      PassageVocab(english: 'gastrointestinal tract', turkish: 'mide-bağırsak yolu', partOfSpeech: 'noun'),
      PassageVocab(english: 'synthesize', turkish: 'sentezlemek, üretmek', partOfSpeech: 'verb'),
      PassageVocab(english: 'bidirectional', turkish: 'iki yönlü', partOfSpeech: 'adj'),
      PassageVocab(english: 'dysbiosis', turkish: 'disbiyozis (mikrobiyom dengesizliği)', partOfSpeech: 'noun'),
    ],
    questions: [
      PassageQuestion(
        question: 'What is the "gut-brain axis" as described in the passage?',
        options: [
          'A disease caused by viruses in the stomach.',
          'A bidirectional communication network between the gut and the brain.',
          'A surgical procedure to treat inflammatory bowel disease.',
          'A type of probiotic supplement.',
        ],
        correctIndex: 1,
        explanation: 'Gut-brain axis, parçada sindirim ve merkezi sinir sistemi arasındaki iki yönlü iletişim ağı (bidirectional communication network) olarak tanımlanmıştır.',
      ),
      PassageQuestion(
        question: 'Which of the following conditions is associated with dysbiosis?',
        options: [
          'Lung cancer',
          'Inflammatory bowel disease',
          'Hearing loss',
          'Color blindness',
        ],
        correctIndex: 1,
        explanation: 'Parçada disbiyozisin inflamatuvar bağırsak hastalığı (inflammatory bowel disease), obezite ve nörolojik hastalıklarla ilişkili olduğu belirtilmiştir.',
      ),
    ],
  ),
  // ─── PARÇA 23 ───
  const ReadingPassage(
    id: 23,
    title: 'Artificial Intelligence in Diagnostics',
    difficulty: 'Orta',
    topic: 'Sağlık Teknolojileri',
    passage: '''Artificial intelligence (AI) is revolutionizing the field of medical diagnostics, particularly in radiology and pathology. Machine learning algorithms can analyze vast amounts of medical imaging data, such as X-rays, MRIs, and CT scans, to detect abnormalities with a level of accuracy that often rivals or surpasses human experts.

For instance, AI systems have been successfully trained to identify early signs of breast cancer in mammograms and diabetic retinopathy in eye scans. These tools do not aim to replace physicians; rather, they serve as a "second pair of eyes," helping to reduce diagnostic errors and improve patient outcomes by catching diseases in their earliest, most treatable stages.''',
    vocabulary: [
      PassageVocab(english: 'revolutionize', turkish: 'devrim yaratmak', partOfSpeech: 'verb'),
      PassageVocab(english: 'surpass', turkish: 'aşmak, geride bırakmak', partOfSpeech: 'verb'),
      PassageVocab(english: 'abnormality', turkish: 'anormallik', partOfSpeech: 'noun'),
      PassageVocab(english: 'diabetic retinopathy', turkish: 'diyabetik retinopati (şeker hastalığına bağlı göz hasarı)', partOfSpeech: 'noun'),
    ],
    questions: [
      PassageQuestion(
        question: 'According to the passage, what is the primary role of AI in medical diagnostics?',
        options: [
          'To completely replace human physicians.',
          'To assist doctors by serving as a second pair of eyes.',
          'To manufacture new medical imaging machines.',
          'To prescribe medications to patients directly.',
        ],
        correctIndex: 1,
        explanation: 'Yapay zekanın doktorların yerini almayı hedeflemediği, onlara yardımcı "ikinci bir göz" (a second pair of eyes) olarak hizmet ettiği vurgulanmıştır.',
      ),
      PassageQuestion(
        question: 'AI has been successfully used to detect early signs of which conditions?',
        options: [
          'Asthma and arthritis',
          'Breast cancer and diabetic retinopathy',
          'Alzheimer\\'s disease and Parkinson\\'s disease',
          'Malaria and tuberculosis',
        ],
        correctIndex: 1,
        explanation: 'Parçada AI sistemlerinin mamogramlarda meme kanserini ve göz taramalarında diyabetik retinopatiyi tespit etmek için kullanıldığı (identify early signs of breast cancer... and diabetic retinopathy) belirtilmiştir.',
      ),
    ],
  ),
  // ─── PARÇA 24 ───
  const ReadingPassage(
    id: 24,
    title: 'Sleep Deprivation and Health',
    difficulty: 'Kolay',
    topic: 'Nöroloji',
    passage: '''Sleep is essential for maintaining optimal physical and mental health. However, in today\\'s fast-paced society, sleep deprivation has become a common problem. Adults generally require between 7 to 9 hours of sleep per night to function effectively.

Chronic lack of sleep has serious consequences. It impairs cognitive function, memory, and decision-making abilities. Moreover, sleep deprivation is linked to an increased risk of chronic conditions such as obesity, diabetes, cardiovascular disease, and depression. During sleep, the body undergoes critical repair processes, and the immune system releases cytokines to fight infections. Without adequate rest, the body becomes more vulnerable to illnesses.''',
    vocabulary: [
      PassageVocab(english: 'deprivation', turkish: 'yoksunluk, mahrumiyet', partOfSpeech: 'noun'),
      PassageVocab(english: 'impair', turkish: 'bozmak, zarar vermek', partOfSpeech: 'verb'),
      PassageVocab(english: 'cognitive', turkish: 'bilişsel', partOfSpeech: 'adj'),
      PassageVocab(english: 'vulnerable', turkish: 'savunmasız, hassas', partOfSpeech: 'adj'),
    ],
    questions: [
      PassageQuestion(
        question: 'What is one of the cognitive effects of chronic sleep deprivation?',
        options: [
          'Improved decision-making',
          'Enhanced memory',
          'Impaired memory and decision-making',
          'Increased intelligence',
        ],
        correctIndex: 2,
        explanation: 'Parçada uykusuzluğun bilişsel fonksiyonları, hafızayı ve karar verme yeteneklerini bozduğu (impairs cognitive function, memory, and decision-making) belirtilmiştir.',
      ),
      PassageQuestion(
        question: 'Why is sleep important for the immune system?',
        options: [
          'It stops the production of white blood cells.',
          'It releases cytokines to help fight infections.',
          'It decreases body temperature permanently.',
          'It prevents the body from repairing tissues.',
        ],
        correctIndex: 1,
        explanation: 'Uyku sırasında bağışıklık sisteminin enfeksiyonlarla savaşmak için sitokinler (cytokines) salgıladığı ifade edilmiştir.',
      ),
    ],
  ),
  // ─── PARÇA 25 ───
  const ReadingPassage(
    id: 25,
    title: 'Vitamin D Deficiency',
    difficulty: 'Kolay',
    topic: 'Beslenme',
    passage: '''Vitamin D is a crucial nutrient that helps the body absorb calcium, maintaining strong and healthy bones. Unlike other vitamins, our bodies can synthesize Vitamin D when our skin is exposed to sunlight. However, Vitamin D deficiency is highly prevalent worldwide.

Several factors contribute to this deficiency. People who spend most of their time indoors, live in high latitudes, or consistently wear sunscreen are at a higher risk. Severe deficiency can lead to bone diseases such as rickets in children and osteomalacia in adults. To prevent this, doctors often recommend consuming fortified foods, such as milk and cereals, or taking dietary supplements, especially during the winter months.''',
    vocabulary: [
      PassageVocab(english: 'nutrient', turkish: 'besin maddesi', partOfSpeech: 'noun'),
      PassageVocab(english: 'deficiency', turkish: 'eksiklik', partOfSpeech: 'noun'),
      PassageVocab(english: 'prevalent', turkish: 'yaygın', partOfSpeech: 'adj'),
      PassageVocab(english: 'fortified', turkish: 'zenginleştirilmiş, takviye edilmiş', partOfSpeech: 'adj'),
    ],
    questions: [
      PassageQuestion(
        question: 'How does the human body primarily obtain Vitamin D naturally?',
        options: [
          'By drinking large amounts of water',
          'Through skin exposure to sunlight',
          'By sleeping for more than 9 hours',
          'Through intense physical exercise',
        ],
        correctIndex: 1,
        explanation: 'Parçada vücudumuzun cilt güneş ışığına maruz kaldığında (exposed to sunlight) D vitamini sentezleyebildiği belirtilmiştir.',
      ),
      PassageQuestion(
        question: 'What bone disease can occur in children due to severe Vitamin D deficiency?',
        options: [
          'Osteomalacia',
          'Arthritis',
          'Rickets',
          'Osteoporosis',
        ],
        correctIndex: 2,
        explanation: 'Şiddetli eksikliğin çocuklarda raşitizme (rickets) yol açabileceği açıkça ifade edilmiştir.',
      ),
    ],
  ),
  // ─── PARÇA 26 ───
  const ReadingPassage(
    id: 26,
    title: 'Alzheimer\\'s Disease',
    difficulty: 'Zor',
    topic: 'Nöroloji',
    passage: '''Alzheimer\\'s disease is a progressive neurodegenerative disorder and the most common cause of dementia among older adults. It is characterized by a gradual decline in memory, thinking, and reasoning skills, ultimately interfering with daily life. 

At the microscopic level, the disease is marked by the abnormal accumulation of two proteins in the brain: amyloid-beta, which forms extracellular plaques, and tau, which forms intracellular neurofibrillary tangles. These structural changes disrupt neuronal communication and lead to cell death, causing brain atrophy. Despite extensive clinical trials, there is currently no cure for Alzheimer\\'s. Existing medications primarily aim to manage symptoms and temporarily improve cognitive function, while ongoing research focuses on disease-modifying therapies that target the underlying pathology.''',
    vocabulary: [
      PassageVocab(english: 'neurodegenerative', turkish: 'sinir hücrelerinin yıkımına yol açan', partOfSpeech: 'adj'),
      PassageVocab(english: 'accumulation', turkish: 'birikim', partOfSpeech: 'noun'),
      PassageVocab(english: 'extracellular', turkish: 'hücre dışı', partOfSpeech: 'adj'),
      PassageVocab(english: 'atrophy', turkish: 'körelme, küçülme', partOfSpeech: 'noun'),
    ],
    questions: [
      PassageQuestion(
        question: 'Which two proteins are abnormally accumulated in the brains of Alzheimer\\'s patients?',
        options: [
          'Hemoglobin and insulin',
          'Amyloid-beta and tau',
          'Collagen and keratin',
          'Melatonin and dopamine',
        ],
        correctIndex: 1,
        explanation: 'Parçada amiloid-beta ve tau proteinlerinin anormal birikiminden (abnormal accumulation of two proteins... amyloid-beta... and tau) bahsedilmiştir.',
      ),
      PassageQuestion(
        question: 'What is the current status of a cure for Alzheimer\\'s disease according to the passage?',
        options: [
          'A permanent cure has been found recently.',
          'Vaccines are successfully preventing the disease.',
          'There is no cure; medications only manage symptoms.',
          'Surgery can easily reverse the brain damage.',
        ],
        correctIndex: 2,
        explanation: 'Parçada şu anda Alzheimer için bir tedavi olmadığı, mevcut ilaçların sadece semptomları yönetmeyi hedeflediği (there is currently no cure... medications primarily aim to manage symptoms) belirtilmiştir.',
      ),
    ],
  ),
  // ─── PARÇA 27 ───
  const ReadingPassage(
    id: 27,
    title: 'The Impact of Chronic Stress',
    difficulty: 'Orta',
    topic: 'Psikiyatri',
    passage: '''While acute stress is a natural survival response, chronic stress can have devastating effects on physical and mental health. When a person is constantly stressed, the body continuously releases cortisol and adrenaline. This prolonged activation of the stress response system disrupts almost all of the body\\'s processes.

Chronic stress increases the risk of cardiovascular diseases by elevating blood pressure and promoting the buildup of plaque in arteries. It also suppresses the immune system, making individuals more susceptible to infections. Furthermore, chronic stress is a major contributor to psychological disorders, including anxiety and depression. Effective stress management techniques, such as mindfulness, regular exercise, and cognitive-behavioral therapy, are crucial for mitigating these health risks.''',
    vocabulary: [
      PassageVocab(english: 'acute', turkish: 'akut, ani ve şiddetli', partOfSpeech: 'adj'),
      PassageVocab(english: 'devastating', turkish: 'yıkıcı', partOfSpeech: 'adj'),
      PassageVocab(english: 'prolonged', turkish: 'uzun süreli', partOfSpeech: 'adj'),
      PassageVocab(english: 'mitigate', turkish: 'hafifletmek, azaltmak', partOfSpeech: 'verb'),
    ],
    questions: [
      PassageQuestion(
        question: 'How does chronic stress negatively affect the cardiovascular system?',
        options: [
          'By decreasing the heart rate abnormally',
          'By elevating blood pressure and promoting plaque buildup',
          'By reducing the release of adrenaline',
          'By thinning the blood too much',
        ],
        correctIndex: 1,
        explanation: 'Kronik stresin kan basıncını yükselterek ve damarlarda plak oluşumunu teşvik ederek (elevating blood pressure and promoting the buildup of plaque) kardiyovasküler riskleri artırdığı belirtilmiştir.',
      ),
      PassageQuestion(
        question: 'Which of the following is recommended in the passage to manage stress?',
        options: [
          'Ignoring the problem',
          'Drinking caffeine',
          'Mindfulness and regular exercise',
          'Working longer hours',
        ],
        correctIndex: 2,
        explanation: 'Stresi yönetmek için bilinçli farkındalık (mindfulness), düzenli egzersiz ve bilişsel-davranışçı terapi önerilmiştir.',
      ),
    ],
  ),
  // ─── PARÇA 28 ───
  const ReadingPassage(
    id: 28,
    title: 'Vaccines and Herd Immunity',
    difficulty: 'Orta',
    topic: 'İmmünoloji',
    passage: '''Vaccines are one of the most effective public health interventions in history, responsible for the eradication of smallpox and the near-eradication of polio. By introducing a harmless component of a pathogen, vaccines stimulate the immune system to produce antibodies, providing immunity without causing the disease.

A critical concept associated with vaccination is herd immunity. When a sufficiently high proportion of a population is vaccinated, the spread of the infectious disease is effectively halted. This indirect protection is vital for individuals who cannot be vaccinated, such as newborns, the elderly, and those with compromised immune systems. However, vaccine hesitancy has led to declining immunization rates in some areas, resulting in the resurgence of preventable diseases like measles.''',
    vocabulary: [
      PassageVocab(english: 'eradication', turkish: 'kökünü kazıma, yok etme', partOfSpeech: 'noun'),
      PassageVocab(english: 'pathogen', turkish: 'hastalık yapıcı mikrop', partOfSpeech: 'noun'),
      PassageVocab(english: 'herd immunity', turkish: 'toplumsal bağışıklık (sürü bağışıklığı)', partOfSpeech: 'noun'),
      PassageVocab(english: 'hesitancy', turkish: 'tereddüt, çekingenlik', partOfSpeech: 'noun'),
    ],
    questions: [
      PassageQuestion(
        question: 'What is the main function of a vaccine as described in the passage?',
        options: [
          'To cure a disease after a person is infected',
          'To stimulate the immune system to produce antibodies',
          'To replace white blood cells in the body',
          'To directly kill bacteria in the bloodstream',
        ],
        correctIndex: 1,
        explanation: 'Aşıların bağışıklık sistemini antikor üretmesi için uyardığı (stimulate the immune system to produce antibodies) belirtilmiştir.',
      ),
      PassageQuestion(
        question: 'Why is herd immunity particularly important?',
        options: [
          'It guarantees that vaccines will never have side effects.',
          'It provides indirect protection for people who cannot be vaccinated.',
          'It makes pathogens stronger over time.',
          'It reduces the cost of medical treatments.',
        ],
        correctIndex: 1,
        explanation: 'Toplumsal bağışıklığın, aşılanamayan kişiler (yeni doğanlar, bağışıklığı baskılanmış olanlar) için dolaylı koruma sağladığı (This indirect protection is vital for individuals who cannot be vaccinated) vurgulanmıştır.',
      ),
    ],
  ),
  // ─── PARÇA 29 ───
  const ReadingPassage(
    id: 29,
    title: 'Nanotechnology in Drug Delivery',
    difficulty: 'Zor',
    topic: 'Farmakoloji',
    passage: '''Nanotechnology involves the manipulation of matter on an atomic and molecular scale. In the medical field, one of its most promising applications is in drug delivery systems. Nanoparticles can be engineered to carry therapeutic agents directly to diseased cells, minimizing damage to healthy tissues.

This targeted approach is particularly revolutionary in oncology. Traditional chemotherapy distributes highly toxic drugs throughout the entire body, causing severe systemic side effects such as hair loss and nausea. In contrast, nanocarriers can be designed to recognize specific receptors on the surface of cancer cells. Once attached, they release the drug payload directly into the tumor. Additionally, nanotechnology can improve the solubility and stability of drugs that are otherwise difficult for the body to absorb.''',
    vocabulary: [
      PassageVocab(english: 'manipulation', turkish: 'kullanım, işleme', partOfSpeech: 'noun'),
      PassageVocab(english: 'therapeutic agent', turkish: 'tedavi edici ajan (ilaç)', partOfSpeech: 'noun'),
      PassageVocab(english: 'systemic', turkish: 'tüm vücudu etkileyen', partOfSpeech: 'adj'),
      PassageVocab(english: 'solubility', turkish: 'çözünürlük', partOfSpeech: 'noun'),
    ],
    questions: [
      PassageQuestion(
        question: 'How does nanotechnology improve cancer treatment compared to traditional chemotherapy?',
        options: [
          'It uses radiation instead of drugs.',
          'It delivers drugs directly to cancer cells, minimizing harm to healthy cells.',
          'It eliminates the need for any surgical procedures.',
          'It prevents cancer cells from dividing by freezing them.',
        ],
        correctIndex: 1,
        explanation: 'Nanoteknolojinin ilaçları doğrudan hastalıklı hücrelere taşıyarak sağlıklı dokulara verilen zararı en aza indirdiği (carry therapeutic agents directly to diseased cells, minimizing damage to healthy tissues) belirtilmiştir.',
      ),
      PassageQuestion(
        question: 'What is another benefit of nanotechnology mentioned in the passage, besides targeted delivery?',
        options: [
          'It cures all types of viral infections quickly.',
          'It makes medications cheaper to produce.',
          'It improves the solubility and stability of difficult-to-absorb drugs.',
          'It replaces the need for an immune system.',
        ],
        correctIndex: 2,
        explanation: 'Son cümlede nanoteknolojinin vücudun emmesi zor olan ilaçların çözünürlüğünü ve stabilitesini artırabileceği (improve the solubility and stability) ifade edilmiştir.',
      ),
    ],
  ),
  // ─── PARÇA 30 ───
  const ReadingPassage(
    id: 30,
    title: 'Obesity and Metabolic Syndrome',
    difficulty: 'Orta',
    topic: 'Endokrinoloji',
    passage: '''Obesity is defined as an excessive accumulation of body fat that presents a risk to health. It is often measured using the Body Mass Index (BMI). Over the past few decades, global obesity rates have tripled, driven primarily by sedentary lifestyles and the increased consumption of energy-dense, highly processed foods.

A major consequence of obesity is the development of metabolic syndrome. This is a cluster of conditions that occur together, including elevated blood pressure, high blood sugar, excess body fat around the waist, and abnormal cholesterol levels. Having metabolic syndrome significantly increases a person\\'s risk of heart disease, stroke, and type 2 diabetes. Lifestyle interventions, focusing on weight loss, a balanced diet, and regular physical activity, remain the cornerstone of managing and reversing this syndrome.''',
    vocabulary: [
      PassageVocab(english: 'accumulation', turkish: 'birikim', partOfSpeech: 'noun'),
      PassageVocab(english: 'sedentary', turkish: 'hareketsiz', partOfSpeech: 'adj'),
      PassageVocab(english: 'cluster', turkish: 'küme, grup', partOfSpeech: 'noun'),
      PassageVocab(english: 'cornerstone', turkish: 'temel taşı', partOfSpeech: 'noun'),
    ],
    questions: [
      PassageQuestion(
        question: 'Which factors have primarily driven the global increase in obesity rates?',
        options: [
          'Genetics and hormonal imbalances',
          'Sedentary lifestyles and processed foods',
          'Lack of sleep and stress',
          'Viral infections and antibiotics',
        ],
        correctIndex: 1,
        explanation: 'Obezite oranlarındaki artışın temel nedenlerinin hareketsiz yaşam tarzları ve yüksek oranda işlenmiş gıdalar (sedentary lifestyles and... highly processed foods) olduğu belirtilmiştir.',
      ),
      PassageQuestion(
        question: 'Which of the following is NOT typically a component of metabolic syndrome?',
        options: [
          'High blood sugar',
          'Elevated blood pressure',
          'Low bone density',
          'Abnormal cholesterol levels',
        ],
        correctIndex: 2,
        explanation: 'Parçada metabolik sendromun bileşenleri arasında yüksek tansiyon, yüksek kan şekeri, bel çevresinde yağlanma ve anormal kolesterol sayılmıştır; ancak düşük kemik yoğunluğundan (Low bone density) bahsedilmemiştir.',
      ),
    ],
  ),
  // ─── PARÇA 31 ───
  const ReadingPassage(
    id: 31,
    title: 'Type 2 Diabetes Management',
    difficulty: 'Orta',
    topic: 'Endokrinoloji',
    passage: '''Type 2 diabetes is a chronic metabolic disorder characterized by insulin resistance and relative insulin deficiency. Unlike type 1 diabetes, which is an autoimmune condition, type 2 is strongly associated with lifestyle factors, particularly obesity and physical inactivity. When cells become resistant to insulin, glucose remains in the blood, leading to hyperglycemia.

Effective management of type 2 diabetes requires a comprehensive approach. The first line of treatment usually involves lifestyle modifications, including dietary changes and regular exercise, to promote weight loss and improve insulin sensitivity. If these measures are insufficient, oral antidiabetic medications, such as metformin, are prescribed. In some advanced cases, insulin therapy may be necessary to maintain glycemic control and prevent long-term complications like neuropathy and nephropathy.''',
    vocabulary: [
      PassageVocab(english: 'insulin resistance', turkish: 'insülin direnci', partOfSpeech: 'noun'),
      PassageVocab(english: 'hyperglycemia', turkish: 'kanda yüksek şeker (hiperglisemi)', partOfSpeech: 'noun'),
      PassageVocab(english: 'comprehensive', turkish: 'kapsamlı', partOfSpeech: 'adj'),
      PassageVocab(english: 'neuropathy', turkish: 'sinir hasarı (nöropati)', partOfSpeech: 'noun'),
    ],
    questions: [
      PassageQuestion(
        question: 'How does type 2 diabetes differ primarily from type 1 diabetes according to the text?',
        options: [
          'Type 2 is an autoimmune condition.',
          'Type 2 is strongly linked to lifestyle factors like obesity.',
          'Type 2 cannot be treated with any medications.',
          'Type 2 only affects children and young adults.',
        ],
        correctIndex: 1,
        explanation: 'Tip 1 diyabetin otoimmün bir hastalık olduğu, Tip 2\\'nin ise yaşam tarzı faktörleri ve obezite ile güçlü bir şekilde ilişkili olduğu (strongly associated with lifestyle factors, particularly obesity) vurgulanmıştır.',
      ),
      PassageQuestion(
        question: 'What is usually the first line of treatment for type 2 diabetes?',
        options: [
          'Immediate insulin injections',
          'Surgical removal of the pancreas',
          'Lifestyle modifications like diet and exercise',
          'Experimental gene therapy',
        ],
        correctIndex: 2,
        explanation: 'İlk tedavi adımının genellikle diyet değişiklikleri ve düzenli egzersiz gibi yaşam tarzı değişiklikleri (lifestyle modifications) olduğu belirtilmiştir.',
      ),
    ],
  ),
  // ─── PARÇA 32 ───
  const ReadingPassage(
    id: 32,
    title: 'CRISPR and Gene Editing',
    difficulty: 'Zor',
    topic: 'Genetik',
    passage: '''CRISPR-Cas9 is a groundbreaking gene-editing technology adapted from a naturally occurring defense mechanism found in bacteria. It allows scientists to alter DNA sequences and modify gene function with unprecedented precision, efficiency, and flexibility. The system uses a guide RNA to identify a specific target sequence in the genome, and the Cas9 enzyme acts as molecular scissors to cut the DNA at that location.

The potential medical applications of CRISPR are vast. It holds the promise of curing genetic disorders, such as cystic fibrosis and sickle cell anemia, by correcting the underlying mutations. Additionally, researchers are exploring its use in developing targeted cancer therapies and combating infectious diseases like HIV. Despite its immense potential, gene editing also raises significant ethical concerns, particularly regarding off-target effects and the possibility of editing human embryos (germline editing).''',
    vocabulary: [
      PassageVocab(english: 'groundbreaking', turkish: 'çığır açan', partOfSpeech: 'adj'),
      PassageVocab(english: 'unprecedented', turkish: 'eşi benzeri görülmemiş', partOfSpeech: 'adj'),
      PassageVocab(english: 'mutation', turkish: 'mutasyon (genetik değişim)', partOfSpeech: 'noun'),
      PassageVocab(english: 'off-target effects', turkish: 'hedef dışı etkiler (yanlış genlerin değiştirilmesi)', partOfSpeech: 'noun'),
    ],
    questions: [
      PassageQuestion(
        question: 'What role does the Cas9 enzyme play in the CRISPR system?',
        options: [
          'It acts as a guide to find the RNA.',
          'It acts as molecular scissors to cut the DNA.',
          'It glues the broken DNA strands together.',
          'It duplicates the entire genome.',
        ],
        correctIndex: 1,
        explanation: 'Parçada Cas9 enziminin DNA\\'yı belirli bir yerden kesen "moleküler makas" (molecular scissors to cut the DNA) görevi gördüğü açıkça belirtilmiştir.',
      ),
      PassageQuestion(
        question: 'Why does CRISPR technology raise ethical concerns?',
        options: [
          'Because it is too expensive for most hospitals to use.',
          'Because of potential off-target effects and germline editing.',
          'Because it requires destroying healthy bacteria.',
          'Because it only works on animal cells, not human cells.',
        ],
        correctIndex: 1,
        explanation: 'Etik endişelerin özellikle hedef dışı etkiler (off-target effects) ve insan embriyolarının düzenlenmesi ihtimalinden kaynaklandığı ifade edilmiştir.',
      ),
    ],
  ),
  // ─── PARÇA 33 ───
  const ReadingPassage(
    id: 33,
    title: 'Hypertension Risks',
    difficulty: 'Orta',
    topic: 'Kardiyoloji',
    passage: '''Hypertension, commonly known as high blood pressure, is often referred to as the "silent killer" because it typically has no noticeable symptoms until significant damage has been done to the body. Blood pressure is the force exerted by circulating blood against the walls of the body\\'s arteries. When this pressure remains persistently high, it forces the heart to work harder to pump blood.

Over time, uncontrolled hypertension can lead to severe health complications. It damages the inner lining of the arteries, accelerating the process of atherosclerosis. This increases the risk of heart attacks, strokes, and chronic kidney disease. Risk factors for hypertension include a diet high in sodium, obesity, excessive alcohol consumption, and physical inactivity. Routine screening and blood pressure monitoring are essential for early detection and management.''',
    vocabulary: [
      PassageVocab(english: 'exert', turkish: 'uygulamak (güç, baskı)', partOfSpeech: 'verb'),
      PassageVocab(english: 'persistently', turkish: 'sürekli olarak, inatla', partOfSpeech: 'adv'),
      PassageVocab(english: 'atherosclerosis', turkish: 'damar sertliği', partOfSpeech: 'noun'),
      PassageVocab(english: 'screening', turkish: 'tarama', partOfSpeech: 'noun'),
    ],
    questions: [
      PassageQuestion(
        question: 'Why is hypertension called the "silent killer"?',
        options: [
          'Because it only occurs during sleep.',
          'Because it causes sudden, loud heart palpitations.',
          'Because it usually shows no symptoms until damage occurs.',
          'Because it cannot be detected by modern medical instruments.',
        ],
        correctIndex: 2,
        explanation: 'Hipertansiyonun vücuda önemli ölçüde zarar verene kadar belirgin bir semptom göstermediği (no noticeable symptoms until significant damage has been done) için "sessiz katil" olarak adlandırıldığı belirtilmiştir.',
      ),
      PassageQuestion(
        question: 'Which of the following is NOT listed as a risk factor for hypertension?',
        options: [
          'High sodium diet',
          'Excessive alcohol consumption',
          'Physical inactivity',
          'High vitamin C intake',
        ],
        correctIndex: 3,
        explanation: 'Risk faktörleri arasında yüksek sodyum, obezite, aşırı alkol ve hareketsizlik sayılmış; yüksek C vitamini alımından bahsedilmemiştir.',
      ),
    ],
  ),
  // ─── PARÇA 34 ───
  const ReadingPassage(
    id: 34,
    title: 'Autoimmune Diseases',
    difficulty: 'Zor',
    topic: 'İmmünoloji',
    passage: '''The immune system is designed to defend the body against foreign invaders such as bacteria and viruses. However, in autoimmune diseases, the immune system loses its ability to distinguish between self and non-self antigens. Consequently, it mistakenly produces autoantibodies that attack the body\\'s own healthy cells, tissues, and organs.

There are more than 80 known autoimmune disorders, including Rheumatoid Arthritis, Systemic Lupus Erythematosus (SLE), and Multiple Sclerosis. The exact etiology of autoimmune diseases remains elusive, though it is widely believed to involve a combination of genetic predisposition and environmental triggers, such as infections or chemical exposure. Treatment generally focuses on reducing immune system activity using immunosuppressive drugs, which, while effective, can leave patients more susceptible to opportunistic infections.''',
    vocabulary: [
      PassageVocab(english: 'invader', turkish: 'işgalci (mikrop)', partOfSpeech: 'noun'),
      PassageVocab(english: 'distinguish', turkish: 'ayırt etmek', partOfSpeech: 'verb'),
      PassageVocab(english: 'etiology', turkish: 'hastalık nedeni', partOfSpeech: 'noun'),
      PassageVocab(english: 'immunosuppressive', turkish: 'bağışıklık baskılayıcı', partOfSpeech: 'adj'),
    ],
    questions: [
      PassageQuestion(
        question: 'What fundamental error occurs in the immune system during an autoimmune disease?',
        options: [
          'It stops producing white blood cells completely.',
          'It mistakenly attacks the body\\'s own healthy cells.',
          'It ignores bacteria and focuses only on viruses.',
          'It attacks the immune systems of other people.',
        ],
        correctIndex: 1,
        explanation: 'Otoimmün hastalıklarda bağışıklık sisteminin vücudun kendi sağlıklı hücrelerine yanlışlıkla saldırdığı (mistakenly produces autoantibodies that attack the body\\'s own healthy cells) belirtilmiştir.',
      ),
      PassageQuestion(
        question: 'What is a significant drawback of using immunosuppressive drugs for treatment?',
        options: [
          'They cure the disease too quickly, causing shock.',
          'They make patients more vulnerable to other infections.',
          'They cause the immune system to become overly aggressive.',
          'They lead to permanent genetic mutations.',
        ],
        correctIndex: 1,
        explanation: 'Bağışıklık baskılayıcı ilaçların, hastaları fırsatçı enfeksiyonlara karşı daha savunmasız bıraktığı (leave patients more susceptible to opportunistic infections) ifade edilmiştir.',
      ),
    ],
  ),
  // ─── PARÇA 35 ───
  const ReadingPassage(
    id: 35,
    title: 'Mental Health and Exercise',
    difficulty: 'Kolay',
    topic: 'Psikiyatri',
    passage: '''The benefits of regular physical exercise extend far beyond cardiovascular health and weight management; it is also a powerful tool for improving mental health. Engaging in moderate aerobic exercise, such as brisk walking, swimming, or cycling, has been shown to significantly reduce symptoms of anxiety and depression.

When we exercise, the brain releases endorphins—chemicals that act as natural painkillers and mood elevators. Additionally, physical activity promotes neurogenesis (the growth of new neurons) in certain brain areas. Exercise also provides a healthy distraction from negative thoughts and helps improve sleep quality, which is often disrupted in individuals suffering from mental health disorders.''',
    vocabulary: [
      PassageVocab(english: 'extend', turkish: 'uzanmak, kapsamak', partOfSpeech: 'verb'),
      PassageVocab(english: 'brisk', turkish: 'tempolu, canlı', partOfSpeech: 'adj'),
      PassageVocab(english: 'endorphin', turkish: 'endorfin (mutluluk hormonu)', partOfSpeech: 'noun'),
      PassageVocab(english: 'distraction', turkish: 'dikkat dağıtıcı şey, oyalama', partOfSpeech: 'noun'),
    ],
    questions: [
      PassageQuestion(
        question: 'According to the passage, how does exercise chemically affect the brain?',
        options: [
          'It decreases the amount of oxygen in the brain.',
          'It triggers the release of endorphins to elevate mood.',
          'It stops the production of new neurons.',
          'It reduces the amount of gray matter.',
        ],
        correctIndex: 1,
        explanation: 'Egzersiz yapıldığında beynin doğal ağrı kesici ve ruh halini yükseltici olan endorfinleri salgıladığı (brain releases endorphins) belirtilmiştir.',
      ),
      PassageQuestion(
        question: 'Which of the following is an indirect mental health benefit of physical activity mentioned in the text?',
        options: [
          'Curing schizophrenia permanently',
          'Improving sleep quality',
          'Eliminating the need for a balanced diet',
          'Preventing genetic mutations',
        ],
        correctIndex: 1,
        explanation: 'Fiziksel aktivitenin ruh sağlığı bozukluğu olanlarda sıklıkla bozulan uyku kalitesini artırmaya (helps improve sleep quality) yardımcı olduğu ifade edilmiştir.',
      ),
    ],
  ),
  // ─── PARÇA 36 ───
  const ReadingPassage(
    id: 36,
    title: 'Osteoporosis and Bone Density',
    difficulty: 'Orta',
    topic: 'Ortopedi',
    passage: '''Osteoporosis is a skeletal disorder characterized by compromised bone strength, predisposing an individual to an increased risk of fracture. As people age, the rate of bone resorption (breakdown) outpaces bone formation, leading to a loss of bone mass and deterioration of bone microarchitecture. Bones become porous and fragile, often breaking from minor falls or even simple actions like bending over.

Postmenopausal women are at the highest risk due to the sudden drop in estrogen levels, a hormone that protects against bone loss. Preventive measures are most effective when started early in life. Adequate calcium and vitamin D intake, combined with weight-bearing exercises like walking or resistance training, are essential for building and maintaining peak bone mass. Pharmacological treatments, such as bisphosphonates, are used in high-risk patients to slow bone loss.''',
    vocabulary: [
      PassageVocab(english: 'predispose', turkish: 'yatkınlaştırmak', partOfSpeech: 'verb'),
      PassageVocab(english: 'resorption', turkish: 'geri emilim, yıkım', partOfSpeech: 'noun'),
      PassageVocab(english: 'porous', turkish: 'gözenekli', partOfSpeech: 'adj'),
      PassageVocab(english: 'weight-bearing', turkish: 'ağırlık taşıyıcı', partOfSpeech: 'adj'),
    ],
    questions: [
      PassageQuestion(
        question: 'Why are postmenopausal women at a higher risk of developing osteoporosis?',
        options: [
          'Because they generally consume less calcium than men.',
          'Due to a sudden decrease in estrogen, which normally protects bones.',
          'Because they are less likely to engage in physical activities.',
          'Due to an overproduction of vitamin D in their bodies.',
        ],
        correctIndex: 1,
        explanation: 'Menopoz sonrası kadınların, kemik kaybına karşı koruma sağlayan östrojen seviyesindeki ani düşüş (sudden drop in estrogen levels) nedeniyle yüksek risk altında olduğu belirtilmiştir.',
      ),
      PassageQuestion(
        question: 'Which type of exercise is recommended for maintaining bone mass?',
        options: [
          'Swimming and water aerobics',
          'Only cardiovascular exercises like cycling',
          'Weight-bearing exercises like walking or resistance training',
          'Deep breathing exercises',
        ],
        correctIndex: 2,
        explanation: 'Kemik kütlesini korumak için yürüme veya direnç antrenmanı gibi ağırlık taşıyıcı egzersizler (weight-bearing exercises) önerilmiştir.',
      ),
    ],
  ),
  // ─── PARÇA 37 ───
  const ReadingPassage(
    id: 37,
    title: 'Stem Cells in Medicine',
    difficulty: 'Zor',
    topic: 'Yenileyici Tıp',
    passage: '''Stem cells are unique biological cells capable of self-renewal and differentiation into various specialized cell types. In regenerative medicine, they hold extraordinary potential for repairing or replacing damaged tissues and organs. There are two primary types of stem cells used in research: embryonic stem cells, which are pluripotent, and adult stem cells, which are generally multipotent.

One of the most established applications of stem cell therapy is bone marrow transplantation, used to treat blood disorders like leukemia. However, researchers are exploring broader applications, such as regenerating cardiac muscle after a heart attack or replacing dopamine-producing neurons in Parkinson\\'s disease. A significant breakthrough came with the development of induced pluripotent stem cells (iPSCs), where adult somatic cells are genetically reprogrammed to an embryonic-like state, bypassing many ethical controversies.''',
    vocabulary: [
      PassageVocab(english: 'differentiation', turkish: 'farklılaşma', partOfSpeech: 'noun'),
      PassageVocab(english: 'pluripotent', turkish: 'birçok hücre tipine dönüşebilen', partOfSpeech: 'adj'),
      PassageVocab(english: 'breakthrough', turkish: 'önemli buluş, atılım', partOfSpeech: 'noun'),
      PassageVocab(english: 'controversy', turkish: 'tartışma, ihtilaf', partOfSpeech: 'noun'),
    ],
    questions: [
      PassageQuestion(
        question: 'What is a key difference between embryonic and adult stem cells mentioned in the text?',
        options: [
          'Embryonic stem cells can only become blood cells.',
          'Embryonic stem cells are pluripotent, while adult stem cells are usually multipotent.',
          'Adult stem cells have a higher ethical controversy.',
          'Embryonic stem cells cannot self-renew.',
        ],
        correctIndex: 1,
        explanation: 'Embriyonik kök hücrelerin pluripotent olduğu, yetişkin kök hücrelerin ise genel olarak multipotent olduğu (embryonic stem cells, which are pluripotent, and adult stem cells, which are generally multipotent) ifade edilmiştir.',
      ),
      PassageQuestion(
        question: 'Why are induced pluripotent stem cells (iPSCs) considered a significant breakthrough?',
        options: [
          'They allow adult cells to behave like embryonic cells, avoiding ethical issues.',
          'They are the only cure for leukemia.',
          'They naturally occur in the human brain without scientific intervention.',
          'They completely stop the aging process.',
        ],
        correctIndex: 0,
        explanation: 'iPSC\\'lerin, yetişkin somatik hücrelerin embriyonik benzeri bir duruma yeniden programlanarak birçok etik tartışmayı atlatması (bypassing many ethical controversies) nedeniyle bir dönüm noktası olduğu vurgulanmıştır.',
      ),
    ],
  ),
  // ─── PARÇA 38 ───
  const ReadingPassage(
    id: 38,
    title: 'Asthma and Air Pollution',
    difficulty: 'Orta',
    topic: 'Göğüs Hastalıkları',
    passage: '''Asthma is a chronic inflammatory disorder of the airways characterized by episodes of wheezing, breathlessness, chest tightness, and coughing. The inflammation makes the airways hyperresponsive to various stimuli. When exposed to triggers, the smooth muscles surrounding the airways constrict, and mucus production increases, severely restricting airflow.

Air pollution is a major environmental trigger for asthma exacerbations. Particulate matter (PM), ozone, and nitrogen dioxide emitted from vehicle exhaust and industrial facilities can penetrate deep into the lungs. Long-term exposure to polluted air not only triggers asthma attacks in individuals who already have the condition but is also linked to the development of new-onset asthma in children. Consequently, improving urban air quality is considered a critical public health strategy for managing respiratory diseases.''',
    vocabulary: [
      PassageVocab(english: 'wheezing', turkish: 'hırıltılı solunum', partOfSpeech: 'noun'),
      PassageVocab(english: 'hyperresponsive', turkish: 'aşırı duyarlı', partOfSpeech: 'adj'),
      PassageVocab(english: 'exacerbation', turkish: 'alevlenme, kötüleşme', partOfSpeech: 'noun'),
      PassageVocab(english: 'particulate matter', turkish: 'partikül madde', partOfSpeech: 'noun'),
    ],
    questions: [
      PassageQuestion(
        question: 'What physical changes occur in the airways during an asthma attack?',
        options: [
          'The airways expand and produce less mucus.',
          'The smooth muscles constrict and mucus production increases.',
          'The airways become completely permanently blocked.',
          'The lungs increase their capacity to absorb oxygen.',
        ],
        correctIndex: 1,
        explanation: 'Astım atağı sırasında hava yollarını çevreleyen düz kasların kasıldığı ve mukus üretiminin arttığı (smooth muscles... constrict, and mucus production increases) açıklanmıştır.',
      ),
      PassageQuestion(
        question: 'According to the passage, how does air pollution affect asthma?',
        options: [
          'It only affects adults who smoke.',
          'It reduces the hyperresponsiveness of the airways.',
          'It triggers attacks and can cause new-onset asthma in children.',
          'It has no proven link to respiratory diseases.',
        ],
        correctIndex: 2,
        explanation: 'Hava kirliliğinin sadece atakları tetiklemekle kalmayıp, çocuklarda yeni başlayan astım gelişimiyle de bağlantılı olduğu (linked to the development of new-onset asthma in children) belirtilmiştir.',
      ),
    ],
  ),
  // ─── PARÇA 39 ───
  const ReadingPassage(
    id: 39,
    title: 'Skin Cancer and UV Radiation',
    difficulty: 'Kolay',
    topic: 'Dermatoloji',
    passage: '''Skin cancer is the most common form of cancer globally, and its primary cause is overexposure to ultraviolet (UV) radiation from the sun or tanning beds. UV radiation damages the DNA in skin cells, causing mutations that lead to uncontrolled cell growth. There are three main types of skin cancer: basal cell carcinoma, squamous cell carcinoma, and melanoma.

Melanoma is the least common but most dangerous type, as it is highly likely to spread to other parts of the body if not caught early. Preventive measures are simple but vital. Dermatologists recommend wearing broad-spectrum sunscreen, seeking shade during peak sunlight hours, and wearing protective clothing. Early detection through regular skin checks significantly improves the chances of successful treatment.''',
    vocabulary: [
      PassageVocab(english: 'overexposure', turkish: 'aşırı maruz kalma', partOfSpeech: 'noun'),
      PassageVocab(english: 'carcinoma', turkish: 'karsinom, kanser türü', partOfSpeech: 'noun'),
      PassageVocab(english: 'broad-spectrum', turkish: 'geniş spektrumlu', partOfSpeech: 'adj'),
      PassageVocab(english: 'detection', turkish: 'teşhis, saptama', partOfSpeech: 'noun'),
    ],
    questions: [
      PassageQuestion(
        question: 'How does UV radiation cause skin cancer?',
        options: [
          'By destroying the red blood cells near the skin.',
          'By damaging the DNA in skin cells, leading to mutations.',
          'By increasing the body temperature excessively.',
          'By burning the top layer of the skin completely.',
        ],
        correctIndex: 1,
        explanation: 'UV radyasyonunun cilt hücrelerindeki DNA\\'ya zarar vererek kontrolsüz hücre büyümesine yol açan mutasyonlara neden olduğu (damages the DNA in skin cells, causing mutations) ifade edilmiştir.',
      ),
      PassageQuestion(
        question: 'Why is melanoma considered the most dangerous type of skin cancer?',
        options: [
          'It is the most common type of skin cancer.',
          'It is highly likely to spread to other parts of the body.',
          'It cannot be detected by dermatologists.',
          'It only affects children.',
        ],
        correctIndex: 1,
        explanation: 'Melanomun, erken teşhis edilmezse vücudun diğer bölgelerine yayılma olasılığı yüksek olduğu için (highly likely to spread to other parts of the body) en tehlikeli tür olduğu belirtilmiştir.',
      ),
    ],
  ),
  // ─── PARÇA 40 ───
  const ReadingPassage(
    id: 40,
    title: 'Parkinson\\'s Disease',
    difficulty: 'Zor',
    topic: 'Nöroloji',
    passage: '''Parkinson\\'s disease is a progressive disorder of the nervous system that primarily affects movement. The hallmark pathology of the disease is the gradual degeneration and death of dopamine-producing neurons in a specific area of the brain called the substantia nigra. Dopamine is a critical neurotransmitter responsible for relaying messages that plan and control body movements.

As dopamine levels plummet, individuals begin to exhibit classic motor symptoms: resting tremors, rigidity, bradykinesia (slowness of movement), and postural instability. Non-motor symptoms, such as sleep disturbances and cognitive decline, also frequently occur as the disease advances. Currently, treatments like Levodopa help manage the motor symptoms by replenishing dopamine levels temporarily. Deep brain stimulation (DBS) is a surgical option for advanced cases, but a definitive cure remains undiscovered.''',
    vocabulary: [
      PassageVocab(english: 'hallmark', turkish: 'ayırt edici özellik', partOfSpeech: 'noun'),
      PassageVocab(english: 'degeneration', turkish: 'yozlaşma, bozulma', partOfSpeech: 'noun'),
      PassageVocab(english: 'plummet', turkish: 'hızla düşmek, çakılmak', partOfSpeech: 'verb'),
      PassageVocab(english: 'replenish', turkish: 'yeniden doldurmak, takviye etmek', partOfSpeech: 'verb'),
    ],
    questions: [
      PassageQuestion(
        question: 'What is the primary biological cause of movement issues in Parkinson\\'s disease?',
        options: [
          'An overproduction of dopamine in the brain.',
          'The death of dopamine-producing neurons in the substantia nigra.',
          'A genetic defect that weakens the muscles directly.',
          'Damage to the spinal cord from a physical injury.',
        ],
        correctIndex: 1,
        explanation: 'Hastalığın temel özelliğinin, beynin substantia nigra bölgesindeki dopamin üreten nöronların kademeli olarak dejenerasyonu ve ölümü (death of dopamine-producing neurons) olduğu belirtilmiştir.',
      ),
      PassageQuestion(
        question: 'What is the purpose of the drug Levodopa as mentioned in the text?',
        options: [
          'To permanently cure the disease by regenerating neurons.',
          'To temporarily replenish dopamine levels and manage motor symptoms.',
          'To act as a surgical alternative to deep brain stimulation.',
          'To prevent sleep disturbances exclusively.',
        ],
        correctIndex: 1,
        explanation: 'Levodopa gibi tedavilerin, dopamin seviyelerini geçici olarak takviye ederek motor semptomları yönetmeye yardımcı olduğu (replenishing dopamine levels temporarily) ifade edilmiştir.',
      ),
    ],
  ),
"""

with open(r"c:\Users\GAMER\Desktop\sukoyok\add_passages.py", "w", encoding="utf-8") as f:
    f.write(f'''
import os

target_file = r"c:\\Users\\GAMER\\Desktop\\sukoyok\\lib\\data\\reading_passages_data.dart"

with open(target_file, "r", encoding="utf-8") as f:
    content = f.read()

target_str = """    ],
  ),
];"""

replacement_str = """    ],
  ),
""" + content_to_append + "];"

if target_str in content:
    new_content = content.replace(target_str, replacement_str)
    with open(target_file, "w", encoding="utf-8") as f:
        f.write(new_content)
    print("Successfully added 20 reading passages.")
else:
    print("Could not find the target string to replace.")
''')
