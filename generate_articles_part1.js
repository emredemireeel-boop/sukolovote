const fs = require('fs');
const path = require('path');

const articlesContent = `import 'articles_data.dart';

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
];
`;

fs.writeFileSync(path.join(__dirname, 'lib', 'data', 'articles_extra2.dart'), articlesContent, 'utf8');

const mainFile = path.join(__dirname, 'lib', 'data', 'articles_data.dart');
let mainContent = fs.readFileSync(mainFile, 'utf8');

// Insert the import statement if it does not exist
if (!mainContent.includes("import 'articles_extra2.dart';")) {
  mainContent = mainContent.replace("import 'articles_extra.dart';", "import 'articles_extra.dart';\nimport 'articles_extra2.dart';");
}

// Add ...articlesExtra2, to the list
if (!mainContent.includes("...articlesExtra2,")) {
  mainContent = mainContent.replace("...articlesExtra,", "...articlesExtra,\n  ...articlesExtra2,");
}

fs.writeFileSync(mainFile, mainContent, 'utf8');
console.log('Successfully generated and linked articles_extra2.dart with 10 articles.');
