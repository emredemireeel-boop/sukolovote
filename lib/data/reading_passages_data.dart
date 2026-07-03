/// YÖKDİL Sağlık - Okuma Parçaları Modülü
/// Gerçek sınav formatında okuma parçaları, anahtar kelimeler ve sorular

class ReadingPassage {
  final int id;
  final String title;
  final String difficulty; // 'Kolay', 'Orta', 'Zor'
  final String topic;
  final String passage;
  final List<PassageVocab> vocabulary;
  final List<PassageQuestion> questions;

  const ReadingPassage({
    required this.id,
    required this.title,
    required this.difficulty,
    required this.topic,
    required this.passage,
    required this.vocabulary,
    required this.questions,
  });
}

class PassageVocab {
  final String english;
  final String turkish;
  final String? partOfSpeech;

  const PassageVocab({
    required this.english,
    required this.turkish,
    this.partOfSpeech,
  });
}

class PassageQuestion {
  final String question;
  final List<String> options;
  final int correctIndex;
  final String explanation;

  const PassageQuestion({
    required this.question,
    required this.options,
    required this.correctIndex,
    required this.explanation,
  });
}

final List<ReadingPassage> readingPassages = [
  // ─── PARÇA 1 ───
  const ReadingPassage(
    id: 1,
    title: 'Antibiyotik Direnci',
    difficulty: 'Orta',
    topic: 'Mikrobiyoloji',
    passage: '''Antibiotic resistance has become one of the most pressing public health concerns of the 21st century. When bacteria are repeatedly exposed to antibiotics, they can develop mechanisms to survive these drugs. This phenomenon, known as antimicrobial resistance (AMR), renders previously effective treatments useless against infections that were once easily curable.

The overuse and misuse of antibiotics in both human medicine and agriculture have accelerated the emergence of resistant strains. In many countries, antibiotics are available without prescription, leading to self-medication and inappropriate dosing. Furthermore, the widespread use of antibiotics in livestock farming to promote growth has contributed significantly to the problem.

The World Health Organization (WHO) has identified AMR as one of the top ten global public health threats. Without urgent action, common infections and minor injuries could once again become fatal. Researchers are exploring alternative approaches, including bacteriophage therapy, antimicrobial peptides, and the development of novel drug classes. However, the pipeline for new antibiotics remains alarmingly thin, as pharmaceutical companies find it less profitable to invest in antibiotics compared to drugs for chronic conditions.

To combat AMR, a multifaceted approach is essential. This includes implementing stricter regulations on antibiotic prescriptions, investing in rapid diagnostic tools that can distinguish between bacterial and viral infections, and educating both healthcare professionals and the public about the responsible use of antibiotics. International cooperation is also critical, as resistant bacteria do not respect national borders.''',
    vocabulary: [
      PassageVocab(english: 'antibiotic resistance', turkish: 'antibiyotik direnci', partOfSpeech: 'noun'),
      PassageVocab(english: 'pressing', turkish: 'acil, baskılayıcı', partOfSpeech: 'adj'),
      PassageVocab(english: 'exposed to', turkish: 'maruz kalmak', partOfSpeech: 'phrasal verb'),
      PassageVocab(english: 'render', turkish: 'hale getirmek, kılmak', partOfSpeech: 'verb'),
      PassageVocab(english: 'emergence', turkish: 'ortaya çıkış', partOfSpeech: 'noun'),
      PassageVocab(english: 'strain', turkish: 'suş, tür', partOfSpeech: 'noun'),
      PassageVocab(english: 'self-medication', turkish: 'kendi kendine ilaç kullanımı', partOfSpeech: 'noun'),
      PassageVocab(english: 'livestock', turkish: 'çiftlik hayvanları', partOfSpeech: 'noun'),
      PassageVocab(english: 'bacteriophage', turkish: 'bakteriyofaj', partOfSpeech: 'noun'),
      PassageVocab(english: 'pipeline', turkish: 'süreç, hat', partOfSpeech: 'noun'),
      PassageVocab(english: 'multifaceted', turkish: 'çok yönlü', partOfSpeech: 'adj'),
      PassageVocab(english: 'distinguish', turkish: 'ayırt etmek', partOfSpeech: 'verb'),
    ],
    questions: [
      PassageQuestion(
        question: 'What is the main topic of the passage?',
        options: [
          'The discovery of new antibiotics',
          'The growing threat of antibiotic resistance',
          'The history of pharmaceutical companies',
          'The role of WHO in medicine',
        ],
        correctIndex: 1,
        explanation: 'Paragrafın ana konusu antibiyotik direncinin artan tehdididir. İlk cümleden itibaren bu konu işlenmektedir.',
      ),
      PassageQuestion(
        question: 'According to the passage, which of the following contributes to antibiotic resistance?',
        options: [
          'Excessive exercise and poor diet',
          'Overuse of antibiotics in medicine and agriculture',
          'Lack of hospital infrastructure',
          'Insufficient water supply in developing countries',
        ],
        correctIndex: 1,
        explanation: 'İkinci paragrafta "overuse and misuse of antibiotics in both human medicine and agriculture" ifadesiyle bu açıkça belirtilmiştir.',
      ),
      PassageQuestion(
        question: 'The word "renders" in the first paragraph is closest in meaning to ----.',
        options: [
          'prevents',
          'makes',
          'destroys',
          'evaluates',
        ],
        correctIndex: 1,
        explanation: '"Renders" burada "hale getirmek" anlamında kullanılmıştır. "Makes" en yakın anlam karşılığıdır.',
      ),
      PassageQuestion(
        question: 'Why is the pipeline for new antibiotics described as "alarmingly thin"?',
        options: [
          'Because bacteria evolve too quickly',
          'Because WHO restricts new drug development',
          'Because pharmaceutical companies find antibiotics less profitable',
          'Because doctors refuse to prescribe new antibiotics',
        ],
        correctIndex: 2,
        explanation: 'Üçüncü paragrafta "pharmaceutical companies find it less profitable to invest in antibiotics" ifadesi geçmektedir.',
      ),
      PassageQuestion(
        question: 'Which of the following is NOT mentioned as a solution to combat AMR?',
        options: [
          'Stricter regulations on prescriptions',
          'Rapid diagnostic tools',
          'Mandatory vaccination programs',
          'International cooperation',
        ],
        correctIndex: 2,
        explanation: 'Son paragrafta aşılama programlarından bahsedilmemektedir. Diğer tüm seçenekler metinde yer almaktadır.',
      ),
    ],
  ),

  // ─── PARÇA 2 ───
  const ReadingPassage(
    id: 2,
    title: 'Kök Hücre Tedavisi',
    difficulty: 'Zor',
    topic: 'Rejeneratif Tıp',
    passage: '''Stem cell therapy represents one of the most promising frontiers in modern medicine. Stem cells possess the remarkable ability to develop into many different cell types in the body, serving as an internal repair system that can theoretically divide without limit to replenish other cells. When a stem cell divides, each new cell has the potential either to remain a stem cell or become another type of cell with a more specialized function, such as a muscle cell, a red blood cell, or a brain cell.

There are two main types of stem cells: embryonic stem cells, which are derived from early-stage embryos, and adult stem cells, which are found in various tissues throughout the body. A third type, induced pluripotent stem cells (iPSCs), can be generated by reprogramming adult cells to an embryonic-like state. This breakthrough, which earned Shinya Yamanaka the Nobel Prize in 2012, has opened new avenues for personalized medicine while circumventing many of the ethical concerns associated with embryonic stem cell research.

Current clinical applications of stem cell therapy include bone marrow transplants for blood cancers, skin grafts for burn victims, and corneal transplants for restoring vision. Researchers are also investigating the potential of stem cells to treat neurodegenerative diseases such as Parkinson's and Alzheimer's, spinal cord injuries, heart disease, and diabetes. However, significant challenges remain, including the risk of tumor formation, immune rejection, and the difficulty of controlling cell differentiation in vivo.

Despite these obstacles, advances in gene editing technologies like CRISPR-Cas9, combined with improved understanding of cellular biology, are accelerating progress in the field. Many scientists believe that within the next few decades, stem cell-based therapies could revolutionize the treatment of conditions that are currently considered incurable.''',
    vocabulary: [
      PassageVocab(english: 'stem cell', turkish: 'kök hücre', partOfSpeech: 'noun'),
      PassageVocab(english: 'frontier', turkish: 'sınır, öncü alan', partOfSpeech: 'noun'),
      PassageVocab(english: 'possess', turkish: 'sahip olmak', partOfSpeech: 'verb'),
      PassageVocab(english: 'replenish', turkish: 'yenilemek, tazelemek', partOfSpeech: 'verb'),
      PassageVocab(english: 'specialized', turkish: 'özelleşmiş', partOfSpeech: 'adj'),
      PassageVocab(english: 'derived from', turkish: 'elde edilmek, türetilmek', partOfSpeech: 'phrasal verb'),
      PassageVocab(english: 'pluripotent', turkish: 'çok potansiyelli', partOfSpeech: 'adj'),
      PassageVocab(english: 'circumvent', turkish: 'aşmak, etrafından dolanmak', partOfSpeech: 'verb'),
      PassageVocab(english: 'neurodegenerative', turkish: 'nörodejeneratif', partOfSpeech: 'adj'),
      PassageVocab(english: 'differentiation', turkish: 'farklılaşma', partOfSpeech: 'noun'),
      PassageVocab(english: 'in vivo', turkish: 'canlı organizmada', partOfSpeech: 'adv'),
      PassageVocab(english: 'incurable', turkish: 'tedavi edilemez', partOfSpeech: 'adj'),
    ],
    questions: [
      PassageQuestion(
        question: 'What is the primary characteristic of stem cells mentioned in the passage?',
        options: [
          'They can only become blood cells',
          'They can develop into many different cell types',
          'They are found exclusively in embryos',
          'They divide only a limited number of times',
        ],
        correctIndex: 1,
        explanation: 'İlk paragrafta "possess the remarkable ability to develop into many different cell types" ifadesi geçmektedir.',
      ),
      PassageQuestion(
        question: 'What significant contribution did Shinya Yamanaka make?',
        options: [
          'He discovered embryonic stem cells',
          'He performed the first bone marrow transplant',
          'He developed a method to reprogram adult cells to an embryonic-like state',
          'He invented CRISPR-Cas9 gene editing',
        ],
        correctIndex: 2,
        explanation: 'İkinci paragrafta Yamanaka\'nın yetişkin hücreleri embriyonik benzeri duruma yeniden programlayarak Nobel Ödülü aldığı belirtilmektedir.',
      ),
      PassageQuestion(
        question: 'The word "circumventing" in the second paragraph is closest in meaning to ----.',
        options: [
          'increasing',
          'avoiding',
          'creating',
          'understanding',
        ],
        correctIndex: 1,
        explanation: '"Circumvent" kelimesi "aşmak, etrafından dolanmak" anlamına gelir. "Avoiding" (kaçınmak) en yakın anlam karşılığıdır.',
      ),
      PassageQuestion(
        question: 'Which of the following is mentioned as a current challenge in stem cell therapy?',
        options: [
          'High cost of CRISPR technology',
          'Lack of government funding',
          'Risk of tumor formation',
          'Shortage of qualified researchers',
        ],
        correctIndex: 2,
        explanation: 'Üçüncü paragrafta "the risk of tumor formation" açıkça bir zorluk olarak belirtilmiştir.',
      ),
      PassageQuestion(
        question: 'According to the passage, what is the overall outlook for stem cell therapy?',
        options: [
          'It has been largely abandoned due to ethical concerns',
          'It is limited only to bone marrow transplants',
          'It could revolutionize treatment of incurable conditions in coming decades',
          'It is too dangerous for clinical applications',
        ],
        correctIndex: 2,
        explanation: 'Son paragrafta "stem cell-based therapies could revolutionize the treatment of conditions that are currently considered incurable" ifadesi geçmektedir.',
      ),
    ],
  ),

  // ─── PARÇA 3 ───
  const ReadingPassage(
    id: 3,
    title: 'Bağırsak Mikrobiyomu',
    difficulty: 'Orta',
    topic: 'Gastroenteroloji',
    passage: '''The human gut microbiome, a complex ecosystem of trillions of microorganisms residing in the gastrointestinal tract, has emerged as a crucial factor in maintaining overall health. These microbial communities, which include bacteria, viruses, fungi, and archaea, play essential roles in digestion, immune system regulation, and even mental health through what scientists call the gut-brain axis.

Research has revealed that the composition of the gut microbiome is influenced by numerous factors, including diet, genetics, mode of birth delivery, antibiotic use, and environmental exposures. A diverse microbiome is generally associated with better health outcomes, while a reduction in microbial diversity — a condition known as dysbiosis — has been linked to various diseases, including inflammatory bowel disease, obesity, type 2 diabetes, and certain autoimmune disorders.

One of the most fascinating discoveries in recent years is the role of the gut microbiome in modulating the immune system. Approximately 70% of the body's immune cells reside in the gut-associated lymphoid tissue (GALT). The microbiome helps train these immune cells to distinguish between harmful pathogens and harmless substances, thereby preventing both infections and inappropriate immune responses such as allergies and autoimmune diseases.

Fecal microbiota transplantation (FMT) has emerged as a groundbreaking treatment for recurrent Clostridioides difficile infections, with cure rates exceeding 90%. Researchers are now investigating whether similar approaches could be used to treat other conditions associated with dysbiosis. Additionally, the development of targeted probiotics and prebiotics designed to restore healthy microbial balance represents a rapidly growing area of pharmaceutical research.''',
    vocabulary: [
      PassageVocab(english: 'gut microbiome', turkish: 'bağırsak mikrobiyomu', partOfSpeech: 'noun'),
      PassageVocab(english: 'reside', turkish: 'ikamet etmek, bulunmak', partOfSpeech: 'verb'),
      PassageVocab(english: 'gastrointestinal tract', turkish: 'sindirim sistemi', partOfSpeech: 'noun'),
      PassageVocab(english: 'composition', turkish: 'bileşim', partOfSpeech: 'noun'),
      PassageVocab(english: 'dysbiosis', turkish: 'disbiyoz (mikrop dengesizliği)', partOfSpeech: 'noun'),
      PassageVocab(english: 'inflammatory', turkish: 'iltihaplı, enflamatuvar', partOfSpeech: 'adj'),
      PassageVocab(english: 'modulate', turkish: 'düzenlemek, ayarlamak', partOfSpeech: 'verb'),
      PassageVocab(english: 'lymphoid tissue', turkish: 'lenfoid doku', partOfSpeech: 'noun'),
      PassageVocab(english: 'pathogen', turkish: 'patojen, hastalık yapıcı', partOfSpeech: 'noun'),
      PassageVocab(english: 'fecal', turkish: 'dışkıya ait, fekal', partOfSpeech: 'adj'),
      PassageVocab(english: 'groundbreaking', turkish: 'çığır açan', partOfSpeech: 'adj'),
      PassageVocab(english: 'prebiotic', turkish: 'prebiyotik', partOfSpeech: 'noun'),
    ],
    questions: [
      PassageQuestion(
        question: 'What does the passage primarily discuss?',
        options: [
          'The treatment of gastrointestinal infections',
          'The importance and functions of the gut microbiome',
          'The development of new antibiotics',
          'The history of microbiology',
        ],
        correctIndex: 1,
        explanation: 'Parça boyunca bağırsak mikrobiyomunun önemi, işlevleri ve sağlık üzerindeki etkileri tartışılmaktadır.',
      ),
      PassageQuestion(
        question: 'According to the passage, what is dysbiosis?',
        options: [
          'A type of bacterial infection',
          'A reduction in microbial diversity',
          'An increase in harmful pathogens',
          'A genetic disorder affecting digestion',
        ],
        correctIndex: 1,
        explanation: 'İkinci paragrafta dysbiosis "a reduction in microbial diversity" olarak tanımlanmıştır.',
      ),
      PassageQuestion(
        question: 'What percentage of the body\'s immune cells are located in the gut?',
        options: [
          'About 50%',
          'About 60%',
          'About 70%',
          'About 90%',
        ],
        correctIndex: 2,
        explanation: 'Üçüncü paragrafta "Approximately 70% of the body\'s immune cells reside in the gut-associated lymphoid tissue" ifadesi geçmektedir.',
      ),
      PassageQuestion(
        question: 'The word "groundbreaking" in the last paragraph is closest in meaning to ----.',
        options: [
          'ineffective',
          'traditional',
          'revolutionary',
          'temporary',
        ],
        correctIndex: 2,
        explanation: '"Groundbreaking" kelimesi "çığır açan" anlamına gelir. "Revolutionary" (devrimsel) en yakın anlam karşılığıdır.',
      ),
      PassageQuestion(
        question: 'Which of the following is NOT mentioned as a factor influencing the gut microbiome?',
        options: [
          'Diet and genetics',
          'Mode of birth delivery',
          'Blood type',
          'Antibiotic use',
        ],
        correctIndex: 2,
        explanation: 'İkinci paragrafta "diet, genetics, mode of birth delivery, antibiotic use" faktörleri sayılmıştır. Kan grubu (blood type) bunlar arasında yer almamaktadır.',
      ),
    ],
  ),

  // ─── PARÇA 4 ───
  const ReadingPassage(
    id: 4,
    title: 'Telemedikal ve Dijital Sağlık',
    difficulty: 'Kolay',
    topic: 'Sağlık Teknolojisi',
    passage: '''Telemedicine, the practice of providing healthcare services remotely through telecommunications technology, has experienced unprecedented growth in recent years, particularly accelerated by the COVID-19 pandemic. What was once considered a niche service primarily used in rural areas has rapidly become a mainstream component of healthcare delivery worldwide.

The advantages of telemedicine are numerous. Patients can consult with healthcare providers from the comfort of their homes, eliminating travel time and associated costs. This is especially beneficial for elderly patients, individuals with mobility limitations, and those living in geographically isolated areas. Moreover, telemedicine has proven effective in managing chronic conditions, providing mental health services, and enabling follow-up consultations that might otherwise be missed due to scheduling conflicts.

However, telemedicine is not without limitations. Physical examinations, certain diagnostic procedures, and emergency care still require in-person visits. There are also concerns about data privacy and cybersecurity, as sensitive medical information is transmitted over digital networks. Additionally, the digital divide — the gap between those who have access to technology and those who do not — poses a significant barrier to equitable healthcare delivery through telemedicine.

Despite these challenges, the integration of artificial intelligence, wearable health monitoring devices, and improved internet connectivity is expected to further enhance the capabilities of telemedicine. Many healthcare experts predict that a hybrid model, combining both virtual and in-person care, will become the standard approach to healthcare delivery in the coming years.''',
    vocabulary: [
      PassageVocab(english: 'telemedicine', turkish: 'teletıp, uzaktan tıp', partOfSpeech: 'noun'),
      PassageVocab(english: 'unprecedented', turkish: 'benzeri görülmemiş', partOfSpeech: 'adj'),
      PassageVocab(english: 'niche', turkish: 'niş, dar alan', partOfSpeech: 'noun'),
      PassageVocab(english: 'mainstream', turkish: 'ana akım, yaygın', partOfSpeech: 'adj'),
      PassageVocab(english: 'mobility', turkish: 'hareketlilik', partOfSpeech: 'noun'),
      PassageVocab(english: 'geographically isolated', turkish: 'coğrafi olarak yalıtılmış', partOfSpeech: 'adj'),
      PassageVocab(english: 'chronic', turkish: 'kronik, süreğen', partOfSpeech: 'adj'),
      PassageVocab(english: 'cybersecurity', turkish: 'siber güvenlik', partOfSpeech: 'noun'),
      PassageVocab(english: 'digital divide', turkish: 'dijital uçurum', partOfSpeech: 'noun'),
      PassageVocab(english: 'equitable', turkish: 'eşit, hakkaniyetli', partOfSpeech: 'adj'),
      PassageVocab(english: 'wearable', turkish: 'giyilebilir', partOfSpeech: 'adj'),
      PassageVocab(english: 'hybrid', turkish: 'karma, hibrit', partOfSpeech: 'adj'),
    ],
    questions: [
      PassageQuestion(
        question: 'What event significantly accelerated the growth of telemedicine?',
        options: [
          'Development of 5G networks',
          'The COVID-19 pandemic',
          'Invention of smartphones',
          'Changes in insurance policies',
        ],
        correctIndex: 1,
        explanation: 'İlk paragrafta "particularly accelerated by the COVID-19 pandemic" ifadesi geçmektedir.',
      ),
      PassageQuestion(
        question: 'Which group of patients is mentioned as particularly benefiting from telemedicine?',
        options: [
          'Children and adolescents',
          'Professional athletes',
          'Elderly patients and those with mobility limitations',
          'Patients requiring surgery',
        ],
        correctIndex: 2,
        explanation: 'İkinci paragrafta "elderly patients, individuals with mobility limitations" grubundan bahsedilmektedir.',
      ),
      PassageQuestion(
        question: 'What does the term "digital divide" refer to in this passage?',
        options: [
          'The separation between digital and analog medical records',
          'The gap between those who have access to technology and those who do not',
          'The difference between rural and urban hospitals',
          'The conflict between traditional and modern medicine',
        ],
        correctIndex: 1,
        explanation: 'Üçüncü paragrafta "digital divide" kavramı açıkça "the gap between those who have access to technology and those who do not" olarak tanımlanmıştır.',
      ),
      PassageQuestion(
        question: 'The word "unprecedented" in the first paragraph is closest in meaning to ----.',
        options: [
          'gradual',
          'expected',
          'never seen before',
          'declining',
        ],
        correctIndex: 2,
        explanation: '"Unprecedented" kelimesi "benzeri görülmemiş, daha önce hiç yaşanmamış" anlamına gelir.',
      ),
      PassageQuestion(
        question: 'What healthcare model do experts predict for the future?',
        options: [
          'Fully virtual healthcare with no in-person visits',
          'Return to traditional in-person only care',
          'A hybrid model combining virtual and in-person care',
          'Telemedicine only for mental health services',
        ],
        correctIndex: 2,
        explanation: 'Son paragrafta "a hybrid model, combining both virtual and in-person care, will become the standard approach" ifadesi geçmektedir.',
      ),
    ],
  ),

  // ─── PARÇA 5 ───
  const ReadingPassage(
    id: 5,
    title: 'Genetik Mühendisliği ve CRISPR',
    difficulty: 'Zor',
    topic: 'Genetik',
    passage: '''The discovery of CRISPR-Cas9 gene editing technology has ushered in a new era of precision medicine, offering the potential to correct genetic defects at their source. CRISPR, which stands for Clustered Regularly Interspaced Short Palindromic Repeats, is a molecular tool that allows scientists to make precise cuts in DNA sequences, effectively enabling them to add, remove, or alter genetic material with unprecedented accuracy.

Originally discovered as a natural defense mechanism in bacteria against viral infections, CRISPR was adapted for use as a gene editing tool by Jennifer Doudna and Emmanuelle Charpentier, who were awarded the Nobel Prize in Chemistry in 2020 for their groundbreaking work. The technology works by using a guide RNA molecule to direct the Cas9 protein to a specific location in the genome, where it acts as molecular scissors to cut the DNA strand.

The clinical applications of CRISPR are vast and rapidly expanding. In 2023, the first CRISPR-based therapy received regulatory approval for the treatment of sickle cell disease and transfusion-dependent beta-thalassemia. Clinical trials are underway for various other genetic disorders, including cystic fibrosis, Huntington's disease, and certain forms of hereditary blindness. Beyond treating genetic diseases, CRISPR is being explored for cancer immunotherapy, where patients' own T-cells are modified to better recognize and attack tumor cells.

Despite its transformative potential, CRISPR technology raises important ethical questions, particularly regarding germline editing — modifications that would be passed on to future generations. The scientific community generally agrees that while somatic cell editing for therapeutic purposes is acceptable, germline editing requires much more extensive research and ethical deliberation before it can be considered for clinical use.''',
    vocabulary: [
      PassageVocab(english: 'usher in', turkish: 'başlatmak, müjdelemek', partOfSpeech: 'phrasal verb'),
      PassageVocab(english: 'precision medicine', turkish: 'hassas tıp', partOfSpeech: 'noun'),
      PassageVocab(english: 'defect', turkish: 'kusur, bozukluk', partOfSpeech: 'noun'),
      PassageVocab(english: 'alter', turkish: 'değiştirmek', partOfSpeech: 'verb'),
      PassageVocab(english: 'defense mechanism', turkish: 'savunma mekanizması', partOfSpeech: 'noun'),
      PassageVocab(english: 'genome', turkish: 'genom', partOfSpeech: 'noun'),
      PassageVocab(english: 'regulatory approval', turkish: 'düzenleyici onay', partOfSpeech: 'noun'),
      PassageVocab(english: 'sickle cell disease', turkish: 'orak hücreli anemi', partOfSpeech: 'noun'),
      PassageVocab(english: 'hereditary', turkish: 'kalıtsal', partOfSpeech: 'adj'),
      PassageVocab(english: 'immunotherapy', turkish: 'immünoterapi, bağışıklık tedavisi', partOfSpeech: 'noun'),
      PassageVocab(english: 'germline', turkish: 'eşey hattı', partOfSpeech: 'noun'),
      PassageVocab(english: 'deliberation', turkish: 'müzakere, değerlendirme', partOfSpeech: 'noun'),
    ],
    questions: [
      PassageQuestion(
        question: 'What does CRISPR stand for?',
        options: [
          'Cellular Repair and Innovative Surgical Procedure Registry',
          'Clustered Regularly Interspaced Short Palindromic Repeats',
          'Clinical Research in Stem cell Pluripotent Regeneration',
          'Comprehensive Regulatory Initiative for Scientific Progress and Reform',
        ],
        correctIndex: 1,
        explanation: 'İlk paragrafta CRISPR\'ın açılımı "Clustered Regularly Interspaced Short Palindromic Repeats" olarak verilmiştir.',
      ),
      PassageQuestion(
        question: 'Who received the Nobel Prize for adapting CRISPR as a gene editing tool?',
        options: [
          'Shinya Yamanaka and James Watson',
          'Francis Crick and Rosalind Franklin',
          'Jennifer Doudna and Emmanuelle Charpentier',
          'Craig Venter and Francis Collins',
        ],
        correctIndex: 2,
        explanation: 'İkinci paragrafta "Jennifer Doudna and Emmanuelle Charpentier" isimlerinin 2020 Nobel Ödülü aldığı belirtilmiştir.',
      ),
      PassageQuestion(
        question: 'The word "vast" in the third paragraph is closest in meaning to ----.',
        options: [
          'limited',
          'very large',
          'uncertain',
          'controversial',
        ],
        correctIndex: 1,
        explanation: '"Vast" kelimesi "çok geniş, büyük" anlamına gelir. "Very large" en yakın anlam karşılığıdır.',
      ),
      PassageQuestion(
        question: 'What was the first disease approved for CRISPR-based treatment?',
        options: [
          'Cystic fibrosis',
          'Huntington\'s disease',
          'Sickle cell disease',
          'Hereditary blindness',
        ],
        correctIndex: 2,
        explanation: 'Üçüncü paragrafta "the first CRISPR-based therapy received regulatory approval for the treatment of sickle cell disease" ifadesi geçmektedir.',
      ),
      PassageQuestion(
        question: 'What ethical concern is raised about germline editing?',
        options: [
          'It is too expensive for widespread use',
          'It could cause immediate health risks',
          'Modifications would be passed on to future generations',
          'It requires too many laboratory resources',
        ],
        correctIndex: 2,
        explanation: 'Son paragrafta "germline editing — modifications that would be passed on to future generations" ifadesiyle bu etik kaygı açıklanmaktadır.',
      ),
    ],
  ),

  // ─── PARÇA 6 ───
  const ReadingPassage(
    id: 6,
    title: 'Bağışıklık Sistemi ve Aşılama',
    difficulty: 'Kolay',
    topic: 'İmmünoloji',
    passage: '''Vaccination is widely regarded as one of the most significant achievements in the history of medicine. By introducing a weakened or inactivated form of a pathogen — or a component of it — into the body, vaccines stimulate the immune system to produce antibodies and memory cells without causing the actual disease. This process of immunization prepares the body to recognize and fight the pathogen more effectively if encountered in the future.

The concept of vaccination dates back to 1796, when Edward Jenner demonstrated that inoculation with cowpox could protect against smallpox. Since then, vaccines have been developed for numerous infectious diseases, leading to the eradication of smallpox in 1980 and the near-elimination of polio. More recently, the rapid development of mRNA vaccines against COVID-19 represented a remarkable scientific achievement, with vaccines being developed, tested, and deployed in less than a year.

Herd immunity, also known as community immunity, occurs when a sufficient percentage of a population becomes immune to a disease, thereby reducing its spread even among those who are not vaccinated. The threshold for herd immunity varies by disease; for highly contagious diseases like measles, approximately 95% of the population must be immunized to prevent outbreaks.

Despite overwhelming scientific evidence supporting vaccine safety and efficacy, vaccine hesitancy has emerged as a growing public health concern. Misinformation spread through social media platforms has contributed to declining vaccination rates in some communities, leading to outbreaks of preventable diseases. Public health authorities continue to work on improving vaccine communication strategies and addressing legitimate concerns while combating disinformation.''',
    vocabulary: [
      PassageVocab(english: 'vaccination', turkish: 'aşılama', partOfSpeech: 'noun'),
      PassageVocab(english: 'weakened', turkish: 'zayıflatılmış', partOfSpeech: 'adj'),
      PassageVocab(english: 'inactivated', turkish: 'inaktive edilmiş, etkisizleştirilmiş', partOfSpeech: 'adj'),
      PassageVocab(english: 'stimulate', turkish: 'uyarmak, teşvik etmek', partOfSpeech: 'verb'),
      PassageVocab(english: 'antibody', turkish: 'antikor', partOfSpeech: 'noun'),
      PassageVocab(english: 'inoculation', turkish: 'aşılama', partOfSpeech: 'noun'),
      PassageVocab(english: 'eradication', turkish: 'kökünü kazıma, yok etme', partOfSpeech: 'noun'),
      PassageVocab(english: 'deploy', turkish: 'dağıtmak, konuşlandırmak', partOfSpeech: 'verb'),
      PassageVocab(english: 'herd immunity', turkish: 'sürü bağışıklığı', partOfSpeech: 'noun'),
      PassageVocab(english: 'contagious', turkish: 'bulaşıcı', partOfSpeech: 'adj'),
      PassageVocab(english: 'hesitancy', turkish: 'tereddüt, çekingenlik', partOfSpeech: 'noun'),
      PassageVocab(english: 'disinformation', turkish: 'dezenformasyon, yanlış bilgi', partOfSpeech: 'noun'),
    ],
    questions: [
      PassageQuestion(
        question: 'How do vaccines protect the body against disease?',
        options: [
          'By killing all existing pathogens in the body',
          'By stimulating the immune system to produce antibodies and memory cells',
          'By strengthening the physical barriers of the body',
          'By providing nutrients that boost overall health',
        ],
        correctIndex: 1,
        explanation: 'İlk paragrafta "vaccines stimulate the immune system to produce antibodies and memory cells" ifadesi geçmektedir.',
      ),
      PassageQuestion(
        question: 'Which disease was the first to be eradicated through vaccination?',
        options: [
          'Polio',
          'Measles',
          'Smallpox',
          'COVID-19',
        ],
        correctIndex: 2,
        explanation: 'İkinci paragrafta "the eradication of smallpox in 1980" ifadesi geçmektedir.',
      ),
      PassageQuestion(
        question: 'What percentage of the population must be immunized against measles for herd immunity?',
        options: [
          'About 70%',
          'About 80%',
          'About 90%',
          'About 95%',
        ],
        correctIndex: 3,
        explanation: 'Üçüncü paragrafta "approximately 95% of the population must be immunized to prevent outbreaks" ifadesi geçmektedir.',
      ),
      PassageQuestion(
        question: 'The word "efficacy" in the last paragraph is closest in meaning to ----.',
        options: [
          'danger',
          'effectiveness',
          'availability',
          'cost',
        ],
        correctIndex: 1,
        explanation: '"Efficacy" kelimesi "etkinlik, etkililik" anlamına gelir. "Effectiveness" en yakın anlam karşılığıdır.',
      ),
      PassageQuestion(
        question: 'What is identified as a factor contributing to declining vaccination rates?',
        options: [
          'Lack of available vaccines',
          'High cost of immunization programs',
          'Misinformation on social media platforms',
          'Inadequate healthcare infrastructure',
        ],
        correctIndex: 2,
        explanation: 'Son paragrafta "Misinformation spread through social media platforms has contributed to declining vaccination rates" ifadesi geçmektedir.',
      ),
    ],
  ),

  // ─── PARÇA 7 ───
  const ReadingPassage(
    id: 7,
    title: 'Kanser İmmünoterapisi',
    difficulty: 'Zor',
    topic: 'Onkoloji',
    passage: '''Cancer immunotherapy has revolutionized the landscape of oncology by harnessing the body's own immune system to fight malignant tumors. Unlike traditional treatments such as chemotherapy and radiation, which directly attack cancer cells but also damage healthy tissue, immunotherapy works by enhancing or restoring the immune system's natural ability to detect and destroy cancerous cells.

One of the most significant breakthroughs in immunotherapy has been the development of immune checkpoint inhibitors. Cancer cells often exploit checkpoint proteins such as PD-1 and CTLA-4 to evade immune detection. Checkpoint inhibitors block these proteins, effectively removing the brakes on the immune system and allowing T-cells to recognize and attack tumors. James Allison and Tasuku Honjo were awarded the 2018 Nobel Prize in Physiology or Medicine for their discovery of these checkpoint pathways.

Another promising approach is chimeric antigen receptor (CAR) T-cell therapy, in which a patient's T-cells are extracted, genetically modified in a laboratory to express receptors that target specific proteins on cancer cells, and then reinfused into the patient. CAR T-cell therapy has shown remarkable success in treating certain blood cancers, particularly acute lymphoblastic leukemia in children, with remission rates exceeding 80% in some clinical trials.

Despite these advances, immunotherapy is not effective for all patients or all types of cancer. Side effects, known as immune-related adverse events, can range from mild skin reactions to severe organ inflammation. Researchers are actively working to identify biomarkers that can predict which patients will respond to immunotherapy, develop combination therapies that enhance effectiveness, and manage the unique toxicities associated with immune-based treatments.''',
    vocabulary: [
      PassageVocab(english: 'harness', turkish: 'kullanmak, yararlanmak', partOfSpeech: 'verb'),
      PassageVocab(english: 'malignant', turkish: 'kötü huylu, habis', partOfSpeech: 'adj'),
      PassageVocab(english: 'chemotherapy', turkish: 'kemoterapi', partOfSpeech: 'noun'),
      PassageVocab(english: 'checkpoint inhibitor', turkish: 'kontrol noktası inhibitörü', partOfSpeech: 'noun'),
      PassageVocab(english: 'exploit', turkish: 'suistimal etmek, kötüye kullanmak', partOfSpeech: 'verb'),
      PassageVocab(english: 'evade', turkish: 'kaçınmak, atlatmak', partOfSpeech: 'verb'),
      PassageVocab(english: 'chimeric', turkish: 'kimerik', partOfSpeech: 'adj'),
      PassageVocab(english: 'reinfuse', turkish: 'yeniden enjekte etmek', partOfSpeech: 'verb'),
      PassageVocab(english: 'remission', turkish: 'remisyon, gerileme', partOfSpeech: 'noun'),
      PassageVocab(english: 'leukemia', turkish: 'lösemi', partOfSpeech: 'noun'),
      PassageVocab(english: 'biomarker', turkish: 'biyobelirteç', partOfSpeech: 'noun'),
      PassageVocab(english: 'toxicity', turkish: 'toksisite, zehirlilik', partOfSpeech: 'noun'),
    ],
    questions: [
      PassageQuestion(
        question: 'How does immunotherapy differ from traditional cancer treatments?',
        options: [
          'It is cheaper and more widely available',
          'It enhances the immune system instead of directly attacking cancer cells',
          'It only works on blood cancers',
          'It has no side effects',
        ],
        correctIndex: 1,
        explanation: 'İlk paragrafta immünoterapinin "enhancing or restoring the immune system\'s natural ability" yoluyla çalıştığı belirtilmektedir.',
      ),
      PassageQuestion(
        question: 'What do immune checkpoint inhibitors do?',
        options: [
          'They directly kill cancer cells',
          'They block proteins that cancer cells use to evade the immune system',
          'They prevent the formation of new tumors',
          'They reduce the side effects of chemotherapy',
        ],
        correctIndex: 1,
        explanation: 'İkinci paragrafta "Checkpoint inhibitors block these proteins, effectively removing the brakes on the immune system" ifadesi geçmektedir.',
      ),
      PassageQuestion(
        question: 'What is the process involved in CAR T-cell therapy?',
        options: [
          'Injecting synthetic antibodies into the bloodstream',
          'Transplanting bone marrow from a healthy donor',
          'Extracting, modifying, and reinfusing a patient\'s T-cells',
          'Administering high doses of radiation to tumors',
        ],
        correctIndex: 2,
        explanation: 'Üçüncü paragrafta "patient\'s T-cells are extracted, genetically modified... and then reinfused" süreci açıklanmıştır.',
      ),
      PassageQuestion(
        question: 'The word "exploit" in the second paragraph is closest in meaning to ----.',
        options: [
          'destroy',
          'take advantage of',
          'produce',
          'avoid',
        ],
        correctIndex: 1,
        explanation: '"Exploit" burada "suistimal etmek, kötüye kullanmak" anlamında kullanılmıştır. "Take advantage of" en yakın karşılığıdır.',
      ),
      PassageQuestion(
        question: 'What are researchers currently working on regarding immunotherapy?',
        options: [
          'Making it available without prescription',
          'Replacing all forms of chemotherapy',
          'Identifying biomarkers to predict patient response',
          'Developing vaccines to prevent all cancers',
        ],
        correctIndex: 2,
        explanation: 'Son paragrafta "Researchers are actively working to identify biomarkers that can predict which patients will respond" ifadesi geçmektedir.',
      ),
    ],
  ),

  // ─── PARÇA 8 ───
  const ReadingPassage(
    id: 8,
    title: 'Obezite ve Metabolik Sendrom',
    difficulty: 'Orta',
    topic: 'Endokrinoloji',
    passage: '''Obesity has reached epidemic proportions globally, with the World Health Organization estimating that over 650 million adults worldwide are obese. Defined as having a body mass index (BMI) of 30 or above, obesity is a complex, multifactorial condition influenced by genetic, environmental, behavioral, and socioeconomic factors. It significantly increases the risk of developing numerous chronic diseases, including type 2 diabetes, cardiovascular disease, certain cancers, and musculoskeletal disorders.

Metabolic syndrome, a cluster of interconnected conditions that often accompany obesity, further compounds these health risks. The syndrome is typically characterized by at least three of the following: abdominal obesity, elevated blood pressure, high fasting blood sugar levels, elevated triglycerides, and reduced high-density lipoprotein (HDL) cholesterol. Individuals with metabolic syndrome are at substantially greater risk of developing heart disease and stroke compared to the general population.

The pathophysiology of obesity involves a complex interplay between hormonal regulation, neural pathways, and metabolic processes. Adipose tissue, once considered merely a passive storage depot for fat, is now recognized as an active endocrine organ that secretes numerous hormones and inflammatory mediators known as adipokines. Dysregulation of these signaling molecules contributes to insulin resistance, chronic low-grade inflammation, and the metabolic disturbances associated with obesity.

Treatment approaches range from lifestyle modifications, including dietary changes and increased physical activity, to pharmacological interventions and bariatric surgery for severe cases. Recent developments in GLP-1 receptor agonists, such as semaglutide, have shown remarkable efficacy in promoting weight loss, with some patients losing over 15% of their body weight. These medications work by mimicking a naturally occurring hormone that regulates appetite and food intake.''',
    vocabulary: [
      PassageVocab(english: 'epidemic', turkish: 'salgın', partOfSpeech: 'noun'),
      PassageVocab(english: 'multifactorial', turkish: 'çok faktörlü', partOfSpeech: 'adj'),
      PassageVocab(english: 'cardiovascular', turkish: 'kardiyovasküler, kalp-damar', partOfSpeech: 'adj'),
      PassageVocab(english: 'musculoskeletal', turkish: 'kas-iskelet sistemi', partOfSpeech: 'adj'),
      PassageVocab(english: 'cluster', turkish: 'küme, grup', partOfSpeech: 'noun'),
      PassageVocab(english: 'triglyceride', turkish: 'trigliserit', partOfSpeech: 'noun'),
      PassageVocab(english: 'pathophysiology', turkish: 'patofizyoloji', partOfSpeech: 'noun'),
      PassageVocab(english: 'adipose tissue', turkish: 'yağ dokusu', partOfSpeech: 'noun'),
      PassageVocab(english: 'secrete', turkish: 'salgılamak', partOfSpeech: 'verb'),
      PassageVocab(english: 'insulin resistance', turkish: 'insülin direnci', partOfSpeech: 'noun'),
      PassageVocab(english: 'bariatric surgery', turkish: 'bariyatrik cerrahi, obezite cerrahisi', partOfSpeech: 'noun'),
      PassageVocab(english: 'mimic', turkish: 'taklit etmek', partOfSpeech: 'verb'),
    ],
    questions: [
      PassageQuestion(
        question: 'According to the passage, how many adults worldwide are estimated to be obese?',
        options: [
          'Over 250 million',
          'Over 450 million',
          'Over 650 million',
          'Over 1 billion',
        ],
        correctIndex: 2,
        explanation: 'İlk paragrafta "over 650 million adults worldwide are obese" ifadesi geçmektedir.',
      ),
      PassageQuestion(
        question: 'How many conditions must be present for a diagnosis of metabolic syndrome?',
        options: [
          'At least two',
          'At least three',
          'At least four',
          'All five',
        ],
        correctIndex: 1,
        explanation: 'İkinci paragrafta "at least three of the following" ifadesi geçmektedir.',
      ),
      PassageQuestion(
        question: 'What new understanding of adipose tissue is described in the passage?',
        options: [
          'It is only found in obese individuals',
          'It is now recognized as an active endocrine organ',
          'It does not affect hormone levels',
          'It protects against chronic inflammation',
        ],
        correctIndex: 1,
        explanation: 'Üçüncü paragrafta "now recognized as an active endocrine organ that secretes numerous hormones" ifadesi geçmektedir.',
      ),
      PassageQuestion(
        question: 'The word "compounds" in the second paragraph is closest in meaning to ----.',
        options: [
          'simplifies',
          'creates',
          'worsens',
          'eliminates',
        ],
        correctIndex: 2,
        explanation: '"Compounds" burada "artırmak, daha da kötüleştirmek" anlamında kullanılmıştır.',
      ),
      PassageQuestion(
        question: 'How do GLP-1 receptor agonists help with weight loss?',
        options: [
          'By increasing physical activity levels',
          'By blocking fat absorption in the intestines',
          'By mimicking a hormone that regulates appetite',
          'By increasing metabolism through heat generation',
        ],
        correctIndex: 2,
        explanation: 'Son paragrafta "work by mimicking a naturally occurring hormone that regulates appetite and food intake" ifadesi geçmektedir.',
      ),
    ],
  ),

  // ─── PARÇA 9 ───
  const ReadingPassage(
    id: 9,
    title: 'Alzheimer Hastalığı ve Nörodejenerasyon',
    difficulty: 'Zor',
    topic: 'Nöroloji',
    passage: '''Alzheimer's disease is the most common cause of dementia, accounting for approximately 60-80% of all dementia cases worldwide. It is a progressive neurodegenerative disorder characterized by the accumulation of amyloid-beta plaques and neurofibrillary tangles composed of hyperphosphorylated tau protein in the brain. These pathological changes lead to the gradual destruction of neurons, resulting in cognitive decline, memory loss, and eventually, the inability to perform basic daily activities.

The exact etiology of Alzheimer's disease remains elusive, though research has identified several risk factors. Age is the greatest known risk factor, with the likelihood of developing the disease doubling approximately every five years after the age of 65. Genetic factors also play a role; mutations in genes such as APP, PSEN1, and PSEN2 are associated with early-onset familial Alzheimer's disease, while the APOE ε4 allele is the strongest genetic risk factor for the more common late-onset form.

Current therapeutic approaches for Alzheimer's disease are limited and primarily symptomatic. Cholinesterase inhibitors such as donepezil, rivastigmine, and galantamine provide modest improvements in cognitive function by increasing acetylcholine levels in the brain. The NMDA receptor antagonist memantine is used to treat moderate to severe cases. Recently, monoclonal antibodies targeting amyloid-beta, such as lecanemab and aducanumab, have received regulatory approval, representing the first disease-modifying therapies, though their clinical benefit remains modest and controversial.

Prevention strategies focus on modifiable risk factors, including regular physical exercise, cognitive stimulation, social engagement, management of cardiovascular risk factors, and maintenance of a healthy diet. The Mediterranean diet, in particular, has been associated with a reduced risk of cognitive decline. Ongoing research into biomarkers for early detection, tau-targeting therapies, and neuroinflammation pathways offers hope for more effective treatments in the future.''',
    vocabulary: [
      PassageVocab(english: 'dementia', turkish: 'bunama, demans', partOfSpeech: 'noun'),
      PassageVocab(english: 'progressive', turkish: 'ilerleyici', partOfSpeech: 'adj'),
      PassageVocab(english: 'accumulation', turkish: 'birikim', partOfSpeech: 'noun'),
      PassageVocab(english: 'neurofibrillary tangle', turkish: 'nörofibriler yumak', partOfSpeech: 'noun'),
      PassageVocab(english: 'cognitive decline', turkish: 'bilişsel gerileme', partOfSpeech: 'noun'),
      PassageVocab(english: 'etiology', turkish: 'etiyoloji, hastalık nedeni', partOfSpeech: 'noun'),
      PassageVocab(english: 'elusive', turkish: 'anlaşılması güç', partOfSpeech: 'adj'),
      PassageVocab(english: 'allele', turkish: 'alel', partOfSpeech: 'noun'),
      PassageVocab(english: 'cholinesterase inhibitor', turkish: 'kolinesteraz inhibitörü', partOfSpeech: 'noun'),
      PassageVocab(english: 'monoclonal antibody', turkish: 'monoklonal antikor', partOfSpeech: 'noun'),
      PassageVocab(english: 'modifiable', turkish: 'değiştirilebilir', partOfSpeech: 'adj'),
      PassageVocab(english: 'biomarker', turkish: 'biyobelirteç', partOfSpeech: 'noun'),
    ],
    questions: [
      PassageQuestion(
        question: 'What are the two hallmark pathological features of Alzheimer\'s disease?',
        options: [
          'Viral infections and bacterial colonies',
          'Amyloid-beta plaques and neurofibrillary tangles',
          'Blood clots and aneurysms',
          'Muscle atrophy and bone loss',
        ],
        correctIndex: 1,
        explanation: 'İlk paragrafta "accumulation of amyloid-beta plaques and neurofibrillary tangles" ifadesi geçmektedir.',
      ),
      PassageQuestion(
        question: 'According to the passage, what is the greatest known risk factor for Alzheimer\'s?',
        options: ['Genetics', 'Diet', 'Age', 'Stress'],
        correctIndex: 2,
        explanation: 'İkinci paragrafta "Age is the greatest known risk factor" ifadesi geçmektedir.',
      ),
      PassageQuestion(
        question: 'The word "elusive" in the second paragraph is closest in meaning to ----.',
        options: ['obvious', 'difficult to find or understand', 'well-established', 'permanent'],
        correctIndex: 1,
        explanation: '"Elusive" kelimesi "anlaşılması güç, ele avuca sığmaz" anlamına gelir.',
      ),
      PassageQuestion(
        question: 'Which of the following is a recently approved disease-modifying therapy?',
        options: ['Donepezil', 'Memantine', 'Lecanemab', 'Rivastigmine'],
        correctIndex: 2,
        explanation: 'Üçüncü paragrafta "lecanemab" hastalık seyrini değiştiren ilk tedavilerden biri olarak belirtilmiştir.',
      ),
      PassageQuestion(
        question: 'Which diet is specifically mentioned as reducing cognitive decline risk?',
        options: ['Ketogenic diet', 'Mediterranean diet', 'Paleo diet', 'Vegan diet'],
        correctIndex: 1,
        explanation: 'Son paragrafta "The Mediterranean diet" bilişsel gerileme riskini azaltmada özellikle adı geçmektedir.',
      ),
    ],
  ),

  // ─── PARÇA 10 ───
  const ReadingPassage(
    id: 10,
    title: 'Diyabet ve İnsülin Direnci',
    difficulty: 'Orta',
    topic: 'Endokrinoloji',
    passage: '''Diabetes mellitus is a group of metabolic diseases characterized by chronic hyperglycemia resulting from defects in insulin secretion, insulin action, or both. The two main types are Type 1 diabetes, an autoimmune condition in which the immune system destroys the insulin-producing beta cells of the pancreas, and Type 2 diabetes, which is characterized by insulin resistance and relative insulin deficiency. Type 2 diabetes accounts for approximately 90-95% of all diabetes cases and is strongly associated with obesity, physical inactivity, and genetic predisposition.

Insulin resistance, a hallmark of Type 2 diabetes, occurs when cells in the muscles, fat, and liver do not respond effectively to insulin, impairing glucose uptake from the bloodstream. To compensate, the pancreas produces more insulin, leading to hyperinsulinemia. Over time, the beta cells become exhausted and can no longer produce sufficient insulin, resulting in sustained hyperglycemia. This chronic elevation of blood glucose levels damages blood vessels and nerves throughout the body, leading to devastating complications.

The complications of poorly managed diabetes are extensive and affect multiple organ systems. Microvascular complications include diabetic retinopathy, which is a leading cause of blindness; diabetic nephropathy, which can progress to end-stage renal disease; and diabetic neuropathy, which causes pain, numbness, and increased risk of foot ulcers and amputations. Macrovascular complications include coronary artery disease, peripheral arterial disease, and cerebrovascular disease, significantly increasing the risk of heart attack and stroke.

Management of Type 2 diabetes involves a comprehensive approach combining lifestyle modifications with pharmacological therapy. First-line treatment typically includes metformin, which improves insulin sensitivity and reduces hepatic glucose production. Newer drug classes, including SGLT2 inhibitors and GLP-1 receptor agonists, have demonstrated cardiovascular and renal protective benefits beyond glucose lowering. Continuous glucose monitoring systems and insulin pump therapy have revolutionized diabetes management, allowing for more precise glycemic control.''',
    vocabulary: [
      PassageVocab(english: 'hyperglycemia', turkish: 'hiperglisemi, yüksek kan şekeri', partOfSpeech: 'noun'),
      PassageVocab(english: 'autoimmune', turkish: 'otoimmün', partOfSpeech: 'adj'),
      PassageVocab(english: 'beta cell', turkish: 'beta hücresi', partOfSpeech: 'noun'),
      PassageVocab(english: 'predisposition', turkish: 'yatkınlık', partOfSpeech: 'noun'),
      PassageVocab(english: 'impair', turkish: 'bozmak, zayıflatmak', partOfSpeech: 'verb'),
      PassageVocab(english: 'hyperinsulinemia', turkish: 'hiperinsülinemi', partOfSpeech: 'noun'),
      PassageVocab(english: 'retinopathy', turkish: 'retinopati', partOfSpeech: 'noun'),
      PassageVocab(english: 'nephropathy', turkish: 'nefropati', partOfSpeech: 'noun'),
      PassageVocab(english: 'neuropathy', turkish: 'nöropati', partOfSpeech: 'noun'),
      PassageVocab(english: 'amputation', turkish: 'amputasyon, uzuv kesme', partOfSpeech: 'noun'),
      PassageVocab(english: 'hepatic', turkish: 'karaciğere ait', partOfSpeech: 'adj'),
      PassageVocab(english: 'glycemic control', turkish: 'glisemik kontrol', partOfSpeech: 'noun'),
    ],
    questions: [
      PassageQuestion(
        question: 'What percentage of diabetes cases are Type 2?',
        options: ['60-70%', '75-85%', '90-95%', '98-99%'],
        correctIndex: 2,
        explanation: 'İlk paragrafta "Type 2 diabetes accounts for approximately 90-95% of all diabetes cases" ifadesi geçmektedir.',
      ),
      PassageQuestion(
        question: 'What happens to beta cells over time in Type 2 diabetes?',
        options: [
          'They multiply rapidly',
          'They become exhausted and fail to produce enough insulin',
          'They start producing glucagon instead',
          'They migrate to the liver',
        ],
        correctIndex: 1,
        explanation: 'İkinci paragrafta "beta cells become exhausted and can no longer produce sufficient insulin" ifadesi geçmektedir.',
      ),
      PassageQuestion(
        question: 'Which complication is described as a leading cause of blindness?',
        options: ['Diabetic nephropathy', 'Diabetic neuropathy', 'Diabetic retinopathy', 'Coronary artery disease'],
        correctIndex: 2,
        explanation: 'Üçüncü paragrafta "diabetic retinopathy, which is a leading cause of blindness" ifadesi geçmektedir.',
      ),
      PassageQuestion(
        question: 'The word "impair" in the second paragraph is closest in meaning to ----.',
        options: ['improve', 'damage or weaken', 'accelerate', 'stabilize'],
        correctIndex: 1,
        explanation: '"Impair" kelimesi "bozmak, zayıflatmak" anlamına gelir.',
      ),
      PassageQuestion(
        question: 'What is the first-line pharmacological treatment for Type 2 diabetes?',
        options: ['Insulin injections', 'SGLT2 inhibitors', 'Metformin', 'GLP-1 receptor agonists'],
        correctIndex: 2,
        explanation: 'Son paragrafta "First-line treatment typically includes metformin" ifadesi geçmektedir.',
      ),
    ],
  ),

  // ─── PARÇA 11 ───
  const ReadingPassage(
    id: 11,
    title: 'Organ Nakli ve İmmünosüpresyon',
    difficulty: 'Zor',
    topic: 'Transplantasyon Tıbbı',
    passage: '''Organ transplantation has evolved from an experimental procedure to a life-saving treatment for patients with end-stage organ failure. The most commonly transplanted organs include kidneys, livers, hearts, lungs, and pancreases. However, the demand for donor organs far exceeds the available supply, creating a critical shortage that results in thousands of patients dying while waiting for a suitable organ each year.

The success of organ transplantation depends largely on the compatibility between donor and recipient, particularly regarding human leukocyte antigen (HLA) matching and blood type compatibility. Despite advances in tissue typing, the recipient's immune system may recognize the transplanted organ as foreign and mount an immune response, leading to graft rejection. This rejection can be hyperacute, occurring within minutes to hours; acute, developing within weeks to months; or chronic, progressing gradually over years.

To prevent rejection, transplant recipients must take immunosuppressive medications for the remainder of their lives. Common immunosuppressants include calcineurin inhibitors such as tacrolimus and cyclosporine, antiproliferative agents like mycophenolate mofetil, and corticosteroids. While these medications are essential for graft survival, they significantly increase the risk of infections, malignancies, metabolic complications, and cardiovascular disease due to the suppression of the immune system.

Emerging technologies offer hope for addressing the organ shortage crisis. Xenotransplantation, the transplantation of organs from genetically modified animals (particularly pigs) to humans, has made significant progress, with the first pig-to-human heart transplants being performed in recent years. Additionally, advances in bioengineering and 3D bioprinting may eventually enable the creation of custom-made organs using a patient's own cells, potentially eliminating the need for donor organs and immunosuppression entirely.''',
    vocabulary: [
      PassageVocab(english: 'transplantation', turkish: 'nakil, transplantasyon', partOfSpeech: 'noun'),
      PassageVocab(english: 'end-stage', turkish: 'son evre', partOfSpeech: 'adj'),
      PassageVocab(english: 'shortage', turkish: 'kıtlık, yetersizlik', partOfSpeech: 'noun'),
      PassageVocab(english: 'compatibility', turkish: 'uyumluluk', partOfSpeech: 'noun'),
      PassageVocab(english: 'recipient', turkish: 'alıcı', partOfSpeech: 'noun'),
      PassageVocab(english: 'graft rejection', turkish: 'greft reddi', partOfSpeech: 'noun'),
      PassageVocab(english: 'hyperacute', turkish: 'hiperakut', partOfSpeech: 'adj'),
      PassageVocab(english: 'immunosuppressive', turkish: 'immünosüpresif, bağışıklık baskılayıcı', partOfSpeech: 'adj'),
      PassageVocab(english: 'malignancy', turkish: 'malignite, kötü huylu tümör', partOfSpeech: 'noun'),
      PassageVocab(english: 'xenotransplantation', turkish: 'ksenotransplantasyon, türler arası nakil', partOfSpeech: 'noun'),
      PassageVocab(english: 'bioengineering', turkish: 'biyomühendislik', partOfSpeech: 'noun'),
      PassageVocab(english: 'custom-made', turkish: 'kişiye özel', partOfSpeech: 'adj'),
    ],
    questions: [
      PassageQuestion(
        question: 'What is the main challenge in organ transplantation mentioned in the first paragraph?',
        options: [
          'The high cost of surgery',
          'The demand for organs exceeds supply',
          'Lack of trained surgeons',
          'Religious objections to transplantation',
        ],
        correctIndex: 1,
        explanation: 'İlk paragrafta "the demand for donor organs far exceeds the available supply" ifadesi geçmektedir.',
      ),
      PassageQuestion(
        question: 'Which type of rejection occurs within minutes to hours?',
        options: ['Acute', 'Chronic', 'Hyperacute', 'Subacute'],
        correctIndex: 2,
        explanation: 'İkinci paragrafta "hyperacute, occurring within minutes to hours" ifadesi geçmektedir.',
      ),
      PassageQuestion(
        question: 'What is a major side effect of immunosuppressive medications?',
        options: [
          'Weight loss',
          'Increased risk of infections and malignancies',
          'Improved cardiovascular health',
          'Enhanced cognitive function',
        ],
        correctIndex: 1,
        explanation: 'Üçüncü paragrafta "significantly increase the risk of infections, malignancies" ifadesi geçmektedir.',
      ),
      PassageQuestion(
        question: 'What is xenotransplantation?',
        options: [
          'Transplanting synthetic organs',
          'Transplanting organs from genetically modified animals to humans',
          'Transplanting organs between identical twins',
          'Using 3D-printed organs',
        ],
        correctIndex: 1,
        explanation: 'Son paragrafta xenotransplantation "the transplantation of organs from genetically modified animals to humans" olarak tanımlanmıştır.',
      ),
      PassageQuestion(
        question: 'The word "mount" in the second paragraph is closest in meaning to ----.',
        options: ['climb', 'initiate or launch', 'reduce', 'prevent'],
        correctIndex: 1,
        explanation: '"Mount an immune response" ifadesinde "mount" kelimesi "başlatmak" anlamında kullanılmıştır.',
      ),
    ],
  ),

  // ─── PARÇA 12 ───
  const ReadingPassage(
    id: 12,
    title: 'Pandemiler ve Halk Sağlığı',
    difficulty: 'Orta',
    topic: 'Epidemiyoloji',
    passage: '''Throughout history, pandemics have shaped the course of human civilization, from the Black Death of the 14th century to the Spanish Flu of 1918 and the recent COVID-19 pandemic. A pandemic is defined as an epidemic that has spread across multiple countries or continents, affecting a substantial number of people. The emergence of novel pathogens, combined with increased global connectivity, urbanization, and environmental changes, has made the world more vulnerable to pandemic threats than ever before.

The COVID-19 pandemic, caused by the SARS-CoV-2 virus, demonstrated both the devastating impact of emerging infectious diseases and the remarkable capacity of modern science to respond. Within months of the virus being identified, its genome was sequenced, diagnostic tests were developed, and vaccine candidates entered clinical trials. The unprecedented speed of mRNA vaccine development and deployment represented a paradigm shift in vaccinology and demonstrated the potential of platform technologies for rapid response to future threats.

Effective pandemic preparedness requires a multisectoral approach involving surveillance systems, laboratory capacity, healthcare infrastructure, communication strategies, and international cooperation. The concept of "One Health" recognizes the interconnection between human, animal, and environmental health, emphasizing that preventing zoonotic spillover events — the transmission of pathogens from animals to humans — is crucial for pandemic prevention.

Lessons learned from COVID-19 have highlighted critical gaps in global health security. These include the need for equitable access to vaccines and therapeutics, strengthening of public health workforces, investment in genomic surveillance capabilities, and reform of international health regulations. The establishment of pandemic preparedness funds and the development of broadly protective vaccines against families of viruses represent important steps toward building a more resilient global health system.''',
    vocabulary: [
      PassageVocab(english: 'pandemic', turkish: 'pandemi, küresel salgın', partOfSpeech: 'noun'),
      PassageVocab(english: 'epidemic', turkish: 'salgın hastalık', partOfSpeech: 'noun'),
      PassageVocab(english: 'urbanization', turkish: 'kentleşme', partOfSpeech: 'noun'),
      PassageVocab(english: 'genome', turkish: 'genom', partOfSpeech: 'noun'),
      PassageVocab(english: 'paradigm shift', turkish: 'paradigma değişimi', partOfSpeech: 'noun'),
      PassageVocab(english: 'surveillance', turkish: 'gözetim, sürveyans', partOfSpeech: 'noun'),
      PassageVocab(english: 'zoonotic', turkish: 'zoonotik, hayvan kaynaklı', partOfSpeech: 'adj'),
      PassageVocab(english: 'spillover', turkish: 'türler arası geçiş', partOfSpeech: 'noun'),
      PassageVocab(english: 'equitable', turkish: 'hakkaniyetli, eşit', partOfSpeech: 'adj'),
      PassageVocab(english: 'resilient', turkish: 'dirençli, dayanıklı', partOfSpeech: 'adj'),
      PassageVocab(english: 'preparedness', turkish: 'hazırlık', partOfSpeech: 'noun'),
      PassageVocab(english: 'therapeutics', turkish: 'tedavi yöntemleri', partOfSpeech: 'noun'),
    ],
    questions: [
      PassageQuestion(
        question: 'What factors have made the world more vulnerable to pandemics?',
        options: [
          'Decreased population and isolation',
          'Global connectivity, urbanization, and environmental changes',
          'Improved sanitation and hygiene',
          'Advances in medical technology',
        ],
        correctIndex: 1,
        explanation: 'İlk paragrafta "increased global connectivity, urbanization, and environmental changes" ifadesi geçmektedir.',
      ),
      PassageQuestion(
        question: 'What was described as a "paradigm shift" in the passage?',
        options: [
          'The discovery of SARS-CoV-2',
          'The speed of mRNA vaccine development',
          'The implementation of lockdowns',
          'The use of PCR tests',
        ],
        correctIndex: 1,
        explanation: 'İkinci paragrafta "The unprecedented speed of mRNA vaccine development... represented a paradigm shift" ifadesi geçmektedir.',
      ),
      PassageQuestion(
        question: 'What does the "One Health" concept emphasize?',
        options: [
          'Focusing only on human diseases',
          'The interconnection between human, animal, and environmental health',
          'Treating all patients equally',
          'Universal healthcare coverage',
        ],
        correctIndex: 1,
        explanation: 'Üçüncü paragrafta "One Health" kavramı "the interconnection between human, animal, and environmental health" olarak açıklanmıştır.',
      ),
      PassageQuestion(
        question: 'The word "resilient" in the last paragraph is closest in meaning to ----.',
        options: ['fragile', 'expensive', 'able to recover quickly', 'traditional'],
        correctIndex: 2,
        explanation: '"Resilient" kelimesi "dirençli, dayanıklı, çabuk toparlanan" anlamına gelir.',
      ),
      PassageQuestion(
        question: 'What is a zoonotic spillover event?',
        options: [
          'A chemical spill affecting the environment',
          'The transmission of pathogens from animals to humans',
          'An overflow of hospital capacity',
          'The spread of disease through water contamination',
        ],
        correctIndex: 1,
        explanation: 'Üçüncü paragrafta "zoonotic spillover events — the transmission of pathogens from animals to humans" şeklinde tanımlanmıştır.',
      ),
    ],
  ),

  // ─── PARÇA 13 ───
  const ReadingPassage(
    id: 13,
    title: 'Kardiyovasküler Hastalıklar',
    difficulty: 'Orta',
    topic: 'Kardiyoloji',
    passage: '''Cardiovascular diseases (CVDs) remain the leading cause of death globally, responsible for an estimated 17.9 million deaths annually, representing approximately 32% of all deaths worldwide. The term encompasses a range of disorders affecting the heart and blood vessels, including coronary artery disease, cerebrovascular disease, peripheral arterial disease, and heart failure.

Atherosclerosis, the buildup of fatty deposits called plaques within arterial walls, is the underlying pathological process in most cardiovascular diseases. This progressive condition begins with endothelial dysfunction, followed by the infiltration of lipids and inflammatory cells into the vessel wall. Over time, these plaques can narrow the arterial lumen, restricting blood flow, or rupture suddenly, triggering the formation of blood clots that can cause acute myocardial infarction (heart attack) or ischemic stroke.

Major modifiable risk factors for CVDs include hypertension, dyslipidemia, diabetes, obesity, smoking, physical inactivity, and unhealthy diet. Hypertension, often called the "silent killer" because it frequently presents without symptoms, affects approximately 1.3 billion people worldwide and is the single most important risk factor for stroke. Elevated levels of low-density lipoprotein (LDL) cholesterol are directly associated with the development and progression of atherosclerotic plaques.

Advances in cardiovascular medicine have dramatically improved outcomes over the past several decades. Percutaneous coronary intervention (PCI) with stent placement has become the standard treatment for acute coronary syndromes, while coronary artery bypass grafting (CABG) remains essential for complex multivessel disease. Pharmacological advances, including statins, antiplatelet agents, and novel anticoagulants, have significantly reduced cardiovascular mortality. Additionally, implantable devices such as pacemakers, defibrillators, and ventricular assist devices have transformed the management of heart rhythm disorders and advanced heart failure.''',
    vocabulary: [
      PassageVocab(english: 'cardiovascular', turkish: 'kardiyovasküler', partOfSpeech: 'adj'),
      PassageVocab(english: 'atherosclerosis', turkish: 'ateroskleroz, damar sertliği', partOfSpeech: 'noun'),
      PassageVocab(english: 'plaque', turkish: 'plak', partOfSpeech: 'noun'),
      PassageVocab(english: 'endothelial', turkish: 'endotelyal', partOfSpeech: 'adj'),
      PassageVocab(english: 'infiltration', turkish: 'sızma, infiltrasyon', partOfSpeech: 'noun'),
      PassageVocab(english: 'rupture', turkish: 'yırtılma, kopma', partOfSpeech: 'verb'),
      PassageVocab(english: 'myocardial infarction', turkish: 'miyokard enfarktüsü, kalp krizi', partOfSpeech: 'noun'),
      PassageVocab(english: 'hypertension', turkish: 'hipertansiyon, yüksek tansiyon', partOfSpeech: 'noun'),
      PassageVocab(english: 'dyslipidemia', turkish: 'dislipidemi', partOfSpeech: 'noun'),
      PassageVocab(english: 'statin', turkish: 'statin', partOfSpeech: 'noun'),
      PassageVocab(english: 'anticoagulant', turkish: 'antikoagülan, kan sulandırıcı', partOfSpeech: 'noun'),
      PassageVocab(english: 'pacemaker', turkish: 'kalp pili', partOfSpeech: 'noun'),
    ],
    questions: [
      PassageQuestion(
        question: 'What percentage of global deaths are caused by cardiovascular diseases?',
        options: ['About 15%', 'About 22%', 'About 32%', 'About 45%'],
        correctIndex: 2,
        explanation: 'İlk paragrafta "approximately 32% of all deaths worldwide" ifadesi geçmektedir.',
      ),
      PassageQuestion(
        question: 'What is the underlying pathological process in most CVDs?',
        options: ['Viral infection', 'Atherosclerosis', 'Autoimmune destruction', 'Genetic mutation'],
        correctIndex: 1,
        explanation: 'İkinci paragrafta "Atherosclerosis... is the underlying pathological process in most cardiovascular diseases" ifadesi geçmektedir.',
      ),
      PassageQuestion(
        question: 'Why is hypertension called the "silent killer"?',
        options: [
          'Because it develops at night',
          'Because it frequently presents without symptoms',
          'Because it is incurable',
          'Because it only affects elderly patients',
        ],
        correctIndex: 1,
        explanation: 'Üçüncü paragrafta "called the \'silent killer\' because it frequently presents without symptoms" ifadesi geçmektedir.',
      ),
      PassageQuestion(
        question: 'The word "rupture" in the second paragraph is closest in meaning to ----.',
        options: ['grow', 'break open suddenly', 'dissolve', 'harden'],
        correctIndex: 1,
        explanation: '"Rupture" kelimesi "aniden yırtılmak, patlamak" anlamına gelir.',
      ),
      PassageQuestion(
        question: 'What is PCI used to treat?',
        options: [
          'Chronic kidney disease',
          'Acute coronary syndromes',
          'Respiratory infections',
          'Neurological disorders',
        ],
        correctIndex: 1,
        explanation: 'Son paragrafta "Percutaneous coronary intervention (PCI)... standard treatment for acute coronary syndromes" ifadesi geçmektedir.',
      ),
    ],
  ),

  // ─── PARÇA 14 ───
  const ReadingPassage(
    id: 14,
    title: 'Solunum Sistemi Hastalıkları',
    difficulty: 'Kolay',
    topic: 'Göğüs Hastalıkları',
    passage: '''Chronic respiratory diseases represent a significant global health burden, affecting hundreds of millions of people worldwide. Among the most prevalent are chronic obstructive pulmonary disease (COPD), asthma, pulmonary fibrosis, and lung cancer. COPD alone is responsible for approximately 3.2 million deaths annually, making it the third leading cause of death globally.

COPD is characterized by persistent airflow limitation that is usually progressive and associated with an enhanced chronic inflammatory response in the airways and lungs to noxious particles or gases. Cigarette smoking is the primary risk factor, accounting for approximately 80-90% of COPD cases in developed countries. The disease encompasses two main conditions: chronic bronchitis, defined by productive cough lasting at least three months in two consecutive years, and emphysema, characterized by the destruction of alveolar walls and enlargement of air spaces.

Asthma, in contrast, is a chronic inflammatory disorder of the airways characterized by variable and recurring symptoms, reversible airflow obstruction, and bronchial hyperresponsiveness. Unlike COPD, asthma typically begins in childhood and is often associated with allergic sensitization. Environmental triggers such as allergens, respiratory infections, exercise, cold air, and air pollution can provoke asthma exacerbations. Management involves a stepwise approach, with inhaled corticosteroids serving as the cornerstone of long-term control therapy.

Advances in understanding the molecular mechanisms underlying respiratory diseases have led to the development of targeted biological therapies. Monoclonal antibodies targeting specific inflammatory pathways, such as anti-IgE (omalizumab), anti-IL-5 (mepolizumab), and anti-IL-4/IL-13 (dupilumab) therapies, have transformed the management of severe asthma. Similarly, antifibrotic agents such as pirfenidone and nintedanib have been shown to slow the progression of pulmonary fibrosis, a previously untreatable condition.''',
    vocabulary: [
      PassageVocab(english: 'chronic', turkish: 'kronik, süreğen', partOfSpeech: 'adj'),
      PassageVocab(english: 'obstructive', turkish: 'tıkayıcı', partOfSpeech: 'adj'),
      PassageVocab(english: 'airflow limitation', turkish: 'hava akımı kısıtlaması', partOfSpeech: 'noun'),
      PassageVocab(english: 'noxious', turkish: 'zararlı, zehirli', partOfSpeech: 'adj'),
      PassageVocab(english: 'bronchitis', turkish: 'bronşit', partOfSpeech: 'noun'),
      PassageVocab(english: 'emphysema', turkish: 'amfizem', partOfSpeech: 'noun'),
      PassageVocab(english: 'alveolar', turkish: 'alveolar, hava keseciklerine ait', partOfSpeech: 'adj'),
      PassageVocab(english: 'reversible', turkish: 'geri dönüşümlü', partOfSpeech: 'adj'),
      PassageVocab(english: 'exacerbation', turkish: 'alevlenme', partOfSpeech: 'noun'),
      PassageVocab(english: 'corticosteroid', turkish: 'kortikosteroid', partOfSpeech: 'noun'),
      PassageVocab(english: 'antifibrotic', turkish: 'antifibrotik', partOfSpeech: 'adj'),
      PassageVocab(english: 'untreatable', turkish: 'tedavi edilemez', partOfSpeech: 'adj'),
    ],
    questions: [
      PassageQuestion(
        question: 'What is the third leading cause of death globally?',
        options: ['Asthma', 'COPD', 'Lung cancer', 'Pulmonary fibrosis'],
        correctIndex: 1,
        explanation: 'İlk paragrafta "COPD alone... making it the third leading cause of death globally" ifadesi geçmektedir.',
      ),
      PassageQuestion(
        question: 'What percentage of COPD cases in developed countries are caused by smoking?',
        options: ['50-60%', '60-70%', '70-80%', '80-90%'],
        correctIndex: 3,
        explanation: 'İkinci paragrafta "approximately 80-90% of COPD cases in developed countries" ifadesi geçmektedir.',
      ),
      PassageQuestion(
        question: 'How does asthma differ from COPD according to the passage?',
        options: [
          'Asthma has reversible airflow obstruction and typically begins in childhood',
          'Asthma only affects adults',
          'Asthma is caused exclusively by smoking',
          'Asthma cannot be treated with medications',
        ],
        correctIndex: 0,
        explanation: 'Üçüncü paragrafta "reversible airflow obstruction" ve "typically begins in childhood" ifadeleri geçmektedir.',
      ),
      PassageQuestion(
        question: 'The word "noxious" in the second paragraph is closest in meaning to ----.',
        options: ['beneficial', 'harmless', 'harmful', 'invisible'],
        correctIndex: 2,
        explanation: '"Noxious" kelimesi "zararlı, zehirli" anlamına gelir.',
      ),
      PassageQuestion(
        question: 'What is the cornerstone of long-term asthma control?',
        options: [
          'Oral antibiotics',
          'Inhaled corticosteroids',
          'Bronchodilators only',
          'Surgical intervention',
        ],
        correctIndex: 1,
        explanation: 'Üçüncü paragrafta "inhaled corticosteroids serving as the cornerstone of long-term control therapy" ifadesi geçmektedir.',
      ),
    ],
  ),

  // ─── PARÇA 15 ───
  const ReadingPassage(
    id: 15,
    title: 'Yapay Zeka ve Tıbbi Tanı',
    difficulty: 'Orta',
    topic: 'Sağlık Teknolojisi',
    passage: '''Artificial intelligence (AI) is rapidly transforming the landscape of medical diagnosis, offering the potential to improve accuracy, efficiency, and accessibility of healthcare services. Machine learning algorithms, particularly deep learning models based on convolutional neural networks (CNNs), have demonstrated performance comparable to or even exceeding that of experienced clinicians in specific diagnostic tasks such as interpreting medical images, analyzing pathology slides, and detecting abnormalities in electrocardiograms.

In radiology, AI systems have shown remarkable accuracy in detecting lung nodules on chest CT scans, identifying breast cancer on mammograms, and diagnosing diabetic retinopathy from fundus photographs. These systems are trained on vast datasets of labeled medical images, learning to recognize patterns that may be subtle or easily overlooked by human observers. In dermatology, deep learning algorithms have demonstrated the ability to classify skin lesions with accuracy comparable to board-certified dermatologists.

Despite these impressive capabilities, the integration of AI into clinical practice faces several challenges. Issues of algorithmic bias arise when training datasets do not adequately represent diverse patient populations, potentially leading to disparities in diagnostic accuracy across different demographic groups. The "black box" nature of deep learning models, which makes it difficult to understand how they arrive at their predictions, raises concerns about transparency and accountability in medical decision-making.

The future of AI in medicine likely lies not in replacing physicians but in augmenting their capabilities. Clinical decision support systems powered by AI can help prioritize urgent cases, reduce diagnostic errors, and enable earlier detection of diseases. The integration of AI with electronic health records, genomic data, and wearable device information promises to enable truly personalized medicine, where treatment plans are tailored to the unique characteristics of individual patients.''',
    vocabulary: [
      PassageVocab(english: 'algorithm', turkish: 'algoritma', partOfSpeech: 'noun'),
      PassageVocab(english: 'convolutional', turkish: 'evrişimli', partOfSpeech: 'adj'),
      PassageVocab(english: 'pathology', turkish: 'patoloji', partOfSpeech: 'noun'),
      PassageVocab(english: 'abnormality', turkish: 'anormallik', partOfSpeech: 'noun'),
      PassageVocab(english: 'nodule', turkish: 'nodül', partOfSpeech: 'noun'),
      PassageVocab(english: 'mammogram', turkish: 'mamografi', partOfSpeech: 'noun'),
      PassageVocab(english: 'fundus', turkish: 'göz dibi', partOfSpeech: 'noun'),
      PassageVocab(english: 'lesion', turkish: 'lezyon', partOfSpeech: 'noun'),
      PassageVocab(english: 'algorithmic bias', turkish: 'algoritma yanlılığı', partOfSpeech: 'noun'),
      PassageVocab(english: 'disparity', turkish: 'eşitsizlik', partOfSpeech: 'noun'),
      PassageVocab(english: 'augment', turkish: 'artırmak, güçlendirmek', partOfSpeech: 'verb'),
      PassageVocab(english: 'tailor', turkish: 'kişiye uyarlamak', partOfSpeech: 'verb'),
    ],
    questions: [
      PassageQuestion(
        question: 'In which areas has AI shown accuracy comparable to clinicians?',
        options: [
          'Surgical procedures',
          'Interpreting medical images and analyzing pathology slides',
          'Physical examinations',
          'Patient counseling',
        ],
        correctIndex: 1,
        explanation: 'İlk paragrafta "interpreting medical images, analyzing pathology slides, and detecting abnormalities in electrocardiograms" alanları belirtilmiştir.',
      ),
      PassageQuestion(
        question: 'What is "algorithmic bias" in the context of AI diagnosis?',
        options: [
          'AI systems that are too slow',
          'Training data that doesn\'t represent diverse populations',
          'Computers that prefer certain brands',
          'Doctors who don\'t trust AI',
        ],
        correctIndex: 1,
        explanation: 'Üçüncü paragrafta algorithmic bias "training datasets do not adequately represent diverse patient populations" olarak açıklanmıştır.',
      ),
      PassageQuestion(
        question: 'What does the "black box" problem refer to?',
        options: [
          'AI systems that store data in physical boxes',
          'Difficulty understanding how AI models arrive at predictions',
          'AI systems that frequently malfunction',
          'Lack of electricity in hospitals',
        ],
        correctIndex: 1,
        explanation: '"Black box" problemi AI modellerinin "how they arrive at their predictions" konusundaki açıklanmazlığını ifade eder.',
      ),
      PassageQuestion(
        question: 'The word "augmenting" in the last paragraph is closest in meaning to ----.',
        options: ['replacing', 'enhancing', 'eliminating', 'questioning'],
        correctIndex: 1,
        explanation: '"Augmenting" kelimesi "güçlendirmek, artırmak" anlamına gelir.',
      ),
      PassageQuestion(
        question: 'What does the passage suggest is the future role of AI in medicine?',
        options: [
          'Completely replacing doctors',
          'Being used only in emergencies',
          'Augmenting physician capabilities, not replacing them',
          'Being limited to administrative tasks',
        ],
        correctIndex: 2,
        explanation: 'Son paragrafta "not in replacing physicians but in augmenting their capabilities" ifadesi geçmektedir.',
      ),
    ],
  ),

  // ─── PARÇA 16 ───
  const ReadingPassage(
    id: 16,
    title: 'Psikiyatrik Bozukluklar ve Beyin Kimyası',
    difficulty: 'Zor',
    topic: 'Psikiyatri',
    passage: '''Mental health disorders affect approximately one billion people worldwide, making them one of the leading causes of disability globally. Depression, anxiety disorders, bipolar disorder, and schizophrenia are among the most prevalent psychiatric conditions, each associated with significant functional impairment, reduced quality of life, and increased mortality risk. Despite their enormous burden, mental health conditions remain underfunded and stigmatized in many societies.

The neurotransmitter hypothesis of mental illness has been a dominant framework for understanding psychiatric disorders. According to this model, imbalances in brain chemicals such as serotonin, dopamine, and norepinephrine underlie conditions like depression and anxiety. This hypothesis led to the development of selective serotonin reuptake inhibitors (SSRIs), which remain the most widely prescribed class of antidepressants. However, the simplistic "chemical imbalance" narrative has been increasingly challenged, as research reveals the complex interplay of genetic, epigenetic, neuroinflammatory, and psychosocial factors in the pathogenesis of mental disorders.

Recent advances in neuroimaging have provided unprecedented insights into the structural and functional brain changes associated with psychiatric conditions. Functional magnetic resonance imaging (fMRI) studies have revealed altered connectivity patterns in brain networks, particularly the default mode network, in patients with depression and schizophrenia. Additionally, the discovery of rapid-acting antidepressants such as ketamine and psilocybin, which target glutamate signaling and promote neuroplasticity, has opened exciting new therapeutic avenues.

The integration of digital health technologies into mental healthcare represents another promising frontier. Mobile applications for cognitive behavioral therapy, AI-powered chatbots for initial screening, and wearable devices that monitor physiological indicators of stress are expanding access to mental health support. However, ensuring data privacy, clinical validation, and equitable access to these technologies remains essential for their successful implementation.''',
    vocabulary: [
      PassageVocab(english: 'psychiatric', turkish: 'psikiyatrik', partOfSpeech: 'adj'),
      PassageVocab(english: 'impairment', turkish: 'bozukluk, yetersizlik', partOfSpeech: 'noun'),
      PassageVocab(english: 'stigmatized', turkish: 'damgalanmış', partOfSpeech: 'adj'),
      PassageVocab(english: 'neurotransmitter', turkish: 'nörotransmiter, sinir ileticisi', partOfSpeech: 'noun'),
      PassageVocab(english: 'serotonin', turkish: 'serotonin', partOfSpeech: 'noun'),
      PassageVocab(english: 'reuptake', turkish: 'geri alım', partOfSpeech: 'noun'),
      PassageVocab(english: 'epigenetic', turkish: 'epigenetik', partOfSpeech: 'adj'),
      PassageVocab(english: 'pathogenesis', turkish: 'patogenez, hastalık oluşumu', partOfSpeech: 'noun'),
      PassageVocab(english: 'neuroplasticity', turkish: 'nöroplastisite', partOfSpeech: 'noun'),
      PassageVocab(english: 'cognitive behavioral therapy', turkish: 'bilişsel davranışçı terapi', partOfSpeech: 'noun'),
      PassageVocab(english: 'physiological', turkish: 'fizyolojik', partOfSpeech: 'adj'),
      PassageVocab(english: 'clinical validation', turkish: 'klinik doğrulama', partOfSpeech: 'noun'),
    ],
    questions: [
      PassageQuestion(
        question: 'How many people worldwide are affected by mental health disorders?',
        options: ['500 million', 'One billion', 'Two billion', '100 million'],
        correctIndex: 1,
        explanation: 'İlk paragrafta "approximately one billion people worldwide" ifadesi geçmektedir.',
      ),
      PassageQuestion(
        question: 'What class of antidepressants is most widely prescribed?',
        options: ['MAO inhibitors', 'Tricyclic antidepressants', 'SSRIs', 'Benzodiazepines'],
        correctIndex: 2,
        explanation: 'İkinci paragrafta "SSRIs... remain the most widely prescribed class of antidepressants" ifadesi geçmektedir.',
      ),
      PassageQuestion(
        question: 'Why has the "chemical imbalance" narrative been challenged?',
        options: [
          'Because neurotransmitters don\'t exist',
          'Because research reveals complex interactions of multiple factors',
          'Because SSRIs are no longer effective',
          'Because brain imaging is unreliable',
        ],
        correctIndex: 1,
        explanation: 'İkinci paragrafta "the complex interplay of genetic, epigenetic, neuroinflammatory, and psychosocial factors" ifadesiyle daha karmaşık etkenler belirtilmiştir.',
      ),
      PassageQuestion(
        question: 'Which substances are mentioned as rapid-acting antidepressants?',
        options: [
          'Lithium and valproate',
          'Ketamine and psilocybin',
          'Aspirin and ibuprofen',
          'Serotonin and dopamine',
        ],
        correctIndex: 1,
        explanation: 'Üçüncü paragrafta "rapid-acting antidepressants such as ketamine and psilocybin" ifadesi geçmektedir.',
      ),
      PassageQuestion(
        question: 'The word "stigmatized" in the first paragraph is closest in meaning to ----.',
        options: ['celebrated', 'negatively labeled or shamed', 'well-funded', 'researched'],
        correctIndex: 1,
        explanation: '"Stigmatized" kelimesi "damgalanmış, utançla yaftalanmış" anlamına gelir.',
      ),
    ],
  ),

  // ─── PARÇA 17 ───
  const ReadingPassage(
    id: 17,
    title: 'Antimikrobiyal Peptitler',
    difficulty: 'Zor',
    topic: 'Farmakoloji',
    passage: '''Antimicrobial peptides (AMPs) are small, naturally occurring molecules that form an essential component of the innate immune system across virtually all living organisms. These peptides, typically composed of 12-50 amino acids, exhibit broad-spectrum activity against bacteria, fungi, viruses, and parasites. Their mechanism of action primarily involves disrupting microbial cell membranes through electrostatic interactions with negatively charged phospholipids, leading to membrane permeabilization and cell death.

Unlike conventional antibiotics that target specific molecular pathways, AMPs act through multiple mechanisms simultaneously, making it significantly more difficult for microorganisms to develop resistance. In addition to their direct antimicrobial activity, many AMPs possess immunomodulatory properties, including the ability to recruit immune cells to sites of infection, promote wound healing, and modulate inflammatory responses. This dual functionality makes them particularly attractive candidates for therapeutic development.

The development of AMPs as clinical therapeutics has faced several challenges. Many naturally occurring AMPs demonstrate toxicity toward mammalian cells at concentrations required for antimicrobial activity, limiting their therapeutic window. Additionally, they are susceptible to proteolytic degradation in biological fluids and may lose activity in the presence of physiological salt concentrations. To overcome these limitations, researchers have employed various strategies, including amino acid substitution, cyclization, conjugation with polymers, and the design of peptidomimetics — synthetic molecules that mimic the structure and function of natural AMPs while exhibiting improved pharmacological properties.

Despite these challenges, several AMP-based products have reached clinical trials or received approval for topical applications. Nisin, a naturally occurring AMP produced by Lactococcus lactis, has been widely used as a food preservative for decades. More recently, synthetic AMPs designed for wound care, treatment of diabetic foot ulcers, and prevention of catheter-associated infections have shown promising results in clinical studies.''',
    vocabulary: [
      PassageVocab(english: 'antimicrobial peptide', turkish: 'antimikrobiyal peptit', partOfSpeech: 'noun'),
      PassageVocab(english: 'innate immune system', turkish: 'doğal bağışıklık sistemi', partOfSpeech: 'noun'),
      PassageVocab(english: 'broad-spectrum', turkish: 'geniş spektrumlu', partOfSpeech: 'adj'),
      PassageVocab(english: 'phospholipid', turkish: 'fosfolipit', partOfSpeech: 'noun'),
      PassageVocab(english: 'permeabilization', turkish: 'geçirgenleştirme', partOfSpeech: 'noun'),
      PassageVocab(english: 'immunomodulatory', turkish: 'immünomodülatör', partOfSpeech: 'adj'),
      PassageVocab(english: 'recruit', turkish: 'toplamak, çağırmak', partOfSpeech: 'verb'),
      PassageVocab(english: 'proteolytic', turkish: 'proteolitik', partOfSpeech: 'adj'),
      PassageVocab(english: 'degradation', turkish: 'bozunma, yıkılma', partOfSpeech: 'noun'),
      PassageVocab(english: 'peptidomimetic', turkish: 'peptit taklitçisi', partOfSpeech: 'noun'),
      PassageVocab(english: 'topical', turkish: 'topikal, bölgesel', partOfSpeech: 'adj'),
      PassageVocab(english: 'preservative', turkish: 'koruyucu madde', partOfSpeech: 'noun'),
    ],
    questions: [
      PassageQuestion(
        question: 'How do AMPs primarily kill microorganisms?',
        options: [
          'By targeting specific molecular pathways',
          'By disrupting microbial cell membranes',
          'By blocking protein synthesis',
          'By preventing DNA replication',
        ],
        correctIndex: 1,
        explanation: 'İlk paragrafta "disrupting microbial cell membranes through electrostatic interactions" ifadesi geçmektedir.',
      ),
      PassageQuestion(
        question: 'Why is it harder for microorganisms to develop resistance to AMPs?',
        options: [
          'Because AMPs are extremely expensive',
          'Because AMPs act through multiple mechanisms simultaneously',
          'Because AMPs are only used topically',
          'Because AMPs are made from animal sources',
        ],
        correctIndex: 1,
        explanation: 'İkinci paragrafta "act through multiple mechanisms simultaneously, making it significantly more difficult for microorganisms to develop resistance" ifadesi geçmektedir.',
      ),
      PassageQuestion(
        question: 'What is a major limitation of natural AMPs for clinical use?',
        options: [
          'They are too large to be synthesized',
          'They are toxic to mammalian cells at effective concentrations',
          'They only work against viruses',
          'They cannot be stored at room temperature',
        ],
        correctIndex: 1,
        explanation: 'Üçüncü paragrafta "demonstrate toxicity toward mammalian cells at concentrations required for antimicrobial activity" ifadesi geçmektedir.',
      ),
      PassageQuestion(
        question: 'The word "recruit" in the second paragraph is closest in meaning to ----.',
        options: ['destroy', 'attract and bring in', 'weaken', 'transform'],
        correctIndex: 1,
        explanation: '"Recruit" burada "toplamak, çekmek" anlamında kullanılmıştır.',
      ),
      PassageQuestion(
        question: 'What is nisin used for?',
        options: ['Cancer treatment', 'Food preservation', 'Pain relief', 'Blood pressure control'],
        correctIndex: 1,
        explanation: 'Son paragrafta "Nisin... has been widely used as a food preservative for decades" ifadesi geçmektedir.',
      ),
    ],
  ),

  // ─── PARÇA 18 ───
  const ReadingPassage(
    id: 18,
    title: 'Çocukluk Çağı Aşıları ve Gelişim',
    difficulty: 'Kolay',
    topic: 'Pediatri',
    passage: '''Childhood immunization programs are among the most cost-effective public health interventions ever developed, preventing an estimated 2-3 million deaths annually and protecting children from numerous infectious diseases. The standard vaccination schedule recommended by the World Health Organization includes vaccines against diseases such as measles, mumps, rubella, diphtheria, tetanus, pertussis, polio, hepatitis B, Haemophilus influenzae type b, and pneumococcal disease.

The developing immune system of infants and young children is particularly susceptible to infectious diseases, making timely vaccination crucial. Maternal antibodies, transferred through the placenta and breast milk, provide temporary protection during the first few months of life, but this passive immunity gradually wanes, leaving the child vulnerable. Vaccination fills this immunological gap by stimulating the child's own immune system to produce specific antibodies and memory cells that provide long-lasting protection.

Concerns about vaccine safety, while understandable, have been thoroughly addressed by extensive research. The now-retracted 1998 study that falsely linked the MMR vaccine to autism has been comprehensively debunked by numerous large-scale epidemiological studies involving millions of children. The benefits of vaccination overwhelmingly outweigh the minimal risks, which are primarily limited to mild side effects such as soreness at the injection site, low-grade fever, and fatigue.

Recent innovations in pediatric vaccination include the development of combination vaccines that reduce the number of injections required, thermostable formulations that eliminate the need for cold chain storage, and needle-free delivery systems such as oral drops, nasal sprays, and microneedle patches. These advances are particularly important for improving vaccine coverage in resource-limited settings where access to healthcare facilities and cold storage may be limited.''',
    vocabulary: [
      PassageVocab(english: 'immunization', turkish: 'bağışıklama', partOfSpeech: 'noun'),
      PassageVocab(english: 'cost-effective', turkish: 'maliyet etkin', partOfSpeech: 'adj'),
      PassageVocab(english: 'measles', turkish: 'kızamık', partOfSpeech: 'noun'),
      PassageVocab(english: 'diphtheria', turkish: 'difteri', partOfSpeech: 'noun'),
      PassageVocab(english: 'pertussis', turkish: 'boğmaca', partOfSpeech: 'noun'),
      PassageVocab(english: 'placenta', turkish: 'plasenta', partOfSpeech: 'noun'),
      PassageVocab(english: 'passive immunity', turkish: 'pasif bağışıklık', partOfSpeech: 'noun'),
      PassageVocab(english: 'wane', turkish: 'azalmak, zayıflamak', partOfSpeech: 'verb'),
      PassageVocab(english: 'retracted', turkish: 'geri çekilmiş', partOfSpeech: 'adj'),
      PassageVocab(english: 'debunk', turkish: 'çürütmek', partOfSpeech: 'verb'),
      PassageVocab(english: 'thermostable', turkish: 'ısıya dayanıklı', partOfSpeech: 'adj'),
      PassageVocab(english: 'microneedle', turkish: 'mikroiğne', partOfSpeech: 'noun'),
    ],
    questions: [
      PassageQuestion(
        question: 'How many deaths does childhood immunization prevent annually?',
        options: ['500,000-1 million', '1-2 million', '2-3 million', '5-6 million'],
        correctIndex: 2,
        explanation: 'İlk paragrafta "preventing an estimated 2-3 million deaths annually" ifadesi geçmektedir.',
      ),
      PassageQuestion(
        question: 'How do infants receive temporary immune protection?',
        options: [
          'Through their own antibody production',
          'Through maternal antibodies transferred via placenta and breast milk',
          'Through exposure to mild infections',
          'Through vitamin supplements',
        ],
        correctIndex: 1,
        explanation: 'İkinci paragrafta "Maternal antibodies, transferred through the placenta and breast milk, provide temporary protection" ifadesi geçmektedir.',
      ),
      PassageQuestion(
        question: 'What happened to the study linking MMR vaccine to autism?',
        options: [
          'It was confirmed by other studies',
          'It was retracted and comprehensively debunked',
          'It is still being investigated',
          'It was partially supported by new evidence',
        ],
        correctIndex: 1,
        explanation: 'Üçüncü paragrafta "now-retracted 1998 study" ve "comprehensively debunked" ifadeleri geçmektedir.',
      ),
      PassageQuestion(
        question: 'The word "wane" in the second paragraph is closest in meaning to ----.',
        options: ['increase', 'stabilize', 'gradually decrease', 'suddenly disappear'],
        correctIndex: 2,
        explanation: '"Wane" kelimesi "yavaş yavaş azalmak" anlamına gelir.',
      ),
      PassageQuestion(
        question: 'What innovation helps vaccine distribution in resource-limited areas?',
        options: [
          'More expensive cold storage units',
          'Thermostable formulations and needle-free delivery',
          'Online consultation services',
          'Larger hospital construction projects',
        ],
        correctIndex: 1,
        explanation: 'Son paragrafta "thermostable formulations" ve "needle-free delivery systems" yeniliklerinden bahsedilmektedir.',
      ),
    ],
  ),

  // ─── PARÇA 19 ───
  const ReadingPassage(
    id: 19,
    title: 'Böbrek Hastalıkları ve Diyaliz',
    difficulty: 'Orta',
    topic: 'Nefroloji',
    passage: '''Chronic kidney disease (CKD) is a progressive condition characterized by the gradual loss of kidney function over time. The kidneys perform vital functions including filtering waste products and excess fluid from the blood, regulating electrolyte balance, producing hormones that control blood pressure and red blood cell production, and maintaining acid-base homeostasis. When kidney function deteriorates to less than 15% of normal capacity, patients are said to have end-stage renal disease (ESRD) and require either dialysis or kidney transplantation to survive.

The leading causes of CKD vary by region but globally include diabetes mellitus and hypertension, which together account for approximately two-thirds of all cases. Other causes include glomerulonephritis, polycystic kidney disease, recurrent kidney infections, and prolonged obstruction of the urinary tract. Early stages of CKD are often asymptomatic, with symptoms such as fatigue, swelling, decreased urine output, and loss of appetite typically appearing only in advanced stages.

Dialysis, the artificial replacement of kidney function, is performed through two main modalities. Hemodialysis involves pumping the patient's blood through an external dialyzer that filters waste products and returns the cleaned blood to the body, typically requiring three to four sessions per week, each lasting several hours. Peritoneal dialysis utilizes the patient's own peritoneal membrane as a natural filter; a dialysis solution is introduced into the abdominal cavity, where it absorbs waste products and excess fluid before being drained and replaced.

The global burden of kidney disease is substantial and growing. Approximately 850 million people worldwide are affected by some form of kidney disease, and CKD is projected to become the fifth leading cause of death globally by 2040. Prevention strategies focus on managing underlying conditions, particularly diabetes and hypertension, maintaining adequate hydration, avoiding nephrotoxic medications, and regular screening for high-risk populations.''',
    vocabulary: [
      PassageVocab(english: 'chronic kidney disease', turkish: 'kronik böbrek hastalığı', partOfSpeech: 'noun'),
      PassageVocab(english: 'electrolyte', turkish: 'elektrolit', partOfSpeech: 'noun'),
      PassageVocab(english: 'homeostasis', turkish: 'homeostaz, denge', partOfSpeech: 'noun'),
      PassageVocab(english: 'end-stage renal disease', turkish: 'son dönem böbrek yetmezliği', partOfSpeech: 'noun'),
      PassageVocab(english: 'glomerulonephritis', turkish: 'glomerülonefrit', partOfSpeech: 'noun'),
      PassageVocab(english: 'asymptomatic', turkish: 'belirtisiz', partOfSpeech: 'adj'),
      PassageVocab(english: 'hemodialysis', turkish: 'hemodiyaliz', partOfSpeech: 'noun'),
      PassageVocab(english: 'dialyzer', turkish: 'diyalizör', partOfSpeech: 'noun'),
      PassageVocab(english: 'peritoneal', turkish: 'peritoneal, karın zarına ait', partOfSpeech: 'adj'),
      PassageVocab(english: 'nephrotoxic', turkish: 'nefrotoksik, böbreğe zararlı', partOfSpeech: 'adj'),
      PassageVocab(english: 'hydration', turkish: 'hidrasyon, su dengesi', partOfSpeech: 'noun'),
      PassageVocab(english: 'screening', turkish: 'tarama', partOfSpeech: 'noun'),
    ],
    questions: [
      PassageQuestion(
        question: 'At what kidney function level is a patient considered to have ESRD?',
        options: ['Less than 50%', 'Less than 30%', 'Less than 15%', 'Less than 5%'],
        correctIndex: 2,
        explanation: 'İlk paragrafta "kidney function deteriorates to less than 15% of normal capacity" ifadesi geçmektedir.',
      ),
      PassageQuestion(
        question: 'What two conditions together cause approximately two-thirds of CKD cases?',
        options: [
          'Cancer and liver disease',
          'Diabetes and hypertension',
          'Infections and genetics',
          'Obesity and smoking',
        ],
        correctIndex: 1,
        explanation: 'İkinci paragrafta "diabetes mellitus and hypertension, which together account for approximately two-thirds" ifadesi geçmektedir.',
      ),
      PassageQuestion(
        question: 'How does peritoneal dialysis differ from hemodialysis?',
        options: [
          'It uses the patient\'s peritoneal membrane as a natural filter',
          'It requires more frequent sessions',
          'It is performed only in hospitals',
          'It uses an artificial kidney machine',
        ],
        correctIndex: 0,
        explanation: 'Üçüncü paragrafta "Peritoneal dialysis utilizes the patient\'s own peritoneal membrane as a natural filter" ifadesi geçmektedir.',
      ),
      PassageQuestion(
        question: 'The word "asymptomatic" in the second paragraph means ----.',
        options: ['very painful', 'without symptoms', 'rapidly progressing', 'easily diagnosed'],
        correctIndex: 1,
        explanation: '"Asymptomatic" kelimesi "belirtisiz, semptom göstermeyen" anlamına gelir.',
      ),
      PassageQuestion(
        question: 'By what year is CKD projected to become the fifth leading cause of death?',
        options: ['2030', '2035', '2040', '2050'],
        correctIndex: 2,
        explanation: 'Son paragrafta "projected to become the fifth leading cause of death globally by 2040" ifadesi geçmektedir.',
      ),
    ],
  ),

  // ─── PARÇA 20 ───
  const ReadingPassage(
    id: 20,
    title: 'Beslenme ve Kronik Hastalıklar',
    difficulty: 'Kolay',
    topic: 'Beslenme Bilimleri',
    passage: '''The relationship between nutrition and chronic disease has been a subject of extensive research over the past several decades. Scientific evidence consistently demonstrates that dietary patterns play a crucial role in the development, prevention, and management of many non-communicable diseases, including cardiovascular disease, type 2 diabetes, certain cancers, and osteoporosis. It is estimated that poor diet contributes to approximately 11 million deaths annually, making it the leading behavioral risk factor for mortality globally.

The Western diet, characterized by high consumption of processed foods, refined sugars, saturated fats, and red meat, combined with low intake of fruits, vegetables, whole grains, and fiber, has been strongly associated with increased risk of chronic diseases. In contrast, traditional dietary patterns such as the Mediterranean diet, the DASH (Dietary Approaches to Stop Hypertension) diet, and plant-based diets have been shown to significantly reduce the risk of cardiovascular events, improve glycemic control, and lower cancer incidence.

Micronutrient deficiencies remain a global health concern, even in developed countries. Vitamin D deficiency affects approximately one billion people worldwide and is associated with bone disorders, immune dysfunction, and increased susceptibility to infections. Iron deficiency anemia is the most common nutritional deficiency globally, particularly affecting women of reproductive age, pregnant women, and young children. Adequate intake of essential vitamins, minerals, and antioxidants through a balanced diet is fundamental to maintaining optimal health.

The emerging field of nutritional genomics, or nutrigenomics, investigates how individual genetic variations influence responses to dietary components and how specific nutrients affect gene expression. This personalized approach to nutrition recognizes that dietary recommendations cannot be one-size-fits-all, as genetic polymorphisms can significantly affect nutrient metabolism, absorption, and utilization. The integration of nutrigenomic data into clinical practice promises to enable more precise and effective dietary interventions tailored to individual genetic profiles.''',
    vocabulary: [
      PassageVocab(english: 'non-communicable', turkish: 'bulaşıcı olmayan', partOfSpeech: 'adj'),
      PassageVocab(english: 'dietary pattern', turkish: 'beslenme düzeni', partOfSpeech: 'noun'),
      PassageVocab(english: 'mortality', turkish: 'ölüm oranı', partOfSpeech: 'noun'),
      PassageVocab(english: 'processed food', turkish: 'işlenmiş gıda', partOfSpeech: 'noun'),
      PassageVocab(english: 'saturated fat', turkish: 'doymuş yağ', partOfSpeech: 'noun'),
      PassageVocab(english: 'glycemic', turkish: 'glisemik, kan şekerine ait', partOfSpeech: 'adj'),
      PassageVocab(english: 'micronutrient', turkish: 'mikro besin', partOfSpeech: 'noun'),
      PassageVocab(english: 'susceptibility', turkish: 'yatkınlık, hassasiyet', partOfSpeech: 'noun'),
      PassageVocab(english: 'anemia', turkish: 'anemi, kansızlık', partOfSpeech: 'noun'),
      PassageVocab(english: 'antioxidant', turkish: 'antioksidan', partOfSpeech: 'noun'),
      PassageVocab(english: 'nutrigenomics', turkish: 'nütrijenomik', partOfSpeech: 'noun'),
      PassageVocab(english: 'polymorphism', turkish: 'polimorfizm, çok biçimlilik', partOfSpeech: 'noun'),
    ],
    questions: [
      PassageQuestion(
        question: 'How many deaths does poor diet contribute to annually?',
        options: ['About 5 million', 'About 8 million', 'About 11 million', 'About 15 million'],
        correctIndex: 2,
        explanation: 'İlk paragrafta "poor diet contributes to approximately 11 million deaths annually" ifadesi geçmektedir.',
      ),
      PassageQuestion(
        question: 'Which dietary patterns are mentioned as reducing chronic disease risk?',
        options: [
          'Western diet and keto diet',
          'Mediterranean, DASH, and plant-based diets',
          'High-protein and low-carb diets',
          'Intermittent fasting diets',
        ],
        correctIndex: 1,
        explanation: 'İkinci paragrafta "Mediterranean diet, the DASH diet, and plant-based diets" diyetleri belirtilmiştir.',
      ),
      PassageQuestion(
        question: 'What is the most common nutritional deficiency globally?',
        options: ['Vitamin D deficiency', 'Iron deficiency anemia', 'Vitamin C deficiency', 'Calcium deficiency'],
        correctIndex: 1,
        explanation: 'Üçüncü paragrafta "Iron deficiency anemia is the most common nutritional deficiency globally" ifadesi geçmektedir.',
      ),
      PassageQuestion(
        question: 'What does nutrigenomics study?',
        options: [
          'The calories in different foods',
          'How genetic variations influence responses to dietary components',
          'The effect of exercise on weight loss',
          'The nutritional content of organic foods',
        ],
        correctIndex: 1,
        explanation: 'Son paragrafta "investigates how individual genetic variations influence responses to dietary components" ifadesi geçmektedir.',
      ),
      PassageQuestion(
        question: 'The word "susceptibility" in the third paragraph is closest in meaning to ----.',
        options: ['resistance', 'immunity', 'vulnerability', 'strength'],
        correctIndex: 2,
        explanation: '"Susceptibility" kelimesi "yatkınlık, hassasiyet" anlamına gelir. "Vulnerability" en yakın anlam karşılığıdır.',
      ),
    ],
  ),
  // ─── PARÇA 21 ───
  const ReadingPassage(
    id: 21,
    title: 'Telemedicine and Remote Healthcare',
    difficulty: 'Orta',
    topic: 'Sağlık Teknolojileri',
    passage: \'\'\'Telemedicine involves the use of electronic communications and software to provide clinical services to patients without an in-person visit. This technology is frequently used for follow-up visits, management of chronic conditions, medication management, and specialist consultation.

The COVID-19 pandemic significantly accelerated the adoption of telehealth services. By minimizing physical contact, telemedicine reduces the risk of transmitting infectious diseases. Furthermore, it improves access to care for patients residing in rural or remote areas who might otherwise have to travel long distances to see a healthcare provider. However, challenges such as the digital divide and reimbursement policies still need to be addressed.\'\'\',
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
    passage: \'\'\'The human gut microbiome consists of trillions of microorganisms, including bacteria, viruses, and fungi, residing in the gastrointestinal tract. These microorganisms play a crucial role in human health by aiding in digestion, synthesizing essential vitamins, and regulating the immune system.

Recent research has highlighted the gut-brain axis, a bidirectional communication network linking the enteric and central nervous systems. Dysbiosis, an imbalance in the gut microbial community, has been associated with various pathological conditions, including inflammatory bowel disease, obesity, and even neurological disorders like depression and Parkinson\'s disease. Consequently, interventions such as probiotics and dietary modifications are being explored to restore microbial balance.\'\'\',
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
    passage: \'\'\'Artificial intelligence (AI) is revolutionizing the field of medical diagnostics, particularly in radiology and pathology. Machine learning algorithms can analyze vast amounts of medical imaging data, such as X-rays, MRIs, and CT scans, to detect abnormalities with a level of accuracy that often rivals or surpasses human experts.

For instance, AI systems have been successfully trained to identify early signs of breast cancer in mammograms and diabetic retinopathy in eye scans. These tools do not aim to replace physicians; rather, they serve as a "second pair of eyes," helping to reduce diagnostic errors and improve patient outcomes by catching diseases in their earliest, most treatable stages.\'\'\',
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
          'Alzheimer\'s disease and Parkinson\'s disease',
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
    passage: \'\'\'Sleep is essential for maintaining optimal physical and mental health. However, in today\'s fast-paced society, sleep deprivation has become a common problem. Adults generally require between 7 to 9 hours of sleep per night to function effectively.

Chronic lack of sleep has serious consequences. It impairs cognitive function, memory, and decision-making abilities. Moreover, sleep deprivation is linked to an increased risk of chronic conditions such as obesity, diabetes, cardiovascular disease, and depression. During sleep, the body undergoes critical repair processes, and the immune system releases cytokines to fight infections. Without adequate rest, the body becomes more vulnerable to illnesses.\'\'\',
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
    passage: \'\'\'Vitamin D is a crucial nutrient that helps the body absorb calcium, maintaining strong and healthy bones. Unlike other vitamins, our bodies can synthesize Vitamin D when our skin is exposed to sunlight. However, Vitamin D deficiency is highly prevalent worldwide.

Several factors contribute to this deficiency. People who spend most of their time indoors, live in high latitudes, or consistently wear sunscreen are at a higher risk. Severe deficiency can lead to bone diseases such as rickets in children and osteomalacia in adults. To prevent this, doctors often recommend consuming fortified foods, such as milk and cereals, or taking dietary supplements, especially during the winter months.\'\'\',
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
    title: 'Alzheimer\'s Disease',
    difficulty: 'Zor',
    topic: 'Nöroloji',
    passage: \'\'\'Alzheimer\'s disease is a progressive neurodegenerative disorder and the most common cause of dementia among older adults. It is characterized by a gradual decline in memory, thinking, and reasoning skills, ultimately interfering with daily life. 

At the microscopic level, the disease is marked by the abnormal accumulation of two proteins in the brain: amyloid-beta, which forms extracellular plaques, and tau, which forms intracellular neurofibrillary tangles. These structural changes disrupt neuronal communication and lead to cell death, causing brain atrophy. Despite extensive clinical trials, there is currently no cure for Alzheimer\'s. Existing medications primarily aim to manage symptoms and temporarily improve cognitive function, while ongoing research focuses on disease-modifying therapies that target the underlying pathology.\'\'\',
    vocabulary: [
      PassageVocab(english: 'neurodegenerative', turkish: 'sinir hücrelerinin yıkımına yol açan', partOfSpeech: 'adj'),
      PassageVocab(english: 'accumulation', turkish: 'birikim', partOfSpeech: 'noun'),
      PassageVocab(english: 'extracellular', turkish: 'hücre dışı', partOfSpeech: 'adj'),
      PassageVocab(english: 'atrophy', turkish: 'körelme, küçülme', partOfSpeech: 'noun'),
    ],
    questions: [
      PassageQuestion(
        question: 'Which two proteins are abnormally accumulated in the brains of Alzheimer\'s patients?',
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
        question: 'What is the current status of a cure for Alzheimer\'s disease according to the passage?',
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
    passage: \'\'\'While acute stress is a natural survival response, chronic stress can have devastating effects on physical and mental health. When a person is constantly stressed, the body continuously releases cortisol and adrenaline. This prolonged activation of the stress response system disrupts almost all of the body\'s processes.

Chronic stress increases the risk of cardiovascular diseases by elevating blood pressure and promoting the buildup of plaque in arteries. It also suppresses the immune system, making individuals more susceptible to infections. Furthermore, chronic stress is a major contributor to psychological disorders, including anxiety and depression. Effective stress management techniques, such as mindfulness, regular exercise, and cognitive-behavioral therapy, are crucial for mitigating these health risks.\'\'\',
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
    passage: \'\'\'Vaccines are one of the most effective public health interventions in history, responsible for the eradication of smallpox and the near-eradication of polio. By introducing a harmless component of a pathogen, vaccines stimulate the immune system to produce antibodies, providing immunity without causing the disease.

A critical concept associated with vaccination is herd immunity. When a sufficiently high proportion of a population is vaccinated, the spread of the infectious disease is effectively halted. This indirect protection is vital for individuals who cannot be vaccinated, such as newborns, the elderly, and those with compromised immune systems. However, vaccine hesitancy has led to declining immunization rates in some areas, resulting in the resurgence of preventable diseases like measles.\'\'\',
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
    passage: \'\'\'Nanotechnology involves the manipulation of matter on an atomic and molecular scale. In the medical field, one of its most promising applications is in drug delivery systems. Nanoparticles can be engineered to carry therapeutic agents directly to diseased cells, minimizing damage to healthy tissues.

This targeted approach is particularly revolutionary in oncology. Traditional chemotherapy distributes highly toxic drugs throughout the entire body, causing severe systemic side effects such as hair loss and nausea. In contrast, nanocarriers can be designed to recognize specific receptors on the surface of cancer cells. Once attached, they release the drug payload directly into the tumor. Additionally, nanotechnology can improve the solubility and stability of drugs that are otherwise difficult for the body to absorb.\'\'\',
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
    passage: \'\'\'Obesity is defined as an excessive accumulation of body fat that presents a risk to health. It is often measured using the Body Mass Index (BMI). Over the past few decades, global obesity rates have tripled, driven primarily by sedentary lifestyles and the increased consumption of energy-dense, highly processed foods.

A major consequence of obesity is the development of metabolic syndrome. This is a cluster of conditions that occur together, including elevated blood pressure, high blood sugar, excess body fat around the waist, and abnormal cholesterol levels. Having metabolic syndrome significantly increases a person\'s risk of heart disease, stroke, and type 2 diabetes. Lifestyle interventions, focusing on weight loss, a balanced diet, and regular physical activity, remain the cornerstone of managing and reversing this syndrome.\'\'\',
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
    passage: \'\'\'Type 2 diabetes is a chronic metabolic disorder characterized by insulin resistance and relative insulin deficiency. Unlike type 1 diabetes, which is an autoimmune condition, type 2 is strongly associated with lifestyle factors, particularly obesity and physical inactivity. When cells become resistant to insulin, glucose remains in the blood, leading to hyperglycemia.

Effective management of type 2 diabetes requires a comprehensive approach. The first line of treatment usually involves lifestyle modifications, including dietary changes and regular exercise, to promote weight loss and improve insulin sensitivity. If these measures are insufficient, oral antidiabetic medications, such as metformin, are prescribed. In some advanced cases, insulin therapy may be necessary to maintain glycemic control and prevent long-term complications like neuropathy and nephropathy.\'\'\',
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
        explanation: 'Tip 1 diyabetin otoimmün bir hastalık olduğu, Tip 2\'nin ise yaşam tarzı faktörleri ve obezite ile güçlü bir şekilde ilişkili olduğu (strongly associated with lifestyle factors, particularly obesity) vurgulanmıştır.',
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
    passage: \'\'\'CRISPR-Cas9 is a groundbreaking gene-editing technology adapted from a naturally occurring defense mechanism found in bacteria. It allows scientists to alter DNA sequences and modify gene function with unprecedented precision, efficiency, and flexibility. The system uses a guide RNA to identify a specific target sequence in the genome, and the Cas9 enzyme acts as molecular scissors to cut the DNA at that location.

The potential medical applications of CRISPR are vast. It holds the promise of curing genetic disorders, such as cystic fibrosis and sickle cell anemia, by correcting the underlying mutations. Additionally, researchers are exploring its use in developing targeted cancer therapies and combating infectious diseases like HIV. Despite its immense potential, gene editing also raises significant ethical concerns, particularly regarding off-target effects and the possibility of editing human embryos (germline editing).\'\'\',
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
        explanation: 'Parçada Cas9 enziminin DNA\'yı belirli bir yerden kesen "moleküler makas" (molecular scissors to cut the DNA) görevi gördüğü açıkça belirtilmiştir.',
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
    passage: \'\'\'Hypertension, commonly known as high blood pressure, is often referred to as the "silent killer" because it typically has no noticeable symptoms until significant damage has been done to the body. Blood pressure is the force exerted by circulating blood against the walls of the body\'s arteries. When this pressure remains persistently high, it forces the heart to work harder to pump blood.

Over time, uncontrolled hypertension can lead to severe health complications. It damages the inner lining of the arteries, accelerating the process of atherosclerosis. This increases the risk of heart attacks, strokes, and chronic kidney disease. Risk factors for hypertension include a diet high in sodium, obesity, excessive alcohol consumption, and physical inactivity. Routine screening and blood pressure monitoring are essential for early detection and management.\'\'\',
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
    passage: \'\'\'The immune system is designed to defend the body against foreign invaders such as bacteria and viruses. However, in autoimmune diseases, the immune system loses its ability to distinguish between self and non-self antigens. Consequently, it mistakenly produces autoantibodies that attack the body\'s own healthy cells, tissues, and organs.

There are more than 80 known autoimmune disorders, including Rheumatoid Arthritis, Systemic Lupus Erythematosus (SLE), and Multiple Sclerosis. The exact etiology of autoimmune diseases remains elusive, though it is widely believed to involve a combination of genetic predisposition and environmental triggers, such as infections or chemical exposure. Treatment generally focuses on reducing immune system activity using immunosuppressive drugs, which, while effective, can leave patients more susceptible to opportunistic infections.\'\'\',
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
          'It mistakenly attacks the body\'s own healthy cells.',
          'It ignores bacteria and focuses only on viruses.',
          'It attacks the immune systems of other people.',
        ],
        correctIndex: 1,
        explanation: 'Otoimmün hastalıklarda bağışıklık sisteminin vücudun kendi sağlıklı hücrelerine yanlışlıkla saldırdığı (mistakenly produces autoantibodies that attack the body\'s own healthy cells) belirtilmiştir.',
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
    passage: \'\'\'The benefits of regular physical exercise extend far beyond cardiovascular health and weight management; it is also a powerful tool for improving mental health. Engaging in moderate aerobic exercise, such as brisk walking, swimming, or cycling, has been shown to significantly reduce symptoms of anxiety and depression.

When we exercise, the brain releases endorphins—chemicals that act as natural painkillers and mood elevators. Additionally, physical activity promotes neurogenesis (the growth of new neurons) in certain brain areas. Exercise also provides a healthy distraction from negative thoughts and helps improve sleep quality, which is often disrupted in individuals suffering from mental health disorders.\'\'\',
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
    passage: \'\'\'Osteoporosis is a skeletal disorder characterized by compromised bone strength, predisposing an individual to an increased risk of fracture. As people age, the rate of bone resorption (breakdown) outpaces bone formation, leading to a loss of bone mass and deterioration of bone microarchitecture. Bones become porous and fragile, often breaking from minor falls or even simple actions like bending over.

Postmenopausal women are at the highest risk due to the sudden drop in estrogen levels, a hormone that protects against bone loss. Preventive measures are most effective when started early in life. Adequate calcium and vitamin D intake, combined with weight-bearing exercises like walking or resistance training, are essential for building and maintaining peak bone mass. Pharmacological treatments, such as bisphosphonates, are used in high-risk patients to slow bone loss.\'\'\',
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
    passage: \'\'\'Stem cells are unique biological cells capable of self-renewal and differentiation into various specialized cell types. In regenerative medicine, they hold extraordinary potential for repairing or replacing damaged tissues and organs. There are two primary types of stem cells used in research: embryonic stem cells, which are pluripotent, and adult stem cells, which are generally multipotent.

One of the most established applications of stem cell therapy is bone marrow transplantation, used to treat blood disorders like leukemia. However, researchers are exploring broader applications, such as regenerating cardiac muscle after a heart attack or replacing dopamine-producing neurons in Parkinson\'s disease. A significant breakthrough came with the development of induced pluripotent stem cells (iPSCs), where adult somatic cells are genetically reprogrammed to an embryonic-like state, bypassing many ethical controversies.\'\'\',
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
        explanation: 'iPSC\'lerin, yetişkin somatik hücrelerin embriyonik benzeri bir duruma yeniden programlanarak birçok etik tartışmayı atlatması (bypassing many ethical controversies) nedeniyle bir dönüm noktası olduğu vurgulanmıştır.',
      ),
    ],
  ),
  // ─── PARÇA 38 ───
  const ReadingPassage(
    id: 38,
    title: 'Asthma and Air Pollution',
    difficulty: 'Orta',
    topic: 'Göğüs Hastalıkları',
    passage: \'\'\'Asthma is a chronic inflammatory disorder of the airways characterized by episodes of wheezing, breathlessness, chest tightness, and coughing. The inflammation makes the airways hyperresponsive to various stimuli. When exposed to triggers, the smooth muscles surrounding the airways constrict, and mucus production increases, severely restricting airflow.

Air pollution is a major environmental trigger for asthma exacerbations. Particulate matter (PM), ozone, and nitrogen dioxide emitted from vehicle exhaust and industrial facilities can penetrate deep into the lungs. Long-term exposure to polluted air not only triggers asthma attacks in individuals who already have the condition but is also linked to the development of new-onset asthma in children. Consequently, improving urban air quality is considered a critical public health strategy for managing respiratory diseases.\'\'\',
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
    passage: \'\'\'Skin cancer is the most common form of cancer globally, and its primary cause is overexposure to ultraviolet (UV) radiation from the sun or tanning beds. UV radiation damages the DNA in skin cells, causing mutations that lead to uncontrolled cell growth. There are three main types of skin cancer: basal cell carcinoma, squamous cell carcinoma, and melanoma.

Melanoma is the least common but most dangerous type, as it is highly likely to spread to other parts of the body if not caught early. Preventive measures are simple but vital. Dermatologists recommend wearing broad-spectrum sunscreen, seeking shade during peak sunlight hours, and wearing protective clothing. Early detection through regular skin checks significantly improves the chances of successful treatment.\'\'\',
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
        explanation: 'UV radyasyonunun cilt hücrelerindeki DNA\'ya zarar vererek kontrolsüz hücre büyümesine yol açan mutasyonlara neden olduğu (damages the DNA in skin cells, causing mutations) ifade edilmiştir.',
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
    title: 'Parkinson\'s Disease',
    difficulty: 'Zor',
    topic: 'Nöroloji',
    passage: '''Parkinson\'s disease is a progressive disorder of the nervous system that primarily affects movement. The hallmark pathology of the disease is the gradual degeneration and death of dopamine-producing neurons in a specific area of the brain called the substantia nigra. Dopamine is a critical neurotransmitter responsible for relaying messages that plan and control body movements.

As dopamine levels plummet, individuals begin to exhibit classic motor symptoms: resting tremors, rigidity, bradykinesia (slowness of movement), and postural instability. Non-motor symptoms, such as sleep disturbances and cognitive decline, also frequently occur as the disease advances. Currently, treatments like Levodopa help manage the motor symptoms by replenishing dopamine levels temporarily. Deep brain stimulation (DBS) is a surgical option for advanced cases, but a definitive cure remains undiscovered.''',
    vocabulary: [
      PassageVocab(english: 'hallmark', turkish: 'ayırt edici özellik', partOfSpeech: 'noun'),
      PassageVocab(english: 'degeneration', turkish: 'yozlaşma, bozulma', partOfSpeech: 'noun'),
      PassageVocab(english: 'plummet', turkish: 'hızla düşmek, çakılmak', partOfSpeech: 'verb'),
      PassageVocab(english: 'replenish', turkish: 'yeniden doldurmak, takviye etmek', partOfSpeech: 'verb'),
    ],
    questions: [
      PassageQuestion(
        question: 'What is the primary biological cause of movement issues in Parkinson\'s disease?',
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
];
