import 'irrelevant_sentence_data.dart';

const List<IrrelevantSentenceQuestion> extraIrrelevantSentenceQuestions = [
  IrrelevantSentenceQuestion(
    sentences: [
      "(I) Chronic kidney disease (CKD) is a progressive loss in kidney function over a period of months or years.",
      "(II) The most common causes of CKD include high blood pressure and diabetes, which place severe stress on the renal system.",
      "(III) Hemodialysis is the most common method used to treat advanced and permanent kidney failure.",
      "(IV) Symptoms may not emerge until the disease is well advanced, making routine screening crucial for at-risk patients.",
      "(V) In its final stage, known as end-stage renal disease (ESRD), the kidneys are no longer able to filter wastes effectively."
    ],
    correctIndex: 2,
    explanation: "Paragraf Kronik Böbrek Hastalığının (CKD) tanımı, nedenleri ve ilerleyişi hakkındadır. Ancak (III) numaralı cümle, son aşama böbrek yetmezliği tedavisinde kullanılan hemodiyaliz yöntemine atlayarak genel tanım ve ilerleyiş bağlamını kesmektedir.",
    translation: "(I) Kronik böbrek hastalığı (KBH), aylar veya yıllar içinde böbrek fonksiyonlarındaki ilerleyici kayıptır. (II) KBH'nin en yaygın nedenleri arasında renal sistem üzerinde şiddetli strese yol açan yüksek tansiyon ve diyabet yer alır. (III) Hemodiyaliz, ileri ve kalıcı böbrek yetmezliğini tedavi etmek için kullanılan en yaygın yöntemdir. (IV) Hastalık oldukça ilerleyene kadar semptomlar ortaya çıkmayabilir, bu da risk altındaki hastalar için rutin taramayı çok önemli hale getirir. (V) Son dönem böbrek hastalığı (SDBY) olarak bilinen son aşamasında böbrekler artık atıkları etkili bir şekilde filtreleyemez."
  ),
  IrrelevantSentenceQuestion(
    sentences: [
      "(I) Type 2 diabetes is a metabolic disorder characterized by hyperglycemia resulting from insulin resistance.",
      "(II) Over time, poorly controlled blood glucose levels can damage blood vessels and nerves throughout the body.",
      "(III) The incidence of type 1 diabetes is rising particularly among children and adolescents in developed countries.",
      "(IV) This systemic damage increases the risk of cardiovascular diseases, retinopathy, and diabetic nephropathy.",
      "(V) Lifestyle modifications, particularly weight loss and regular physical activity, remain the cornerstone of initial management."
    ],
    correctIndex: 2,
    explanation: "Paragraf bütünüyle Tip 2 diyabet ve onun vücutta yol açtığı hasarlar üzerine kuruludur. Ancak (III) numaralı cümle Tip 1 diyabetin çocuklardaki artışından bahsederek konuyu bölmektedir.",
    translation: "(I) Tip 2 diyabet, insülin direncinden kaynaklanan hiperglisemi ile karakterize metabolik bir bozukluktur. (II) Zamanla, yetersiz kontrol edilen kan glukoz seviyeleri tüm vücuttaki kan damarlarına ve sinirlere zarar verebilir. (III) Tip 1 diyabetin görülme sıklığı özellikle gelişmiş ülkelerde çocuk ve ergenlerde artmaktadır. (IV) Bu sistemik hasar kardiyovasküler hastalıklar, retinopati ve diyabetik nefropati riskini artırır. (V) Yaşam tarzı değişiklikleri, özellikle kilo kaybı ve düzenli fiziksel aktivite, ilk yönetimin temel taşı olmaya devam etmektedir."
  ),
  IrrelevantSentenceQuestion(
    sentences: [
      "(I) Osteoporosis is a skeletal condition that severely weakens bones, making them fragile and more likely to break.",
      "(II) It develops slowly over several years and is often only diagnosed when a fall or sudden impact causes a bone to fracture.",
      "(III) Regular cardiovascular exercise, like running, can significantly improve lung capacity and heart health.",
      "(IV) Women are particularly susceptible to this condition after menopause due to a rapid decline in estrogen levels.",
      "(V) Adequate calcium intake and weight-bearing exercises are recommended to help maintain bone density and prevent deterioration."
    ],
    correctIndex: 2,
    explanation: "Paragraf osteoporoz (kemik erimesi), bunun gelişimi ve risk grupları hakkındadır. (III) numaralı cümle ise kardiyovasküler egzersizlerin kalp ve akciğer sağlığına faydasından bahsederek kemik sağlığı bağlamından tamamen sapmaktadır.",
    translation: "(I) Osteoporoz, kemikleri ciddi şekilde zayıflatan, kırılgan ve kırılma olasılığını artıran iskeletsel bir durumdur. (II) Birkaç yıl boyunca yavaşça gelişir ve genellikle ancak bir düşme veya ani çarpma kemiğin kırılmasına neden olduğunda teşhis edilir. (III) Koşu gibi düzenli kardiyovasküler egzersizler akciğer kapasitesini ve kalp sağlığını önemli ölçüde iyileştirebilir. (IV) Kadınlar, menopoz sonrasında östrojen seviyelerindeki hızlı düşüş nedeniyle bu duruma karşı özellikle hassastır. (V) Kemik yoğunluğunu korumak ve bozulmayı önlemek için yeterli kalsiyum alımı ve ağırlık taşıma egzersizleri önerilir."
  ),
  IrrelevantSentenceQuestion(
    sentences: [
      "(I) Asthma is a chronic respiratory disease that causes inflammation and narrowing of the airways.",
      "(II) This chronic inflammation makes the airways highly sensitive to various environmental triggers.",
      "(III) When exposed to allergens such as pollen or dust mites, the airways constrict and produce excess mucus.",
      "(IV) The immune system uses antibodies to neutralize pathogenic microorganisms entering the bloodstream.",
      "(V) Consequently, the patient experiences symptoms such as wheezing, shortness of breath, and chest tightness."
    ],
    correctIndex: 3,
    explanation: "Paragraf astımın hava yollarında yarattığı iltihaplanma, alerjenlere tepkisi ve oluşan semptomlar (hırıltı, nefes darlığı) hakkındadır. (IV) numaralı cümle ise bağışıklık sisteminin kan dolaşımındaki mikroorganizmaları antikorlarla yok etmesinden genel olarak bahseder ve astım krizi bağlamına uymaz.",
    translation: "(I) Astım, hava yollarının iltihaplanmasına ve daralmasına neden olan kronik bir solunum yolu hastalığıdır. (II) Bu kronik iltihaplanma, hava yollarını çeşitli çevresel tetikleyicilere karşı oldukça hassas hale getirir. (III) Polen veya toz akarları gibi alerjenlere maruz kalındığında hava yolları daralır ve aşırı mukus üretir. (IV) Bağışıklık sistemi, kan dolaşımına giren patojenik mikroorganizmaları etkisiz hale getirmek için antikorları kullanır. (V) Sonuç olarak hasta hırıltı, nefes darlığı ve göğüste sıkışma gibi semptomlar yaşar."
  ),
  IrrelevantSentenceQuestion(
    sentences: [
      "(I) The gut microbiome refers to the trillions of microorganisms residing within the human gastrointestinal tract.",
      "(II) These microbes play an essential role in digesting complex carbohydrates and synthesizing vital vitamins.",
      "(III) Probiotics are live microorganisms promoted with claims that they provide health benefits when consumed.",
      "(IV) Furthermore, they constantly interact with the immune system, helping to regulate its responses and prevent autoimmune reactions.",
      "(V) Disruptions in this delicate microbial balance, known as dysbiosis, have been linked to conditions like inflammatory bowel disease."
    ],
    correctIndex: 2,
    explanation: "Paragraf bağırsak mikrobiyomunun (vücuttaki mikroorganizmalar) ne olduğu, sindirim ve bağışıklık sistemindeki rolleri ve bozulmasının (disbiyozis) sonuçları hakkındadır. (III) numaralı cümle dışarıdan alınan 'probiyotikler' hakkındadır ve 2. ile 4. cümle arasındaki 'Bunlar (mikroplar) bağışıklık sistemiyle etkileşime girer...' akışını bozmaktadır.",
    translation: "(I) Bağırsak mikrobiyomu, insan gastrointestinal sisteminde yaşayan trilyonlarca mikroorganizmayı ifade eder. (II) Bu mikroplar, karmaşık karbonhidratların sindirilmesinde ve hayati vitaminlerin sentezlenmesinde önemli bir rol oynarlar. (III) Probiyotikler, tüketildiğinde sağlık yararları sağladıkları iddialarıyla teşvik edilen canlı mikroorganizmalardır. (IV) Ayrıca, bağışıklık sistemiyle sürekli etkileşim halindedirler, tepkilerini düzenlemeye ve otoimmün reaksiyonları önlemeye yardımcı olurlar. (V) Disbiyozis olarak bilinen bu hassas mikrobiyal dengedeki bozulmalar, inflamatuar bağırsak hastalığı gibi durumlarla ilişkilendirilmiştir."
  ),
  IrrelevantSentenceQuestion(
    sentences: [
      "(I) Parkinson's disease is the second most common neurodegenerative disorder after Alzheimer's disease.",
      "(II) It primarily affects the motor system due to the progressive loss of dopamine-producing neurons in the midbrain.",
      "(III) As a result, patients present with a triad of cardinal motor symptoms: resting tremor, bradykinesia, and muscle rigidity.",
      "(IV) Multiple sclerosis, on the other hand, involves the destruction of the myelin sheath covering nerve fibers.",
      "(V) While motor symptoms are prominent, non-motor symptoms like depression and sleep disturbances also significantly affect the patient's quality of life."
    ],
    correctIndex: 3,
    explanation: "Paragraf Parkinson hastalığının neden olduğu nöron kayıpları ve bunun yol açtığı motor ve motor-olmayan semptomlar üzerinedir. (IV) numaralı cümle ise araya Multipl Skleroz (MS) hastalığının tanımını sokarak konu bütünlüğünü bozmaktadır.",
    translation: "(I) Parkinson hastalığı Alzheimer hastalığından sonra en yaygın ikinci nörodejeneratif bozukluktur. (II) Orta beyinde dopamin üreten nöronların ilerleyici kaybı nedeniyle öncelikle motor sistemi etkiler. (III) Sonuç olarak hastalar üç ana motor semptomla başvururlar: istirahat titremesi, bradikinezi (hareket yavaşlığı) ve kas sertliği. (IV) Öte yandan multipl skleroz, sinir liflerini kaplayan miyelin kılıfının yıkımını içerir. (V) Motor semptomlar belirgin olmakla birlikte, depresyon ve uyku bozuklukları gibi motor dışı semptomlar da hastanın yaşam kalitesini önemli ölçüde etkiler."
  ),
  IrrelevantSentenceQuestion(
    sentences: [
      "(I) Vaccination is widely considered one of the greatest public health achievements in human history.",
      "(II) By introducing an inactivated or weakened pathogen, vaccines stimulate the immune system to build a defense mechanism.",
      "(III) Antibiotic resistance occurs when bacteria mutate in response to the use of these medicines.",
      "(IV) This preemptive response generates memory B-cells and T-cells that can quickly recognize and neutralize the actual pathogen if encountered later.",
      "(V) As a result, diseases that once caused widespread morbidity and mortality, such as polio and smallpox, have been virtually eliminated in many regions."
    ],
    correctIndex: 2,
    explanation: "Paragraf aşılamanın mantığı, bağışıklık sistemini nasıl eğittiği ve sağladığı halk sağlığı başarıları hakkındadır. (III) numaralı cümle 'Antibiyotik direnci' ile ilgilidir ve aşı (vaccine) bağlamıyla hiçbir alakası yoktur.",
    translation: "(I) Aşılama, insan tarihindeki en büyük halk sağlığı başarılarından biri olarak kabul edilir. (II) Aşılar, inaktif veya zayıflatılmış bir patojen vererek bağışıklık sistemini bir savunma mekanizması oluşturması için uyarır. (III) Antibiyotik direnci, bakterilerin bu ilaçların kullanımına yanıt olarak mutasyona uğramasıyla oluşur. (IV) Bu önleyici yanıt, daha sonra karşılaşıldığında gerçek patojeni hızla tanıyabilen ve etkisiz hale getirebilen hafıza B hücreleri ve T hücreleri üretir. (V) Sonuç olarak, bir zamanlar yaygın morbidite ve mortaliteye neden olan çocuk felci ve çiçek hastalığı gibi hastalıklar birçok bölgede neredeyse ortadan kaldırılmıştır."
  ),
  IrrelevantSentenceQuestion(
    sentences: [
      "(I) Hypertension, or chronically elevated blood pressure, is often referred to as a 'silent killer'.",
      "(II) It earns this moniker because it usually presents no obvious symptoms until significant damage has occurred.",
      "(III) Over time, the excessive force of blood flowing through the vascular system severely damages the inner lining of the arteries.",
      "(IV) Blood tests can easily reveal the presence of elevated cholesterol levels long before symptoms arise.",
      "(V) This ongoing arterial damage ultimately accelerates atherosclerosis, leading to an increased risk of heart attacks and strokes."
    ],
    correctIndex: 3,
    explanation: "Paragraf hipertansiyonun neden 'sessiz katil' olarak adlandırıldığı ve zamanla arterlerde yarattığı hasar üzerinedir. (IV) numaralı cümle yüksek kolesterolü tespit eden kan testlerinden bahsederek hipertansiyonun arterlere verdiği hasarın anlatıldığı akışı böler.",
    translation: "(I) Hipertansiyon veya kronik olarak yüksek tansiyon, genellikle 'sessiz katil' olarak adlandırılır. (II) Bu lakabı alır çünkü önemli bir hasar oluşana kadar genellikle hiçbir belirgin semptom göstermez. (III) Zamanla, damar sisteminden akan kanın aşırı kuvveti atardamarların iç astarına ciddi şekilde zarar verir. (IV) Kan testleri, semptomlar ortaya çıkmadan çok önce yüksek kolesterol seviyelerinin varlığını kolayca ortaya çıkarabilir. (V) Bu süregelen arteriyel hasar nihayetinde aterosklerozu hızlandırarak kalp krizi ve felç riskinin artmasına yol açar."
  ),
  IrrelevantSentenceQuestion(
    sentences: [
      "(I) Sleep deprivation exerts profound negative effects on both cognitive function and metabolic health.",
      "(II) Lack of adequate restorative sleep impairs attention, working memory, and emotional regulation.",
      "(III) The circadian rhythm is governed by a central pacemaker located in the suprachiasmatic nucleus of the hypothalamus.",
      "(IV) Furthermore, chronic sleep restriction disrupts the endocrine system, notably altering the balance of hunger hormones like ghrelin and leptin.",
      "(V) Consequently, individuals who consistently lack sleep are at a markedly higher risk of developing obesity and insulin resistance."
    ],
    correctIndex: 2,
    explanation: "Paragraf uykusuzluğun bilişsel fonksiyonlar ve metabolizma (açlık hormonları, obezite) üzerindeki olumsuz etkilerinden bahsetmektedir. (III) numaralı cümle sirkadiyen ritmin beyindeki anatomik merkezi hakkında teorik bir bilgi verir ve uyku eksikliğinin klinik etkilerinden bahseden akışa uymaz.",
    translation: "(I) Uyku yoksunluğu hem bilişsel işlev hem de metabolik sağlık üzerinde derin olumsuz etkiler yaratır. (II) Yeterli onarıcı uyku eksikliği dikkati, çalışan belleği ve duygusal düzenlemeyi bozar. (III) Sirkadiyen ritim, hipotalamusun suprakiyazmatik çekirdeğinde bulunan merkezi bir pacemaker tarafından yönetilir. (IV) Ayrıca, kronik uyku kısıtlaması, grelin ve leptin gibi açlık hormonlarının dengesini önemli ölçüde değiştirerek endokrin sistemini bozar. (V) Sonuç olarak, sürekli uykusuz kalan bireyler, obezite ve insülin direnci geliştirme açısından belirgin şekilde daha yüksek risk altındadır."
  ),
  IrrelevantSentenceQuestion(
    sentences: [
      "(I) Anaphylaxis is a severe, potentially life-threatening allergic reaction that can occur within seconds of exposure to an allergen.",
      "(II) The reaction is triggered by the massive release of chemical mediators, such as histamine, from mast cells.",
      "(III) Most mild allergic reactions result in localized symptoms like sneezing or a minor skin rash.",
      "(IV) This sudden surge of chemicals causes an abrupt drop in blood pressure and a severe narrowing of the airways.",
      "(V) Immediate administration of epinephrine is the only effective first-line treatment to reverse these life-threatening physiological changes."
    ],
    correctIndex: 2,
    explanation: "Paragraf ölümcül derecedeki 'Anafilaksi' krizinin saniyeler içinde nasıl geliştiği, mast hücrelerinden salınan kimyasalların şoka (tansiyon düşüşü, hava yolu daralması) yol açtığı ve epinefrin ile tedavisi hakkındadır. (III) numaralı cümle 'hafif alerjik reaksiyonların belirtilerinden' bahsederek şiddetli şok durumunun ciddiyetini kesintiye uğratır.",
    translation: "(I) Anafilaksi, bir alerjene maruz kaldıktan sonra saniyeler içinde ortaya çıkabilen şiddetli, potansiyel olarak yaşamı tehdit eden bir alerjik reaksiyondur. (II) Reaksiyon, mast hücrelerinden histamin gibi kimyasal aracıların kitlesel salınımı ile tetiklenir. (III) Çoğu hafif alerjik reaksiyon, hapşırma veya küçük bir cilt döküntüsü gibi lokalize semptomlarla sonuçlanır. (IV) Bu ani kimyasal dalgalanma kan basıncında ani bir düşüşe ve hava yollarında ciddi bir daralmaya neden olur. (V) Epinefrinin derhal uygulanması, bu yaşamı tehdit eden fizyolojik değişiklikleri tersine çevirmek için tek etkili birinci basamak tedavidir."
  ),
  IrrelevantSentenceQuestion(
    sentences: [
      "(I) Psoriasis is a chronic autoimmune condition that leads to the rapid buildup of skin cells.",
      "(II) This hyperproliferation results in scaling on the skin's surface accompanied by red, inflamed patches.",
      "(III) Eczema, also known as atopic dermatitis, typically manifests as dry, intensely itchy patches in the creases of the arms and legs.",
      "(IV) The underlying pathophysiology is driven by an overactive immune system, specifically involving T-cells that mistakenly attack healthy skin.",
      "(V) Due to its systemic inflammatory nature, the disease is also strongly associated with comorbidities such as psoriatic arthritis and cardiovascular disease."
    ],
    correctIndex: 2,
    explanation: "Paragraf Sedef hastalığının (Psoriasis) ciltte nasıl plaklar oluşturduğu, otoimmün nedenleri ve eklem/kalp hastalıklarıyla olan bağı hakkındadır. (III) numaralı cümle ise Egzama (Atopik dermatit) hastalığının nerede çıktığından bahseder ve odak noktasından sapar.",
    translation: "(I) Sedef hastalığı, cilt hücrelerinin hızla birikmesine yol açan kronik otoimmün bir durumdur. (II) Bu aşırı çoğalma, cilt yüzeyinde kırmızı, iltihaplı yamaların eşlik ettiği pullanmalarla sonuçlanır. (III) Atopik dermatit olarak da bilinen egzama, tipik olarak kol ve bacak kıvrımlarında kuru, yoğun kaşıntılı yamalar olarak kendini gösterir. (IV) Altta yatan patofizyoloji, özellikle sağlıklı cilde yanlışlıkla saldıran T hücrelerini içeren aşırı aktif bir bağışıklık sistemi tarafından yönlendirilir. (V) Sistemik enflamatuar doğası nedeniyle hastalık, psoriatik artrit ve kardiyovasküler hastalık gibi eşlik eden hastalıklarla da güçlü bir şekilde ilişkilidir."
  ),
  IrrelevantSentenceQuestion(
    sentences: [
      "(I) Glaucoma is a group of eye conditions that damage the optic nerve, an essential component for good vision.",
      "(II) This damage is most frequently caused by an abnormally high pressure within the eye, known as intraocular pressure.",
      "(III) Cataracts, on the other hand, involve the clouding of the eye's naturally clear lens, leading to blurry vision.",
      "(IV) If this elevated pressure is not managed, it progressively destroys the nerve fibers, leading to irreversible visual field loss.",
      "(V) Because it often progresses without warning signs, it is frequently diagnosed only after significant peripheral vision is already lost."
    ],
    correctIndex: 2,
    explanation: "Paragraf Glokomun (göz tansiyonu) optik sinire nasıl zarar verdiği ve sinsi ilerleyişi hakkındadır. (III) numaralı cümle ise kataraktın lenste oluşturduğu bulanıklıktan bahseder, bu yüzden paragrafın anlam bütünlüğünü bozar.",
    translation: "(I) Glokom, iyi görme için temel bir bileşen olan optik sinire zarar veren bir grup göz rahatsızlığıdır. (II) Bu hasara çoğunlukla göz içi basıncı olarak bilinen göz içindeki anormal derecede yüksek basınç neden olur. (III) Katarakt ise gözün doğal olarak berrak olan merceğinin bulanıklaşmasını içerir ve bulanık görmeye yol açar. (IV) Yüksek basınç yönetilmezse, sinir liflerini kademeli olarak yok ederek geri dönüşü olmayan görme alanı kaybına yol açar. (V) Genellikle hiçbir uyarı işareti vermeden ilerlediği için, sıklıkla ancak önemli ölçüde çevresel görme kaybedildikten sonra teşhis edilir."
  ),
  IrrelevantSentenceQuestion(
    sentences: [
      "(I) Hemophilia is a rare inherited bleeding disorder in which the blood does not clot properly.",
      "(II) It is caused by a genetic mutation that results in a severe deficiency or absence of specific clotting factors.",
      "(III) Without sufficient clotting factors, individuals can experience prolonged bleeding from minor injuries or surgical procedures.",
      "(IV) Iron deficiency anemia occurs when the body lacks enough iron to produce adequate hemoglobin for red blood cells.",
      "(V) Furthermore, they may suffer from spontaneous internal bleeding, particularly into their joints and muscles, which can cause severe pain and eventual joint deformity."
    ],
    correctIndex: 3,
    explanation: "Paragraf hemofili hastalığının kanın pıhtılaşamamasına neden olduğu ve iç/dış kanama riskleri üzerinedir. (IV) numaralı cümle demir eksikliği anemisinin nedenlerinden bahseder ve konuyla alakasızdır.",
    translation: "(I) Hemofili, kanın düzgün pıhtılaşmadığı nadir görülen kalıtsal bir kanama bozukluğudur. (II) Belirli pıhtılaşma faktörlerinin ciddi bir eksikliğine veya yokluğuna neden olan genetik bir mutasyondan kaynaklanır. (III) Yeterli pıhtılaşma faktörleri olmadan, bireyler küçük yaralanmalardan veya cerrahi prosedürlerden uzun süreli kanama yaşayabilirler. (IV) Demir eksikliği anemisi, vücutta kırmızı kan hücreleri için yeterli hemoglobin üretmek üzere yeterli demir bulunmadığında ortaya çıkar. (V) Dahası, özellikle eklemlerine ve kaslarına doğru spontan iç kanamalar yaşayabilirler, bu da şiddetli ağrıya ve sonuçta eklem deformitesine neden olabilir."
  ),
  IrrelevantSentenceQuestion(
    sentences: [
      "(I) Endometriosis is a frequently painful disorder in which tissue similar to the lining of the uterus grows outside the uterine cavity.",
      "(II) The condition most commonly involves the ovaries, fallopian tubes, and the tissue lining the pelvis.",
      "(III) Polycystic ovary syndrome (PCOS) is primarily characterized by hormonal imbalances and infrequent menstrual periods.",
      "(IV) During each menstrual cycle, these ectopic endometrial tissues thicken, break down, and bleed, just as the normal lining would.",
      "(V) Because this displaced tissue has no way to exit the body, it becomes trapped, leading to severe inflammation, scar tissue formation, and potential infertility."
    ],
    correctIndex: 2,
    explanation: "Paragraf Endometriozis (çikolata kisti) hastalığının rahim dışındaki dokularda nasıl büyüdüğü ve kanayarak kistlere/inflamasyona yol açtığı hakkındadır. (III) numaralı cümle Polikistik Over Sendromu'ndan (PCOS) bahsederek araya girmektedir.",
    translation: "(I) Endometriozis, rahim astarına benzer dokunun rahim boşluğu dışında büyüdüğü, sıklıkla ağrılı olan bir bozukluktur. (II) Durum en yaygın olarak yumurtalıkları, fallop tüplerini ve pelvisi kaplayan dokuyu içerir. (III) Polikistik over sendromu (PKOS) temel olarak hormonal dengesizlikler ve seyrek adet dönemleri ile karakterizedir. (IV) Her adet döngüsü sırasında, bu ektopik endometriyal dokular tıpkı normal astarın yapacağı gibi kalınlaşır, parçalanır ve kanar. (V) Yer değiştiren bu dokunun vücuttan çıkış yolu olmadığı için içeride hapsolur; bu da ciddi iltihaplanmaya, yara dokusu oluşumuna ve potansiyel kısırlığa yol açar."
  ),
  IrrelevantSentenceQuestion(
    sentences: [
      "(I) Deep vein thrombosis (DVT) occurs when a blood clot forms in one or more of the deep veins in your body, usually in the legs.",
      "(II) This condition is highly dangerous because the blood clot can break loose and travel through the bloodstream.",
      "(III) If the clot lodges in the lungs, it completely blocks blood flow, causing a life-threatening pulmonary embolism.",
      "(IV) Regular blood pressure monitoring is critical for preventing hypertensive crises in elderly patients.",
      "(V) Therefore, individuals with a high risk of DVT are often prescribed anticoagulant medications to prevent clot formation and fatal complications."
    ],
    correctIndex: 3,
    explanation: "Paragraf Derin Ven Trombozunun (DVT) bacaklarda oluşumu, akciğere giderek emboli yaratma riski ve bunu önlemek için kullanılan kan sulandırıcı tedaviler üzerinedir. (IV) numaralı cümle yaşlı hastalarda tansiyon takibinin öneminden bahsederek konuyu bölmektedir.",
    translation: "(I) Derin ven trombozu (DVT), vücudunuzdaki (genellikle bacaklardaki) derin damarlardan birinde veya birkaçında kan pıhtısı oluştuğunda meydana gelir. (II) Kan pıhtısı koparak kan dolaşımında ilerleyebileceği için bu durum son derece tehlikelidir. (III) Pıhtı akciğerlere yerleşirse kan akışını tamamen bloke ederek yaşamı tehdit eden pulmoner emboliye neden olur. (IV) Yaşlı hastalarda hipertansif krizleri önlemek için düzenli tansiyon takibi kritik önem taşır. (V) Bu nedenle, DVT riski yüksek olan bireylere pıhtı oluşumunu ve ölümcül komplikasyonları önlemek için sıklıkla antikoagülan (kan sulandırıcı) ilaçlar reçete edilir."
  )
];
