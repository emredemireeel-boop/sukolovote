class IrrelevantSentenceQuestion {
  final List<String> sentences;
  final int correctIndex;
  final String explanation;
  final String translation;

  const IrrelevantSentenceQuestion({
    required this.sentences,
    required this.correctIndex,
    required this.explanation,
    required this.translation,
  });
}

const List<IrrelevantSentenceQuestion> irrelevantSentenceQuestions = [
  IrrelevantSentenceQuestion(
    sentences: [
      "Alzheimer's disease is characterized by the accumulation of amyloid-beta plaques and neurofibrillary tangles in the brain.",
      "These pathological hallmarks disrupt cellular communication and eventually lead to widespread neuronal death.",
      "Recent advancements in gene therapy have shown promise in treating various forms of inherited retinal dystrophies.",
      "As the disease progresses, patients typically exhibit severe memory impairment and a decline in cognitive function.",
      "Current therapeutic interventions primarily focus on symptomatic relief rather than halting the underlying neurodegeneration."
    ],
    correctIndex: 2,
    explanation: "Paragraf Alzheimer hastalığının patolojisi (amiloid plaklar, nöron ölümü) ve gidişatı üzerine kuruludur. (III) numaralı cümle ise kalıtsal retina hastalıklarında (göz hastalıkları) gen terapisinden bahsetmektedir ve Alzheimer konusuyla hiçbir ilgisi yoktur.",
    translation: "(I) Alzheimer hastalığı, beyinde amiloid-beta plaklarının ve nörofibriler yumakların birikmesiyle karakterizedir. (II) Bu patolojik belirtiler hücresel iletişimi bozar ve nihayetinde yaygın nöron ölümüne yol açar. (III) Gen terapisindeki son ilerlemeler, kalıtsal retina distrofilerinin çeşitli formlarının tedavisinde umut vaat etmektedir. (IV) Hastalık ilerledikçe, hastalar tipik olarak şiddetli hafıza bozukluğu ve bilişsel işlevde düşüş sergilerler. (V) Mevcut terapötik müdahaleler, altta yatan nörodejenerasyonu durdurmaktan ziyade öncelikle semptomatik rahatlamaya odaklanmaktadır.",
  ),
  IrrelevantSentenceQuestion(
    sentences: [
      "The widespread misuse of antibiotics in both clinical settings and agriculture has accelerated the emergence of multidrug-resistant bacteria.",
      "Microorganisms naturally mutate and acquire resistance genes, rendering standard pharmacological treatments ineffective.",
      "Consequently, infections that were once easily treatable are now associated with significantly higher mortality rates.",
      "Probiotics are live microorganisms that confer a health benefit on the host when administered in adequate amounts.",
      "To combat this global threat, healthcare organizations urgently advocate for the development of novel antimicrobial agents and strict antimicrobial stewardship."
    ],
    correctIndex: 3,
    explanation: "Parça, antibiyotik direncinin ortaya çıkışı ve bu direncin getirdiği ölümcül sonuçlar ile bununla mücadele yolları üzerine kurgulanmıştır. (IV) numaralı cümle ise probiyotiklerin (faydalı bakteriler) sağlığa faydalarının tanımını yaparak konunun akışını (direnç ve tehlike) bozmaktadır.",
    translation: "(I) Antibiyotiklerin hem klinik ortamlarda hem de tarımda yaygın olarak yanlış kullanımı, çoklu ilaca dirençli bakterilerin ortaya çıkışını hızlandırmıştır. (II) Mikroorganizmalar doğal olarak mutasyona uğrar ve direnç genleri kazanarak standart farmakolojik tedavileri etkisiz hale getirir. (III) Sonuç olarak, bir zamanlar kolayca tedavi edilebilen enfeksiyonlar artık önemli ölçüde daha yüksek ölüm oranlarıyla ilişkilendirilmektedir. (IV) Probiyotikler, yeterli miktarda uygulandığında konağa sağlık yararı sağlayan canlı mikroorganizmalardır. (V) Bu küresel tehditle mücadele etmek için sağlık kuruluşları, acilen yeni antimikrobiyal ajanların geliştirilmesini ve sıkı antimikrobiyal yönetimini savunmaktadır.",
  ),
  IrrelevantSentenceQuestion(
    sentences: [
      "Asthma is a chronic inflammatory disorder of the airways characterized by bronchial hyperresponsiveness and reversible airflow obstruction.",
      "During an asthma exacerbation, inflammatory cells such as eosinophils and mast cells release mediators that cause smooth muscle constriction.",
      "This constriction leads to hallmark symptoms, including wheezing, shortness of breath, and chest tightness.",
      "Pulmonary embolism, on the other hand, occurs when a blood clot lodges in an artery in the lung, blocking blood flow.",
      "Management of the condition heavily relies on inhaled corticosteroids to reduce inflammation and short-acting beta-agonists for acute symptom relief."
    ],
    correctIndex: 3,
    explanation: "Metin astım hastalığının patofizyolojisi, semptomları ve yönetimi (inhaler kullanımı) hakkındadır. (IV) numaralı cümle akciğer embolisi (kan pıhtısı atması) hastalığını tanımlayarak astım tedavisinden bahseden akışı bölmüştür.",
    translation: "(I) Astım, bronşiyal aşırı duyarlılık ve geri dönüşümlü hava akımı tıkanıklığı ile karakterize, hava yollarının kronik inflamatuar bir bozukluğudur. (II) Astım alevlenmesi sırasında, eozinofiller ve mast hücreleri gibi inflamatuar hücreler, düz kas daralmasına neden olan aracıları serbest bırakır. (III) Bu daralma, hırıltı, nefes darlığı ve göğüste sıkışma hissi gibi temel semptomlara yol açar. (IV) Pulmoner emboli ise, bir kan pıhtısının akciğerdeki bir atardamara yerleşerek kan akışını engellemesiyle oluşur. (V) Durumun yönetimi büyük ölçüde iltihabı azaltmak için inhale kortikosteroidlere ve akut semptomların giderilmesi için kısa etkili beta-agonistlere dayanır.",
  ),
  IrrelevantSentenceQuestion(
    sentences: [
      "Type 2 diabetes mellitus is a metabolic disorder characterized by chronic hyperglycemia resulting from insulin resistance and relative insulin deficiency.",
      "Over time, elevated blood glucose levels cause extensive microvascular and macrovascular damage throughout the body.",
      "The pancreas is a glandular organ located in the abdomen that produces several important hormones, including insulin and glucagon.",
      "Such vascular complications dramatically increase the risk of developing retinopathy, nephropathy, and cardiovascular diseases.",
      "Therefore, strict glycemic control through lifestyle modifications and pharmacotherapy is imperative to mitigate these long-term consequences."
    ],
    correctIndex: 2,
    explanation: "Cümleler Tip 2 diyabetin yarattığı mikrovasküler ve makrovasküler hasarlar üzerinden birbirine bağlanmıştır ('vascular complications' -> 'such vascular complications'). (III) numaralı cümle pankreasın anatomik tanımını vererek bu klinik akışı koparmaktadır.",
    translation: "(I) Tip 2 diabetes mellitus, insülin direnci ve göreceli insülin eksikliğinden kaynaklanan kronik hiperglisemi ile karakterize metabolik bir hastalıktır. (II) Zamanla, yüksek kan şekeri seviyeleri vücut genelinde yaygın mikrovasküler ve makrovasküler hasara neden olur. (III) Pankreas, karın boşluğunda bulunan ve insülin ile glukagon da dahil olmak üzere birkaç önemli hormon üreten salgı bezi niteliğinde bir organdır. (IV) Bu tür vasküler (damarsal) komplikasyonlar; retinopati, nefropati ve kardiyovasküler hastalıklar geliştirme riskini önemli ölçüde artırır. (V) Bu nedenle, bu uzun vadeli sonuçları hafifletmek için yaşam tarzı değişiklikleri ve farmakoterapi yoluyla sıkı glisemik kontrol şarttır.",
  ),
  IrrelevantSentenceQuestion(
    sentences: [
      "Parkinson's disease is a progressive neurodegenerative disorder primarily affecting the motor system due to the loss of dopaminergic neurons in the substantia nigra.",
      "This neuronal depletion leads to a significant reduction in dopamine levels within the striatum, impairing smooth, coordinated muscle movements.",
      "Typical motor symptoms include resting tremor, bradykinesia, rigidity, and postural instability, which progressively worsen over time.",
      "Dopamine is also considered a neurotransmitter associated with the brain's reward center, playing a key role in addiction and motivation.",
      "While levodopa remains the gold standard for managing these motor symptoms, its long-term use is frequently complicated by motor fluctuations and dyskinesia."
    ],
    correctIndex: 3,
    explanation: "Paragraf Parkinson hastalığı ve motor sistem üzerine etkilerini (tremor, rijidite) ve tedavisini (levodopa) anlatmaktadır. Ancak (IV) numaralı cümlede dopaminin 'ödül ve bağımlılık' merkezindeki psikiyatrik işlevinden bahsedilmiştir ki bu, motor semptomlar bağlamına uymaz.",
    translation: "(I) Parkinson hastalığı, substantia nigra'daki dopaminerjik nöronların kaybı nedeniyle öncelikle motor sistemi etkileyen ilerleyici bir nörodejeneratif bozukluktur. (II) Bu nöronal tükenme, striatumdaki dopamin seviyelerinde önemli bir azalmaya yol açarak pürüzsüz, koordineli kas hareketlerini bozar. (III) Tipik motor semptomlar arasında zamanla giderek kötüleşen istirahat titremesi, bradikinezi, sertlik ve duruş bozukluğu bulunur. (IV) Dopamin ayrıca beynin ödül merkeziyle ilişkili, bağımlılık ve motivasyonda kilit rol oynayan bir nörotransmitter olarak da kabul edilir. (V) Levodopa, bu motor semptomları yönetmek için altın standart olmaya devam etse de, uzun vadeli kullanımı sıklıkla motor dalgalanmalar ve diskinezi ile karmaşıklaşır.",
  ),
  IrrelevantSentenceQuestion(
    sentences: [
      "Vaccines function by stimulating the host's immune system to recognize and remember specific pathogens without causing the actual disease.",
      "Upon administration, antigen-presenting cells engulf the vaccine components and display fragments to T-helper cells, initiating an adaptive immune response.",
      "Autoimmune diseases occur when the immune system mistakenly attacks the body's own healthy tissues.",
      "This response culminates in the production of neutralizing antibodies by B cells and the generation of long-lived memory cells.",
      "Consequently, if the individual is later exposed to the wild-type pathogen, the immune system mounts a rapid and robust defense, preventing widespread infection."
    ],
    correctIndex: 2,
    explanation: "Metin aşıların bağışıklık sistemini nasıl aktive ettiğini aşama aşama (antijen sunumu -> adaptif yanıt -> antikor üretimi -> hafıza hücresi) anlatmaktadır. (III) numaralı otoimmün hastalık tanımı konudan tamamen sapmıştır.",
    translation: "(I) Aşılar, konağın bağışıklık sistemini, gerçek hastalığa neden olmadan belirli patojenleri tanıması ve hatırlaması için uyararak işlev görür. (II) Uygulamanın ardından, antijen sunan hücreler aşı bileşenlerini yutar ve fragmanları T-yardımcı hücrelere sergileyerek adaptif bir bağışıklık tepkisi başlatır. (III) Otoimmün hastalıklar, bağışıklık sistemi yanlışlıkla vücudun kendi sağlıklı dokularına saldırdığında ortaya çıkar. (IV) Bu tepki, B hücreleri tarafından nötralize edici antikorların üretilmesiyle ve uzun ömürlü hafıza hücrelerinin oluşmasıyla sonuçlanır. (V) Sonuç olarak, birey daha sonra vahşi tip patojene maruz kalırsa, bağışıklık sistemi yaygın enfeksiyonu önleyerek hızlı ve sağlam bir savunma kurar.",
  ),
  IrrelevantSentenceQuestion(
    sentences: [
      "Osteoporosis is a systemic skeletal disease characterized by low bone mass and microarchitectural deterioration of bone tissue.",
      "This structural degradation leads to enhanced bone fragility and a significantly increased susceptibility to fractures, particularly in the hip, spine, and wrist.",
      "Postmenopausal women are disproportionately affected due to the sudden decline in estrogen, a hormone essential for maintaining bone density.",
      "Adequate vitamin C intake is crucial for collagen synthesis and helps prevent scurvy, a disease historically common among sailors.",
      "Preventive strategies emphasize adequate calcium and vitamin D supplementation, along with weight-bearing exercises to maximize peak bone mass."
    ],
    correctIndex: 3,
    explanation: "Metin osteoporozun tanımını, kadınlarda neden daha sık görüldüğünü ve nasıl önleneceği (kalsiyum ve D vitamini) üzerine kuruludur. (IV) numaralı cümlenin konusu iskorbüt hastalığı (scurvy) ve C vitamini eksikliğidir; dolayısıyla osteoporozla alakalı değildir.",
    translation: "(I) Osteoporoz, düşük kemik kütlesi ve kemik dokusunun mikro-mimari bozulması ile karakterize sistemik bir iskelet hastalığıdır. (II) Bu yapısal bozulma, kemik kırılganlığının artmasına ve özellikle kalça, omurga ve el bileğinde kırıklara karşı duyarlılığın önemli ölçüde artmasına yol açar. (III) Menopoz sonrası kadınlar, kemik yoğunluğunu korumak için gerekli bir hormon olan östrojendeki ani düşüş nedeniyle orantısız bir şekilde etkilenir. (IV) Yeterli C vitamini alımı, kolajen sentezi için çok önemlidir ve tarihsel olarak denizciler arasında yaygın bir hastalık olan iskorbütün önlenmesine yardımcı olur. (V) Önleyici stratejiler, zirve kemik kütlesini en üst düzeye çıkarmak için ağırlık taşıma egzersizlerinin yanı sıra yeterli kalsiyum ve D vitamini takviyesini vurgular.",
  ),
  IrrelevantSentenceQuestion(
    sentences: [
      "Hypertension, often dubbed the \"silent killer,\" is a prevalent cardiovascular condition characterized by persistently elevated arterial blood pressure.",
      "Because it typically presents without obvious symptoms, many individuals remain undiagnosed until severe end-organ damage has occurred.",
      "Chronic high blood pressure forces the heart to work harder to pump blood, ultimately leading to left ventricular hypertrophy and heart failure.",
      "Blood pressure monitors have evolved significantly, with modern digital sphygmomanometers allowing patients to easily track their readings at home.",
      "Furthermore, the constant shear stress on blood vessel walls accelerates atherosclerosis, increasing the risk of myocardial infarction and stroke."
    ],
    correctIndex: 3,
    explanation: "Paragraf hipertansiyonun zararları, organlara olan etkisi ve oluşturduğu patofizyolojik stresler (kalp yetmezliği, ateroskleroz) hakkındadır. (IV) numaralı cümle ise tansiyon aletlerinin evrimiyle ilgilidir ve klinik hastalık akışını koparır.",
    translation: "(I) Genellikle \"sessiz katil\" olarak adlandırılan hipertansiyon, sürekli olarak yüksek arteryel kan basıncı ile karakterize yaygın bir kardiyovasküler durumdur. (II) Tipik olarak belirgin semptomlar olmaksızın ortaya çıktığından, birçok birey şiddetli uç organ hasarı meydana gelene kadar teşhis edilmeden kalır. (III) Kronik yüksek tansiyon, kalbi kan pompalamak için daha fazla çalışmaya zorlar ve sonuçta sol ventrikül hipertrofisine ve kalp yetmezliğine yol açar. (IV) Kan basıncı monitörleri (tansiyon aletleri), hastaların okumalarını evde kolayca takip etmelerini sağlayan modern dijital sfigmomanometrelerle önemli ölçüde gelişmiştir. (V) Ayrıca, kan damarı duvarlarındaki sürekli kayma stresi, miyokard enfarktüsü ve felç riskini artırarak aterosklerozu hızlandırır.",
  ),
  IrrelevantSentenceQuestion(
    sentences: [
      "The advent of CRISPR-Cas9 technology has revolutionized the field of medical genetics by providing an exceptionally precise tool for targeted gene editing.",
      "Researchers can utilize this system to correct disease-causing mutations at the DNA level, offering potential cures for monogenic disorders like cystic fibrosis.",
      "Genetic counseling is a critical service that helps individuals understand the implications of inherited disorders and their risks of passing them on.",
      "Despite its immense therapeutic potential, the clinical application of CRISPR is currently hindered by concerns regarding off-target effects and unintended genetic alterations.",
      "Consequently, stringent regulatory frameworks and further refinements in the delivery mechanisms are necessary before it can be safely integrated into mainstream medical practice."
    ],
    correctIndex: 2,
    explanation: "Metin CRISPR gen düzenleme teknolojisinin faydaları (mutasyon düzeltme) ve klinik uygulamadaki engelleri (off-target etkiler, düzenleyici çerçeveler) üzerine yazılmıştır. (III) numaralı cümlenin odak noktası ise genetik danışmanlıktır ve bütünlüğü bozar.",
    translation: "(I) CRISPR-Cas9 teknolojisinin ortaya çıkışı, hedeflenen gen düzenlemesi için olağanüstü kesin bir araç sağlayarak tıbbi genetik alanında devrim yaratmıştır. (II) Araştırmacılar, DNA seviyesinde hastalığa neden olan mutasyonları düzeltmek için bu sistemi kullanabilir ve kistik fibrozis gibi monogenik bozukluklar için potansiyel tedaviler sunabilir. (III) Genetik danışmanlık, bireylerin kalıtsal hastalıkların sonuçlarını ve bunları aktarma risklerini anlamalarına yardımcı olan kritik bir hizmettir. (IV) Muazzam terapötik potansiyeline rağmen, CRISPR'ın klinik uygulaması şu anda hedef dışı etkiler ve istenmeyen genetik değişikliklerle ilgili endişeler nedeniyle engellenmektedir. (V) Sonuç olarak, yaygın tıbbi uygulamaya güvenli bir şekilde entegre edilebilmesi için sıkı düzenleyici çerçeveler ve iletim mekanizmalarında daha fazla iyileştirme gereklidir.",
  ),
  IrrelevantSentenceQuestion(
    sentences: [
      "Tuberculosis (TB) is a highly contagious, airborne infectious disease caused by the bacterium Mycobacterium tuberculosis, which primarily targets the lungs.",
      "When an infected individual coughs or sneezes, droplet nuclei containing the bacilli are expelled into the air and can be inhaled by susceptible hosts.",
      "Once inside the alveoli, the bacteria are engulfed by macrophages, where they can evade destruction and establish a latent infection.",
      "The global incidence of malaria has declined recently due to the widespread distribution of insecticide-treated bed nets and artemisinin-based therapies.",
      "However, if the host's immune system becomes compromised, the latent bacilli can reactivate, leading to symptomatic, active pulmonary disease."
    ],
    correctIndex: 3,
    explanation: "Metin tüberkülozun (verem) havayoluyla nasıl bulaştığı ve akciğerlerde nasıl latent (gizli) enfeksiyon oluşturduğu hakkındadır. (IV) numaralı cümle sıtmaya (malaria) ve sivrisinek ağlarına atıfta bulunarak tamamen alakasız bir araya giriş yapmıştır.",
    translation: "(I) Tüberküloz (TB), öncelikle akciğerleri hedef alan Mycobacterium tuberculosis bakterisinin neden olduğu oldukça bulaşıcı, hava yoluyla bulaşan bulaşıcı bir hastalıktır. (II) Enfekte bir birey öksürdüğünde veya hapşırdığında, basilleri içeren damlacık çekirdekleri havaya atılır ve duyarlı konaklar tarafından solunabilir. (III) Bakteriler alveollerin içine girdikten sonra, yok edilmekten kaçabilecekleri ve gizli bir enfeksiyon oluşturabilecekleri makrofajlar tarafından yutulurlar. (IV) Böcek ilacı ile muamele edilmiş cibinliklerin ve artemisinin bazlı tedavilerin yaygın dağıtımı nedeniyle sıtmanın küresel insidansı son zamanlarda düşmüştür. (V) Bununla birlikte, konağın bağışıklık sistemi tehlikeye girerse, gizli basiller yeniden aktive olabilir ve semptomatik, aktif akciğer hastalığına yol açabilir.",
  ),
];
