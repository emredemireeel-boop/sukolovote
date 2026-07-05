import 'cloze_test_data.dart';

const List<ClozeTestPassage> extraClozeTests = [
  ClozeTestPassage(
    title: 'Cardiovascular Disease',
    textSegments: [
      'Cardiovascular disease (CVD) is the leading cause of death globally, taking an estimated 17.9 million lives each year. CVDs are a group of disorders of the heart and blood vessels, ',
      ' coronary heart disease and rheumatic heart disease. More than four out of five CVD deaths are due to heart attacks and strokes, and one third of these deaths occur prematurely in people under 70 years of age. The most important behavioural risk factors of heart disease and stroke are unhealthy diet, physical inactivity, tobacco use and harmful use of alcohol. ',
      ', the effects of behavioural risk factors may show up in individuals as raised blood pressure, raised blood glucose, and raised blood lipids. These intermediate-risk factors can be measured in primary care facilities, ',
      ' indicate an increased risk of heart attack, stroke, heart failure and other complications. Cessation of tobacco use, reduction of salt in the diet, eating more fruit and vegetables, and regular physical activity have been shown to reduce the risk of cardiovascular disease. ',
      ' health policies that create conducive environments for making healthy choices affordable and available are essential for motivating people to adopt and sustain healthy behaviours. In addition, medical treatments are sometimes necessary ',
      ' those who are at high risk can be properly managed and prevent heart attacks.'
    ],
    questions: [
      ClozeTestOption(
        choices: ['including', 'excluding', 'despite', 'rather than', 'except for'],
        correctIndex: 0,
        explanation: "Kalp ve kan damarı hastalıklarının bir grubu olduğu belirtilip, ardından örnekler (koroner kalp hastalığı vb.) sayılmıştır. 'İçeren / dahil olmak üzere' anlamına gelen 'including' kullanılır.",
      ),
      ClozeTestOption(
        choices: ['Otherwise', 'Consequently', 'In contrast', 'Similarly', 'Nevertheless'],
        correctIndex: 1,
        explanation: "Davranışsal risk faktörlerinin sonuçları sıralandığı için 'Sonuç olarak' anlamına gelen 'Consequently' uygundur.",
      ),
      ClozeTestOption(
        choices: ['who', 'whom', 'which', 'whose', 'where'],
        correctIndex: 2,
        explanation: "Virgülden sonra gelen cümlecik 'intermediate-risk factors' (ara risk faktörleri) ifadesini niteliyor. İnsan dışı çoğul varlıklar için 'which' kullanılır.",
      ),
      ClozeTestOption(
        choices: ['Moreover', 'Even though', 'In spite of', 'Unlike', 'As well as'],
        correctIndex: 0,
        explanation: "Önceki cümlede sağlıklı yaşam tarzının riski azalttığı söylendi. Bu cümlede ise 'Buna ek olarak / Dahası' anlamına gelen 'Moreover' (veya benzeri bir ekleme bağlacı) kullanılarak sağlık politikalarının da gerekli olduğu belirtilmiştir.",
      ),
      ClozeTestOption(
        choices: ['in order to', 'so that', 'because', 'even if', 'as long as'],
        correctIndex: 1,
        explanation: "Tıbbi tedavilerin bazen gerekli olduğu, 'böylece / -sın diye' yüksek riskli kişilerin düzgün yönetilebilmesi amacı belirtilmiştir. Ardından tam cümle ('those who... can be managed') geldiği için 'so that' kullanılır.",
      ),
    ],
  ),
  ClozeTestPassage(
    title: 'Alzheimer\'s Disease',
    textSegments: [
      'Alzheimer\'s disease is a progressive neurologic disorder that causes the brain to shrink and brain cells to die. It is the most common cause of dementia, ',
      ' is a continuous decline in thinking, behavioral and social skills that affects a person\'s ability to function independently. The early signs of the disease include forgetting recent events or conversations. As the disease progresses, a person with Alzheimer\'s disease will develop severe memory impairment and lose the ability to carry out everyday tasks. Medications may temporarily improve or slow progression of symptoms. ',
      ', there is no treatment that cures Alzheimer\'s disease or alters the disease process in the brain. In advanced stages of the disease, complications from severe loss of brain function, such as dehydration, malnutrition or infection, result in death. The exact causes of Alzheimer\'s disease aren\'t fully understood, ',
      ' at a basic level, brain proteins fail to function normally. This disrupts the work of brain cells, unleashing a series of toxic events. Neurons are damaged, lose connections to each other, ',
      ' eventually die. Genetic, lifestyle and environmental factors that affect the brain over time are believed to be ',
      ' the development of the disease.'
    ],
    questions: [
      ClozeTestOption(
        choices: ['that', 'where', 'which', 'who', 'when'],
        correctIndex: 2,
        explanation: "Virgülle ayrılmış bir non-defining relative clause (dementia'yı tanımlıyor) olduğu için 'that' kullanılamaz, cansız nesneler/kavramlar için 'which' kullanılır.",
      ),
      ClozeTestOption(
        choices: ['Therefore', 'However', 'Furthermore', 'Thus', 'Instead'],
        correctIndex: 1,
        explanation: "İlaçların semptomları yavaşlatabileceği söylendikten sonra, kesin bir tedavi 'olmadığı' söyleniyor. Zıtlık belirten 'However' (Ancak) uygundur.",
      ),
      ClozeTestOption(
        choices: ['since', 'so', 'but', 'as if', 'until'],
        correctIndex: 2,
        explanation: "Nedenleri tam anlaşılamamıştır, 'ama' (but) temel düzeyde proteinlerin normal çalışmadığı bilinmektedir. Zıtlık bağlacı gerekir.",
      ),
      ClozeTestOption(
        choices: ['and', 'or', 'nor', 'yet', 'for'],
        correctIndex: 0,
        explanation: "Nöronların hasar gördüğü, bağlarını kaybettiği 've' en sonunda öldüğü sıralı eylemler (damaged, lose, die) 'and' ile bağlanır.",
      ),
      ClozeTestOption(
        choices: ['responsible for', 'aware of', 'prevented from', 'protected against', 'exposed to'],
        correctIndex: 0,
        explanation: "Genetik ve çevresel faktörlerin hastalığın gelişiminden 'sorumlu olduğu' (responsible for) düşünülmektedir.",
      ),
    ],
  ),
  ClozeTestPassage(
    title: 'Vaccination and Immunity',
    textSegments: [
      'Vaccination is one of the most effective public health interventions in the world. It is a simple, safe, and effective way of protecting people against harmful diseases, ',
      ' they come into contact with them. It uses your body\'s natural defenses to build resistance to specific infections and makes your immune system stronger. Vaccines train your immune system to create antibodies, just as it does when it\'s exposed to a disease. However, ',
      ' vaccines contain only killed or weakened forms of germs like viruses or bacteria, they do not cause the disease or put you at risk of its complications. Most vaccines are given by an injection, ',
      ' some are given orally or sprayed into the nose. When you get a vaccine, your immune system responds. It recognizes the invading germ, produces antibodies, and remembers the disease and how to fight it. If you are then exposed to the germ in the future, your immune system can quickly destroy it ',
      ' you become unwell. Ultimately, high vaccination coverage in a community creates herd immunity, ',
      ' protects those who cannot be vaccinated, such as newborns or individuals with compromised immune systems.'
    ],
    questions: [
      ClozeTestOption(
        choices: ['after', 'before', 'while', 'since', 'until'],
        correctIndex: 1,
        explanation: "Aşılama, insanları hastalıklara onlarla temas etmeden 'önce' (before) korur.",
      ),
      ClozeTestOption(
        choices: ['although', 'because', 'unless', 'so that', 'in case'],
        correctIndex: 1,
        explanation: "Aşıların hastalığa yol açmamasının 'sebebi' (because) içlerinde zayıflatılmış/ölü mikroplar barındırmasıdır.",
      ),
      ClozeTestOption(
        choices: ['but', 'so', 'for', 'thus', 'hence'],
        correctIndex: 0,
        explanation: "Çoğu aşının iğneyle yapıldığı, 'ama' (but) bazılarının ağız/burun yoluyla verildiği söylenerek zıtlık oluşturulmuştur.",
      ),
      ClozeTestOption(
        choices: ['after', 'before', 'whenever', 'wherever', 'since'],
        correctIndex: 1,
        explanation: "Bağışıklık sistemi, siz hasta olmadan 'önce' (before) mikrobu yok edebilir.",
      ),
      ClozeTestOption(
        choices: ['which', 'who', 'whom', 'where', 'whose'],
        correctIndex: 0,
        explanation: "'Herd immunity' (sürü bağışıklığı) kavramını tanımlayan relative clause, cansız olduğu için 'which' alır.",
      ),
    ],
  ),
  ClozeTestPassage(
    title: 'Obesity and Its Complications',
    textSegments: [
      'Obesity is a complex disease involving an excessive amount of body fat. Obesity isn\'t just a cosmetic concern; it is a medical problem that increases the risk of other diseases and health problems, ',
      ' heart disease, diabetes, high blood pressure and certain cancers. There are many reasons why some people have difficulty losing weight. Usually, obesity results from a combination of inherited factors, combined with the environment and personal diet and exercise choices. ',
      ', even modest weight loss can improve or prevent the health problems associated with obesity. Dietary changes, increased physical activity and behavior changes can help you lose weight. Prescription medications and weight-loss procedures are additional options ',
      ' treating severe obesity. The body mass index (BMI) is often used to diagnose obesity. ',
      ' BMI doesn\'t directly measure body fat, it is a reasonable estimate of body fat thickness for most people. A BMI of 30 or higher is considered obese. Factors that increase the risk of obesity include genetics, age, and lack of sleep, which can lead to hormonal changes ',
      ' increase appetite and cravings for high-calorie foods.'
    ],
    questions: [
      ClozeTestOption(
        choices: ['in spite of', 'such as', 'rather than', 'due to', 'instead of'],
        correctIndex: 1,
        explanation: "Sağlık problemleri ve hastalıklara örnekler (kalp hastalığı, diyabet vb.) verilirken 'gibi' anlamında 'such as' kullanılır.",
      ),
      ClozeTestOption(
        choices: ['Fortunately', 'Sadly', 'Unsurprisingly', 'Consequently', 'Otherwise'],
        correctIndex: 0,
        explanation: "Obezitenin zorluklarından bahsedildikten sonra ufak bir kilo kaybının bile sağlığı iyileştirebileceği gibi olumlu bir duruma geçiliyor. 'Neyse ki, çok şükür ki' anlamına gelen 'Fortunately' uygundur.",
      ),
      ClozeTestOption(
        choices: ['for', 'on', 'with', 'at', 'from'],
        correctIndex: 0,
        explanation: "'options for treating' (tedavi etmek İÇİN seçenekler). Amacı bildirmek üzere edat olarak 'for' kullanılır.",
      ),
      ClozeTestOption(
        choices: ['Because', 'Although', 'Since', 'When', 'If'],
        correctIndex: 1,
        explanation: "BMI vücut yağını doğrudan ölçmemesine 'rağmen' (Although), makul bir tahmindir. Zıtlık bağlacı gereklidir.",
      ),
      ClozeTestOption(
        choices: ['who', 'whom', 'which', 'whose', 'where'],
        correctIndex: 2,
        explanation: "'hormonal changes' cansız çoğul ismini tanımlayan relative clause zamiri 'which' veya 'that' olmalıdır. Şıklarda 'which' bulunmaktadır.",
      ),
    ],
  ),
  ClozeTestPassage(
    title: 'Mental Health and Depression',
    textSegments: [
      'Depression is a common and serious medical illness that negatively affects how you feel, the way you think and how you act. Fortunately, it is also treatable. Depression causes feelings of sadness and/or a loss of interest in activities you once enjoyed. It can lead to a variety of emotional and physical problems and can decrease your ability to function at work and at home. ',
      ' the symptoms can vary from mild to severe, they generally include changes in appetite, trouble sleeping or sleeping too much, loss of energy, and difficulty thinking or concentrating. Conditions such as thyroid problems, a brain tumor or vitamin deficiency can mimic symptoms of depression, ',
      ' it is important to rule out general medical causes. Depression can affect anyone, even a person who appears to live in relatively ideal circumstances. Several factors can play a role in depression: biochemistry, genetics, personality, and environmental factors. For example, continuous exposure to violence, neglect, abuse or poverty may make some people ',
      ' vulnerable to depression. Treatment often involves psychotherapy, medications, or a combination of both. In mild cases, therapy alone may be sufficient, ',
      ' for moderate to severe depression, antidepressants are typically recommended. Seeking help early is crucial, ',
      ' untreated depression can lead to severe consequences, including suicide.'
    ],
    questions: [
      ClozeTestOption(
        choices: ['Because', 'While', 'Unless', 'Provided that', 'Once'],
        correctIndex: 1,
        explanation: "Semptomların hafiften şiddetliye değişebilmesine 'rağmen / iken' (While), genelde şu belirtileri içerir denilerek zıtlık/karşılaştırma yapılmıştır.",
      ),
      ClozeTestOption(
        choices: ['so', 'because', 'although', 'but', 'unless'],
        correctIndex: 0,
        explanation: "Diğer hastalıklar depresyonu taklit edebildiği İÇİN (bu sebeple), tıbbi nedenleri ekarte etmek önemlidir. Sonuç bildiren 'so' bağlacı uygundur.",
      ),
      ClozeTestOption(
        choices: ['less', 'more', 'least', 'most', 'as'],
        correctIndex: 1,
        explanation: "Şiddete, fakirliğe maruz kalmak insanları depresyona 'daha fazla' (more) savunmasız yapar.",
      ),
      ClozeTestOption(
        choices: ['whereas', 'therefore', 'furthermore', 'similarly', 'consequently'],
        correctIndex: 0,
        explanation: "Hafif vakalarda sadece terapi yeterli olurken (oysa ki / iken), şiddetli vakalarda ilaç önerilir. Zıtlık belirten 'whereas' (oysa) doğrudur.",
      ),
      ClozeTestOption(
        choices: ['as', 'so that', 'in case', 'even if', 'though'],
        correctIndex: 0,
        explanation: "Erken yardım aramak kritiktir 'ÇÜNKÜ' tedavi edilmeyen depresyon intihara yol açabilir. Neden bildiren 'as' (çünkü) kullanılır.",
      ),
    ],
  ),
  ClozeTestPassage(
    title: 'Asthma and Respiratory Conditions',
    textSegments: [
      'Asthma is a condition in which your airways narrow and swell and may produce extra mucus. This can make breathing difficult and trigger coughing, a whistling sound (wheezing) when you breathe out and shortness of breath. For some people, asthma is a minor nuisance. For others, it can be a major problem that interferes with daily activities and may lead to a life-threatening asthma attack. Asthma can\'t be cured, ',
      ' its symptoms can be controlled. Because asthma often changes over time, it\'s important that you work with your doctor to track your signs and symptoms and adjust your treatment ',
      '. Asthma signs and symptoms vary from person to person. You may have infrequent asthma attacks, have symptoms only at certain times — such as when exercising — or have symptoms all the time. Asthma triggers are different from person to person and can include airborne allergens, ',
      ' pollen, dust mites, mold spores, pet dander or particles of cockroach waste. Respiratory infections, such as the common cold, can also exacerbate asthma. Preventive, long-term control medications reduce the swelling in your airways that leads to symptoms. Quick-relief inhalers (bronchodilators) quickly open swollen airways ',
      ' are limiting breathing. In some cases, allergy medications are necessary. Understanding and avoiding the triggers that cause your asthma symptoms ',
      ' the most effective step in preventing asthma attacks.'
    ],
    questions: [
      ClozeTestOption(
        choices: ['so', 'but', 'because', 'or', 'and'],
        correctIndex: 1,
        explanation: "Astımın tedavi edilemeyeceği, 'ama / ancak' semptomlarının kontrol edilebileceği zıtlığı 'but' ile verilir.",
      ),
      ClozeTestOption(
        choices: ['accordingly', 'rarely', 'previously', 'hardly', 'barely'],
        correctIndex: 0,
        explanation: "Semptomların izlenmesi ve tedavinin 'buna göre / uygun şekilde' (accordingly) ayarlanması gerektiği ifade edilmiştir.",
      ),
      ClozeTestOption(
        choices: ['in spite of', 'due to', 'such as', 'instead of', 'as to'],
        correctIndex: 2,
        explanation: "Havadaki alerjenlere (polen, toz, küf) örnekler verilmektedir, bu nedenle 'such as' (gibi) kullanılmalıdır.",
      ),
      ClozeTestOption(
        choices: ['who', 'whom', 'where', 'which', 'when'],
        correctIndex: 3,
        explanation: "Nefes almayı sınırlayan şişmiş hava yollarını (swollen airways) tanımlayan relative clause zamiri 'which' olmalıdır.",
      ),
      ClozeTestOption(
        choices: ['is', 'are', 'was', 'were', 'be'],
        correctIndex: 0,
        explanation: "Cümlenin öznesi 'Understanding and avoiding the triggers...' şeklindeki gerund/isim-fiil grubudur. İngilizce'de gerund özneler tekil kabul edilir ve 'is' fiili alır.",
      ),
    ],
  ),
  ClozeTestPassage(
    title: 'Cancer Treatments',
    textSegments: [
      'Cancer treatment options depend on several factors, such as the type and stage of cancer, general health, and your preferences. The primary goal of cancer treatment is to achieve a cure for your cancer, allowing you to live a normal life span. This may or may not be possible, ',
      ' your specific situation. If a cure isn\'t possible, treatments may be used to shrink the cancer or slow the growth of the cancer to allow you to live symptom-free for as long as possible. Surgery is a common treatment for many types of cancer. During the operation, the surgeon removes the tumor and some of the surrounding healthy tissue ',
      ' ensure that all the cancer is gone. Chemotherapy uses drugs to kill cancer cells, while radiation therapy uses high-powered energy beams. Both treatments can be used alone or in combination with other treatments. Targeted drug treatments focus on specific abnormalities present within cancer cells. By blocking these abnormalities, targeted drug treatments can cause cancer cells to die. Immunotherapy, ',
      ' known as biological therapy, uses your body\'s immune system to fight cancer. Cancer can survive unchecked in your body ',
      ' your immune system doesn\'t recognize it as an intruder. Immunotherapy can help your immune system "see" the cancer and attack it. Coping with a cancer diagnosis and treatment is extremely challenging, ',
      ' psychological support is often a crucial part of the overall care plan.'
    ],
    questions: [
      ClozeTestOption(
        choices: ['depending on', 'in spite of', 'contrary to', 'regardless of', 'instead of'],
        correctIndex: 0,
        explanation: "Bunun mümkün olup olmaması spesifik durumunuza 'bağlıdır'. 'depending on' (...-e bağlı olarak) doğru seçimdir.",
      ),
      ClozeTestOption(
        choices: ['so as to', 'in order that', 'because of', 'due to', 'despite'],
        correctIndex: 0,
        explanation: "Cerrahın sağlıklı dokunun da birazını almasının AMACI kanserin tamamen gittiğinden emin olmaktır. Amaç bildiren ve kendisinden sonra fiilin yalın hali (ensure) gelen kalıp 'so as to' (amacıyla)'dur.",
      ),
      ClozeTestOption(
        choices: ['also', 'rarely', 'never', 'hardly', 'scarcely'],
        correctIndex: 0,
        explanation: "İmmünoterapinin BİYOLOJİK TERAPİ OLARAK DA bilindiğini söylemek için 'also known as' kalıbı kullanılır.",
      ),
      ClozeTestOption(
        choices: ['although', 'because', 'unless', 'so that', 'in case'],
        correctIndex: 1,
        explanation: "Kanserin vücutta rahatça yaşayabilmesinin SEBEBİ bağışıklık sisteminin onu işgalci olarak tanımamasıdır. Neden bağlacı 'because' gerekir.",
      ),
      ClozeTestOption(
        choices: ['whereas', 'however', 'otherwise', 'therefore', 'nevertheless'],
        correctIndex: 3,
        explanation: "Kanser teşhisiyle başa çıkmak zordur, BU YÜZDEN psikolojik destek önemlidir. Sonuç bağlacı 'therefore' (bu nedenle) kullanılır.",
      ),
    ],
  ),
  ClozeTestPassage(
    title: 'Public Health and Pandemics',
    textSegments: [
      'A pandemic is defined as an epidemic occurring worldwide, or over a very wide area, crossing international boundaries and usually affecting a large number of people. Throughout history, there have been a number of pandemics of diseases such as smallpox and tuberculosis. One of the most devastating pandemics was the Black Death, ',
      ' killed an estimated 75–200 million people in the 14th century. In modern times, the COVID-19 pandemic significantly disrupted global health systems and economies. Public health agencies like the WHO play a crucial role in monitoring disease outbreaks and coordinating global responses. Preventing a pandemic requires a multifaceted approach, ',
      ' robust surveillance systems, rapid development of diagnostics, and international cooperation. Furthermore, developing and distributing vaccines quickly is critical to containing the spread of the virus. Quarantine and isolation measures are historically proven methods to control transmission. ',
      ' these measures can cause significant economic and social hardship, they are often necessary to prevent healthcare systems from collapsing. Public compliance with health guidelines, such as wearing masks and practicing social distancing, also greatly influences the trajectory of an outbreak. Misinformation and vaccine hesitancy have emerged as major modern challenges, ',
      ' it difficult to achieve herd immunity. Educating the public with accurate, science-based information is ',
      ' just as important as the medical interventions themselves.'
    ],
    questions: [
      ClozeTestOption(
        choices: ['who', 'which', 'where', 'when', 'whose'],
        correctIndex: 1,
        explanation: "Black Death (Kara Veba) bir hastalıktır/olaydır. Cansız varlıkları niteleyen ve virgülden sonra gelen relative clause 'which' alır.",
      ),
      ClozeTestOption(
        choices: ['including', 'excluding', 'unlike', 'instead of', 'regardless of'],
        correctIndex: 0,
        explanation: "Çok yönlü yaklaşımlara örnekler (güçlü gözetim sistemleri, hızlı teşhis vs.) verilmektedir. 'Dahil olmak üzere / içeren' anlamında 'including' kullanılır.",
      ),
      ClozeTestOption(
        choices: ['Although', 'Because', 'Since', 'If', 'As long as'],
        correctIndex: 0,
        explanation: "Karantina önlemlerinin zorluklara sebep olmasına 'rağmen' sağlık sistemlerinin çökmesini önlemek için gerekli olduğu vurgulanıyor (Although).",
      ),
      ClozeTestOption(
        choices: ['make', 'makes', 'making', 'to make', 'made'],
        correctIndex: 2,
        explanation: "Virgülden sonra gelen ve cümlenin geri kalanını bir sonuç (participle clause) olarak bağlayan yapı '-ing' alır (making it difficult = onu zorlaştırarak).",
      ),
      ClozeTestOption(
        choices: ['therefore', 'nevertheless', 'otherwise', 'on the contrary', 'instead'],
        correctIndex: 0,
        explanation: "Yanlış bilginin zorluklara yol açtığı anlatılmış, 'bu yüzden / sonuç olarak' (therefore) halkı eğitmenin tıbbi müdahaleler kadar önemli olduğu sonucuna varılmıştır.",
      ),
    ],
  ),
  const ClozeTestPassage(
    title: 'Mental Health and Sleep',
    textSegments: [
      'Sleep is a fundamental biological process that is essential for both physical and mental health. Chronic sleep deprivation has been linked to numerous physical health problems, ',
      ' cardiovascular disease, kidney disease, high blood pressure, and stroke. Moreover, sleep and mental health are closely connected. Sleep disturbances are not only a symptom of many mental health disorders, ',
      ' they can also contribute to their development. For instance, individuals suffering from insomnia are at a significantly higher risk of developing depression ',
      ' those who get adequate rest. During the deep stages of sleep, the brain processes emotional information, ',
      ' helps regulate mood and emotional reactivity. Therefore, prioritizing good sleep hygiene is not just about feeling rested; it is a critical component of ',
      ' overall psychological well-being.'
    ],
    questions: [
      ClozeTestOption(
        choices: ['such as', 'despite', 'instead of', 'rather than', 'regardless of'],
        correctIndex: 0,
        explanation: "Fiziksel sağlık problemlerine örnekler (kalp hastalığı, felç) veriliyor. 'Gibi' anlamında 'such as' kullanılır.",
      ),
      ClozeTestOption(
        choices: ['but', 'so', 'and', 'or', 'nor'],
        correctIndex: 0,
        explanation: "Cümlede 'not only' (sadece ... değil) yapısı var. Bu kalıp her zaman 'but also' (aynı zamanda) ile devam eder.",
      ),
      ClozeTestOption(
        choices: ['than', 'from', 'to', 'as', 'with'],
        correctIndex: 0,
        explanation: "Cümlede 'higher risk' (daha yüksek risk) şeklinde comparative (karşılaştırma) yapısı var. Karşılaştırmalar 'than' ile yapılır.",
      ),
      ClozeTestOption(
        choices: ['which', 'who', 'where', 'when', 'whom'],
        correctIndex: 0,
        explanation: "Virgülden sonra gelen cümlecik, beynin duygusal bilgiyi işlemesi tümcesini niteliyor. Bir durumu niteleyen non-defining relative clause 'which' ile başlar.",
      ),
      ClozeTestOption(
        choices: ['maintaining', 'destroying', 'ignoring', 'avoiding', 'challenging'],
        correctIndex: 0,
        explanation: "İyi uyku hijyeni, psikolojik iyi oluşu 'sürdürmek / korumak' (maintaining) için kritik bir bileşendir.",
      ),
    ],
  ),
  const ClozeTestPassage(
    title: 'Nutrition and the Immune System',
    textSegments: [
      'The human immune system is a complex network of cells and proteins that defends the body against infection. Adequate nutrition is crucial to ensure this system functions optimally. A diet lacking in essential nutrients can ',
      ' weaken the immune response, making an individual more susceptible to infections. Vitamins such as A, C, D, and E, as well as minerals like zinc and iron, are particularly important. ',
      ', Vitamin C stimulates the formation of antibodies, while Vitamin D enhances the pathogen-fighting effects of macrophages. Many people turn to supplements to boost their immunity; ',
      ', health experts emphasize that it is better to obtain these nutrients from a balanced diet rich in fruits, vegetables, and whole grains. Furthermore, gut health plays a significant role in immunity, ',
      ' a large portion of the immune system resides in the gastrointestinal tract. Consuming probiotics and prebiotics can help maintain a healthy gut microbiome, ',
      ' strengthening the body\'s natural defenses.'
    ],
    questions: [
      ClozeTestOption(
        choices: ['severely', 'barely', 'rarely', 'slightly', 'hardly'],
        correctIndex: 0,
        explanation: "Yetersiz beslenme bağışıklık yanıtını 'ciddi şekilde / şiddetle' zayıflatabilir. 'severely' bu anlama gelir.",
      ),
      ClozeTestOption(
        choices: ['For example', 'Nevertheless', 'Otherwise', 'In contrast', 'As a result'],
        correctIndex: 0,
        explanation: "Vitaminlerin öneminden bahsedildikten sonra C ve D vitaminlerinin işlevlerine 'örnek' verilmektedir (For example).",
      ),
      ClozeTestOption(
        choices: ['however', 'therefore', 'moreover', 'thus', 'additionally'],
        correctIndex: 0,
        explanation: "Birçok kişi takviyelere yönelir, 'ancak' (however) uzmanlar besinlerin doğal yoldan alınmasını vurgular. Zıtlık bağlacı gerekir.",
      ),
      ClozeTestOption(
        choices: ['because', 'although', 'so that', 'even if', 'unless'],
        correctIndex: 0,
        explanation: "Bağırsak sağlığının bağışıklıkta rol oynamasının 'sebebi' (because), bağışıklık sisteminin büyük kısmının orada bulunmasıdır.",
      ),
      ClozeTestOption(
        choices: ['thereby', 'instead', 'regardless', 'conversely', 'nonetheless'],
        correctIndex: 0,
        explanation: "Sağlıklı bir mikrobiyom korunur, 'böylece / dolayısıyla' (thereby) vücudun doğal savunması güçlenir. Kendisinden sonra V-ing (strengthening) ile çok sık kullanılır.",
      ),
    ],
  ),
  const ClozeTestPassage(
    title: 'Genetics and Personalized Medicine',
    textSegments: [
      'Personalized medicine, also known as precision medicine, is an innovative approach to tailoring disease prevention and treatment that takes into account differences in people\'s genes, environments, and lifestyles. Traditional medicine has largely relied on a "one-size-fits-all" approach, ',
      ' treatments are designed for the average patient. However, this method may not be effective for everyone due to genetic variability. Advances in genomic sequencing have made it possible ',
      ' doctors to analyze a patient\'s genetic makeup and predict how they will respond to a specific drug. For instance, in oncology, genetic testing can identify the specific mutations driving a tumor\'s growth. This allows oncologists to prescribe targeted therapies that attack the cancer cells ',
      ' harming healthy tissue. Although personalized medicine holds great promise, there are several challenges to overcome, ',
      ' high costs, data privacy concerns, and the need for specialized training for healthcare providers. As technology continues to evolve, precision medicine will likely become a standard part of clinical practice, ',
      ' transforming the future of healthcare.'
    ],
    questions: [
      ClozeTestOption(
        choices: ['where', 'which', 'who', 'whose', 'whom'],
        correctIndex: 0,
        explanation: "'One-size-fits-all' yaklaşımını nitelerken, 'ki bu yaklaşımda / bu durumda' anlamında 'where' relative pronoun kullanılır.",
      ),
      ClozeTestOption(
        choices: ['for', 'to', 'with', 'from', 'about'],
        correctIndex: 0,
        explanation: "'make it possible FOR someone TO do something' (birinin bir şey yapmasını mümkün kılmak) kalıbından dolayı 'for' gelmelidir.",
      ),
      ClozeTestOption(
        choices: ['without', 'with', 'by', 'through', 'upon'],
        correctIndex: 0,
        explanation: "Sağlıklı dokuya zarar 'vermeden' (without harming) kanser hücrelerine saldıran hedefe yönelik tedaviler anlatılmaktadır.",
      ),
      ClozeTestOption(
        choices: ['including', 'regarding', 'despite', 'instead of', 'rather than'],
        correctIndex: 0,
        explanation: "Üstesinden gelinecek zorluklara (yüksek maliyet, veri gizliliği) örnekler sayılırken 'dahil olmak üzere' (including) kullanılır.",
      ),
      ClozeTestOption(
        choices: ['ultimately', 'scarcely', 'previously', 'merely', 'barely'],
        correctIndex: 0,
        explanation: "Hassas tıbbın standart hale geleceği ve 'en nihayetinde / sonuç olarak' (ultimately) sağlığın geleceğini dönüştüreceği anlatılıyor.",
      ),
    ],
  ),
  const ClozeTestPassage(
    title: 'Obesity and Metabolic Syndrome',
    textSegments: [
      'Obesity is a complex disease involving an excessive amount of body fat. It is a medical problem that increases the risk of other diseases and health problems, such as heart disease, diabetes, and certain cancers. The body mass index (BMI) is commonly used to classify overweight and obesity in adults. ',
      ' BMI provides a useful population-level measure of overweight and obesity, it does not account for muscle mass or the distribution of fat. Central obesity, which refers to the accumulation of fat around the abdomen, is particularly dangerous because it is closely associated ',
      ' metabolic syndrome. Metabolic syndrome is a cluster of conditions that occur together, increasing the risk of heart disease, stroke, and type 2 diabetes. These conditions include increased blood pressure, high blood sugar, excess body fat around the waist, and abnormal cholesterol levels. The primary treatment for obesity and metabolic syndrome ',
      ' of lifestyle modifications, such as adopting a healthy diet and increasing physical activity. Weight loss of just 5 to 10 percent of total body weight can ',
      ' improve these metabolic markers. In cases where lifestyle changes are insufficient, medications or bariatric surgery may be recommended ',
      ' severe health complications.'
    ],
    questions: [
      ClozeTestOption(
        choices: ['Although', 'Because', 'If', 'As long as', 'Since'],
        correctIndex: 0,
        explanation: "BMI'nin yararlı bir ölçü olmasına 'rağmen' kas kütlesini hesaba katmadığı söylenerek zıtlık (Although) kurulmuştur.",
      ),
      ClozeTestOption(
        choices: ['with', 'to', 'from', 'for', 'on'],
        correctIndex: 0,
        explanation: "Bir şeyle ilişkili olmak anlamındaki kalıp 'associated with' şeklindedir.",
      ),
      ClozeTestOption(
        choices: ['consists', 'composes', 'makes', 'creates', 'involves'],
        correctIndex: 0,
        explanation: "Tedavinin yaşam tarzı değişikliklerinden 'oluştuğu' söyleniyor. 'den oluşmak' anlamındaki 'consist OF' fiili uygundur.",
      ),
      ClozeTestOption(
        choices: ['significantly', 'hardly', 'slightly', 'poorly', 'scarcely'],
        correctIndex: 0,
        explanation: "%5-10'luk küçük bir kilo kaybının bile metabolik belirteçleri 'önemli ölçüde / belirgin biçimde' (significantly) iyileştirebileceği vurgulanıyor.",
      ),
      ClozeTestOption(
        choices: ['to prevent', 'preventing', 'prevent', 'prevented', 'prevents'],
        correctIndex: 0,
        explanation: "İlaç veya ameliyatın şiddetli sağlık komplikasyonlarını önlemek 'amacıyla' (to prevent) önerilebileceği belirtiliyor. Amaç bildiren infitive yapısıdır.",
      ),
    ],
  ),
  const ClozeTestPassage(
    title: 'The Role of the Microbiome in Human Health',
    textSegments: [
      'The human body is home to trillions of microorganisms, collectively known as the microbiome. These bacteria, viruses, and fungi are not just passive hitchhikers; they play a crucial role in maintaining our health. The majority of these microbes reside in the gastrointestinal tract, ',
      ' they help digest food and synthesize essential vitamins. Furthermore, the gut microbiome is intimately linked to the immune system. A balanced microbiome protects against pathogens ',
      ' producing antimicrobial substances and competing for nutrients. However, when this delicate balance is disrupted, a condition known as dysbiosis occurs. Dysbiosis has been associated ',
      ' a wide range of diseases, including inflammatory bowel disease, obesity, and even mental health disorders. Factors that can negatively impact the microbiome include a poor diet, stress, and the overuse of antibiotics, which can wipe out beneficial bacteria. ',
      ', there is a growing interest in probiotics and prebiotics as a means to restore and maintain a healthy gut flora. By manipulating the microbiome, researchers hope to develop novel therapies for ',
      ' conditions that currently have limited treatment options.'
    ],
    questions: [
      ClozeTestOption(
        choices: ['where', 'which', 'who', 'when', 'whom'],
        correctIndex: 0,
        explanation: "Gastrointestinal sistemden (mide-bağırsak yolu) bahsediliyor. Bir mekan bildirdiği ve ardından tam cümle geldiği için 'where' (orada) kullanılmalıdır.",
      ),
      ClozeTestOption(
        choices: ['by', 'with', 'from', 'at', 'on'],
        correctIndex: 0,
        explanation: "Patojenlere karşı 'antimikrobiyal maddeler üreterek' (by producing) koruma sağlandığı anlatılmaktadır. Erek/Arak anlamı veren 'by + Ving' kalıbıdır.",
      ),
      ClozeTestOption(
        choices: ['with', 'to', 'for', 'in', 'on'],
        correctIndex: 0,
        explanation: "Bir şeyle ilişkilendirilmek anlamındaki kalıp 'associated with' şeklindedir.",
      ),
      ClozeTestOption(
        choices: ['Therefore', 'However', 'Otherwise', 'Similarly', 'Instead'],
        correctIndex: 0,
        explanation: "Önceki cümlede mikrobiyomun bozulmasının zararları sayıldı. 'Bu nedenle / sonuç olarak' (Therefore) probiyotiklere olan ilginin arttığı belirtiliyor.",
      ),
      ClozeTestOption(
        choices: ['chronic', 'acute', 'temporary', 'mild', 'fleeting'],
        correctIndex: 0,
        explanation: "Sınırlı tedavi seçeneği olan uzun süreli hastalıklardan bahsediliyor. 'Kronik' (chronic) kelimesi bağlama en uygun seçenektir.",
      ),
    ],
  ),
  const ClozeTestPassage(
    title: 'Advances in Medical Imaging and MRI',
    textSegments: [
      'Magnetic Resonance Imaging (MRI) has revolutionized the field of diagnostic medicine since its introduction. Unlike X-rays and computed tomography (CT) scans, MRI does not use ionizing radiation, ',
      ' makes it a safer alternative for frequent imaging and for use in vulnerable populations such as children and pregnant women. Instead, it employs powerful magnets and radio waves to generate detailed images of the body\'s internal structures. This imaging modality is particularly excellent at visualizing soft tissues, such as the brain, spinal cord, and muscles. Over the past few decades, technological advancements have significantly improved MRI capabilities. For instance, functional MRI (fMRI) allows researchers to observe brain activity ',
      ' measuring changes in blood flow. Despite its many advantages, MRI is not without limitations. The procedure can be time-consuming, and the loud noises and enclosed space of the scanner can cause claustrophobia in some patients. Moreover, it is strictly contraindicated for individuals with certain metallic implants, ',
      ' pacemakers or cochlear implants, due to the strong magnetic field. As research continues, the development of faster scanning techniques and open MRI designs is expected to ',
      ' these challenges and make the technology accessible to a broader range of patients ',
      ' compromising image quality.'
    ],
    questions: [
      ClozeTestOption(
        choices: ['which', 'who', 'whom', 'whose', 'where'],
        correctIndex: 0,
        explanation: "Radyasyon kullanmamasının, onu daha güvenli bir alternatif HALE GETİRDİĞİ (which makes it) söylenmektedir. Tüm bir önceki cümleyi niteleyen relative pronoun 'which' tir.",
      ),
      ClozeTestOption(
        choices: ['by', 'through', 'without', 'over', 'from'],
        correctIndex: 0,
        explanation: "Beyin aktivitesini kan akışındaki değişiklikleri 'ölçerek' (by measuring) gözlemlemeyi sağlar. Yöntem/araç bildiren 'by + Ving' kullanılır.",
      ),
      ClozeTestOption(
        choices: ['such as', 'rather than', 'in spite of', 'because of', 'similar to'],
        correctIndex: 0,
        explanation: "Belirli metalik implantlara 'örnek' olarak (kalp pili vb.) verildiği için 'such as' (gibi) kullanılmalıdır.",
      ),
      ClozeTestOption(
        choices: ['overcome', 'worsen', 'ignore', 'exaggerate', 'trigger'],
        correctIndex: 0,
        explanation: "Gelişmelerin, sayılan zorlukların 'üstesinden gelmesi' (overcome) beklenmektedir.",
      ),
      ClozeTestOption(
        choices: ['without', 'by', 'for', 'after', 'with'],
        correctIndex: 0,
        explanation: "Teknolojinin, görüntü kalitesinden 'ödün vermeden' (without compromising) hastalara ulaşılabilir olması hedefleniyor.",
      ),
    ],
  ),
  const ClozeTestPassage(
    title: 'The Epidemiology of Infectious Diseases',
    textSegments: [
      'Epidemiology is the fundamental science of public health, focusing on the distribution and determinants of health-related states or events. When studying infectious diseases, epidemiologists seek to understand how a pathogen is transmitted from one individual to another. Transmission can occur through direct contact, airborne droplets, or vectors ',
      ' mosquitoes and ticks. Identifying the mode of transmission is the first critical step in designing effective interventions. For example, diseases spread through contaminated water require improvements in sanitation and hygiene, ',
      ' respiratory infections necessitate measures like mask-wearing and social distancing. Another key concept in epidemiology is the basic reproduction number (R0), which indicates the average number of secondary cases generated by a single infected individual in a fully susceptible population. If the R0 is greater than one, the infection will likely spread and possibly cause an epidemic. ',
      ', if the R0 is less than one, the disease will eventually die out. To reduce the R0, public health authorities rely heavily on vaccination programs. By immunizing a large portion of the population, they can achieve herd immunity, thereby protecting vulnerable individuals ',
      ' cannot receive vaccines for medical reasons. Ultimately, the successful control of an infectious disease depends ',
      ' both scientific knowledge and the public\'s willingness to adhere to health guidelines.'
    ],
    questions: [
      ClozeTestOption(
        choices: ['like', 'unlike', 'as well', 'besides', 'except'],
        correctIndex: 0,
        explanation: "Vektörlere (taşıyıcı canlılara) örnek olarak sivrisinek ve kene gösterilmiştir. 'Gibi' anlamında 'like' (veya such as) kullanılır.",
      ),
      ClozeTestOption(
        choices: ['whereas', 'because', 'therefore', 'furthermore', 'whenever'],
        correctIndex: 0,
        explanation: "Kirli suyla bulaşan hastalıkların sanitasyon gerektirdiği, 'oysa / iken' solunum yolu enfeksiyonlarının maske gerektirdiği zıtlığı/karşılaştırması yapılıyor (whereas).",
      ),
      ClozeTestOption(
        choices: ['Conversely', 'Consequently', 'Moreover', 'Similarly', 'Thus'],
        correctIndex: 0,
        explanation: "R0 birden büyükse yayılır denildikten sonra, R0 birden küçükse hastalığın biteceği söylenerek tam tersi bir durum aktarılmıştır. 'Tam tersine' anlamındaki 'Conversely' doğrudur.",
      ),
      ClozeTestOption(
        choices: ['who', 'whom', 'whose', 'which', 'where'],
        correctIndex: 0,
        explanation: "Tıbbi nedenlerle aşı olamayan 'savunmasız bireyler' (vulnerable individuals) nitelenmektedir. İnsanlar için özne konumunda 'who' kullanılır.",
      ),
      ClozeTestOption(
        choices: ['on', 'in', 'at', 'with', 'from'],
        correctIndex: 0,
        explanation: "Bir şeye bağlı olmak anlamındaki fiil kalıbı 'depend on' şeklindedir.",
      ),
    ],
  ),
  const ClozeTestPassage(
    title: 'Stem Cell Therapy and Regenerative Medicine',
    textSegments: [
      'Regenerative medicine is an interdisciplinary field that aims to restore the structure and function of damaged tissues and organs. At the heart of this field lies stem cell therapy, a groundbreaking approach with the potential to treat a myriad of incurable diseases. Stem cells are unique ',
      ' they have the remarkable ability to develop into many different cell types in the body during early life and growth. They also serve as a sort of internal repair system, dividing essentially without limit to replenish other cells. There are several types of stem cells, but embryonic stem cells and adult stem cells are the most commonly studied. Embryonic stem cells are pluripotent, meaning they can give rise to any cell type in the fully developed body. ',
      ', their use has sparked significant ethical debates, prompting researchers to explore alternatives. One such alternative is induced pluripotent stem cells (iPSCs), which are adult cells that have been genetically reprogrammed to an embryonic stem cell-like state. This breakthrough has largely bypassed the ethical issues ',
      ' with embryonic cells while maintaining their therapeutic potential. Currently, stem cell therapy is successfully used in bone marrow transplants for leukemia patients. In the future, scientists hope to harness this technology to ',
      ' damaged heart muscle after a heart attack or replace neurons lost in neurodegenerative diseases like Parkinson\'s. Although many challenges remain before these treatments become mainstream, the rapid pace of discovery suggests that regenerative medicine will ',
      ' change the landscape of healthcare.'
    ],
    questions: [
      ClozeTestOption(
        choices: ['in that', 'so that', 'even though', 'unless', 'as if'],
        correctIndex: 0,
        explanation: "Kök hücrelerin eşsiz olduğu söyleniyor, sebebi ise (-mesi bakımından) birçok hücreye dönüşebilme yetenekleridir. Sebep ve özellik bildiren 'in that' (...olması bakımından) doğru bağlaçtır.",
      ),
      ClozeTestOption(
        choices: ['However', 'Therefore', 'Furthermore', 'Consequently', 'Likewise'],
        correctIndex: 0,
        explanation: "Embriyonik hücrelerin her şeye dönüşebilme gücü (olumlu) söylendikten sonra, kullanımlarının etik tartışmalar yarattığı (olumsuz) söylenmiştir. Zıtlık bağlacı 'However' (Ancak) gereklidir.",
      ),
      ClozeTestOption(
        choices: ['associated', 'interfered', 'conflicted', 'compared', 'replaced'],
        correctIndex: 0,
        explanation: "Embriyonik hücrelerle 'ilişkili' (associated with) olan etik sorunların aşıldığı belirtiliyor.",
      ),
      ClozeTestOption(
        choices: ['repair', 'damage', 'remove', 'conceal', 'destroy'],
        correctIndex: 0,
        explanation: "Gelecekte bu teknolojinin hasarlı kalp kasını 'onarmak' (repair) veya kaybedilen nöronları yerine koymak için kullanılması umulmaktadır.",
      ),
      ClozeTestOption(
        choices: ['profoundly', 'barely', 'scarcely', 'hardly', 'rarely'],
        correctIndex: 0,
        explanation: "Kök hücrelerin tıp dünyasını 'derinden / çok büyük ölçüde' (profoundly) değiştireceği düşünülmektedir. Diğer şıklar 'neredeyse hiç' gibi olumsuz zarflardır.",
      ),
    ],
  ),
];
