import 'articles_data.dart';

final List<Article> articlesExtra2 = [
  // ─── MAKALE 21 ───
  const Article(
    id: 21,
    title: 'Telehealth Advancements Post-Pandemic',
    turkishTitle: 'Pandemi Sonrası Teletıp Gelişmeleri',
    category: 'Sağlık Teknolojileri',
    difficulty: 'Orta',
    source: 'Journal of Medical Internet Research',
    estimatedMinutes: 5,
    passage: '''Telehealth refers to the distribution of health-related services and information via electronic information and telecommunication technologies. Prior to the COVID-19 pandemic, telemedicine was a niche service utilized primarily for reaching remote populations. However, the necessity of social distancing transformed telehealth into an essential component of mainstream healthcare delivery worldwide.

The rapid expansion of telehealth has proven particularly beneficial for managing chronic diseases and mental health conditions. Patients can now receive routine follow-ups, medication adjustments, and cognitive behavioral therapy from the comfort of their homes. This shift has not only improved patient adherence but also reduced the burden on emergency departments. 

Despite its clear advantages, telehealth faces several hurdles. Disparities in internet access, often termed the "digital divide," mean that vulnerable populations may struggle to utilize these services. Additionally, regulatory frameworks regarding cross-border licensure and insurance reimbursement are still catching up to the technology. Looking ahead, a hybrid model combining in-person and virtual care is widely anticipated as the new standard in medicine.''',
    turkishSummary: 'Teletıp, pandemi ile birlikte sağlık hizmetlerinin vazgeçilmez bir parçası haline gelmiştir. Kronik hastalıkların ve ruh sağlığı durumlarının yönetiminde büyük faydalar sağlasa da dijital uçurum ve yasal düzenlemeler gibi zorluklar devam etmektedir.',
    vocabulary: [
      ArticleVocab(english: 'distribution', turkish: 'dağıtım', partOfSpeech: 'n'),
      ArticleVocab(english: 'niche', turkish: 'niş / özel', partOfSpeech: 'adj'),
      ArticleVocab(english: 'mainstream', turkish: 'ana akım', partOfSpeech: 'n'),
      ArticleVocab(english: 'adherence', turkish: 'bağlılık / uyum', partOfSpeech: 'n'),
      ArticleVocab(english: 'burden', turkish: 'yük', partOfSpeech: 'n'),
      ArticleVocab(english: 'disparity', turkish: 'eşitsizlik', partOfSpeech: 'n'),
      ArticleVocab(english: 'vulnerable', turkish: 'savunmasız / hassas', partOfSpeech: 'adj'),
      ArticleVocab(english: 'reimbursement', turkish: 'geri ödeme', partOfSpeech: 'n'),
      ArticleVocab(english: 'hybrid', turkish: 'melez / hibrit', partOfSpeech: 'adj'),
      ArticleVocab(english: 'anticipate', turkish: 'beklemek / öngörmek', partOfSpeech: 'v'),
    ],
    questions: [
      ArticleQuestion(question: 'What is the main topic of the passage?', options: ['The invention of the internet', 'The rise and challenges of telehealth', 'The history of emergency departments', 'The cure for chronic diseases'], correctIndex: 1, explanation: 'Metin teletıbbın yükselişini ve karşılaştığı zorlukları ele almaktadır.', questionType: 'Ana Fikir'),
      ArticleQuestion(question: 'According to the passage, how did the pandemic affect telehealth?', options: ['It made telehealth completely obsolete.', 'It transformed telehealth into a mainstream service.', 'It restricted telehealth only to remote areas.', 'It made internet access perfectly equal.'], correctIndex: 1, explanation: 'Pandeminin sosyal mesafe ihtiyacı nedeniyle teletıbbı ana akım sağlık hizmetinin vazgeçilmez bir parçası haline getirdiği belirtilmiştir.', questionType: 'Detay'),
      ArticleQuestion(question: 'What does the term "digital divide" refer to?', options: ['The division of hospitals into physical and virtual wings', 'The mathematical difference in hospital costs', 'Disparities in internet access among different populations', 'The gap between different programming languages'], correctIndex: 2, explanation: '"Dijital uçurum", farklı nüfuslar arasındaki internet erişimi eşitsizliklerini (Disparities in internet access) ifade eder.', questionType: 'Çıkarım'),
      ArticleQuestion(question: 'The word "burden" in the second paragraph is closest in meaning to ----.', options: ['advantage', 'load', 'relief', 'solution'], correctIndex: 1, explanation: '"Burden" yük anlamına gelir, bu yüzden "load" en yakın anlamlısıdır.', questionType: 'Kelime'),
      ArticleQuestion(question: 'What future model of medicine is anticipated by the author?', options: ['A completely virtual healthcare system', 'A hybrid model of in-person and virtual care', 'A complete return to traditional in-person visits', 'A system where doctors only visit patients at home'], correctIndex: 1, explanation: 'Yazar gelecekte yüz yüze ve sanal bakımı birleştiren hibrit bir modelin yeni standart olarak beklendiğini belirtmiştir.', questionType: 'Yazarın Tutumu'),
    ],
  ),

  // ─── MAKALE 22 ───
  const Article(
    id: 22,
    title: 'The Gut Microbiome and Immunity',
    turkishTitle: 'Bağırsak Mikrobiyomu ve Bağışıklık',
    category: 'İmmünoloji',
    difficulty: 'Zor',
    source: 'Immunology Today',
    estimatedMinutes: 6,
    passage: '''The human gastrointestinal tract harbours a complex and dynamic population of microorganisms, collectively referred to as the gut microbiome. While historically viewed merely in the context of digestion and nutrient absorption, contemporary research has illuminated the indispensable role these microbes play in the development and modulation of the immune system.

From birth, the microbial colonization of the gut directs the maturation of gut-associated lymphoid tissue (GALT), which constitutes the largest immune organ in the body. Commensal bacteria interact directly with immune cells, such as dendritic cells and regulatory T cells, promoting immune tolerance toward harmless antigens while maintaining vigilance against pathogens. This delicate balance is crucial; a disruption, known as dysbiosis, can compromise immune integrity.

Dysbiosis has been robustly linked to a plethora of immune-mediated conditions, including allergies, asthma, and autoimmune diseases like inflammatory bowel disease (IBD). Environmental factors such as antibiotic overuse, highly processed diets, and urban lifestyles heavily influence microbial diversity. Consequently, targeted modulation of the microbiome through probiotics, prebiotics, and dietary interventions is emerging as a promising frontier in prophylactic and therapeutic immunology.''',
    turkishSummary: 'İnsan bağırsak mikrobiyomu, sindirimin ötesinde bağışıklık sisteminin gelişiminde ve düzenlenmesinde vazgeçilmez bir rol oynar. Disbiyoz adı verilen mikrobiyal dengesizlik, alerjiler ve otoimmün hastalıklarla ilişkilidir.',
    vocabulary: [
      ArticleVocab(english: 'harbour', turkish: 'barındırmak', partOfSpeech: 'v'),
      ArticleVocab(english: 'indispensable', turkish: 'vazgeçilmez', partOfSpeech: 'adj'),
      ArticleVocab(english: 'colonization', turkish: 'kolonizasyon / yerleşme', partOfSpeech: 'n'),
      ArticleVocab(english: 'maturation', turkish: 'olgunlaşma', partOfSpeech: 'n'),
      ArticleVocab(english: 'commensal', turkish: 'ortakyaşar', partOfSpeech: 'adj'),
      ArticleVocab(english: 'vigilance', turkish: 'teyakkuz / uyanıklık', partOfSpeech: 'n'),
      ArticleVocab(english: 'disruption', turkish: 'bozulma / aksama', partOfSpeech: 'n'),
      ArticleVocab(english: 'plethora', turkish: 'bolluk / fazlalık', partOfSpeech: 'n'),
      ArticleVocab(english: 'modulation', turkish: 'düzenleme / modülasyon', partOfSpeech: 'n'),
      ArticleVocab(english: 'prophylactic', turkish: 'koruyucu', partOfSpeech: 'adj'),
    ],
    questions: [
      ArticleQuestion(question: 'What is the main function of the gut microbiome highlighted in contemporary research?', options: ['Only aiding in digestion', 'Directing the maturation of the immune system', 'Producing red blood cells', 'Filtering toxins from the blood'], correctIndex: 1, explanation: 'Güncel araştırmalar mikrobiyomun bağışıklık sisteminin gelişimindeki ve düzenlenmesindeki rolüne odaklanmaktadır.', questionType: 'Ana Fikir'),
      ArticleQuestion(question: 'How do commensal bacteria affect the immune system?', options: ['They cause autoimmune diseases.', 'They attack regulatory T cells.', 'They promote immune tolerance toward harmless antigens.', 'They destroy gut-associated lymphoid tissue.'], correctIndex: 2, explanation: 'Ortakyaşar bakterilerin bağışıklık hücreleriyle etkileşime girerek zararsız antijenlere karşı bağışıklık toleransını teşvik ettiği belirtilmiştir.', questionType: 'Detay'),
      ArticleQuestion(question: 'What is "dysbiosis" according to the passage?', options: ['The normal digestion process', 'A disruption of the microbial balance', 'A type of white blood cell', 'A genetic mutation'], correctIndex: 1, explanation: 'Disbiyoz, mikrobiyal dengenin bozulması (a disruption) olarak tanımlanmıştır.', questionType: 'Çıkarım'),
      ArticleQuestion(question: 'The word "indispensable" in the first paragraph is closest in meaning to ----.', options: ['unnecessary', 'replaceable', 'crucial', 'optional'], correctIndex: 2, explanation: '"Indispensable" vazgeçilmez/çok önemli anlamına gelir, bu yüzden "crucial" en yakın anlamlısıdır.', questionType: 'Kelime'),
      ArticleQuestion(question: 'Which of the following is mentioned as a factor that influences microbial diversity?', options: ['Lack of sleep', 'Antibiotic overuse', 'Excessive exercise', 'Exposure to sunlight'], correctIndex: 1, explanation: 'Metinde mikrobiyal çeşitliliği etkileyen çevresel faktörler arasında antibiyotiklerin aşırı kullanımı (antibiotic overuse) sayılmaktadır.', questionType: 'Detay'),
    ],
  ),

  // ─── MAKALE 23 ───
  const Article(
    id: 23,
    title: 'CRISPR-Cas9 in Clinical Trials',
    turkishTitle: 'Klinik Çalışmalarda CRISPR-Cas9',
    category: 'Genetik',
    difficulty: 'Zor',
    source: 'Journal of Medical Genetics',
    estimatedMinutes: 7,
    passage: '''The advent of CRISPR-Cas9 technology has inaugurated a new epoch in genetics, enabling precise, targeted alterations to the genome. Originally discovered as an adaptive immune mechanism in bacteria, CRISPR has been rapidly adapted for use in mammalian cells. Currently, the most anticipated phase of this technology involves its translation from the laboratory bench to clinical trials in human patients.

Early clinical applications have focused primarily on monogenic disorders—diseases caused by a single defective gene. For instance, recent trials targeting sickle cell disease and beta-thalassemia have shown extraordinary promise. By extracting a patient's hematopoietic stem cells, editing the DNA ex vivo to reactivate fetal hemoglobin production, and infusing them back into the patient, researchers have successfully alleviated symptoms and eliminated the need for frequent blood transfusions.

Despite these monumental successes, significant safety and ethical concerns temper the enthusiasm. The phenomenon of "off-target" effects, where the Cas9 enzyme inadvertently cleaves unintended DNA sequences, remains a critical safety hurdle. Furthermore, while somatic cell editing (affecting only the patient) is generally accepted, germline editing (which passes modifications to future generations) is fraught with profound ethical controversies and is currently subjected to a global moratorium.''',
    turkishSummary: 'CRISPR-Cas9 gen düzenleme teknolojisi, tek gen mutasyonuna bağlı hastalıklarda (örneğin orak hücreli anemi) klinik çalışmalarda büyük umut vaat etmektedir. Ancak hedef dışı etkiler ve üreme hücrelerinin düzenlenmesi (germline) gibi ciddi güvenlik ve etik sorunlar bulunmaktadır.',
    vocabulary: [
      ArticleVocab(english: 'advent', turkish: 'geliş / ortaya çıkış', partOfSpeech: 'n'),
      ArticleVocab(english: 'epoch', turkish: 'çağ / dönem', partOfSpeech: 'n'),
      ArticleVocab(english: 'translation', turkish: 'uyarlama / çeviri', partOfSpeech: 'n'),
      ArticleVocab(english: 'monogenic', turkish: 'tek genli', partOfSpeech: 'adj'),
      ArticleVocab(english: 'defective', turkish: 'kusurlu', partOfSpeech: 'adj'),
      ArticleVocab(english: 'ex vivo', turkish: 'vücut dışında', partOfSpeech: 'adv'),
      ArticleVocab(english: 'alleviate', turkish: 'hafifletmek', partOfSpeech: 'v'),
      ArticleVocab(english: 'inadvertently', turkish: 'yanlışlıkla / kazara', partOfSpeech: 'adv'),
      ArticleVocab(english: 'cleave', turkish: 'bölmek / kesmek', partOfSpeech: 'v'),
      ArticleVocab(english: 'moratorium', turkish: 'geçici durdurma', partOfSpeech: 'n'),
    ],
    questions: [
      ArticleQuestion(question: 'What was the original function of CRISPR in nature?', options: ['A method for bacteria to digest food', 'An adaptive immune mechanism in bacteria', 'A viral reproduction strategy', 'A mechanism for human cell division'], correctIndex: 1, explanation: 'CRISPR başlangıçta bakterilerde uyarlanabilir bir bağışıklık mekanizması (an adaptive immune mechanism) olarak keşfedilmiştir.', questionType: 'Detay'),
      ArticleQuestion(question: 'How is CRISPR being used to treat sickle cell disease according to the text?', options: ['By modifying the virus directly in the blood', 'By editing hematopoietic stem cells ex vivo and infusing them back', 'By performing brain surgery', 'By prescribing genetically modified diets'], correctIndex: 1, explanation: 'Orak hücreli anemi için hastanın kök hücrelerinin vücut dışında (ex vivo) düzenlenip tekrar hastaya verilmesi yöntemi kullanılmıştır.', questionType: 'Detay'),
      ArticleQuestion(question: 'What is meant by "off-target" effects?', options: ['When the treatment cures a completely different disease', 'When the Cas9 enzyme inadvertently cuts unintended DNA sequences', 'When the patient rejects the transfused blood', 'When the gene editing wears off over time'], correctIndex: 1, explanation: 'Hedef dışı etkiler, Cas9 enziminin yanlışlıkla hedeflenmeyen DNA dizilerini kesmesi olarak tanımlanmıştır.', questionType: 'Çıkarım'),
      ArticleQuestion(question: 'The word "alleviate" in the second paragraph is closest in meaning to ----.', options: ['worsen', 'relieve', 'prevent', 'cause'], correctIndex: 1, explanation: '"Alleviate" hafifletmek demektir; en yakın anlamlısı "relieve" dir.', questionType: 'Kelime'),
      ArticleQuestion(question: 'What is the current global stance on germline editing mentioned in the passage?', options: ['It is fully approved and commonly used.', 'It is only allowed for cosmetic purposes.', 'It is subjected to a global moratorium due to ethical controversies.', 'It is highly recommended by all doctors.'], correctIndex: 2, explanation: 'Üreme hücrelerinin (germline) düzenlenmesinin derin etik tartışmalara yol açtığı ve şu anda küresel bir moratoryuma (geçici durdurma) tabi olduğu belirtilmiştir.', questionType: 'Detay'),
    ],
  ),

  // ─── MAKALE 24 ───
  const Article(
    id: 24,
    title: 'Vitamin D and Bone Health',
    turkishTitle: 'D Vitamini ve Kemik Sağlığı',
    category: 'Beslenme',
    difficulty: 'Kolay',
    source: 'Journal of Clinical Endocrinology',
    estimatedMinutes: 4,
    passage: '''Vitamin D is an essential nutrient that plays a critical role in the human body, particularly concerning bone health. Unlike other vitamins, which must be obtained primarily through diet, vitamin D can be synthesized by the body when the skin is exposed to ultraviolet B (UVB) rays from sunlight.

The primary function of vitamin D is to facilitate the intestinal absorption of calcium and phosphorus, two minerals vital for the formation and maintenance of strong bones. A deficiency in vitamin D can lead to severe skeletal disorders. In children, prolonged deficiency causes rickets, a condition characterized by soft, weakened bones and skeletal deformities. In adults, inadequate vitamin D levels result in osteomalacia, which causes bone pain and muscle weakness, and significantly increases the risk of developing osteoporosis.

Despite its importance, vitamin D deficiency is a global public health issue. Factors contributing to this epidemic include indoor lifestyles, extensive use of sunscreen, and living in higher latitudes with limited sunlight exposure during winter months. Consequently, medical professionals often advise the consumption of fortified foods, such as milk and cereals, and the use of dietary supplements to ensure adequate intake.''',
    turkishSummary: 'D vitamini, kalsiyum ve fosfor emilimini sağlayarak kemik sağlığında kritik rol oynar. Eksikliği çocuklarda raşitizme, yetişkinlerde ise osteomalazi ve osteoporoza neden olur. Güneş ışığı en önemli kaynağıdır.',
    vocabulary: [
      ArticleVocab(english: 'nutrient', turkish: 'besin ögesi', partOfSpeech: 'n'),
      ArticleVocab(english: 'synthesize', turkish: 'sentezlemek', partOfSpeech: 'v'),
      ArticleVocab(english: 'facilitate', turkish: 'kolaylaştırmak', partOfSpeech: 'v'),
      ArticleVocab(english: 'absorption', turkish: 'emilim', partOfSpeech: 'n'),
      ArticleVocab(english: 'deficiency', turkish: 'eksiklik', partOfSpeech: 'n'),
      ArticleVocab(english: 'prolonged', turkish: 'uzun süreli', partOfSpeech: 'adj'),
      ArticleVocab(english: 'deformity', turkish: 'şekil bozukluğu', partOfSpeech: 'n'),
      ArticleVocab(english: 'inadequate', turkish: 'yetersiz', partOfSpeech: 'adj'),
      ArticleVocab(english: 'fortified', turkish: 'zenginleştirilmiş', partOfSpeech: 'adj'),
      ArticleVocab(english: 'supplement', turkish: 'takviye', partOfSpeech: 'n'),
    ],
    questions: [
      ArticleQuestion(question: 'How is vitamin D unique compared to other vitamins?', options: ['It is only found in vegetables.', 'It can be synthesized by the body upon exposure to sunlight.', 'It is not necessary for human survival.', 'It provides high amounts of energy.'], correctIndex: 1, explanation: 'Diğer vitaminlerin aksine, D vitamininin cildin güneş ışığına maruz kalmasıyla vücut tarafından sentezlenebileceği belirtilmiştir.', questionType: 'Ana Fikir'),
      ArticleQuestion(question: 'What is the main function of vitamin D according to the passage?', options: ['To improve vision in the dark', 'To build strong muscles', 'To facilitate the absorption of calcium and phosphorus', 'To prevent common colds'], correctIndex: 2, explanation: 'D vitamininin temel işlevinin kalsiyum ve fosforun bağırsaklardan emilimini kolaylaştırmak (facilitate the intestinal absorption of calcium and phosphorus) olduğu ifade edilmiştir.', questionType: 'Detay'),
      ArticleQuestion(question: 'What disease does vitamin D deficiency cause in children?', options: ['Osteoporosis', 'Osteomalacia', 'Rickets', 'Scurvy'], correctIndex: 2, explanation: 'Çocuklarda uzun süreli eksikliğin raşitizme (rickets) neden olduğu belirtilmiştir.', questionType: 'Detay'),
      ArticleQuestion(question: 'The word "inadequate" in the second paragraph is closest in meaning to ----.', options: ['abundant', 'sufficient', 'insufficient', 'excessive'], correctIndex: 2, explanation: '"Inadequate" yetersiz anlamına gelir, bu yüzden "insufficient" en yakın anlamlısıdır.', questionType: 'Kelime'),
      ArticleQuestion(question: 'Which of the following is NOT a reason for the global vitamin D deficiency mentioned in the text?', options: ['Living near the equator', 'Indoor lifestyles', 'Extensive use of sunscreen', 'Living in higher latitudes'], correctIndex: 0, explanation: 'Kapalı yaşam tarzı, güneş kremi kullanımı ve yüksek enlemlerde yaşamak nedenler arasında sayılırken, ekvatora yakın yaşamak sayılmamıştır.', questionType: 'Çıkarım'),
    ],
  ),

  // ─── MAKALE 25 ───
  const Article(
    id: 25,
    title: 'The Burden of Asthma',
    turkishTitle: 'Astımın Yükü',
    category: 'Göğüs Hastalıkları',
    difficulty: 'Orta',
    source: 'Global Asthma Report',
    estimatedMinutes: 5,
    passage: '''Asthma is a major non-communicable disease characterized by chronic inflammation of the conducting airways. It affects over 300 million people globally, making it one of the most common chronic diseases among children and adults alike. The disease presents clinically with recurrent episodes of wheezing, breathlessness, chest tightness, and coughing, particularly at night or in the early morning.

The pathogenesis of asthma involves a complex interplay between genetic predisposition and environmental triggers. Common environmental factors that exacerbate asthma symptoms include indoor allergens (such as dust mites and pet dander), outdoor air pollution, tobacco smoke, and viral respiratory infections. When exposed to these triggers, the airways undergo bronchoconstriction, and excessive mucus production further obstructs airflow.

While there is currently no cure for asthma, the condition can be effectively managed. Pharmacological treatment usually involves a combination of long-term control medications, such as inhaled corticosteroids to reduce inflammation, and quick-relief inhalers (bronchodilators) to treat acute symptoms. Additionally, patient education focusing on the identification and avoidance of personal triggers is paramount to preventing severe exacerbations and improving the overall quality of life.''',
    turkishSummary: 'Astım, solunum yollarının kronik iltihaplanmasıyla seyreden ve dünya çapında 300 milyondan fazla insanı etkileyen bir hastalıktır. Kesin tedavisi olmasa da, ilaçlar ve tetikleyicilerden kaçınma ile etkili bir şekilde yönetilebilir.',
    vocabulary: [
      ArticleVocab(english: 'non-communicable', turkish: 'bulaşıcı olmayan', partOfSpeech: 'adj'),
      ArticleVocab(english: 'wheezing', turkish: 'hırıltılı solunum', partOfSpeech: 'n'),
      ArticleVocab(english: 'pathogenesis', turkish: 'hastalığın gelişimi', partOfSpeech: 'n'),
      ArticleVocab(english: 'interplay', turkish: 'karşılıklı etkileşim', partOfSpeech: 'n'),
      ArticleVocab(english: 'exacerbate', turkish: 'kötüleştirmek / şiddetlendirmek', partOfSpeech: 'v'),
      ArticleVocab(english: 'dander', turkish: 'hayvan kepeği', partOfSpeech: 'n'),
      ArticleVocab(english: 'obstruct', turkish: 'engellemek / tıkamak', partOfSpeech: 'v'),
      ArticleVocab(english: 'corticosteroid', turkish: 'kortizon içeren ilaç', partOfSpeech: 'n'),
      ArticleVocab(english: 'acute', turkish: 'ani ve şiddetli', partOfSpeech: 'adj'),
      ArticleVocab(english: 'paramount', turkish: 'son derece önemli', partOfSpeech: 'adj'),
    ],
    questions: [
      ArticleQuestion(question: 'How is asthma classified in the passage?', options: ['As an infectious viral disease', 'As a rare genetic mutation', 'As a major non-communicable chronic disease', 'As a temporary allergic reaction'], correctIndex: 2, explanation: 'Astım, bulaşıcı olmayan başlıca kronik hastalıklardan (major non-communicable disease) biri olarak sınıflandırılmıştır.', questionType: 'Detay'),
      ArticleQuestion(question: 'Which of the following symptoms is NOT typically associated with asthma according to the text?', options: ['Wheezing', 'Chest tightness', 'High fever', 'Breathlessness'], correctIndex: 2, explanation: 'Metinde astımın semptomları arasında hırıltı, nefes darlığı, göğüste sıkışma ve öksürük sayılmış, yüksek ateşten (high fever) bahsedilmemiştir.', questionType: 'Detay'),
      ArticleQuestion(question: 'What happens physically to the airways when exposed to asthma triggers?', options: ['They dilate and clear all mucus.', 'They undergo bronchoconstriction and excessive mucus production.', 'They immediately heal the inflammation.', 'They absorb more oxygen from the environment.'], correctIndex: 1, explanation: 'Tetikleyicilere maruz kalındığında hava yollarının daraldığı (bronchoconstriction) ve aşırı mukus üretiminin hava akışını engellediği belirtilmiştir.', questionType: 'Ana Fikir'),
      ArticleQuestion(question: 'The word "exacerbate" in the second paragraph is closest in meaning to ----.', options: ['improve', 'worsen', 'cure', 'hide'], correctIndex: 1, explanation: '"Exacerbate" kötüleştirmek veya şiddetlendirmek anlamına gelir, bu nedenle "worsen" en yakın anlama sahiptir.', questionType: 'Kelime'),
      ArticleQuestion(question: 'What is the purpose of quick-relief inhalers (bronchodilators)?', options: ['To permanently cure asthma', 'To reduce long-term inflammation', 'To treat acute symptoms', 'To identify personal environmental triggers'], correctIndex: 2, explanation: 'Hızlı rahatlatıcı inhalerlerin (bronkodilatörler) akut semptomları tedavi etmek (treat acute symptoms) amacıyla kullanıldığı ifade edilmiştir.', questionType: 'Çıkarım'),
    ],
  ),

  // ─── MAKALE 26 ───
  const Article(
    id: 26,
    title: 'Obesity and Metabolic Syndrome',
    turkishTitle: 'Obezite ve Metabolik Sendrom',
    category: 'Endokrinoloji',
    difficulty: 'Orta',
    source: 'World Health Organization Reports',
    estimatedMinutes: 5,
    passage: '''Obesity has reached epidemic proportions globally, with a profound impact on public health. It is defined as abnormal or excessive fat accumulation that presents a risk to health, typically measured using the Body Mass Index (BMI). The modern obesogenic environment—characterized by the ubiquitous availability of energy-dense, highly processed foods and the rise of sedentary occupations—is the primary driver of this trend.

A significant clinical consequence of obesity is the development of metabolic syndrome. This condition is not a single disease but a cluster of metabolic abnormalities that include abdominal obesity, insulin resistance, elevated blood pressure, and dyslipidemia (high triglycerides and low HDL cholesterol). Individuals with metabolic syndrome face a substantially heightened risk of developing type 2 diabetes and experiencing cardiovascular events such as heart attacks and strokes.

Managing obesity and metabolic syndrome requires a multifaceted approach. While pharmacological options and bariatric surgery are available for severe cases, lifestyle interventions remain the fundamental cornerstone of treatment. These encompass sustained dietary modifications aiming at caloric deficit, combined with regular aerobic and resistance exercise to improve insulin sensitivity and cardiovascular fitness.''',
    turkishSummary: 'Obezite küresel bir salgın haline gelmiştir ve metabolik sendrom gelişiminin ana nedenidir. Metabolik sendrom kalp hastalığı ve diyabet riskini artırır. Tedavinin temeli yaşam tarzı değişiklikleridir.',
    vocabulary: [
      ArticleVocab(english: 'epidemic', turkish: 'salgın', partOfSpeech: 'n'),
      ArticleVocab(english: 'accumulation', turkish: 'birikim', partOfSpeech: 'n'),
      ArticleVocab(english: 'ubiquitous', turkish: 'her yerde bulunan', partOfSpeech: 'adj'),
      ArticleVocab(english: 'sedentary', turkish: 'hareketsiz', partOfSpeech: 'adj'),
      ArticleVocab(english: 'consequence', turkish: 'sonuç / netice', partOfSpeech: 'n'),
      ArticleVocab(english: 'cluster', turkish: 'küme / grup', partOfSpeech: 'n'),
      ArticleVocab(english: 'dyslipidemia', turkish: 'kandaki yağ oranının bozukluğu', partOfSpeech: 'n'),
      ArticleVocab(english: 'heightened', turkish: 'artmış / yükselmiş', partOfSpeech: 'adj'),
      ArticleVocab(english: 'multifaceted', turkish: 'çok yönlü', partOfSpeech: 'adj'),
      ArticleVocab(english: 'encompass', turkish: 'kapsamak / içermek', partOfSpeech: 'v'),
    ],
    questions: [
      ArticleQuestion(question: 'What does the term "obesogenic environment" refer to in the passage?', options: ['An environment that promotes excessive exercise', 'An environment characterized by processed foods and sedentary jobs', 'An area with a high rate of infectious diseases', 'A clinical setting for bariatric surgery'], correctIndex: 1, explanation: 'Obezojenik ortam, yüksek enerjili işlenmiş gıdaların yaygın bulunabilirliği ve hareketsiz mesleklerin artışıyla karakterize edilmiştir.', questionType: 'Çıkarım'),
      ArticleQuestion(question: 'Metabolic syndrome is best described as ----.', options: ['a single genetic disease', 'a psychological disorder related to eating', 'a cluster of metabolic abnormalities', 'a surgical procedure for weight loss'], correctIndex: 2, explanation: 'Metabolik sendrom, tek bir hastalık değil, bir dizi metabolik anormalliğin kümesi (a cluster of metabolic abnormalities) olarak tanımlanmıştır.', questionType: 'Detay'),
      ArticleQuestion(question: 'Which of the following is NOT included in the cluster of conditions for metabolic syndrome?', options: ['Insulin resistance', 'Abdominal obesity', 'Low blood pressure', 'Dyslipidemia'], correctIndex: 2, explanation: 'Metabolik sendromda yüksek tansiyon (elevated blood pressure) görülür; düşük tansiyondan (Low blood pressure) bahsedilmez.', questionType: 'Detay'),
      ArticleQuestion(question: 'The word "ubiquitous" in the first paragraph is closest in meaning to ----.', options: ['rare', 'expensive', 'omnipresent', 'hidden'], correctIndex: 2, explanation: '"Ubiquitous" her yerde bulunan demektir; en yakın anlamı "omnipresent"tır.', questionType: 'Kelime'),
      ArticleQuestion(question: 'What is the cornerstone of treating obesity and metabolic syndrome?', options: ['Bariatric surgery for everyone', 'Lifestyle interventions like diet and exercise', 'Taking multiple pharmacological drugs', 'Ignoring the BMI measurements'], correctIndex: 1, explanation: 'Şiddetli vakalar için cerrahi seçenekler olsa da, tedavinin temel taşının yaşam tarzı müdahaleleri (lifestyle interventions) olduğu vurgulanmıştır.', questionType: 'Ana Fikir'),
    ],
  ),

  // ─── MAKALE 27 ───
  const Article(
    id: 27,
    title: 'Exercise and Mental Health',
    turkishTitle: 'Egzersiz ve Ruh Sağlığı',
    category: 'Psikiyatri',
    difficulty: 'Kolay',
    source: 'American Psychological Association',
    estimatedMinutes: 4,
    passage: '''Physical activity is widely recognized for its profound benefits to cardiovascular and musculoskeletal health. However, an accumulating body of evidence highlights its equally important role in promoting mental health. Engaging in regular exercise has been proven to significantly reduce symptoms of anxiety, depression, and psychological stress.

The biological mechanisms underlying these psychological benefits are manifold. Exercise stimulates the release of endorphins, commonly known as "feel-good" neurotransmitters, which act as natural painkillers and mood elevators. Additionally, physical activity increases blood circulation to the brain, influencing the hypothalamic-pituitary-adrenal (HPA) axis, which controls physiologic reactivity to stress. Over time, regular exercise also promotes neurogenesis, the creation of new neurons, particularly in the hippocampus—a brain region critical for memory and emotion regulation.

Beyond the biological effects, exercise offers psychological and social benefits. It provides a healthy distraction from negative thought cycles and fosters a sense of accomplishment. Group exercises or team sports also enhance social connectivity, combatting feelings of isolation that often accompany mental health disorders. Thus, exercise is increasingly prescribed as a complementary therapy in psychiatric care.''',
    turkishSummary: 'Fiziksel aktivite sadece fiziksel sağlığa değil, aynı zamanda ruh sağlığına da büyük faydalar sağlar. Egzersiz endorfin salınımını artırır, beynin stres tepkisini düzenler ve depresyon ile anksiyete semptomlarını azaltır.',
    vocabulary: [
      ArticleVocab(english: 'accumulate', turkish: 'birikmek / toplanmak', partOfSpeech: 'v'),
      ArticleVocab(english: 'profound', turkish: 'derin / çok büyük', partOfSpeech: 'adj'),
      ArticleVocab(english: 'manifold', turkish: 'çok çeşitli / pek çok', partOfSpeech: 'adj'),
      ArticleVocab(english: 'endorphin', turkish: 'endorfin (mutluluk hormonu)', partOfSpeech: 'n'),
      ArticleVocab(english: 'reactivity', turkish: 'tepkisellik', partOfSpeech: 'n'),
      ArticleVocab(english: 'neurogenesis', turkish: 'yeni nöron oluşumu', partOfSpeech: 'n'),
      ArticleVocab(english: 'distraction', turkish: 'dikkat dağıtıcı şey / kafa dağıtma', partOfSpeech: 'n'),
      ArticleVocab(english: 'accomplishment', turkish: 'başarı', partOfSpeech: 'n'),
      ArticleVocab(english: 'isolation', turkish: 'izolasyon / yalnızlık', partOfSpeech: 'n'),
      ArticleVocab(english: 'complementary', turkish: 'tamamlayıcı', partOfSpeech: 'adj'),
    ],
    questions: [
      ArticleQuestion(question: 'According to the passage, what is the effect of exercise on the hippocampus?', options: ['It stops the release of endorphins.', 'It promotes the creation of new neurons (neurogenesis).', 'It reduces blood circulation to the area.', 'It suppresses the hypothalamic-pituitary-adrenal axis.'], correctIndex: 1, explanation: 'Metinde egzersizin özellikle hipokampüste yeni nöronların oluşumunu (neurogenesis) teşvik ettiği belirtilmiştir.', questionType: 'Detay'),
      ArticleQuestion(question: 'What are endorphins referred to as in the text?', options: ['Harmful toxins', '"Feel-good" neurotransmitters', 'Muscle relaxants', 'Stress hormones'], correctIndex: 1, explanation: 'Endorfinler "iyi hissettiren" ("feel-good") nörotransmitterler olarak adlandırılmıştır.', questionType: 'Detay'),
      ArticleQuestion(question: 'Which of the following is considered a social benefit of exercise?', options: ['Increased blood circulation', 'The release of natural painkillers', 'Enhancing social connectivity through group activities', 'Improving cardiovascular health'], correctIndex: 2, explanation: 'Grup egzersizlerinin sosyal bağları geliştirdiği ve izolasyon hissiyle savaştığı (social connectivity) sosyal bir fayda olarak belirtilmiştir.', questionType: 'Çıkarım'),
      ArticleQuestion(question: 'The word "manifold" in the second paragraph is closest in meaning to ----.', options: ['single', 'simple', 'various', 'unknown'], correctIndex: 2, explanation: '"Manifold" çok çeşitli anlamına gelir; en uygun karşılık "various" kelimesidir.', questionType: 'Kelime'),
      ArticleQuestion(question: 'Why is exercise increasingly prescribed in psychiatric care?', options: ['Because it is the only cure for schizophrenia.', 'Because it offers biological, psychological, and social benefits.', 'Because psychiatric medications are no longer effective.', 'Because it requires no effort from the patient.'], correctIndex: 1, explanation: 'Egzersizin sağladığı biyolojik, psikolojik ve sosyal faydalar nedeniyle tamamlayıcı bir terapi olarak reçete edildiği sonucuna varılmaktadır.', questionType: 'Ana Fikir'),
    ],
  ),

  // ─── MAKALE 28 ───
  const Article(
    id: 28,
    title: 'Stem Cell Therapy in Neurology',
    turkishTitle: 'Nörolojide Kök Hücre Tedavisi',
    category: 'Yenileyici Tıp',
    difficulty: 'Zor',
    source: 'Journal of Neurology',
    estimatedMinutes: 6,
    passage: '''The central nervous system (CNS) has traditionally been viewed as having virtually no regenerative capacity. However, the advent of stem cell therapy is challenging this dogma, offering unprecedented potential for the treatment of devastating neurodegenerative disorders such as Parkinson\'s disease, Alzheimer\'s disease, and amyotrophic lateral sclerosis (ALS). Stem cells, owing to their unique capacity for self-renewal and differentiation into multiple cell lineages, represent a paradigm shift in regenerative medicine.

Researchers are particularly focused on induced pluripotent stem cells (iPSCs). By reprogramming adult somatic cells—such as skin fibroblasts—back to an embryonic-like state, scientists can generate patient-specific neural progenitor cells. This autologous approach not only bypasses the profound ethical controversies associated with embryonic stem cells but also dramatically circumvents the risk of immunological rejection post-transplantation.

Despite the theoretical elegance of stem cell interventions, clinical translation remains fraught with formidable obstacles. Precise control over the differentiation of stem cells in vivo is difficult, and there is a lingering risk of tumorigenesis—the formation of tumors from uncontrolled cell division. Current clinical trials are proceeding with extreme caution, prioritizing safety and establishing rigorous protocols before these therapies can be approved for widespread clinical application.''',
    turkishSummary: 'Nörolojide kök hücre tedavisi, sinir sisteminin onarılamaz olduğu düşüncesini değiştirmektedir. Özellikle uyarılmış pluripotent kök hücreler (iPSC), hastaya özgü tedavi sunarak etik ve immünolojik sorunları aşar; ancak tümör oluşumu riski nedeniyle dikkatli ilerlenmektedir.',
    vocabulary: [
      ArticleVocab(english: 'regenerative', turkish: 'yenileyici', partOfSpeech: 'adj'),
      ArticleVocab(english: 'dogma', turkish: 'dogma / yerleşmiş inanç', partOfSpeech: 'n'),
      ArticleVocab(english: 'lineage', turkish: 'soy / soy ağacı', partOfSpeech: 'n'),
      ArticleVocab(english: 'paradigm shift', turkish: 'paradigma kayması / köklü değişim', partOfSpeech: 'n'),
      ArticleVocab(english: 'somatic', turkish: 'vücuda ait', partOfSpeech: 'adj'),
      ArticleVocab(english: 'autologous', turkish: 'otolog / kişinin kendisinden alınan', partOfSpeech: 'adj'),
      ArticleVocab(english: 'circumvent', turkish: 'etrafından dolaşmak / aşmak', partOfSpeech: 'v'),
      ArticleVocab(english: 'formidable', turkish: 'zorlu / ürkütücü', partOfSpeech: 'adj'),
      ArticleVocab(english: 'tumorigenesis', turkish: 'tümör oluşumu', partOfSpeech: 'n'),
      ArticleVocab(english: 'rigorous', turkish: 'titiz / sıkı', partOfSpeech: 'adj'),
    ],
    questions: [
      ArticleQuestion(question: 'What traditional view of the central nervous system (CNS) is being challenged?', options: ['That it controls the immune system', 'That it has virtually no regenerative capacity', 'That it is entirely made of bone marrow', 'That it does not need oxygen'], correctIndex: 1, explanation: 'Merkezi sinir sisteminin neredeyse hiç yenilenme kapasitesi olmadığı (virtually no regenerative capacity) yönündeki geleneksel görüşün değiştiği belirtilmiştir.', questionType: 'Ana Fikir'),
      ArticleQuestion(question: 'Why are induced pluripotent stem cells (iPSCs) particularly advantageous?', options: ['They are much cheaper to buy.', 'They eliminate the need for brain surgery.', 'They avoid ethical controversies and immunological rejection.', 'They work instantly to cure Alzheimer\'s.'], correctIndex: 2, explanation: 'iPSC\'lerin etik tartışmaları aşması ve immünolojik reddedilme riskini ortadan kaldırması (bypasses ethical controversies... circumvents immunological rejection) avantaj olarak sunulmuştur.', questionType: 'Detay'),
      ArticleQuestion(question: 'What does "autologous approach" refer to in the passage?', options: ['Using cells from animals', 'Using the patient\'s own reprogrammed cells', 'Using synthetic artificial cells', 'Using cells exclusively from embryos'], correctIndex: 1, explanation: 'Otolog yaklaşım, yetişkin somatik hücrelerin yeniden programlanarak hastanın kendisi için (patient-specific) kullanılmasıdır.', questionType: 'Çıkarım'),
      ArticleQuestion(question: 'The word "circumvent" in the second paragraph is closest in meaning to ----.', options: ['avoid', 'increase', 'cause', 'embrace'], correctIndex: 0, explanation: '"Circumvent" kaçınmak, etrafından dolanmak demektir; en yakın anlamlısı "avoid"dur.', questionType: 'Kelime'),
      ArticleQuestion(question: 'What is a major safety concern preventing the widespread use of stem cell therapy?', options: ['The high cost of the equipment', 'The immediate loss of memory', 'The risk of uncontrolled cell division leading to tumors', 'The cells dying too quickly in the body'], correctIndex: 2, explanation: 'Klinik uygulamadaki büyük bir engelin, hücrelerin kontrolsüz bölünmesiyle tümör oluşumu riski (risk of tumorigenesis) olduğu belirtilmiştir.', questionType: 'Detay'),
    ],
  ),

  // ─── MAKALE 29 ───
  const Article(
    id: 29,
    title: 'The Threat of Antimicrobial Resistance',
    turkishTitle: 'Antimikrobiyal Direnç Tehdidi',
    category: 'Halk Sağlığı',
    difficulty: 'Orta',
    source: 'World Health Organization (WHO)',
    estimatedMinutes: 5,
    passage: '''Antimicrobial resistance (AMR) is increasingly recognized as a global health crisis. AMR occurs when bacteria, viruses, fungi, and parasites change over time and no longer respond to medicines, making infections harder to treat and increasing the risk of disease spread, severe illness, and death. Without effective antimicrobials, the success of modern medicine in treating infections, including during major surgery and cancer chemotherapy, would be at increased risk.

The primary driver of AMR is the misuse and overuse of antimicrobials in humans, animals, and agriculture. In human medicine, antibiotics are frequently prescribed for viral infections—such as the common cold—against which they have no effect. In the agricultural sector, antibiotics are widely used as growth promoters in livestock, significantly accelerating the emergence of resistant strains.

Addressing this crisis requires a coordinated, multi-sectoral "One Health" approach. This involves implementing stringent regulations on antibiotic prescription, promoting public awareness regarding hygiene and vaccination to prevent infections, and investing heavily in the research and development of novel therapeutic compounds. If current trends continue unabated, experts warn that we may soon enter a post-antibiotic era, where common injuries could once again become fatal.''',
    turkishSummary: 'Antimikrobiyal direnç (AMR), mikroorganizmaların ilaçlara yanıt vermemesi durumudur ve insan ile tarımda aşırı antibiyotik kullanımından kaynaklanır. Acil önlem alınmazsa modern tıbbın başarıları tehlikeye girebilir.',
    vocabulary: [
      ArticleVocab(english: 'resistance', turkish: 'direnç', partOfSpeech: 'n'),
      ArticleVocab(english: 'parasite', turkish: 'parazit', partOfSpeech: 'n'),
      ArticleVocab(english: 'driver', turkish: 'itici güç / ana neden', partOfSpeech: 'n'),
      ArticleVocab(english: 'misuse', turkish: 'yanlış kullanım', partOfSpeech: 'n'),
      ArticleVocab(english: 'livestock', turkish: 'çiftlik hayvanları', partOfSpeech: 'n'),
      ArticleVocab(english: 'strain', turkish: 'suş / tür', partOfSpeech: 'n'),
      ArticleVocab(english: 'coordinated', turkish: 'koordineli', partOfSpeech: 'adj'),
      ArticleVocab(english: 'stringent', turkish: 'sıkı / katı', partOfSpeech: 'adj'),
      ArticleVocab(english: 'unabated', turkish: 'hız kesmeden / azalmadan', partOfSpeech: 'adj'),
      ArticleVocab(english: 'fatal', turkish: 'ölümcül', partOfSpeech: 'adj'),
    ],
    questions: [
      ArticleQuestion(question: 'According to the text, what is the main consequence of antimicrobial resistance?', options: ['Medicines become significantly cheaper.', 'Infections become harder to treat, leading to severe illness.', 'Viruses mutate into helpful bacteria.', 'Cancer chemotherapy becomes unnecessary.'], correctIndex: 1, explanation: 'AMR\'nin enfeksiyonları tedavi etmeyi zorlaştırdığı ve ciddi hastalık ile ölüm riskini artırdığı (making infections harder to treat...) belirtilmiştir.', questionType: 'Ana Fikir'),
      ArticleQuestion(question: 'Why is the prescription of antibiotics for a common cold considered "misuse"?', options: ['Because the common cold is caused by a virus, not bacteria.', 'Because it makes the cold symptoms disappear too quickly.', 'Because antibiotics only work on animals.', 'Because the cold is an allergic reaction.'], correctIndex: 0, explanation: 'Metinde soğuk algınlığının viral bir enfeksiyon olduğu ve antibiyotiklerin virüslere karşı etkisi olmadığı (viral infections... against which they have no effect) ifade edilmiştir.', questionType: 'Çıkarım'),
      ArticleQuestion(question: 'How does the agricultural sector contribute to AMR?', options: ['By testing medicines on plants', 'By using antibiotics as growth promoters in livestock', 'By refusing to use any chemical fertilizers', 'By feeding bacteria to animals'], correctIndex: 1, explanation: 'Tarım sektöründe antibiyotiklerin çiftlik hayvanlarında büyüme destekleyici olarak kullanıldığı (used as growth promoters in livestock) belirtilmiştir.', questionType: 'Detay'),
      ArticleQuestion(question: 'The word "stringent" in the third paragraph is closest in meaning to ----.', options: ['flexible', 'loose', 'strict', 'optional'], correctIndex: 2, explanation: '"Stringent" katı ve sıkı anlamına gelir, bu yüzden "strict" en yakın anlamlısıdır.', questionType: 'Kelime'),
      ArticleQuestion(question: 'What is meant by a "post-antibiotic era"?', options: ['An era where nobody gets sick', 'A time when common injuries and infections could become deadly again', 'A period where only natural herbs are used', 'A technological era where robots perform all surgeries'], correctIndex: 1, explanation: 'Post-antibiyotik çağın, basit yaralanmaların bile tekrar ölümcül olabileceği (common injuries could once again become fatal) bir dönem olduğu uyarısı yapılmıştır.', questionType: 'Detay'),
    ],
  ),

  // ─── MAKALE 30 ───
  const Article(
    id: 30,
    title: 'Epigenetics and Disease Susceptibility',
    turkishTitle: 'Epigenetik ve Hastalık Yatkınlığı',
    category: 'Genetik',
    difficulty: 'Zor',
    source: 'Nature Reviews Genetics',
    estimatedMinutes: 6,
    passage: '''While the DNA sequence provides the fundamental blueprint for biological life, epigenetics determines how this blueprint is read and executed by the cell. Epigenetic modifications, such as DNA methylation and histone acetylation, regulate gene expression without altering the underlying nucleotide sequence. These mechanisms act as critical molecular switches, turning specific genes on or off in response to cellular cues.

Crucially, the epigenome is highly dynamic and profoundly influenced by environmental factors. Exposure to toxins, dietary choices, psychological stress, and physical activity can leave long-lasting epigenetic marks. For example, maternal malnutrition during pregnancy has been shown to induce epigenetic changes in the fetus, predisposing the offspring to metabolic disorders like type 2 diabetes and obesity later in life. 

The reversible nature of epigenetic marks distinguishes them from permanent genetic mutations. This reversibility has spurred the development of epigenetic therapies. Drugs known as epigenetic inhibitors are currently being utilized in oncology to reactivate tumor-suppressor genes that have been improperly silenced by aberrant methylation. As our understanding deepens, epigenetics promises to blur the boundary between nature and nurture in medical science.''',
    turkishSummary: 'Epigenetik, DNA dizisini değiştirmeden gen ifadesini düzenleyen mekanizmaları inceler. Çevresel faktörler (beslenme, stres) epigenetik değişikliklere yol açarak hastalık yatkınlığını artırabilir. Bu değişimler geri döndürülebilir olduğundan kanser gibi hastalıklarda yeni tedavi yolları sunar.',
    vocabulary: [
      ArticleVocab(english: 'blueprint', turkish: 'taslak / plan', partOfSpeech: 'n'),
      ArticleVocab(english: 'methylation', turkish: 'metilasyon (gene kimyasal grup eklenmesi)', partOfSpeech: 'n'),
      ArticleVocab(english: 'nucleotide', turkish: 'nükleotit (DNA yapıtaşı)', partOfSpeech: 'n'),
      ArticleVocab(english: 'offspring', turkish: 'yavru / döl', partOfSpeech: 'n'),
      ArticleVocab(english: 'predispose', turkish: 'yatkınlaştırmak', partOfSpeech: 'v'),
      ArticleVocab(english: 'reversible', turkish: 'geri döndürülebilir', partOfSpeech: 'adj'),
      ArticleVocab(english: 'inhibitor', turkish: 'engelleyici / inhibitör', partOfSpeech: 'n'),
      ArticleVocab(english: 'tumor-suppressor', turkish: 'tümör baskılayıcı', partOfSpeech: 'adj'),
      ArticleVocab(english: 'aberrant', turkish: 'anormal / sapkın', partOfSpeech: 'adj'),
      ArticleVocab(english: 'nurture', turkish: 'yetiştirme / çevresel etki', partOfSpeech: 'n'),
    ],
    questions: [
      ArticleQuestion(question: 'How do epigenetic modifications affect genes?', options: ['They completely delete the genes from the DNA.', 'They regulate gene expression without changing the DNA sequence.', 'They mix human DNA with viral DNA.', 'They only affect genes in the brain.'], correctIndex: 1, explanation: 'Epigenetik değişikliklerin, altta yatan nükleotit dizisini değiştirmeden gen ifadesini düzenlediği (regulate gene expression without altering the underlying nucleotide sequence) belirtilmiştir.', questionType: 'Ana Fikir'),
      ArticleQuestion(question: 'What is the relationship between the environment and the epigenome?', options: ['The environment has absolutely no effect on the epigenome.', 'The epigenome is completely immune to psychological stress.', 'Environmental factors like diet and stress can leave long-lasting epigenetic marks.', 'Only physical exercise can change the epigenome.'], correctIndex: 2, explanation: 'Çevresel faktörlerin (toksinler, diyet, stres) epigenom üzerinde uzun süreli izler bırakabildiği (leave long-lasting epigenetic marks) vurgulanmıştır.', questionType: 'Detay'),
      ArticleQuestion(question: 'What happened to offspring when there was maternal malnutrition during pregnancy?', options: ['They were born with superior intelligence.', 'They developed an immunity to diabetes.', 'They were predisposed to metabolic disorders later in life.', 'Their DNA sequence was permanently altered.'], correctIndex: 2, explanation: 'Gebelikte anne yetersiz beslenmesinin, yavruları ileriki yaşamlarında metabolik bozukluklara (tip 2 diyabet ve obezite) yatkın hale getirdiği (predisposing the offspring to metabolic disorders) ifade edilmiştir.', questionType: 'Detay'),
      ArticleQuestion(question: 'The word "reversible" in the third paragraph is closest in meaning to ----.', options: ['permanent', 'changeable back to an original state', 'deadly', 'invisible'], correctIndex: 1, explanation: '"Reversible" geri döndürülebilir anlamına gelir.', questionType: 'Kelime'),
      ArticleQuestion(question: 'Why is the reversible nature of epigenetic marks important for medicine?', options: ['It allows for the development of drugs that can reactivate silenced genes.', 'It means genetic mutations can be completely ignored.', 'It proves that genetics are irrelevant to cancer.', 'It means patients do not need any treatment.'], correctIndex: 0, explanation: 'Bu geri döndürülebilirliğin, susturulmuş tümör baskılayıcı genleri yeniden aktifleştirebilen epigenetik tedavilerin gelişimini teşvik ettiği (reactivate tumor-suppressor genes) belirtilmiştir.', questionType: 'Çıkarım'),
    ],
  ),

  // ─── MAKALE 31 ───
  const Article(
    id: 31,
    title: 'Artificial Intelligence in Radiology',
    turkishTitle: 'Radyolojide Yapay Zeka',
    category: 'Sağlık Teknolojileri',
    difficulty: 'Orta',
    source: 'Journal of the American College of Radiology',
    estimatedMinutes: 5,
    passage: '''Artificial intelligence (AI) is rapidly transforming the field of radiology, moving from theoretical research into practical clinical application. Deep learning algorithms, particularly convolutional neural networks (CNNs), have demonstrated remarkable proficiency in analyzing complex medical images such as X-rays, MRIs, and CT scans. In some specialized tasks, AI has even matched or surpassed the diagnostic accuracy of human radiologists.

The primary advantage of integrating AI into radiology is enhanced efficiency. Automated image analysis can swiftly identify subtle anomalies—like early-stage lung nodules or microcalcifications in breast tissue—that might evade the human eye during a fatigued shift. Furthermore, AI systems can triage urgent cases, pushing life-threatening conditions, such as intracranial hemorrhages, to the top of the radiologist's work queue for immediate review.

Despite the optimism, AI is not poised to replace radiologists entirely. Medical imaging interpretation requires a holistic understanding of the patient's clinical history, an ability that AI currently lacks. The consensus among experts is that AI will function as an augmenting tool, enhancing diagnostic confidence and allowing radiologists to dedicate more time to complex cases and direct patient care.''',
    turkishSummary: 'Yapay zeka, radyolojide tıbbi görüntüleri analiz ederek verimliliği ve tanısal doğruluğu artırmaktadır. Algoritmalar acil vakaları önceliklendirebilir. Ancak YZ radyologların yerini almayacak, aksine onları destekleyen bir araç olarak işlev görecektir.',
    vocabulary: [
      ArticleVocab(english: 'proficiency', turkish: 'uzmanlık / yeterlilik', partOfSpeech: 'n'),
      ArticleVocab(english: 'surpass', turkish: 'aşmak / geride bırakmak', partOfSpeech: 'v'),
      ArticleVocab(english: 'anomaly', turkish: 'anomali / anormallik', partOfSpeech: 'n'),
      ArticleVocab(english: 'evade', turkish: 'gözden kaçmak / atlatmak', partOfSpeech: 'v'),
      ArticleVocab(english: 'fatigued', turkish: 'yorgun', partOfSpeech: 'adj'),
      ArticleVocab(english: 'triage', turkish: 'triyaj / önceliklendirme', partOfSpeech: 'v'),
      ArticleVocab(english: 'hemorrhage', turkish: 'kanama', partOfSpeech: 'n'),
      ArticleVocab(english: 'poised', turkish: 'hazır / üzere', partOfSpeech: 'adj'),
      ArticleVocab(english: 'holistic', turkish: 'bütüncül', partOfSpeech: 'adj'),
      ArticleVocab(english: 'augmenting', turkish: 'artıran / destekleyen', partOfSpeech: 'adj'),
    ],
    questions: [
      ArticleQuestion(question: 'According to the passage, what is the primary advantage of AI in radiology?', options: ['It completely eliminates the need for doctors.', 'It is significantly cheaper than standard software.', 'It enhances efficiency by automating image analysis.', 'It cures diseases through radiation.'], correctIndex: 2, explanation: 'Radyolojide YZ entegrasyonunun temel avantajının verimliliği artırması (enhanced efficiency) olduğu belirtilmiştir.', questionType: 'Detay'),
      ArticleQuestion(question: 'How can AI help with urgent cases like intracranial hemorrhages?', options: ['By automatically performing surgery on the patient', 'By pushing them to the top of the radiologist\'s work queue', 'By discharging the patient immediately', 'By deleting non-urgent files from the system'], correctIndex: 1, explanation: 'Acil vakaları radyoloğun iş sırasının en üstüne taşıyarak (pushing life-threatening conditions... to the top) triyaj yapabildiği açıklanmıştır.', questionType: 'Detay'),
      ArticleQuestion(question: 'Why is AI NOT expected to replace radiologists?', options: ['Because patients refuse to be diagnosed by computers', 'Because AI systems are too slow to operate', 'Because AI lacks a holistic understanding of the patient\'s clinical history', 'Because hospital administrators do not trust AI'], correctIndex: 2, explanation: 'YZ\'nin hastanın klinik öyküsünü bütüncül anlama yeteneğinden yoksun olduğu (lacks holistic understanding) için radyologların yerini almasının beklenmediği vurgulanmıştır.', questionType: 'Çıkarım'),
      ArticleQuestion(question: 'The word "surpass" in the first paragraph is closest in meaning to ----.', options: ['fail', 'equal', 'exceed', 'maintain'], correctIndex: 2, explanation: '"Surpass" aşmak, geçmek anlamına gelir; "exceed" kelimesi en yakın anlamlısıdır.', questionType: 'Kelime'),
      ArticleQuestion(question: 'The author\'s attitude towards the use of AI in radiology is ----.', options: ['hostile and resistant', 'optimistic but realistic', 'completely indifferent', 'fearful of job losses'], correctIndex: 1, explanation: 'Yazar YZ\'nin potansiyeli konusunda iyimserdir ancak doktorların yerini almayacağını söyleyerek gerçekçi bir tutum sergilemektedir.', questionType: 'Yazarın Tutumu'),
    ],
  ),

  // ─── MAKALE 32 ───
  const Article(
    id: 32,
    title: 'The Silent Epidemic of Osteoporosis',
    turkishTitle: 'Osteoporozun Sessiz Salgını',
    category: 'Ortopedi',
    difficulty: 'Kolay',
    source: 'International Osteoporosis Foundation',
    estimatedMinutes: 4,
    passage: '''Osteoporosis is frequently referred to as a "silent disease" because bone loss typically occurs without any obvious symptoms until a fracture happens. It is a systemic skeletal disorder characterized by low bone mass and the microarchitectural deterioration of bone tissue, leading to increased bone fragility and susceptibility to fracture.

The risk of developing osteoporosis increases significantly with age, particularly in postmenopausal women. The sharp decline in estrogen levels following menopause accelerates bone resorption, causing bones to weaken rapidly. However, it is a misconception that osteoporosis is solely a woman's disease; millions of men also suffer from the condition, often due to age-related testosterone decline, excessive alcohol consumption, or the prolonged use of certain medications like corticosteroids.

Preventive strategies should begin early in life. Adequate calcium and vitamin D intake, coupled with regular weight-bearing physical activities like walking or jogging, are essential for maximizing peak bone mass during youth and maintaining it in adulthood. For those already diagnosed, pharmacological treatments, such as bisphosphonates, can effectively slow the rate of bone loss and reduce fracture risk.''',
    turkishSummary: 'Osteoporoz, kemik kütlesinin azalması ve kırılganlığın artması ile karakterize "sessiz bir hastalıktır". Menopoz sonrası kadınlarda sık görülse de erkekleri de etkiler. Kalsiyum, D vitamini ve egzersiz önlemede çok önemlidir.',
    vocabulary: [
      ArticleVocab(english: 'silent', turkish: 'sessiz / belirti vermeyen', partOfSpeech: 'adj'),
      ArticleVocab(english: 'fracture', turkish: 'kırık', partOfSpeech: 'n'),
      ArticleVocab(english: 'deterioration', turkish: 'bozulma / kötüleşme', partOfSpeech: 'n'),
      ArticleVocab(english: 'fragility', turkish: 'kırılganlık', partOfSpeech: 'n'),
      ArticleVocab(english: 'susceptibility', turkish: 'duyarlılık / yatkınlık', partOfSpeech: 'n'),
      ArticleVocab(english: 'resorption', turkish: 'geri emilim / kemik yıkımı', partOfSpeech: 'n'),
      ArticleVocab(english: 'misconception', turkish: 'yanılgı', partOfSpeech: 'n'),
      ArticleVocab(english: 'solely', turkish: 'sadece / yalnızca', partOfSpeech: 'adv'),
      ArticleVocab(english: 'weight-bearing', turkish: 'ağırlık taşıyan / yük bindiren', partOfSpeech: 'adj'),
      ArticleVocab(english: 'peak', turkish: 'zirve', partOfSpeech: 'n'),
    ],
    questions: [
      ArticleQuestion(question: 'Why is osteoporosis called a "silent disease"?', options: ['Because it causes hearing loss', 'Because bone loss occurs without obvious symptoms until a fracture', 'Because it only affects people who do not speak much', 'Because it cannot be detected by X-rays'], correctIndex: 1, explanation: 'Kemik kaybının, bir kırık meydana gelene kadar belirgin semptomlar olmadan gerçekleşmesi nedeniyle "sessiz hastalık" olarak adlandırıldığı belirtilmiştir.', questionType: 'Detay'),
      ArticleQuestion(question: 'What accelerates bone resorption in postmenopausal women?', options: ['An increase in calcium intake', 'A sharp decline in estrogen levels', 'Engaging in weight-bearing exercises', 'High levels of vitamin D'], correctIndex: 1, explanation: 'Menopoz sonrası östrojen seviyelerindeki keskin düşüşün (sharp decline in estrogen levels) kemik yıkımını hızlandırdığı belirtilmiştir.', questionType: 'Detay'),
      ArticleQuestion(question: 'According to the passage, is osteoporosis exclusively a woman\'s disease?', options: ['Yes, men are biologically immune to it.', 'No, millions of men also suffer from it.', 'It is unknown who is affected more.', 'Yes, it only affects postmenopausal women.'], correctIndex: 1, explanation: 'Osteoporozun sadece bir kadın hastalığı olmasının bir yanılgı olduğu ve milyonlarca erkeğin de bu durumdan muzdarip olduğu (millions of men also suffer from the condition) vurgulanmıştır.', questionType: 'Çıkarım'),
      ArticleQuestion(question: 'The word "deterioration" in the first paragraph is closest in meaning to ----.', options: ['improvement', 'growth', 'decline', 'stability'], correctIndex: 2, explanation: '"Deterioration" bozulma, kötüleşme anlamına gelir; bu yüzden "decline" kelimesi en uygundur.', questionType: 'Kelime'),
      ArticleQuestion(question: 'Which activity is recommended to maximize peak bone mass?', options: ['Swimming', 'Cycling', 'Watching television', 'Weight-bearing physical activities like walking'], correctIndex: 3, explanation: 'Yürüme veya koşma gibi ağırlık taşıyan (weight-bearing) fiziksel aktivitelerin zirve kemik kütlesini maksimize etmek için gerekli olduğu belirtilmiştir.', questionType: 'Detay'),
    ],
  ),

  // ─── MAKALE 33 ───
  const Article(
    id: 33,
    title: 'The Challenge of Autoimmune Diseases',
    turkishTitle: 'Otoimmün Hastalıkların Zorluğu',
    category: 'İmmünoloji',
    difficulty: 'Orta',
    source: 'Journal of Autoimmunity',
    estimatedMinutes: 5,
    passage: '''Autoimmune diseases represent a broad spectrum of disorders characterized by the immune system mistakenly attacking the body\'s own healthy tissues. Under normal circumstances, the immune system is exquisitely trained to distinguish "self" from "non-self" antigens, mounting defense mechanisms solely against foreign invaders like bacteria and viruses. However, in autoimmune conditions, this tolerance breaks down.

The exact etiology of autoimmune diseases—such as rheumatoid arthritis, lupus, and type 1 diabetes—remains partially elusive. Scientists believe that a combination of genetic susceptibility and environmental triggers, such as viral infections, hormonal changes, or toxic exposure, initiates the aberrant immune response. Interestingly, autoimmune diseases disproportionately affect women, suggesting that sex hormones may play a pivotal role in immune regulation.

Diagnosis is often complicated and delayed due to the heterogeneous and overlapping nature of the symptoms, which frequently include fatigue, joint pain, and low-grade fever. While there is no definitive cure for most autoimmune diseases, current therapies focus on managing symptoms and controlling the autoimmune process through immunosuppressive medications, aiming to achieve long-term remission and prevent irreversible tissue damage.''',
    turkishSummary: 'Otoimmün hastalıklar, bağışıklık sisteminin yanlışlıkla vücudun kendi dokularına saldırmasıdır. Genetik yatkınlık ve çevresel faktörlerin birleşimiyle ortaya çıkar. Kadınları daha çok etkiler ve tedavisi genellikle bağışıklığı baskılamaya yöneliktir.',
    vocabulary: [
      ArticleVocab(english: 'spectrum', turkish: 'spektrum / yelpaze', partOfSpeech: 'n'),
      ArticleVocab(english: 'mistakenly', turkish: 'yanlışlıkla', partOfSpeech: 'adv'),
      ArticleVocab(english: 'exquisitely', turkish: 'kusursuzca / hassas bir şekilde', partOfSpeech: 'adv'),
      ArticleVocab(english: 'distinguish', turkish: 'ayırt etmek', partOfSpeech: 'v'),
      ArticleVocab(english: 'elusive', turkish: 'anlaşılması zor / bulunmaz', partOfSpeech: 'adj'),
      ArticleVocab(english: 'susceptibility', turkish: 'yatkınlık', partOfSpeech: 'n'),
      ArticleVocab(english: 'disproportionately', turkish: 'oransız bir şekilde', partOfSpeech: 'adv'),
      ArticleVocab(english: 'pivotal', turkish: 'çok önemli / temel', partOfSpeech: 'adj'),
      ArticleVocab(english: 'heterogeneous', turkish: 'heterojen / çok çeşitli', partOfSpeech: 'adj'),
      ArticleVocab(english: 'immunosuppressive', turkish: 'bağışıklık baskılayıcı', partOfSpeech: 'adj'),
    ],
    questions: [
      ArticleQuestion(question: 'What is the fundamental problem in an autoimmune disease?', options: ['The body stops producing any white blood cells.', 'The immune system mistakenly attacks the body\'s own tissues.', 'Foreign invaders multiply too quickly.', 'The body refuses to absorb vitamins.'], correctIndex: 1, explanation: 'Otoimmün hastalıkların, bağışıklık sisteminin yanlışlıkla vücudun kendi dokularına saldırmasıyla (mistakenly attacking the body\'s own healthy tissues) karakterize olduğu belirtilmiştir.', questionType: 'Ana Fikir'),
      ArticleQuestion(question: 'Which of the following is NOT mentioned as a potential trigger for autoimmune responses?', options: ['Viral infections', 'Hormonal changes', 'Toxic exposure', 'High cholesterol'], correctIndex: 3, explanation: 'Viral enfeksiyonlar, hormonal değişiklikler ve toksik maruziyet tetikleyiciler olarak sayılmış ancak yüksek kolesterolden (High cholesterol) bahsedilmemiştir.', questionType: 'Detay'),
      ArticleQuestion(question: 'Why are autoimmune diseases often difficult to diagnose?', options: ['Because symptoms are often invisible.', 'Because the symptoms are heterogeneous and overlap with other diseases.', 'Because blood tests cannot detect immune cells.', 'Because patients usually feel no pain.'], correctIndex: 1, explanation: 'Semptomların heterojen (çok çeşitli) ve örtüşen doğası (heterogeneous and overlapping nature) nedeniyle teşhisin genellikle karmaşık olduğu belirtilmiştir.', questionType: 'Detay'),
      ArticleQuestion(question: 'The word "distinguish" in the first paragraph is closest in meaning to ----.', options: ['confuse', 'ignore', 'differentiate', 'destroy'], correctIndex: 2, explanation: '"Distinguish" ayırt etmek anlamına gelir, bu yüzden en yakın anlamlısıdır.', questionType: 'Kelime'),
      ArticleQuestion(question: 'What can be inferred about the incidence of autoimmune diseases among genders?', options: ['Men and women are affected equally.', 'Women are affected significantly more than men.', 'Men are affected more due to testosterone levels.', 'Children are the most affected demographic.'], correctIndex: 1, explanation: 'Otoimmün hastalıkların kadınları orantısız bir şekilde (disproportionately) etkilediği ifade edildiğinden, kadınların erkeklerden çok daha fazla etkilendiği çıkarımı yapılabilir.', questionType: 'Çıkarım'),
    ],
  ),

  // ─── MAKALE 34 ───
  const Article(
    id: 34,
    title: 'The Rise of Polycystic Ovary Syndrome (PCOS)',
    turkishTitle: 'Polikistik Over Sendromu (PKOS) Artışı',
    category: 'Endokrinoloji',
    difficulty: 'Orta',
    source: 'Journal of Women\'s Health',
    estimatedMinutes: 4,
    passage: '''Polycystic Ovary Syndrome (PCOS) is one of the most common endocrine disorders affecting women of reproductive age. Characterized by a triad of oligo-anovulation (irregular or absent menstrual periods), hyperandrogenism (excess male hormones), and polycystic ovaries visible on ultrasound, PCOS has widespread systemic implications beyond fertility issues.

The core pathophysiology of PCOS is deeply intertwined with insulin resistance. Approximately 70% of women with PCOS exhibit insulin resistance independent of body weight, leading to compensatory hyperinsulinemia. This excess insulin stimulates the ovaries to produce excessive amounts of testosterone, which disrupts normal follicular development and leads to the formation of small ovarian cysts. The hyperandrogenism manifests clinically as hirsutism (excess facial and body hair), severe acne, and androgenic alopecia.

Management of PCOS is highly individualized and symptom-driven. Lifestyle modifications, primarily weight loss and dietary changes, constitute the first-line treatment as they effectively reduce insulin resistance and improve hormonal profiles. Pharmacological interventions often include oral contraceptives to regulate menstrual cycles and anti-androgens to manage cosmetic symptoms, while metformin is frequently prescribed to address underlying insulin dysregulation.''',
    turkishSummary: 'Polikistik Over Sendromu (PKOS), üreme çağındaki kadınları etkileyen yaygın bir endokrin bozukluğudur. İnsülin direnci ile yakından ilişkilidir ve aşırı androjen üretimine yol açar. Tedavi semptomlara yöneliktir ve yaşam tarzı değişikliklerini merkeze alır.',
    vocabulary: [
      ArticleVocab(english: 'reproductive', turkish: 'üreme', partOfSpeech: 'adj'),
      ArticleVocab(english: 'triad', turkish: 'üçlü', partOfSpeech: 'n'),
      ArticleVocab(english: 'intertwined', turkish: 'iç içe geçmiş / birbiriyle ilişkili', partOfSpeech: 'adj'),
      ArticleVocab(english: 'exhibit', turkish: 'göstermek / sergilemek', partOfSpeech: 'v'),
      ArticleVocab(english: 'compensatory', turkish: 'telafi edici', partOfSpeech: 'adj'),
      ArticleVocab(english: 'disrupt', turkish: 'bozmak / aksatmak', partOfSpeech: 'v'),
      ArticleVocab(english: 'manifest', turkish: 'belirti göstermek / ortaya çıkmak', partOfSpeech: 'v'),
      ArticleVocab(english: 'hirsutism', turkish: 'aşırı tüylenme', partOfSpeech: 'n'),
      ArticleVocab(english: 'individualized', turkish: 'bireyselleştirilmiş / kişiye özel', partOfSpeech: 'adj'),
      ArticleVocab(english: 'constitute', turkish: 'oluşturmak', partOfSpeech: 'v'),
    ],
    questions: [
      ArticleQuestion(question: 'Which of the following is NOT one of the defining triad features of PCOS mentioned in the passage?', options: ['Irregular or absent menstrual periods', 'Hyperandrogenism', 'Low blood pressure', 'Polycystic ovaries visible on ultrasound'], correctIndex: 2, explanation: 'PKOS\'un üçlü karakteristiği olarak adet düzensizliği, aşırı androjen ve polikistik overler sayılmıştır; düşük tansiyondan bahsedilmez.', questionType: 'Detay'),
      ArticleQuestion(question: 'How does insulin resistance contribute to the symptoms of PCOS?', options: ['It causes the body to lose weight rapidly.', 'It stimulates the ovaries to produce excessive amounts of testosterone.', 'It directly destroys ovarian tissue.', 'It decreases the production of all hormones.'], correctIndex: 1, explanation: 'İnsülin direnci nedeniyle artan insülinin, yumurtalıkları aşırı testosteron üretmeleri için uyardığı (stimulates the ovaries to produce excessive amounts of testosterone) ifade edilmiştir.', questionType: 'Detay'),
      ArticleQuestion(question: 'What is the recommended first-line treatment for managing PCOS?', options: ['Immediate surgery to remove cysts', 'Lifestyle modifications like weight loss and dietary changes', 'High doses of testosterone', 'Ignoring the symptoms until menopause'], correctIndex: 1, explanation: 'İlk basamak tedavisinin (first-line treatment) yaşam tarzı değişiklikleri (kilo kaybı ve diyet) olduğu açıkça belirtilmiştir.', questionType: 'Ana Fikir'),
      ArticleQuestion(question: 'The word "disrupt" in the second paragraph is closest in meaning to ----.', options: ['organize', 'disturb', 'protect', 'enhance'], correctIndex: 1, explanation: '"Disrupt" bozmak, sekteye uğratmak anlamına gelir, bu yüzden en yakın kelime "disturb"dür.', questionType: 'Kelime'),
      ArticleQuestion(question: 'Why is metformin often prescribed to women with PCOS?', options: ['To cure acne permanently', 'To increase testosterone levels', 'To address the underlying insulin dysregulation', 'To prevent weight loss'], correctIndex: 2, explanation: 'Metforminin altta yatan insülin düzensizliğini çözmek (address underlying insulin dysregulation) için reçete edildiği belirtilmiştir.', questionType: 'Çıkarım'),
    ],
  ),

  // ─── MAKALE 35 ───
  const Article(
    id: 35,
    title: 'Gene Therapy: A New Paradigm',
    turkishTitle: 'Gen Terapisi: Yeni Bir Paradigma',
    category: 'Genetik',
    difficulty: 'Zor',
    source: 'Molecular Therapy Journal',
    estimatedMinutes: 5,
    passage: '''Gene therapy, once a theoretical concept confined to science fiction, has materialized into a clinical reality capable of curing previously intractable genetic disorders. The fundamental premise of gene therapy is the deliberate introduction, removal, or alteration of genetic material within a patient's cells to treat or prevent disease. Instead of relying on drugs to temporarily ameliorate symptoms, gene therapy aims to rectify the underlying molecular defect.

The most common delivery systems utilized in this process are viral vectors. Viruses, stripped of their pathogenic properties, are engineered to carry therapeutic genes directly into target cells. Adeno-associated viruses (AAVs) are currently the vector of choice for many in vivo therapies due to their low immunogenicity and ability to infect both dividing and non-dividing cells without integrating into the host genome, thereby minimizing the risk of insertional mutagenesis.

Recent landmark approvals by regulatory agencies for treatments targeting spinal muscular atrophy (SMA) and certain inherited retinal dystrophies have validated the clinical utility of this approach. However, challenges persist. The exorbitant cost of development makes these one-time treatments financially inaccessible for many health systems. Furthermore, achieving sustained gene expression without provoking a delayed immune response remains a significant scientific hurdle that researchers are actively working to overcome.''',
    turkishSummary: 'Gen terapisi, genetik materyali değiştirerek hastalıkları temelinden tedavi etmeyi amaçlar. Güvenli olması nedeniyle AAV gibi viral vektörler sıklıkla kullanılır. Son zamanlarda onay alan tedaviler umut verici olsa da yüksek maliyetler ve bağışıklık tepkileri büyük engellerdir.',
    vocabulary: [
      ArticleVocab(english: 'intractable', turkish: 'tedavisi zor / inatçı', partOfSpeech: 'adj'),
      ArticleVocab(english: 'premise', turkish: 'temel dayanak / öncül', partOfSpeech: 'n'),
      ArticleVocab(english: 'ameliorate', turkish: 'iyileştirmek / hafifletmek', partOfSpeech: 'v'),
      ArticleVocab(english: 'rectify', turkish: 'düzeltmek', partOfSpeech: 'v'),
      ArticleVocab(english: 'vector', turkish: 'taşıyıcı', partOfSpeech: 'n'),
      ArticleVocab(english: 'pathogenic', turkish: 'hastalık yapıcı', partOfSpeech: 'adj'),
      ArticleVocab(english: 'immunogenicity', turkish: 'bağışıklık tepkisi oluşturma yeteneği', partOfSpeech: 'n'),
      ArticleVocab(english: 'landmark', turkish: 'dönüm noktası', partOfSpeech: 'n'),
      ArticleVocab(english: 'exorbitant', turkish: 'aşırı yüksek (fiyat/maliyet)', partOfSpeech: 'adj'),
      ArticleVocab(english: 'provoke', turkish: 'kışkırtmak / neden olmak', partOfSpeech: 'v'),
    ],
    questions: [
      ArticleQuestion(question: 'How does gene therapy differ from traditional drug treatments?', options: ['It only temporarily ameliorates symptoms.', 'It relies exclusively on herbal medicines.', 'It aims to rectify the underlying molecular defect.', 'It uses radiation to destroy defective cells.'], correctIndex: 2, explanation: 'Gen terapisinin ilaçlar gibi semptomları geçici hafifletmek yerine, altta yatan moleküler kusuru düzeltmeyi (rectify the underlying molecular defect) hedeflediği vurgulanmıştır.', questionType: 'Ana Fikir'),
      ArticleQuestion(question: 'Why are viruses used in gene therapy?', options: ['Because they naturally cure human diseases', 'To intentionally infect the patient with a mild disease', 'Because they are engineered as vectors to deliver therapeutic genes into cells', 'Because they destroy all abnormal DNA automatically'], correctIndex: 2, explanation: 'Virüslerin hastalık yapıcı özellikleri çıkarıldıktan sonra terapötik genleri hücrelere taşımak için vektör (taşıyıcı) olarak tasarlandığı (engineered to carry therapeutic genes) belirtilmiştir.', questionType: 'Detay'),
      ArticleQuestion(question: 'What is a major advantage of using Adeno-associated viruses (AAVs)?', options: ['They integrate deeply into the host genome.', 'They cause strong immune responses.', 'They minimize the risk of insertional mutagenesis by not integrating into the host genome.', 'They are extremely cheap to produce.'], correctIndex: 2, explanation: 'AAV\'lerin konak genoma entegre olmayarak ekleme mutasyonları riskini en aza indirmesi (minimizing the risk of insertional mutagenesis) büyük bir avantajdır.', questionType: 'Detay'),
      ArticleQuestion(question: 'The word "ameliorate" in the first paragraph is closest in meaning to ----.', options: ['worsen', 'improve', 'hide', 'complicate'], correctIndex: 1, explanation: '"Ameliorate" iyileştirmek, hafifletmek demektir; bu yüzden "improve" en yakın anlamlısıdır.', questionType: 'Kelime'),
      ArticleQuestion(question: 'What constitutes a major barrier to the widespread use of gene therapy?', options: ['The exorbitant financial cost of the treatments', 'The lack of any successful clinical trials', 'The refusal of patients to undergo genetic testing', 'The short shelf-life of the viral vectors'], correctIndex: 0, explanation: 'Tedavilerin aşırı yüksek maliyetinin (exorbitant cost), bu tedavileri birçok sağlık sistemi için finansal olarak erişilemez kıldığı belirtilmiştir.', questionType: 'Çıkarım'),
    ],
  ),

  // ─── MAKALE 36 ───
  const Article(
    id: 36,
    title: 'The Physiology of Sleep Deprivation',
    turkishTitle: 'Uyku Yoksunluğunun Fizyolojisi',
    category: 'Nöroloji',
    difficulty: 'Orta',
    source: 'Sleep Medicine Reviews',
    estimatedMinutes: 4,
    passage: '''Sleep is a fundamental biological necessity, yet chronic sleep deprivation has become a pervasive issue in modern society. While often dismissed as a minor inconvenience, inadequate sleep exerts profound detrimental effects on both the central nervous system and peripheral physiological functions. 

Neurologically, sleep deprivation impairs the prefrontal cortex, the brain region responsible for executive functions, decision-making, and impulse control. Concurrently, the amygdala—the emotional center of the brain—becomes hyperactive, leading to mood swings and heightened emotional reactivity. Memory consolidation, which primarily occurs during deep slow-wave sleep and REM sleep, is also severely compromised, hindering learning and cognitive performance.

Systemically, chronic sleep loss disrupts metabolic homeostasis. It alters the balance of appetite-regulating hormones, increasing ghrelin (which stimulates hunger) and decreasing leptin (which signals satiety), thereby significantly elevating the risk of obesity. Furthermore, insufficient sleep is associated with increased sympathetic nervous system activity and systemic inflammation, which serve as direct pathways to cardiovascular diseases such as hypertension and ischemic heart disease. Prioritizing sleep hygiene is therefore essential for long-term physiological well-being.''',
    turkishSummary: 'Kronik uyku yoksunluğu modern toplumda yaygın bir sorundur. Hem beyin fonksiyonlarını (karar verme, hafıza) bozar hem de iştah hormonlarını etkileyerek obeziteye yol açar. Ayrıca kalp ve damar hastalıkları riskini de artırır.',
    vocabulary: [
      ArticleVocab(english: 'pervasive', turkish: 'yaygın', partOfSpeech: 'adj'),
      ArticleVocab(english: 'detrimental', turkish: 'zararlı', partOfSpeech: 'adj'),
      ArticleVocab(english: 'impair', turkish: 'bozmak / zayıflatmak', partOfSpeech: 'v'),
      ArticleVocab(english: 'concurrently', turkish: 'eş zamanlı olarak', partOfSpeech: 'adv'),
      ArticleVocab(english: 'consolidation', turkish: 'pekiştirme / sağlamlaştırma', partOfSpeech: 'n'),
      ArticleVocab(english: 'compromise', turkish: 'tehlikeye atmak / zayıflatmak', partOfSpeech: 'v'),
      ArticleVocab(english: 'satiety', turkish: 'tokluk', partOfSpeech: 'n'),
      ArticleVocab(english: 'elevate', turkish: 'yükseltmek / artırmak', partOfSpeech: 'v'),
      ArticleVocab(english: 'sympathetic', turkish: 'sempatik (sinir sistemi)', partOfSpeech: 'adj'),
      ArticleVocab(english: 'hygiene', turkish: 'hijyen / sağlık kuralları', partOfSpeech: 'n'),
    ],
    questions: [
      ArticleQuestion(question: 'How does sleep deprivation affect the amygdala?', options: ['It shuts down the amygdala completely.', 'It makes the amygdala hyperactive, leading to heightened emotional reactivity.', 'It physically shrinks the amygdala.', 'It disconnects the amygdala from the spinal cord.'], correctIndex: 1, explanation: 'Uyku yoksunluğunun amigdalayı hiperaktif hale getirerek aşırı duygusal tepkiselliğe yol açtığı (amygdala becomes hyperactive) belirtilmiştir.', questionType: 'Detay'),
      ArticleQuestion(question: 'What is the role of the prefrontal cortex mentioned in the text?', options: ['Regulating body temperature', 'Controlling appetite and digestion', 'Managing executive functions, decision-making, and impulse control', 'Consolidating long-term memories'], correctIndex: 2, explanation: 'Prefrontal korteksin yürütücü işlevlerden, karar vermeden ve dürtü kontrolünden sorumlu olduğu (responsible for executive functions...) ifade edilmiştir.', questionType: 'Detay'),
      ArticleQuestion(question: 'Which hormones are altered by sleep deprivation to increase the risk of obesity?', options: ['Insulin and glucagon', 'Estrogen and testosterone', 'Ghrelin and leptin', 'Adrenaline and cortisol'], correctIndex: 2, explanation: 'Uyku yoksunluğunun ghrelin (açlık hormonu) seviyesini artırdığı ve leptin (tokluk hormonu) seviyesini düşürdüğü belirtilmiştir.', questionType: 'Detay'),
      ArticleQuestion(question: 'The word "detrimental" in the first paragraph is closest in meaning to ----.', options: ['beneficial', 'harmful', 'neutral', 'unknown'], correctIndex: 1, explanation: '"Detrimental" zararlı demektir; "harmful" kelimesi en yakın anlama sahiptir.', questionType: 'Kelime'),
      ArticleQuestion(question: 'What conclusion does the author draw at the end of the passage?', options: ['People can train themselves to need less sleep.', 'Sleep hygiene should be prioritized for long-term health.', 'Medication is the only way to fix sleep deprivation.', 'Cardiovascular diseases cause sleep deprivation.'], correctIndex: 1, explanation: 'Yazar, uzun vadeli fizyolojik esenlik için uyku hijyenine öncelik verilmesinin (Prioritizing sleep hygiene) şart olduğu sonucuna varmaktadır.', questionType: 'Ana Fikir'),
    ],
  ),

  // ─── MAKALE 37 ───
  const Article(
    id: 37,
    title: 'Management of Type 1 Diabetes',
    turkishTitle: 'Tip 1 Diyabet Yönetimi',
    category: 'Endokrinoloji',
    difficulty: 'Orta',
    source: 'Diabetes Care',
    estimatedMinutes: 5,
    passage: '''Type 1 diabetes mellitus (T1DM) is an autoimmune condition in which the immune system erroneously attacks and destroys the insulin-producing beta cells in the pancreas. Unlike Type 2 diabetes, which is often linked to lifestyle factors and insulin resistance, T1DM typically presents in childhood or adolescence and results in an absolute deficiency of insulin. Consequently, exogenous insulin replacement therapy is indispensable for survival.

The primary goal of T1DM management is to maintain blood glucose levels within a target range to prevent acute complications, such as diabetic ketoacidosis (DKA) and severe hypoglycemia, as well as chronic microvascular complications like retinopathy, neuropathy, and nephropathy. Achieving this requires rigorous daily adherence to multiple interventions, including frequent blood glucose monitoring, precise carbohydrate counting, and calculating appropriate insulin doses.

Recent technological advancements have significantly alleviated the daily burden of disease management. Continuous glucose monitors (CGMs) provide real-time data on glucose trends, while insulin pumps deliver continuous subcutaneous insulin. The integration of these devices into "closed-loop" systems, often referred to as an artificial pancreas, represents a monumental leap forward, automatically adjusting insulin delivery based on CGM readings to mimic physiological insulin secretion.''',
    turkishSummary: 'Tip 1 diyabet, pankreastaki insülin üreten hücrelerin otoimmün yıkımıdır. Hastalar hayatta kalmak için dışarıdan insülin almak zorundadır. Hedef kan şekerini dengede tutmaktır. Son yıllardaki teknolojik gelişmeler, özellikle yapay pankreas sistemleri, hastalık yönetimini oldukça kolaylaştırmıştır.',
    vocabulary: [
      ArticleVocab(english: 'erroneously', turkish: 'hatalı bir şekilde', partOfSpeech: 'adv'),
      ArticleVocab(english: 'adolescence', turkish: 'ergenlik', partOfSpeech: 'n'),
      ArticleVocab(english: 'deficiency', turkish: 'eksiklik / yetersizlik', partOfSpeech: 'n'),
      ArticleVocab(english: 'exogenous', turkish: 'dışsal / dışarıdan alınan', partOfSpeech: 'adj'),
      ArticleVocab(english: 'indispensable', turkish: 'vazgeçilmez', partOfSpeech: 'adj'),
      ArticleVocab(english: 'retinopathy', turkish: 'retina hastalığı', partOfSpeech: 'n'),
      ArticleVocab(english: 'neuropathy', turkish: 'sinir hasarı', partOfSpeech: 'n'),
      ArticleVocab(english: 'nephropathy', turkish: 'böbrek hasarı', partOfSpeech: 'n'),
      ArticleVocab(english: 'subcutaneous', turkish: 'deri altı', partOfSpeech: 'adj'),
      ArticleVocab(english: 'mimic', turkish: 'taklit etmek', partOfSpeech: 'v'),
    ],
    questions: [
      ArticleQuestion(question: 'How does Type 1 diabetes differ fundamentally from Type 2 diabetes according to the text?', options: ['It is caused by lifestyle factors.', 'It results in an absolute deficiency of insulin due to beta cell destruction.', 'It only affects older adults.', 'It can be cured completely with diet.'], correctIndex: 1, explanation: 'Tip 1 diyabetin beta hücrelerinin yıkımına bağlı olarak mutlak insülin eksikliği ile sonuçlandığı (results in an absolute deficiency of insulin) ifade edilmiştir.', questionType: 'Detay'),
      ArticleQuestion(question: 'What is an example of an acute complication of T1DM mentioned in the passage?', options: ['Retinopathy', 'Neuropathy', 'Diabetic ketoacidosis (DKA)', 'Nephropathy'], correctIndex: 2, explanation: 'Akut (ani) komplikasyonlara örnek olarak diyabetik ketoasidoz (DKA) ve şiddetli hipoglisemi verilmiştir. Diğerleri kronik komplikasyonlardır.', questionType: 'Detay'),
      ArticleQuestion(question: 'What does a "closed-loop" system (artificial pancreas) do?', options: ['It completely cures the autoimmune attack.', 'It automatically adjusts insulin delivery based on continuous glucose monitor readings.', 'It filters the blood like an artificial kidney.', 'It replaces the patient\'s actual pancreas through surgery.'], correctIndex: 1, explanation: 'Kapalı döngü sistemlerinin (yapay pankreas) CGM okumalarına dayanarak insülin iletimini otomatik olarak ayarladığı (automatically adjusting insulin delivery) açıklanmıştır.', questionType: 'Çıkarım'),
      ArticleQuestion(question: 'The word "indispensable" in the first paragraph is closest in meaning to ----.', options: ['optional', 'harmful', 'crucial', 'expensive'], correctIndex: 2, explanation: '"Indispensable" vazgeçilmez, çok önemli demektir; "crucial" bu anlama en yakın kelimedir.', questionType: 'Kelime'),
      ArticleQuestion(question: 'Which of the following is required for rigorous daily adherence in T1DM management?', options: ['Avoiding all types of physical exercise', 'Precise carbohydrate counting and frequent blood glucose monitoring', 'Visiting the hospital every single day', 'Drinking large amounts of water'], correctIndex: 1, explanation: 'Hastalık yönetiminde karbonhidrat sayımı (carbohydrate counting) ve sık kan şekeri ölçümü gerektiği belirtilmiştir.', questionType: 'Detay'),
    ],
  ),

  // ─── MAKALE 38 ───
  const Article(
    id: 38,
    title: 'The Burden of Cardiovascular Diseases',
    turkishTitle: 'Kardiyovasküler Hastalıkların Yükü',
    category: 'Kardiyoloji',
    difficulty: 'Kolay',
    source: 'World Heart Federation',
    estimatedMinutes: 4,
    passage: '''Cardiovascular diseases (CVDs) remain the leading cause of mortality globally, taking an estimated 17.9 million lives each year. This group of disorders affects the heart and blood vessels, encompassing conditions such as coronary heart disease, cerebrovascular disease, and rheumatic heart disease. More than four out of five CVD deaths are due to heart attacks and strokes, and one-third of these deaths occur prematurely in people under 70 years of age.

The vast majority of cardiovascular diseases can be prevented by addressing behavioral risk factors. Tobacco use, unhealthy diets high in sodium and trans fats, physical inactivity, and harmful use of alcohol are the primary culprits. These lifestyle choices manifest physiologically as elevated blood pressure, raised blood glucose, and dyslipidemia. Identifying individuals at the highest risk of CVDs and ensuring they receive appropriate treatment can prevent premature deaths.

Public health strategies are crucial in this fight. Implementing population-wide policies—such as taxing sugary beverages, creating smoke-free environments, and building safe infrastructure for walking and cycling—can significantly reduce the incidence of CVDs. On an individual level, adherence to medications like statins and antihypertensives is essential for secondary prevention in patients who have already experienced a cardiovascular event.''',
    turkishSummary: 'Kardiyovasküler hastalıklar küresel olarak önde gelen ölüm nedenidir. Vakaların çoğu tütün kullanımı, kötü beslenme ve hareketsizlik gibi risk faktörlerinin değiştirilmesiyle önlenebilir. Bireysel tedavilerin yanı sıra halk sağlığı politikaları da büyük önem taşır.',
    vocabulary: [
      ArticleVocab(english: 'mortality', turkish: 'ölüm oranı', partOfSpeech: 'n'),
      ArticleVocab(english: 'encompass', turkish: 'kapsamak / içermek', partOfSpeech: 'v'),
      ArticleVocab(english: 'prematurely', turkish: 'erken / vaktinden önce', partOfSpeech: 'adv'),
      ArticleVocab(english: 'behavioral', turkish: 'davranışsal', partOfSpeech: 'adj'),
      ArticleVocab(english: 'culprit', turkish: 'suçlu / asıl neden', partOfSpeech: 'n'),
      ArticleVocab(english: 'manifest', turkish: 'ortaya çıkmak / kendini göstermek', partOfSpeech: 'v'),
      ArticleVocab(english: 'infrastructure', turkish: 'altyapı', partOfSpeech: 'n'),
      ArticleVocab(english: 'incidence', turkish: 'görülme sıklığı', partOfSpeech: 'n'),
      ArticleVocab(english: 'adherence', turkish: 'uyum / bağlılık', partOfSpeech: 'n'),
      ArticleVocab(english: 'secondary prevention', turkish: 'ikincil koruma (hastalık oluştuktan sonra nüksü önleme)', partOfSpeech: 'n'),
    ],
    questions: [
      ArticleQuestion(question: 'According to the passage, what is the leading cause of mortality globally?', options: ['Respiratory infections', 'Cardiovascular diseases', 'Cancer', 'Diabetes'], correctIndex: 1, explanation: 'Kardiyovasküler hastalıkların küresel olarak önde gelen ölüm nedeni (leading cause of mortality) olduğu ilk cümlede açıkça belirtilmiştir.', questionType: 'Detay'),
      ArticleQuestion(question: 'What percentage of CVD deaths are caused by heart attacks and strokes?', options: ['Less than 10%', 'Exactly 50%', 'More than four out of five (80%)', '100%'], correctIndex: 2, explanation: 'Metinde KVD ölümlerinin beşte dördünden fazlasının (More than four out of five) kalp krizleri ve inmelerden kaynaklandığı belirtilmiştir.', questionType: 'Detay'),
      ArticleQuestion(question: 'How do unhealthy lifestyle choices manifest physiologically?', options: ['As improved athletic performance', 'As elevated blood pressure, raised blood glucose, and dyslipidemia', 'As rapid bone loss', 'As increased intelligence'], correctIndex: 1, explanation: 'Sağlıksız yaşam tarzı seçimlerinin fizyolojik olarak yüksek tansiyon, yüksek kan şekeri ve dislipidemi (elevated blood pressure...) olarak ortaya çıktığı belirtilmiştir.', questionType: 'Çıkarım'),
      ArticleQuestion(question: 'The word "culprit" in the second paragraph is closest in meaning to ----.', options: ['victim', 'cause', 'solution', 'helper'], correctIndex: 1, explanation: '"Culprit" suçlu, asıl neden anlamına gelir, bu yüzden "cause" en yakın anlamlısıdır.', questionType: 'Kelime'),
      ArticleQuestion(question: 'Which of the following is presented as a population-wide public health policy?', options: ['Prescribing statins to individuals', 'Performing open-heart surgeries', 'Taxing sugary beverages and creating smoke-free environments', 'Encouraging patients to buy cars'], correctIndex: 2, explanation: 'Toplum çapındaki politikalara örnek olarak şekerli içeceklerin vergilendirilmesi ve dumansız hava sahaları yaratılması (taxing sugary beverages, creating smoke-free environments) verilmiştir.', questionType: 'Ana Fikir'),
    ],
  ),

  // ─── MAKALE 39 ───
  const Article(
    id: 39,
    title: 'The Complexity of Alzheimer\'s Disease',
    turkishTitle: 'Alzheimer Hastalığının Karmaşıklığı',
    category: 'Nöroloji',
    difficulty: 'Zor',
    source: 'Lancet Neurology',
    estimatedMinutes: 5,
    passage: '''Alzheimer's disease (AD) is a progressive, irreversible neurodegenerative disorder and the most common cause of dementia in older adults. Clinically, it is characterized by insidious memory loss, cognitive decline, and eventual inability to perform the simplest tasks of daily living. On a histological level, the hallmarks of AD are the extracellular accumulation of amyloid-beta plaques and the intracellular formation of neurofibrillary tangles composed of hyperphosphorylated tau protein.

For decades, the "amyloid hypothesis"—which posits that amyloid-beta accumulation initiates the pathological cascade—has dominated pharmaceutical research. Consequently, numerous clinical trials have focused on monoclonal antibodies designed to clear these plaques from the brain. While some recent drugs, such as lecanemab, have shown modest efficacy in slowing cognitive decline, many others have failed, suggesting that amyloid pathology alone does not account for the entirety of the disease.

Current research is shifting towards a more multifactorial understanding of Alzheimer's. Neuroinflammation, driven by overactive microglia, is now recognized as a critical contributor to neuronal death. Furthermore, metabolic dysfunction in the brain, sometimes referred to as "Type 3 diabetes," and vascular health are gaining attention as significant pathogenic factors. This evolving perspective underscores the need for combination therapies tailored to the diverse disease mechanisms at play.''',
    turkishSummary: 'Alzheimer, hafıza kaybı ve bilişsel gerileme ile karakterize bir hastalıktır. Beyindeki amiloid plaklar ve tau yumakları temel hücresel belirtilerdir. Ancak sadece amiloidi hedefleyen ilaçların sınırlı başarısı, araştırmacıları nöroinflamasyon ve metabolik bozukluklar gibi farklı mekanizmaları da incelemeye yöneltmiştir.',
    vocabulary: [
      ArticleVocab(english: 'progressive', turkish: 'ilerleyici', partOfSpeech: 'adj'),
      ArticleVocab(english: 'irreversible', turkish: 'geri dönüşü olmayan', partOfSpeech: 'adj'),
      ArticleVocab(english: 'insidious', turkish: 'sinsi', partOfSpeech: 'adj'),
      ArticleVocab(english: 'hallmark', turkish: 'ayırt edici özellik', partOfSpeech: 'n'),
      ArticleVocab(english: 'extracellular', turkish: 'hücre dışı', partOfSpeech: 'adj'),
      ArticleVocab(english: 'tangle', turkish: 'yumak / kördüğüm', partOfSpeech: 'n'),
      ArticleVocab(english: 'posit', turkish: 'varsaymak / ileri sürmek', partOfSpeech: 'v'),
      ArticleVocab(english: 'cascade', turkish: 'şelale / ardışık reaksiyonlar dizisi', partOfSpeech: 'n'),
      ArticleVocab(english: 'multifactorial', turkish: 'çok faktörlü', partOfSpeech: 'adj'),
      ArticleVocab(english: 'underscore', turkish: 'altını çizmek / vurgulamak', partOfSpeech: 'v'),
    ],
    questions: [
      ArticleQuestion(question: 'What are the two histological hallmarks of Alzheimer\'s disease?', options: ['Low blood pressure and high cholesterol', 'Amyloid-beta plaques and neurofibrillary tangles', 'Enlarged ventricles and shrunk cortex', 'Loss of myelin and inflammation of nerves'], correctIndex: 1, explanation: 'Alzheimer\'ın histolojik (dokusal) özelliklerinin amiloid-beta plakları ve nörofibriler yumaklar (neurofibrillary tangles) olduğu açıkça belirtilmiştir.', questionType: 'Detay'),
      ArticleQuestion(question: 'What is the core idea behind the "amyloid hypothesis"?', options: ['That amyloid clears toxins from the brain', 'That amyloid accumulation initiates the disease pathology', 'That tau proteins destroy amyloid', 'That amyloid causes Type 3 diabetes'], correctIndex: 1, explanation: 'Amiloid hipotezinin, amiloid birikiminin patolojik diziyi başlattığını varsaydığı (posits that amyloid-beta accumulation initiates the pathological cascade) belirtilmiştir.', questionType: 'Çıkarım'),
      ArticleQuestion(question: 'Why is research shifting away from relying solely on the amyloid hypothesis?', options: ['Because amyloid plaques were proven to be a myth', 'Because many drugs targeting only amyloid have failed or shown only modest efficacy', 'Because Alzheimer\'s was cured by other means', 'Because tau tangles are easier to destroy'], correctIndex: 1, explanation: 'Amiloidi hedef alan ilaçların mütevazı etkinlik göstermesi veya başarısız olması nedeniyle araştırmaların çok faktörlü bir anlayışa kaydığı ifade edilmiştir.', questionType: 'Ana Fikir'),
      ArticleQuestion(question: 'The word "insidious" in the first paragraph is closest in meaning to ----.', options: ['sudden', 'stealthy', 'obvious', 'painless'], correctIndex: 1, explanation: '"Insidious" sinsi, yavaş yavaş ve gizlice ilerleyen anlamına gelir, bu yüzden "stealthy" en uygunudur.', questionType: 'Kelime'),
      ArticleQuestion(question: 'Which new factor is currently recognized as a critical contributor to neuronal death in AD?', options: ['Lack of sleep', 'Neuroinflammation driven by overactive microglia', 'Excessive consumption of sugar', 'Exposure to ultraviolet light'], correctIndex: 1, explanation: 'Aşırı aktif mikroglia kaynaklı nöroinflamasyonun (Neuroinflammation, driven by overactive microglia) nöron ölümüne kritik bir katkı sağladığı belirtilmiştir.', questionType: 'Detay'),
    ],
  ),

  // ─── MAKALE 40 ───
  const Article(
    id: 40,
    title: 'Precision Oncology',
    turkishTitle: 'Hassas (Kişiselleştirilmiş) Onkoloji',
    category: 'Genel Tıp',
    difficulty: 'Zor',
    source: 'Journal of Clinical Oncology',
    estimatedMinutes: 5,
    passage: '''Historically, cancer treatment relied heavily on a "one-size-fits-all" approach, employing broad-spectrum cytotoxic chemotherapy that indiscriminately attacked rapidly dividing cells, causing severe collateral damage to healthy tissues. Today, precision oncology has revolutionized cancer care by tailoring treatment to the specific genetic and molecular profile of an individual patient's tumor.

The cornerstone of this approach is genomic sequencing. By analyzing tumor DNA, oncologists can identify actionable mutations—specific genetic alterations that drive the cancer's growth and can be targeted by specific drugs. For example, patients with non-small cell lung cancer exhibiting EGFR mutations respond exceptionally well to tyrosine kinase inhibitors (TKIs), avoiding the systemic toxicity of conventional chemotherapy. Similarly, breast cancers overexpressing the HER2 protein are targeted with monoclonal antibodies like trastuzumab.

Despite its extraordinary promise, precision oncology faces limitations. Tumors are highly heterogeneous and continuously evolve; a drug that is initially effective may lose its efficacy as the cancer acquires secondary resistance mutations. Consequently, ongoing monitoring through "liquid biopsies"—which detect circulating tumor DNA in the bloodstream—is becoming an integral part of dynamic cancer management, allowing clinicians to adapt therapies in real time.''',
    turkishSummary: 'Geçmişteki tek tip kemoterapilerin aksine, hassas onkoloji tedaviyi hastanın tümörünün genetik yapısına göre uyarlar. Genomik dizileme ile tümördeki mutasyonlar saptanıp hedefe yönelik ilaçlar kullanılır. Tümörlerin zamanla direnç kazanması ise en büyük zorluktur.',
    vocabulary: [
      ArticleVocab(english: 'cytotoxic', turkish: 'hücre için zehirli / toksik', partOfSpeech: 'adj'),
      ArticleVocab(english: 'indiscriminately', turkish: 'ayrım gözetmeksizin', partOfSpeech: 'adv'),
      ArticleVocab(english: 'collateral damage', turkish: 'yan hasar', partOfSpeech: 'n'),
      ArticleVocab(english: 'tailor', turkish: 'uyarlamak / kişiye özel hale getirmek', partOfSpeech: 'v'),
      ArticleVocab(english: 'actionable', turkish: 'müdahale edilebilir / eyleme dökülebilir', partOfSpeech: 'adj'),
      ArticleVocab(english: 'toxicity', turkish: 'zehirlilik', partOfSpeech: 'n'),
      ArticleVocab(english: 'heterogeneous', turkish: 'farklı yapısal özellikler gösteren / heterojen', partOfSpeech: 'adj'),
      ArticleVocab(english: 'efficacy', turkish: 'etkinlik / yararlılık', partOfSpeech: 'n'),
      ArticleVocab(english: 'integral', turkish: 'tamamlayıcı / ayrılmaz', partOfSpeech: 'adj'),
      ArticleVocab(english: 'dynamic', turkish: 'dinamik / değişken', partOfSpeech: 'adj'),
    ],
    questions: [
      ArticleQuestion(question: 'What was the main problem with historical cancer treatments like conventional chemotherapy?', options: ['They only targeted slow-growing cells.', 'They indiscriminately attacked rapidly dividing cells, damaging healthy tissues.', 'They were specifically tailored to individual genetic profiles.', 'They only worked on lung cancer.'], correctIndex: 1, explanation: 'Geleneksel kemoterapinin hızla bölünen hücrelere ayrım gözetmeksizin saldırarak sağlıklı dokulara ciddi yan hasar verdiği (indiscriminately attacked... causing severe collateral damage) belirtilmiştir.', questionType: 'Ana Fikir'),
      ArticleQuestion(question: 'How does precision oncology determine the right treatment for a patient?', options: ['By giving all patients the same broad-spectrum drug', 'By analyzing tumor DNA to identify actionable mutations', 'By determining the patient\'s blood type', 'By focusing only on surgical removal of tumors'], correctIndex: 1, explanation: 'Tümör DNA\'sını analiz ederek müdahale edilebilir mutasyonları belirlediği (analyzing tumor DNA... identify actionable mutations) ifade edilmiştir.', questionType: 'Detay'),
      ArticleQuestion(question: 'What is a major limitation of precision oncology mentioned in the text?', options: ['Tumors are highly heterogeneous and can acquire resistance mutations over time.', 'The treatment is worse than conventional chemotherapy.', 'It is impossible to sequence tumor DNA.', 'Patients generally refuse the treatment.'], correctIndex: 0, explanation: 'Tümörlerin heterojen olması ve zamanla direnç mutasyonları kazanarak ilacın etkinliğini kaybetmesi (acquires secondary resistance mutations) büyük bir sınırlamadır.', questionType: 'Çıkarım'),
      ArticleQuestion(question: 'The word "indiscriminately" in the first paragraph is closest in meaning to ----.', options: ['carefully', 'randomly without distinction', 'slowly', 'intentionally'], correctIndex: 1, explanation: '"Indiscriminately" ayrım gözetmeksizin, rastgele anlamındadır.', questionType: 'Kelime'),
      ArticleQuestion(question: 'What is the purpose of "liquid biopsies"?', options: ['To perform surgery without incisions', 'To detect circulating tumor DNA in the blood and monitor the cancer dynamically', 'To inject liquid chemotherapy directly into the tumor', 'To replace genomic sequencing entirely'], correctIndex: 1, explanation: 'Sıvı biyopsilerin kan dolaşımındaki tümör DNA\'sını saptayarak kanserin dinamik yönetimini ve tedavilerin uyarlanmasını sağladığı (detect circulating tumor DNA...) belirtilmiştir.', questionType: 'Detay'),
    ],
  ),
];
