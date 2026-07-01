// YÖKDİL Sağlık - Ek Makaleler (13-20)
import 'articles_data.dart';

final List<Article> articlesExtra = [
  // ─── MAKALE 13 ───
  const Article(
    id: 13,
    title: 'Chronic Pain Management',
    turkishTitle: 'Kronik Ağrı Yönetimi',
    category: 'Algoloji',
    difficulty: 'Orta',
    source: 'Pain Medicine Journal',
    estimatedMinutes: 6,
    passage: '''Chronic pain, defined as pain persisting for more than three months, affects an estimated 20 percent of adults worldwide and represents a major public health burden. Unlike acute pain, which serves a protective function, chronic pain often persists long after the original injury has healed and may become a disease in its own right.

The management of chronic pain has shifted from a purely biomedical model to a biopsychosocial approach that recognises the complex interplay of physical, psychological, and social factors. Effective treatment often requires a multidisciplinary team including physicians, physiotherapists, and psychologists.

Pharmacological options range from non-opioid analgesics such as paracetamol and non-steroidal anti-inflammatory drugs to opioids for severe cases. However, the opioid crisis has highlighted the dangers of over-reliance on these medications, prompting a renewed emphasis on non-pharmacological interventions such as cognitive behavioural therapy, physical exercise, and mindfulness-based techniques.

Emerging treatments, including neuromodulation and targeted nerve blocks, offer hope for patients who do not respond to conventional therapies. Ultimately, successful chronic pain management aims not merely to eliminate pain but to improve function and quality of life.''',
    turkishSummary: 'Üç aydan uzun süren kronik ağrı yetişkinlerin %20\'sini etkiler. Tedavi biyopsikososyal yaklaşım gerektirir. Opioid krizi nedeniyle ilaç dışı yöntemler öne çıkmıştır. Amaç ağrıyı yok etmekten çok işlevi artırmaktır.',
    vocabulary: [
      ArticleVocab(english: 'persist', turkish: 'sürmek', partOfSpeech: 'v'),
      ArticleVocab(english: 'acute', turkish: 'akut, ani', partOfSpeech: 'adj'),
      ArticleVocab(english: 'interplay', turkish: 'etkileşim', partOfSpeech: 'n'),
      ArticleVocab(english: 'multidisciplinary', turkish: 'çok disiplinli', partOfSpeech: 'adj'),
      ArticleVocab(english: 'analgesic', turkish: 'ağrı kesici', partOfSpeech: 'n'),
      ArticleVocab(english: 'over-reliance', turkish: 'aşırı bağımlılık', partOfSpeech: 'n'),
      ArticleVocab(english: 'mindfulness', turkish: 'farkındalık', partOfSpeech: 'n'),
      ArticleVocab(english: 'neuromodulation', turkish: 'sinir uyarımı', partOfSpeech: 'n'),
      ArticleVocab(english: 'conventional', turkish: 'geleneksel', partOfSpeech: 'adj'),
      ArticleVocab(english: 'quality of life', turkish: 'yaşam kalitesi', partOfSpeech: 'n'),
    ],
    questions: [
      ArticleQuestion(question: 'How is chronic pain defined in the passage?', options: ['Pain lasting less than a week', 'Pain persisting for more than three months', 'Pain that only occurs at night', 'Pain caused only by surgery'], correctIndex: 1, explanation: 'Metin kronik ağrıyı üç aydan uzun süren ağrı olarak tanımlar.', questionType: 'Detay'),
      ArticleQuestion(question: 'The word "acute" is closest in meaning to ----.',  options: ['sudden and short-term', 'permanent', 'mild', 'imaginary'], correctIndex: 0, explanation: '"Acute" akut, ani ve kısa süreli anlamındadır.', questionType: 'Kelime'),
      ArticleQuestion(question: 'Why is there renewed emphasis on non-pharmacological interventions?', options: ['Because drugs are always ineffective', 'Because of dangers highlighted by the opioid crisis', 'Because patients dislike doctors', 'Because therapy is free'], correctIndex: 1, explanation: 'Opioid krizi ilaçlara aşırı bağımlılığın tehlikelerini gösterdiği için.', questionType: 'Detay'),
      ArticleQuestion(question: 'What can be inferred about chronic pain treatment goals?', options: ['Only pain elimination matters.', 'Improving function and quality of life is a key goal.', 'Surgery is always required.', 'Treatment is impossible.'], correctIndex: 1, explanation: 'Metin amacın işlevi ve yaşam kalitesini artırmak olduğunu belirtir.', questionType: 'Çıkarım'),
      ArticleQuestion(question: 'What is the main idea of the passage?', options: ['Chronic pain is untreatable.', 'Chronic pain requires a comprehensive, multidisciplinary approach.', 'Only opioids work for chronic pain.', 'Pain is always beneficial.'], correctIndex: 1, explanation: 'Metin kapsamlı, çok disiplinli yaklaşımı vurgular.', questionType: 'Ana Fikir'),
    ],
  ),
  // ─── MAKALE 14 ───
  const Article(
    id: 14,
    title: 'Organ Transplantation',
    turkishTitle: 'Organ Nakli',
    category: 'Transplantasyon',
    difficulty: 'Orta',
    source: 'Transplantation Reviews',
    estimatedMinutes: 6,
    passage: '''Organ transplantation has transformed the treatment of end-stage organ failure, offering a second chance at life to hundreds of thousands of patients each year. Kidneys, livers, hearts, lungs, and pancreases can now be transplanted with increasingly high success rates thanks to advances in surgical techniques and immunosuppressive drugs.

The greatest challenge facing transplantation remains the severe shortage of donor organs. Demand far exceeds supply, and many patients die while waiting on transplant lists. Efforts to address this gap include public awareness campaigns to encourage organ donation, opt-out donation systems in some countries, and the use of organs from expanded-criteria donors.

Rejection of transplanted organs by the recipient\'s immune system is another persistent obstacle. Immunosuppressive medications reduce this risk but leave patients vulnerable to infections and certain cancers. Achieving the right balance between preventing rejection and maintaining immune function requires careful, lifelong management.

Looking ahead, xenotransplantation—the transplantation of animal organs—and the growth of organs from stem cells may one day resolve the donor shortage. Recent experimental transplants of genetically modified pig organs into humans represent promising, if preliminary, steps toward this goal.''',
    turkishSummary: 'Organ nakli organ yetmezliğinde hayat kurtarır. En büyük sorun donör organ kıtlığıdır. İmmünosupresif ilaçlar reddi önler ama enfeksiyon riskini artırır. Ksenotransplantasyon gelecekte kıtlığı çözebilir.',
    vocabulary: [
      ArticleVocab(english: 'end-stage', turkish: 'son evre', partOfSpeech: 'adj'),
      ArticleVocab(english: 'immunosuppressive', turkish: 'bağışıklık baskılayıcı', partOfSpeech: 'adj'),
      ArticleVocab(english: 'shortage', turkish: 'kıtlık', partOfSpeech: 'n'),
      ArticleVocab(english: 'donor', turkish: 'verici, bağışçı', partOfSpeech: 'n'),
      ArticleVocab(english: 'recipient', turkish: 'alıcı', partOfSpeech: 'n'),
      ArticleVocab(english: 'rejection', turkish: 'ret', partOfSpeech: 'n'),
      ArticleVocab(english: 'vulnerable', turkish: 'savunmasız', partOfSpeech: 'adj'),
      ArticleVocab(english: 'lifelong', turkish: 'ömür boyu', partOfSpeech: 'adj'),
      ArticleVocab(english: 'xenotransplantation', turkish: 'türler arası nakil', partOfSpeech: 'n'),
      ArticleVocab(english: 'preliminary', turkish: 'ön, başlangıç', partOfSpeech: 'adj'),
    ],
    questions: [
      ArticleQuestion(question: 'What is the greatest challenge facing transplantation?', options: ['Lack of surgeons', 'Severe shortage of donor organs', 'High cost of hospitals', 'Poor anaesthesia'], correctIndex: 1, explanation: 'Metin en büyük zorluğun donör organ kıtlığı olduğunu belirtir.', questionType: 'Detay'),
      ArticleQuestion(question: 'The word "recipient" refers to ----.',  options: ['the person giving the organ', 'the person receiving the organ', 'the surgeon', 'the hospital'], correctIndex: 1, explanation: '"Recipient" organı alan kişi (alıcı) demektir.', questionType: 'Kelime'),
      ArticleQuestion(question: 'What is a drawback of immunosuppressive medications?', options: ['They cause organ rejection.', 'They leave patients vulnerable to infections and cancers.', 'They have no effect.', 'They cure all diseases.'], correctIndex: 1, explanation: 'İlaçlar reddi azaltır ama enfeksiyon ve kanser riskini artırır.', questionType: 'Detay'),
      ArticleQuestion(question: 'What can be inferred about xenotransplantation?', options: ['It is already routine.', 'It may help solve the donor shortage in the future.', 'It has been abandoned.', 'It is illegal everywhere.'], correctIndex: 1, explanation: 'Metin ksenotransplantasyonun gelecekte kıtlığı çözebileceğini ima eder.', questionType: 'Çıkarım'),
      ArticleQuestion(question: 'The author\'s attitude toward future solutions is ----.',  options: ['hopeful yet cautious', 'completely dismissive', 'angry', 'indifferent'], correctIndex: 0, explanation: '"promising, if preliminary" ifadesi umutlu ama temkinli bir tutum gösterir.', questionType: 'Yazarın Tutumu'),
    ],
  ),

  // ─── MAKALE 15 ───
  const Article(
    id: 15,
    title: 'Tuberculosis: An Ongoing Battle',
    turkishTitle: 'Tüberküloz: Süregelen Bir Mücadele',
    category: 'Enfeksiyon Hastalıkları',
    difficulty: 'Orta',
    source: 'The Lancet Infectious Diseases',
    estimatedMinutes: 6,
    passage: '''Tuberculosis (TB), an ancient disease caused by the bacterium Mycobacterium tuberculosis, continues to be one of the world\'s deadliest infectious diseases, claiming approximately 1.5 million lives annually. Despite being curable and preventable, TB remains a major challenge, particularly in low-income countries.

TB primarily affects the lungs but can spread to other parts of the body. It is transmitted through the air when infected individuals cough or sneeze. A significant proportion of the global population carries latent TB infection, in which the bacteria remain dormant and cause no symptoms, but may become active later, especially if the immune system is weakened.

The standard treatment involves a combination of antibiotics taken for at least six months. However, incomplete or improper treatment has led to the emergence of drug-resistant strains, including multidrug-resistant TB (MDR-TB), which is far more difficult and expensive to treat. This development poses a serious threat to global TB control efforts.

International initiatives such as the WHO\'s End TB Strategy aim to reduce TB deaths by 95 percent by 2035. Achieving this ambitious goal will require improved diagnostics, new drugs, an effective vaccine, and sustained political and financial commitment.''',
    turkishSummary: 'Tüberküloz hâlâ dünyanın en ölümcül enfeksiyonlarından biridir. Havayla bulaşır, gizli enfeksiyon sonradan aktifleşebilir. Yetersiz tedavi ilaca dirençli suşlar doğurur. DSÖ 2035\'e kadar ölümleri %95 azaltmayı hedefler.',
    vocabulary: [
      ArticleVocab(english: 'deadliest', turkish: 'en ölümcül', partOfSpeech: 'adj'),
      ArticleVocab(english: 'curable', turkish: 'tedavi edilebilir', partOfSpeech: 'adj'),
      ArticleVocab(english: 'transmit', turkish: 'bulaştırmak', partOfSpeech: 'v'),
      ArticleVocab(english: 'latent', turkish: 'gizli, uykuda', partOfSpeech: 'adj'),
      ArticleVocab(english: 'dormant', turkish: 'uykuda, pasif', partOfSpeech: 'adj'),
      ArticleVocab(english: 'emergence', turkish: 'ortaya çıkış', partOfSpeech: 'n'),
      ArticleVocab(english: 'drug-resistant', turkish: 'ilaca dirençli', partOfSpeech: 'adj'),
      ArticleVocab(english: 'strain', turkish: 'suş', partOfSpeech: 'n'),
      ArticleVocab(english: 'initiative', turkish: 'girişim', partOfSpeech: 'n'),
      ArticleVocab(english: 'sustained', turkish: 'sürekli', partOfSpeech: 'adj'),
    ],
    questions: [
      ArticleQuestion(question: 'How is tuberculosis transmitted?', options: ['Through contaminated water', 'Through the air when infected people cough or sneeze', 'Through insect bites', 'Through physical contact only'], correctIndex: 1, explanation: 'Metin TB\'nin öksürük veya hapşırıkla havadan bulaştığını belirtir.', questionType: 'Detay'),
      ArticleQuestion(question: 'The word "dormant" is closest in meaning to ----.',  options: ['active', 'inactive', 'deadly', 'visible'], correctIndex: 1, explanation: '"Dormant" uykuda, pasif anlamındadır.', questionType: 'Kelime'),
      ArticleQuestion(question: 'What has led to the emergence of drug-resistant TB?', options: ['Too much rest', 'Incomplete or improper treatment', 'Vaccination', 'Healthy diet'], correctIndex: 1, explanation: 'Yetersiz veya hatalı tedavi dirençli suşların ortaya çıkışına yol açmıştır.', questionType: 'Detay'),
      ArticleQuestion(question: 'What can be inferred about MDR-TB?', options: ['It is easier to treat than normal TB.', 'It is more difficult and expensive to treat.', 'It cannot spread.', 'It has been eradicated.'], correctIndex: 1, explanation: 'MDR-TB\'nin tedavisinin çok daha zor ve pahalı olduğu belirtilir.', questionType: 'Çıkarım'),
      ArticleQuestion(question: 'What is the main idea of the passage?', options: ['TB has been completely eradicated.', 'TB remains a serious global challenge requiring sustained effort.', 'TB is not treatable.', 'TB only affects wealthy nations.'], correctIndex: 1, explanation: 'Metin TB\'nin süregelen ciddi bir küresel sorun olduğunu vurgular.', questionType: 'Ana Fikir'),
    ],
  ),

  // ─── MAKALE 16 ───
  const Article(
    id: 16,
    title: 'Maternal and Neonatal Health',
    turkishTitle: 'Anne ve Yenidoğan Sağlığı',
    category: 'Obstetrik',
    difficulty: 'Kolay',
    source: 'WHO Maternal Health Report',
    estimatedMinutes: 5,
    passage: '''Maternal and neonatal health is a critical indicator of a nation\'s overall healthcare quality. Every day, approximately 800 women die from preventable causes related to pregnancy and childbirth, the vast majority in developing countries. Most of these deaths could be avoided with access to skilled care.

The leading causes of maternal mortality include severe bleeding, infections, high blood pressure during pregnancy, and complications from delivery. Antenatal care, which involves regular check-ups during pregnancy, plays a vital role in identifying and managing risks before they become life-threatening.

Neonatal health is equally important. The first 28 days of life are the most vulnerable period for a child. Premature birth, birth complications, and infections account for most newborn deaths. Simple, low-cost interventions such as breastfeeding, keeping the newborn warm, and hygienic cord care can significantly improve survival rates.

Improving maternal and neonatal outcomes requires strengthening health systems, training skilled birth attendants, and ensuring access to emergency obstetric care. Investment in this area yields substantial returns, as healthy mothers and children form the foundation of thriving communities.''',
    turkishSummary: 'Anne ve yenidoğan sağlığı bir ülkenin sağlık kalitesinin göstergesidir. Anne ölümlerinin çoğu önlenebilir. Doğum öncesi bakım risk yönetiminde kritiktir. Basit müdahaleler yenidoğan sağkalımını artırır.',
    vocabulary: [
      ArticleVocab(english: 'maternal', turkish: 'anneye ait', partOfSpeech: 'adj'),
      ArticleVocab(english: 'neonatal', turkish: 'yenidoğana ait', partOfSpeech: 'adj'),
      ArticleVocab(english: 'preventable', turkish: 'önlenebilir', partOfSpeech: 'adj'),
      ArticleVocab(english: 'mortality', turkish: 'ölüm oranı', partOfSpeech: 'n'),
      ArticleVocab(english: 'antenatal', turkish: 'doğum öncesi', partOfSpeech: 'adj'),
      ArticleVocab(english: 'life-threatening', turkish: 'hayatı tehdit eden', partOfSpeech: 'adj'),
      ArticleVocab(english: 'premature', turkish: 'erken (doğum)', partOfSpeech: 'adj'),
      ArticleVocab(english: 'breastfeeding', turkish: 'emzirme', partOfSpeech: 'n'),
      ArticleVocab(english: 'intervention', turkish: 'müdahale', partOfSpeech: 'n'),
      ArticleVocab(english: 'thriving', turkish: 'gelişen, güçlenen', partOfSpeech: 'adj'),
    ],
    questions: [
      ArticleQuestion(question: 'According to the passage, most maternal deaths ----.',  options: ['are impossible to prevent', 'could be avoided with access to skilled care', 'occur in wealthy countries', 'have no known cause'], correctIndex: 1, explanation: 'Metin çoğu ölümün nitelikli bakıma erişimle önlenebileceğini belirtir.', questionType: 'Detay'),
      ArticleQuestion(question: 'What is the role of antenatal care?', options: ['To replace hospitals', 'To identify and manage risks during pregnancy', 'To increase mortality', 'To delay births'], correctIndex: 1, explanation: 'Doğum öncesi bakım riskleri belirleyip yönetmede kritik rol oynar.', questionType: 'Detay'),
      ArticleQuestion(question: 'The word "vulnerable" is closest in meaning to ----.',  options: ['strong', 'at risk', 'happy', 'wealthy'], correctIndex: 1, explanation: '"Vulnerable" savunmasız, risk altında anlamındadır.', questionType: 'Kelime'),
      ArticleQuestion(question: 'What can be inferred about investment in maternal health?', options: ['It is wasteful.', 'It brings substantial benefits to communities.', 'It has no effect.', 'It only helps hospitals.'], correctIndex: 1, explanation: 'Metin bu alana yatırımın topluma büyük getiri sağladığını ima eder.', questionType: 'Çıkarım'),
      ArticleQuestion(question: 'What is the main idea of the passage?', options: ['Maternal and neonatal health is vital and largely improvable.', 'Pregnancy is always dangerous.', 'Newborns rarely survive.', 'Healthcare quality does not matter.'], correctIndex: 0, explanation: 'Metin anne-yenidoğan sağlığının hayati ve büyük ölçüde iyileştirilebilir olduğunu vurgular.', questionType: 'Ana Fikir'),
    ],
  ),

  // ─── MAKALE 17 ───
  const Article(
    id: 17,
    title: 'Sleep Disorders and Health',
    turkishTitle: 'Uyku Bozuklukları ve Sağlık',
    category: 'Nöroloji',
    difficulty: 'Kolay',
    source: 'Journal of Sleep Research',
    estimatedMinutes: 5,
    passage: '''Sleep is a fundamental biological process essential for physical and mental health, yet sleep disorders affect a large proportion of the population. Chronic sleep deprivation and untreated sleep disorders are associated with a wide range of health problems, including obesity, diabetes, cardiovascular disease, and impaired cognitive function.

Insomnia, the most common sleep disorder, is characterised by difficulty falling or staying asleep. It can be triggered by stress, poor sleep habits, or underlying medical conditions. Obstructive sleep apnoea, in which breathing repeatedly stops during sleep, is another prevalent disorder that often goes undiagnosed and can have serious cardiovascular consequences.

Good sleep hygiene is the foundation of healthy sleep. This includes maintaining a regular sleep schedule, avoiding caffeine and screens before bedtime, and creating a comfortable sleep environment. For persistent problems, cognitive behavioural therapy for insomnia has proven more effective than sleeping pills in the long term.

As awareness of the importance of sleep grows, healthcare providers increasingly recognise that addressing sleep problems is not a luxury but a necessity for overall well-being and disease prevention.''',
    turkishSummary: 'Uyku sağlık için temeldir ama uyku bozuklukları yaygındır. Uykusuzluk ve uyku apnesi ciddi sonuçlar doğurabilir. İyi uyku hijyeni esastır; kronik sorunlarda BDT ilaçtan daha etkilidir.',
    vocabulary: [
      ArticleVocab(english: 'deprivation', turkish: 'yoksunluk', partOfSpeech: 'n'),
      ArticleVocab(english: 'impaired', turkish: 'bozulmuş', partOfSpeech: 'adj'),
      ArticleVocab(english: 'insomnia', turkish: 'uykusuzluk', partOfSpeech: 'n'),
      ArticleVocab(english: 'trigger', turkish: 'tetiklemek', partOfSpeech: 'v'),
      ArticleVocab(english: 'apnoea', turkish: 'apne, solunum durması', partOfSpeech: 'n'),
      ArticleVocab(english: 'undiagnosed', turkish: 'teşhis edilmemiş', partOfSpeech: 'adj'),
      ArticleVocab(english: 'sleep hygiene', turkish: 'uyku hijyeni', partOfSpeech: 'n'),
      ArticleVocab(english: 'persistent', turkish: 'inatçı, süregelen', partOfSpeech: 'adj'),
      ArticleVocab(english: 'awareness', turkish: 'farkındalık', partOfSpeech: 'n'),
      ArticleVocab(english: 'necessity', turkish: 'gereklilik', partOfSpeech: 'n'),
    ],
    questions: [
      ArticleQuestion(question: 'What is insomnia characterised by?', options: ['Sleeping too much', 'Difficulty falling or staying asleep', 'Breathing problems only', 'Excessive dreaming'], correctIndex: 1, explanation: 'Metin uykusuzluğu uykuya dalma veya uykuyu sürdürme güçlüğü olarak tanımlar.', questionType: 'Detay'),
      ArticleQuestion(question: 'The word "deprivation" is closest in meaning to ----.',  options: ['abundance', 'lack', 'comfort', 'enjoyment'], correctIndex: 1, explanation: '"Deprivation" yoksunluk, eksiklik anlamındadır.', questionType: 'Kelime'),
      ArticleQuestion(question: 'What is said about obstructive sleep apnoea?', options: ['It is always diagnosed early.', 'It often goes undiagnosed and can affect the heart.', 'It has no health effects.', 'It only affects children.'], correctIndex: 1, explanation: 'Apnenin sıkça teşhis edilmediği ve kalbi etkileyebileceği belirtilir.', questionType: 'Detay'),
      ArticleQuestion(question: 'What can be inferred about CBT for insomnia?', options: ['It is less effective than pills.', 'It is more effective than sleeping pills long term.', 'It is dangerous.', 'It is never used.'], correctIndex: 1, explanation: 'Metin BDT\'nin uzun vadede uyku ilaçlarından daha etkili olduğunu belirtir.', questionType: 'Çıkarım'),
      ArticleQuestion(question: 'The author suggests that addressing sleep problems is ----.',  options: ['a luxury', 'a necessity for well-being', 'unimportant', 'impossible'], correctIndex: 1, explanation: 'Yazar uyku sorunlarını çözmenin lüks değil gereklilik olduğunu belirtir.', questionType: 'Yazarın Tutumu'),
    ],
  ),

  // ─── MAKALE 18 ───
  const Article(
    id: 18,
    title: 'Public Health Strategies for Pandemics',
    turkishTitle: 'Pandemilerde Halk Sağlığı Stratejileri',
    category: 'Epidemiyoloji',
    difficulty: 'Zor',
    source: 'Lancet Public Health',
    estimatedMinutes: 7,
    passage: '''Pandemics pose one of the greatest threats to global health and economic stability. The COVID-19 pandemic demonstrated both the vulnerability of modern societies to infectious diseases and the importance of coordinated public health responses. Effective pandemic preparedness requires strategies that can be rapidly deployed when a novel pathogen emerges.

Early detection and surveillance form the first line of defence. Robust systems for monitoring disease patterns allow authorities to identify outbreaks before they spread widely. Once a pandemic is underway, non-pharmaceutical interventions such as physical distancing, mask-wearing, and quarantine become essential tools for slowing transmission and preventing healthcare systems from being overwhelmed.

Vaccination represents the most powerful long-term strategy. The unprecedented speed of COVID-19 vaccine development showcased the potential of scientific collaboration, yet it also exposed profound inequities in global vaccine distribution. Ensuring equitable access to vaccines and treatments is not only an ethical imperative but also a practical necessity, since a pathogen circulating anywhere threatens people everywhere.

Building resilient health systems, investing in research, and fostering international cooperation are crucial for future pandemic preparedness. The lessons learned from recent outbreaks must translate into sustained investment rather than complacency once the immediate crisis subsides.''',
    turkishSummary: 'Pandemiler küresel sağlık için büyük tehdittir. Erken tespit, izleme ve ilaç dışı önlemler ilk savunmadır. Aşı en güçlü uzun vadeli stratejidir ama adil dağıtım şarttır. Dayanıklı sistemler ve uluslararası iş birliği gereklidir.',
    vocabulary: [
      ArticleVocab(english: 'preparedness', turkish: 'hazırlıklılık', partOfSpeech: 'n'),
      ArticleVocab(english: 'deploy', turkish: 'devreye sokmak', partOfSpeech: 'v'),
      ArticleVocab(english: 'surveillance', turkish: 'gözetim, izleme', partOfSpeech: 'n'),
      ArticleVocab(english: 'outbreak', turkish: 'salgın', partOfSpeech: 'n'),
      ArticleVocab(english: 'transmission', turkish: 'bulaşma', partOfSpeech: 'n'),
      ArticleVocab(english: 'overwhelm', turkish: 'baş edilemez kılmak', partOfSpeech: 'v'),
      ArticleVocab(english: 'unprecedented', turkish: 'benzeri görülmemiş', partOfSpeech: 'adj'),
      ArticleVocab(english: 'inequity', turkish: 'eşitsizlik', partOfSpeech: 'n'),
      ArticleVocab(english: 'imperative', turkish: 'zorunluluk', partOfSpeech: 'n'),
      ArticleVocab(english: 'resilient', turkish: 'dayanıklı', partOfSpeech: 'adj'),
      ArticleVocab(english: 'complacency', turkish: 'gevşeklik, rehavet', partOfSpeech: 'n'),
      ArticleVocab(english: 'subside', turkish: 'yatışmak', partOfSpeech: 'v'),
    ],
    questions: [
      ArticleQuestion(question: 'What forms the first line of defence against pandemics?', options: ['Vaccination only', 'Early detection and surveillance', 'Complete lockdowns forever', 'Ignoring the disease'], correctIndex: 1, explanation: 'Metin erken tespit ve izlemenin ilk savunma hattı olduğunu belirtir.', questionType: 'Detay'),
      ArticleQuestion(question: 'The word "overwhelmed" is closest in meaning to ----.',  options: ['strengthened', 'unable to cope', 'closed', 'funded'], correctIndex: 1, explanation: '"Overwhelmed" baş edemez hâle gelmek anlamındadır.', questionType: 'Kelime'),
      ArticleQuestion(question: 'Why is equitable vaccine access described as a practical necessity?', options: ['Because vaccines are cheap', 'Because a pathogen circulating anywhere threatens everyone', 'Because it is legally required', 'Because vaccines expire quickly'], correctIndex: 1, explanation: 'Herhangi bir yerde dolaşan patojen herkesi tehdit ettiği için.', questionType: 'Detay'),
      ArticleQuestion(question: 'What does the author warn against after a crisis subsides?', options: ['Investing too much', 'Complacency', 'International cooperation', 'Scientific research'], correctIndex: 1, explanation: 'Yazar kriz geçince rehavete kapılmamayı, sürekli yatırımı vurgular.', questionType: 'Çıkarım'),
      ArticleQuestion(question: 'The author\'s tone can best be described as ----.',  options: ['urgent and constructive', 'humorous', 'indifferent', 'hopeless'], correctIndex: 0, explanation: 'Yazar tehdidi ciddi biçimde ele alır ve yapıcı öneriler sunar.', questionType: 'Yazarın Tutumu'),
    ],
  ),

  // ─── MAKALE 19 ───
  const Article(
    id: 19,
    title: 'Artificial Intelligence in Medical Diagnosis',
    turkishTitle: 'Tıbbi Teşhiste Yapay Zeka',
    category: 'Dijital Sağlık',
    difficulty: 'Orta',
    source: 'npj Digital Medicine',
    estimatedMinutes: 6,
    passage: '''Artificial intelligence (AI) is rapidly transforming medical diagnosis, offering the potential to improve accuracy, speed, and accessibility. Machine learning algorithms, trained on vast datasets of medical images and records, can now detect diseases such as diabetic retinopathy, skin cancer, and lung nodules with accuracy that rivals or even exceeds that of human experts.

One of the most promising applications lies in medical imaging. AI systems can analyse X-rays, CT scans, and MRIs in seconds, flagging abnormalities that might be missed by a fatigued radiologist. This capability is particularly valuable in regions with a shortage of specialists, where AI can serve as a diagnostic aid.

Despite its promise, the integration of AI into clinical practice raises important concerns. Algorithms are only as good as the data on which they are trained; biased or incomplete datasets can lead to inaccurate or unfair outcomes. Furthermore, the "black box" nature of some AI systems makes it difficult to understand how they reach their conclusions, complicating accountability.

For AI to be safely adopted, it must be rigorously validated, transparent, and used to support rather than replace clinical judgement. When thoughtfully implemented, AI has the potential to augment the capabilities of healthcare professionals and improve patient outcomes worldwide.''',
    turkishSummary: 'Yapay zeka tıbbi teşhisi dönüştürüyor; görüntüleri saniyeler içinde analiz edip uzman doğruluğuna ulaşabiliyor. Ancak veri yanlılığı ve "kara kutu" sorunu endişe yaratıyor. YZ hekimin yerini almak değil desteklemek için kullanılmalıdır.',
    vocabulary: [
      ArticleVocab(english: 'algorithm', turkish: 'algoritma', partOfSpeech: 'n'),
      ArticleVocab(english: 'vast', turkish: 'çok geniş', partOfSpeech: 'adj'),
      ArticleVocab(english: 'rival', turkish: 'boy ölçüşmek', partOfSpeech: 'v'),
      ArticleVocab(english: 'exceed', turkish: 'aşmak', partOfSpeech: 'v'),
      ArticleVocab(english: 'abnormality', turkish: 'anormallik', partOfSpeech: 'n'),
      ArticleVocab(english: 'fatigued', turkish: 'yorgun', partOfSpeech: 'adj'),
      ArticleVocab(english: 'biased', turkish: 'yanlı', partOfSpeech: 'adj'),
      ArticleVocab(english: 'accountability', turkish: 'hesap verebilirlik', partOfSpeech: 'n'),
      ArticleVocab(english: 'rigorously', turkish: 'titizlikle', partOfSpeech: 'adv'),
      ArticleVocab(english: 'augment', turkish: 'artırmak, güçlendirmek', partOfSpeech: 'v'),
    ],
    questions: [
      ArticleQuestion(question: 'What is one of the most promising applications of AI in diagnosis?', options: ['Cooking meals', 'Analysing medical images', 'Writing prescriptions only', 'Replacing all doctors'], correctIndex: 1, explanation: 'Metin tıbbi görüntülemeyi en umut verici uygulama olarak sunar.', questionType: 'Detay'),
      ArticleQuestion(question: 'The word "augment" is closest in meaning to ----.',  options: ['replace', 'enhance', 'reduce', 'ignore'], correctIndex: 1, explanation: '"Augment" artırmak, güçlendirmek anlamındadır.', questionType: 'Kelime'),
      ArticleQuestion(question: 'What concern is raised about AI datasets?', options: ['They are too small to matter.', 'Biased or incomplete data can lead to unfair outcomes.', 'They are always perfect.', 'They cannot be collected.'], correctIndex: 1, explanation: 'Yanlı veya eksik verinin hatalı/adaletsiz sonuçlara yol açabileceği belirtilir.', questionType: 'Detay'),
      ArticleQuestion(question: 'What can be inferred about how AI should be used?', options: ['To fully replace doctors', 'To support rather than replace clinical judgement', 'To be used without validation', 'To be avoided entirely'], correctIndex: 1, explanation: 'Metin YZ\'nin hekimin yerini almak değil desteklemek için kullanılması gerektiğini belirtir.', questionType: 'Çıkarım'),
      ArticleQuestion(question: 'The author\'s attitude toward AI in medicine is ----.',  options: ['optimistic but cautious', 'entirely negative', 'completely uncritical', 'dismissive'], correctIndex: 0, explanation: 'Yazar potansiyeli vurgularken risklere de dikkat çeker; iyimser ama temkinlidir.', questionType: 'Yazarın Tutumu'),
    ],
  ),

  // ─── MAKALE 20 ───
  const Article(
    id: 20,
    title: 'Diabetes Complications',
    turkishTitle: 'Diyabet Komplikasyonları',
    category: 'Endokrinoloji',
    difficulty: 'Orta',
    source: 'Diabetes Care',
    estimatedMinutes: 6,
    passage: '''Diabetes mellitus is a chronic condition that, if poorly managed, can lead to a range of serious complications affecting multiple organ systems. Persistently high blood glucose levels damage blood vessels and nerves throughout the body, giving rise to both microvascular and macrovascular complications.

Microvascular complications affect small blood vessels and include diabetic retinopathy, a leading cause of blindness; diabetic nephropathy, which can progress to kidney failure; and diabetic neuropathy, which causes pain, numbness, and, in severe cases, foot ulcers that may necessitate amputation. These complications develop gradually and are often preventable with good glycaemic control.

Macrovascular complications involve larger vessels and substantially increase the risk of heart attack, stroke, and peripheral artery disease. Indeed, cardiovascular disease is the leading cause of death among people with diabetes.

The cornerstone of preventing diabetic complications is maintaining blood glucose within target ranges through diet, exercise, medication, and regular monitoring. Controlling blood pressure and cholesterol, along with routine screening for early signs of complications, further reduces risk. With comprehensive management, many people with diabetes can lead long, healthy lives.''',
    turkishSummary: 'Kötü yönetilen diyabet birçok organı etkileyen ciddi komplikasyonlara yol açar. Mikrovasküler (göz, böbrek, sinir) ve makrovasküler (kalp, felç) komplikasyonlar görülür. İyi kan şekeri kontrolü ile çoğu önlenebilir.',
    vocabulary: [
      ArticleVocab(english: 'chronic', turkish: 'kronik', partOfSpeech: 'adj'),
      ArticleVocab(english: 'glucose', turkish: 'glikoz, kan şekeri', partOfSpeech: 'n'),
      ArticleVocab(english: 'microvascular', turkish: 'küçük damar', partOfSpeech: 'adj'),
      ArticleVocab(english: 'retinopathy', turkish: 'retinopati (göz hasarı)', partOfSpeech: 'n'),
      ArticleVocab(english: 'nephropathy', turkish: 'nefropati (böbrek hasarı)', partOfSpeech: 'n'),
      ArticleVocab(english: 'neuropathy', turkish: 'nöropati (sinir hasarı)', partOfSpeech: 'n'),
      ArticleVocab(english: 'numbness', turkish: 'uyuşma', partOfSpeech: 'n'),
      ArticleVocab(english: 'amputation', turkish: 'ampütasyon', partOfSpeech: 'n'),
      ArticleVocab(english: 'glycaemic', turkish: 'kan şekerine ait', partOfSpeech: 'adj'),
      ArticleVocab(english: 'cornerstone', turkish: 'temel taş', partOfSpeech: 'n'),
      ArticleVocab(english: 'screening', turkish: 'tarama', partOfSpeech: 'n'),
      ArticleVocab(english: 'comprehensive', turkish: 'kapsamlı', partOfSpeech: 'adj'),
    ],
    questions: [
      ArticleQuestion(question: 'What causes diabetic complications?', options: ['Low blood pressure', 'Persistently high blood glucose damaging vessels and nerves', 'Excessive exercise', 'Too much sleep'], correctIndex: 1, explanation: 'Metin sürekli yüksek kan şekerinin damar ve sinirleri hasarladığını belirtir.', questionType: 'Detay'),
      ArticleQuestion(question: 'Which is a microvascular complication?', options: ['Heart attack', 'Diabetic retinopathy', 'Stroke', 'Peripheral artery disease'], correctIndex: 1, explanation: 'Retinopati mikrovasküler bir komplikasyondur; diğerleri makrovaskülerdir.', questionType: 'Detay'),
      ArticleQuestion(question: 'The word "cornerstone" is closest in meaning to ----.',  options: ['obstacle', 'foundation', 'ending', 'symptom'], correctIndex: 1, explanation: '"Cornerstone" temel taş, esas anlamındadır.', questionType: 'Kelime'),
      ArticleQuestion(question: 'What can be inferred about diabetic complications?', options: ['They cannot be prevented.', 'Many are preventable with good glycaemic control.', 'They only affect the eyes.', 'They are harmless.'], correctIndex: 1, explanation: 'Metin iyi kan şekeri kontrolüyle birçoğunun önlenebileceğini belirtir.', questionType: 'Çıkarım'),
      ArticleQuestion(question: 'What is the main idea of the passage?', options: ['Diabetes has no complications.', 'Diabetic complications are serious but largely preventable with good management.', 'Diabetes cannot be managed.', 'Only medication matters.'], correctIndex: 1, explanation: 'Metin komplikasyonların ciddi ama iyi yönetimle büyük ölçüde önlenebilir olduğunu vurgular.', questionType: 'Ana Fikir'),
    ],
  ),
];
