const fs = require('fs');
const path = require('path');

const filePath = path.join('C:', 'Users', 'GAMER', 'Desktop', 'sukoyok', 'lib', 'data', 'translation_data.dart');
let content = fs.readFileSync(filePath, 'utf8');

// The new questions to append
const newQuestions = `
  // --- 10 NEW EN -> TR QUESTIONS ---
  TranslationQuestion(
    sourceText: "Although significant progress has been made in understanding the underlying mechanisms of autoimmune diseases, developing targeted therapies that do not compromise the entire immune system remains a formidable challenge.",
    options: [
      "Otoimmün hastalıkların altında yatan mekanizmaları anlamada önemli ilerlemeler kaydedilmiş olmasına rağmen, tüm bağışıklık sistemini tehlikeye atmayan hedefe yönelik tedaviler geliştirmek zorlu bir engel olmaya devam etmektedir.",
      "Tüm bağışıklık sistemini zayıflatmayan hedefe yönelik tedavilerin geliştirilmesi zorlu bir süreç olsa da, otoimmün hastalıkların temel mekanizmalarını anlamada büyük ilerlemeler sağlanmıştır.",
      "Otoimmün hastalıkların temel mekanizmaları anlaşıldığından beri önemli ilerlemeler kaydedildi, ancak bütün bağışıklık sistemine zarar vermeyen tedaviler geliştirmek hala çok zordur.",
      "Otoimmün hastalıkların mekanizmalarını anlamak için büyük adımlar atılmasına rağmen, bağışıklık sistemini tamamen koruyan hedefe yönelik tedaviler bulmak oldukça zordur.",
      "Otoimmün hastalıkların altında yatan mekanizmaların anlaşılmasında önemli aşamalar kaydedilse de, bağışıklık sistemini tehlikeye atmadan tedavi geliştirmek büyük bir zorluktur."
    ],
    correctIndex: 0,
    explanation: "'Although' (olmasına rağmen) ile başlayan bir zıtlık cümlesi. 'underlying mechanisms' (altında yatan mekanizmalar), 'targeted therapies' (hedefe yönelik tedaviler), 'compromise' (tehlikeye atmak/zayıflatmak), 'remains a formidable challenge' (zorlu bir engel/zorluk olmaya devam etmektedir). A şıkkı kelime kelime en sadık çeviridir.",
    difficulty: "Zor",
    isEnToTr: true,
    keyPhrases: ["Although (olmasına rağmen)", "underlying mechanisms (altında yatan mekanizmalar)", "remains a formidable challenge (zorlu bir engel olmaya devam etmektedir)"],
  ),
  TranslationQuestion(
    sourceText: "Epidemiological studies indicate that long-term exposure to fine particulate matter significantly increases the risk of chronic respiratory conditions and cardiovascular events in urban populations.",
    options: [
      "Epidemiyolojik çalışmalar, kentsel nüfuslarda ince partikül maddeye uzun süreli maruz kalmanın kronik solunum rahatsızlıkları ve kalp damar hastalıkları riskini önemli ölçüde artırdığını göstermektedir.",
      "Şehirlerde yaşayan insanların ince partikül maddeye uzun süre maruz kalmasının, kronik solunum yolu ve kalp damar hastalıkları riskini ciddi şekilde artırdığı epidemiyolojik olarak kanıtlanmıştır.",
      "Epidemiyolojik araştırmalara göre, kentsel bölgelerdeki ince partikül maddeye uzun süre maruz kalmak, kronik solunum rahatsızlıkları ile kardiyovasküler olayların riskini artırmaktadır.",
      "Epidemiyolojik çalışmalar, ince partikül maddenin uzun süreli etkisinin kentsel nüfusta kronik solunum yolu rahatsızlıkları ve kardiyovasküler olaylara neden olduğunu belirtmektedir.",
      "İnce partikül maddeye uzun süreli maruz kalmanın, kentsel alanlarda kronik solunum yolu ve kardiyovasküler rahatsızlık riskini önemli ölçüde artırdığı epidemiyolojik olarak belirtilmiştir."
    ],
    correctIndex: 0,
    explanation: "Ana cümle 'Epidemiological studies indicate that...' (Epidemiyolojik çalışmalar ... göstermektedir). 'long-term exposure to fine particulate matter' (ince partikül maddeye uzun süreli maruz kalmanın). A şıkkı, özne-yüklem uyumu ve kelime karşılıkları bakımından en doğru çeviridir.",
    difficulty: "Orta",
    isEnToTr: true,
    keyPhrases: ["indicate that (göstermektedir)", "long-term exposure to (uzun süreli maruz kalmanın)", "significantly increases (önemli ölçüde artırdığını)"],
  ),
  TranslationQuestion(
    sourceText: "Given the rapid mutation rate of the virus, researchers stress that updating the vaccine composition annually is imperative to maintain optimal population immunity.",
    options: [
      "Araştırmacılar, virüsün hızlı mutasyon oranı göz önüne alındığında, optimum toplumsal bağışıklığı korumak için aşı içeriğinin her yıl güncellenmesinin zorunlu olduğunu vurgulamaktadır.",
      "Virüsün hızlı mutasyon oranından dolayı, araştırmacılar aşı bileşiminin optimum toplum bağışıklığı için her yıl güncellenmesi gerektiğine dikkat çekiyor.",
      "Virüs hızla mutasyona uğradığı için, araştırmacılar toplum bağışıklığının korunması adına aşının içeriğinin yıllık olarak yenilenmesinin şart olduğunu belirtmektedir.",
      "Araştırmacılar, virüsün yüksek mutasyon hızı düşünüldüğünde, toplumsal bağışıklığı optimum düzeyde tutmak amacıyla aşıların her yıl yenilenmesini zorunlu kılıyor.",
      "Virüsün çok hızlı mutasyon geçirmesi nedeniyle, araştırmacılar optimum bağışıklığı sağlamak için aşı formülünü her sene güncellemenin elzem olduğunu söylüyor."
    ],
    correctIndex: 0,
    explanation: "'Given' (... göz önüne alındığında / dikkate alındığında), 'stress that' (vurgulamaktadır), 'imperative' (zorunlu/elzem), 'vaccine composition' (aşı içeriği/bileşimi). A şıkkı tam çeviriyi vermektedir.",
    difficulty: "Zor",
    isEnToTr: true,
    keyPhrases: ["Given the rapid mutation rate (hızlı mutasyon oranı göz önüne alındığında)", "stress that (vurgulamaktadır)", "is imperative to maintain (korumak için zorunlu olduğunu)"],
  ),
  TranslationQuestion(
    sourceText: "Patients presenting with persistent abdominal pain, unexplained weight loss, and fatigue should be thoroughly evaluated for potential gastrointestinal malignancies.",
    options: [
      "Geçmeyen karın ağrısı, açıklanamayan kilo kaybı ve halsizlik ile başvuran hastalar, olası mide-bağırsak kanserleri açısından kapsamlı bir şekilde değerlendirilmelidir.",
      "Sürekli karın ağrısı, sebepsiz kilo kaybı ve yorgunluk şikayetiyle gelen hastalar, potansiyel gastrointestinal kötü huylu tümörlere karşı dikkatle incelenmelidir.",
      "Süregelen karın ağrısı, nedeni bilinmeyen kilo kaybı ve halsizliği olan hastaların gastrointestinal maligniteler için tamamen değerlendirilmesi gerekir.",
      "Geçmeyen karın ağrısı, açıklanamayan kilo kaybı ve yorgunluk ile başvuran hastalar, gastrointestinal kanser ihtimaline karşı acilen tedavi edilmelidir.",
      "Eğer bir hasta sürekli karın ağrısı, kilo kaybı ve halsizlik ile gelirse, potansiyel gastrointestinal maligniteler açısından iyice değerlendirilmelidir."
    ],
    correctIndex: 0,
    explanation: "'Patients presenting with...' (... ile başvuran hastalar), 'persistent abdominal pain' (geçmeyen/sürekli karın ağrısı), 'thoroughly evaluated' (kapsamlı bir şekilde değerlendirilmelidir), 'malignancies' (kötü huylu tümörler/kanserler). A şıkkı YÖKDİL sağlık metinlerinin standart çevirisine en uygun olanıdır.",
    difficulty: "Orta",
    isEnToTr: true,
    keyPhrases: ["Patients presenting with (ile başvuran hastalar)", "unexplained weight loss (açıklanamayan kilo kaybı)", "should be thoroughly evaluated (kapsamlı bir şekilde değerlendirilmelidir)"],
  ),
  TranslationQuestion(
    sourceText: "Despite the widespread use of broad-spectrum antibiotics in intensive care units, hospital-acquired infections caused by multidrug-resistant pathogens continue to pose a severe threat to patient survival.",
    options: [
      "Yoğun bakım ünitelerinde geniş spektrumlu antibiyotiklerin yaygın kullanımına rağmen, çoklu ilaca dirençli patojenlerin neden olduğu hastane kaynaklı enfeksiyonlar hasta hayatta kalımı için ciddi bir tehdit oluşturmaya devam etmektedir.",
      "Geniş spektrumlu antibiyotiklerin yoğun bakım ünitelerinde yaygın kullanılmasına karşın, çoklu ilaca dirençli mikroorganizmaların yol açtığı enfeksiyonlar hastaların hayatını tehlikeye atmaya devam ediyor.",
      "Yoğun bakım ünitelerindeki hastalar geniş spektrumlu antibiyotikleri yaygın kullansa da, hastane enfeksiyonlarına yol açan çoklu ilaca dirençli patojenler hasta sağlığı için büyük bir tehdittir.",
      "Çoklu ilaca dirençli patojenlerin neden olduğu hastane kaynaklı enfeksiyonlar, yoğun bakım ünitelerinde geniş spektrumlu antibiyotiklerin kullanılmasına rağmen ölümcül bir tehdit olmayı sürdürüyor.",
      "Yoğun bakımda çok fazla geniş spektrumlu antibiyotik kullanılmasına rağmen, hastaneden kapılan çoklu ilaca dirençli enfeksiyonlar hastaların yaşamasını ciddi şekilde tehdit etmektedir."
    ],
    correctIndex: 0,
    explanation: "'Despite...' (... rağmen), 'broad-spectrum' (geniş spektrumlu), 'hospital-acquired infections' (hastane kaynaklı enfeksiyonlar), 'multidrug-resistant' (çoklu ilaca dirençli), 'continue to pose a severe threat' (ciddi bir tehdit oluşturmaya devam etmektedir). A şıkkı yapıyı ve kelimeleri en eksiksiz karşılayan seçenektir.",
    difficulty: "Zor",
    isEnToTr: true,
    keyPhrases: ["Despite the widespread use (yaygın kullanımına rağmen)", "hospital-acquired infections (hastane kaynaklı enfeksiyonlar)", "continue to pose a severe threat (ciddi bir tehdit oluşturmaya devam etmektedir)"],
  ),
  TranslationQuestion(
    sourceText: "Cognitive behavioral therapy has emerged as the gold standard for treating anxiety disorders, primarily because it equips patients with practical coping strategies rather than just relying on pharmacological interventions.",
    options: [
      "Bilişsel davranışçı terapi, anksiyete bozukluklarının tedavisinde altın standart haline gelmiştir; temel nedeni, hastaları sadece farmakolojik müdahalelere güvenmek yerine pratik başa çıkma stratejileriyle donatmasıdır.",
      "Anksiyete bozukluklarını tedavi etmede bilişsel davranışçı terapi altın standarttır çünkü hastalara sadece ilaç tedavisi vermek yerine onlara pratik başa çıkma stratejileri sunar.",
      "Sadece farmakolojik müdahalelere dayanmak yerine hastaları pratik başa çıkma yollarıyla donattığı için, bilişsel davranışçı terapi anksiyete bozuklukları için altın standart olarak öne çıkmıştır.",
      "Bilişsel davranışçı terapinin anksiyete bozukluklarında altın standart olmasının başlıca nedeni, hastalara ilaçlardan ziyade pratik baş etme stratejileri kazandırmasıdır.",
      "Bilişsel davranışçı terapi anksiyete bozuklukları tedavisinde altın standart olarak ortaya çıkmıştır, çünkü sadece ilaç tedavilerine güvenmekten çok hastalara pratik baş etme yöntemleri öğretir."
    ],
    correctIndex: 0,
    explanation: "'has emerged as' (haline gelmiştir / olarak öne çıkmıştır), 'primarily because' (temel nedeni / başlıca sebebi ... olmasıdır), 'equips patients with' (hastaları ... ile donatmasıdır), 'rather than just relying on' (sadece ... güvenmek yerine). A şıkkı cümlenin iki parçalı yapısını en doğru ve akademik dille çeviren seçenektir.",
    difficulty: "Orta",
    isEnToTr: true,
    keyPhrases: ["primarily because (temel nedeni ... olmasıdır)", "equips patients with (hastaları ... ile donatmasıdır)", "rather than just relying on (sadece ... güvenmek yerine)"],
  ),
  TranslationQuestion(
    sourceText: "Recent clinical trials have demonstrated that early administration of antiviral drugs significantly decreases the duration of symptoms and lowers the probability of hospitalization in high-risk individuals.",
    options: [
      "Son klinik deneyler, antiviral ilaçların erken verilmesinin semptomların süresini önemli ölçüde azalttığını ve yüksek riskli bireylerde hastaneye yatış olasılığını düşürdüğünü göstermiştir.",
      "Antiviral ilaçların erken dönemde uygulanmasının, semptom süresini kısalttığı ve yüksek riskli hastalarda hastaneye yatış ihtimalini önemli ölçüde azalttığı son klinik çalışmalarla kanıtlanmıştır.",
      "Son klinik çalışmalara göre, yüksek riskli kişilere antiviral ilaçların erken verilmesi semptom süresini kısaltmakta ve hastaneye yatış ihtimalini azaltmaktadır.",
      "Son klinik çalışmalar, yüksek riskli bireylerde antiviral ilaçların erken uygulamasının hastalık belirtilerinin süresini azalttığını ve hastaneye yatma olasılığını büyük ölçüde düşürdüğünü ortaya koymuştur.",
      "Klinik deneyler yeni göstermiştir ki, antiviral ilaçları erken almak yüksek riskli bireylerde semptomları kısaltır ve hastaneye yatış olasılığını ciddi oranda azaltır."
    ],
    correctIndex: 0,
    explanation: "Özne 'Recent clinical trials' (Son klinik deneyler). Yüklem 'have demonstrated that' (göstermiştir ki / ... göstermiştir). 'early administration' (erken verilmesi / uygulanması). 'significantly decreases' (önemli ölçüde azalttığını). A şıkkı, bağlaçlara, özneye ve fiile tamamen sadık bir çeviridir.",
    difficulty: "Orta",
    isEnToTr: true,
    keyPhrases: ["have demonstrated that (göstermiştir)", "early administration (erken verilmesi/uygulanması)", "lowers the probability of hospitalization (hastaneye yatış olasılığını düşürdüğünü)"],
  ),
  TranslationQuestion(
    sourceText: "If the global community fails to take coordinated action against antimicrobial resistance, routine surgical procedures could become incredibly dangerous due to untreatable bacterial infections.",
    options: [
      "Küresel toplum antimikrobiyal dirence karşı koordineli bir eylem planı uygulamazsa, tedavi edilemeyen bakteriyel enfeksiyonlar nedeniyle rutin cerrahi prosedürler inanılmaz derecede tehlikeli hale gelebilir.",
      "Eğer küresel toplum antimikrobiyal dirence karşı koordineli bir eylemde bulunmayı başaramazsa, tedavi edilemeyen bakteriyel enfeksiyonlar yüzünden rutin cerrahi işlemler inanılmaz derecede tehlikeli hale gelebilir.",
      "Küresel toplumun antimikrobiyal dirence karşı ortak hareket etmemesi durumunda, tedavi edilemez bakteriyel enfeksiyonlardan dolayı rutin ameliyatlar son derece tehlikeli olacaktır.",
      "Eğer dünyadaki ülkeler antimikrobiyal dirence karşı birlikte hareket edemezse, tedavi edilemeyen enfeksiyonlar rutin cerrahi müdahaleleri çok tehlikeli bir duruma getirecektir.",
      "Antimikrobiyal dirence karşı küresel düzeyde koordineli önlem alınmadığı takdirde, rutin cerrahi operasyonlar tedavi edilemeyen enfeksiyonlar sebebiyle inanılmaz derecede riskli hale gelir."
    ],
    correctIndex: 1,
    explanation: "'If the global community fails to take...' (Eğer küresel toplum ... başaramazsa / eylemde bulunmazsa), 'coordinated action' (koordineli eylem), 'could become' (hale gelebilir), 'due to' (yüzünden / nedeniyle). B şıkkı 'fails to' (başaramazsa) ifadesini en net şekilde veren ve 'could become' (hale gelebilir) olasılık kipini doğru yansıtan şıktır.",
    difficulty: "Orta",
    isEnToTr: true,
    keyPhrases: ["If ... fails to take (Eğer ... eylemde bulunmayı başaramazsa)", "could become incredibly dangerous (inanılmaz derecede tehlikeli hale gelebilir)", "due to untreatable bacterial infections (tedavi edilemeyen bakteriyel enfeksiyonlar yüzünden)"],
  ),
  TranslationQuestion(
    sourceText: "The integration of artificial intelligence into radiology has the potential not only to accelerate the diagnostic process but also to identify subtle anomalies that the human eye might easily overlook.",
    options: [
      "Yapay zekanın radyolojiye entegrasyonu, sadece teşhis sürecini hızlandırma potansiyeline sahip olmakla kalmaz, aynı zamanda insan gözünün kolayca gözden kaçırabileceği ince anormallikleri de tespit edebilir.",
      "Yapay zekanın radyolojiye entegre edilmesi, yalnızca teşhis sürecini hızlandırmakla kalmayıp, insan gözünün gözden kaçırabileceği küçük anormallikleri de tespit etme potansiyeline sahiptir.",
      "Radyoloji alanında yapay zeka kullanımı, tanı sürecini hızlandırmanın yanı sıra insan gözünün rahatlıkla gözden kaçıracağı ufak anomalileri fark etme potansiyelini barındırır.",
      "Yapay zekanın radyolojiye dahil edilmesi, teşhisi hızlandırmak ve insan gözünün kolayca atlayabileceği ince anormallikleri belirlemek gibi bir potansiyele sahiptir.",
      "Yapay zekanın radyolojiyle birleşimi, yalnızca tanı koyma sürecini hızlandırmakla kalmaz, insan gözünden kolayca kaçan ince ayrıntıları da yakalama yeteneğine sahiptir."
    ],
    correctIndex: 1,
    explanation: "'The integration of ... into ...' (Yapay zekanın ... entegre edilmesi/entegrasyonu), 'has the potential not only to ... but also to ...' (sadece ... değil aynı zamanda ... potansiyeline de sahiptir). 'subtle anomalies' (ince/küçük anormallikler), 'might easily overlook' (kolayca gözden kaçırabileceği). B şıkkı bu yapıyı eksiksiz bir şekilde Türkçeye aktarır.",
    difficulty: "Zor",
    isEnToTr: true,
    keyPhrases: ["has the potential not only to ... but also to ... (yalnızca ... kalmayıp ... potansiyeline de sahiptir)", "subtle anomalies (ince anormallikleri)", "might easily overlook (kolayca gözden kaçırabileceği)"],
  ),
  TranslationQuestion(
    sourceText: "Vaccines stimulate the immune system to produce antibodies, thereby providing long-lasting protection against specific pathogens without exposing the individual to the dangers of the actual disease.",
    options: [
      "Aşılar bağışıklık sistemini antikor üretmesi için uyarır, böylece bireyi asıl hastalığın tehlikelerine maruz bırakmadan belirli patojenlere karşı uzun süreli koruma sağlar.",
      "Aşıların bağışıklık sistemini antikor üretmek üzere uyarması, bireyi gerçek hastalığın tehlikeleriyle karşı karşıya bırakmadan patojenlere karşı uzun ömürlü koruma sağlamasına yol açar.",
      "Bağışıklık sistemini uyararak antikor ürettiren aşılar, bireyi hastalığın gerçek tehlikelerinden uzak tutarak belirli patojenlere karşı uzun süreli bir koruma oluşturur.",
      "Aşılar bağışıklık sisteminin antikor üretmesini uyarır ve bireyin gerçek hastalığa maruz kalmasını önleyerek belirli patojenlere karşı uzun vadeli korunmasını sağlar.",
      "Bireyi asıl hastalığın tehlikelerine maruz bırakmadan bağışıklık sistemini antikor üretmeye teşvik eden aşılar, belirli patojenlere karşı uzun süreli koruma sunar."
    ],
    correctIndex: 0,
    explanation: "Ana cümle: 'Vaccines stimulate...' (Aşılar uyarır). 'thereby' (böylece) bağlacı eylemin sonucunu bildirir: 'böylece ... koruma sağlar'. 'without exposing' (maruz bırakmadan). A şıkkı bağlaç sıralamasına ve cümlenin öğelerine tamamen uymaktadır.",
    difficulty: "Orta",
    isEnToTr: true,
    keyPhrases: ["stimulate (uyarır)", "thereby providing (böylece ... sağlar)", "without exposing (maruz bırakmadan)"],
  ),

  // --- 10 NEW TR -> EN QUESTIONS ---
  TranslationQuestion(
    sourceText: "Yeni geliştirilen kanser ilacının umut verici sonuçlar göstermesine rağmen, araştırmacılar ilacın uzun vadeli yan etkilerini belirlemek için daha fazla klinik çalışmaya ihtiyaç duyulduğu konusunda uyarıyor.",
    options: [
      "Although the newly developed cancer drug has shown promising results, researchers warn that further clinical trials are needed to determine its long-term side effects.",
      "Even though the new cancer drug shows promising results, researchers are warning that more clinical trials will be needed to establish its long-term side effects.",
      "Despite showing promising results for the newly developed cancer drug, researchers warn that further clinical trials are required to identify the long-term side effects.",
      "While the newly developed cancer drug showed promising results, researchers warned that further clinical studies were needed to determine the long-term side effects.",
      "The newly developed cancer drug has shown promising results, but researchers warn that further clinical trials are needed to determine its long-term side effects."
    ],
    correctIndex: 0,
    explanation: "'-mesine rağmen' zıtlık bağlacı cümlenin başında 'Although' ile verilmelidir. 'yeni geliştirilen' (newly developed), 'umut verici sonuçlar göstermesine rağmen' (has shown promising results). 'araştırmacılar ... uyarıyor' (researchers warn that), 'daha fazla klinik çalışmaya ihtiyaç duyulduğu' (further clinical trials are needed). A seçeneği en kusursuz çeviridir.",
    difficulty: "Orta",
    isEnToTr: false,
    keyPhrases: ["göstermesine rağmen (Although ... has shown)", "uyarıyor (warn that)", "belirlemek için (to determine)"],
  ),
  TranslationQuestion(
    sourceText: "Obezite sıklığındaki artış, sadece kötü beslenme alışkanlıklarına değil, aynı zamanda modern toplumdaki hareketsiz yaşam tarzına da bağlanmaktadır.",
    options: [
      "The increase in the prevalence of obesity is attributed not only to poor dietary habits but also to the sedentary lifestyle in modern society.",
      "The rising prevalence of obesity is connected not only with poor dietary habits but also the sedentary lifestyle in modern society.",
      "The increase in the frequency of obesity is linked to poor dietary habits as well as the sedentary lifestyle of modern society.",
      "The rise in obesity prevalence is not just due to poor dietary habits, but it is also caused by the sedentary lifestyle in modern society.",
      "Obesity's increasing prevalence is attributed not only to poor diet habits but also to the inactive lifestyle seen in modern society."
    ],
    correctIndex: 0,
    explanation: "'sadece ... değil, aynı zamanda ...' yapısı 'not only ... but also' kalıbını gerektirir. 'bağlanmaktadır' pasif fiili 'is attributed to' şeklinde çevrilmelidir. A şıkkı, 'prevalence of obesity' (obezite sıklığı) ve 'sedentary lifestyle' (hareketsiz yaşam tarzı) kelimeleriyle en akademik ve doğru çeviridir.",
    difficulty: "Zor",
    isEnToTr: false,
    keyPhrases: ["sadece ... değil, aynı zamanda (not only ... but also)", "bağlanmaktadır (is attributed to)", "hareketsiz yaşam tarzına (to the sedentary lifestyle)"],
  ),
  TranslationQuestion(
    sourceText: "Kalp krizini önlemenin en etkili yolu, düzenli tansiyon kontrolünü içeren ve stresten uzak durmayı teşvik eden sağlıklı bir yaşam tarzı benimsemektir.",
    options: [
      "The most effective way to prevent a heart attack is to adopt a healthy lifestyle that includes regular blood pressure monitoring and encourages avoiding stress.",
      "Preventing a heart attack effectively requires adopting a healthy lifestyle which involves regular blood pressure checks and promotes staying away from stress.",
      "The most effective way of preventing a heart attack is adopting a healthy lifestyle, including regular blood pressure control and avoiding stress.",
      "To prevent a heart attack in the most effective way is to adopt a healthy lifestyle that includes regular blood pressure monitoring and avoids stress.",
      "The best way to prevent a heart attack is adopting a healthy lifestyle that consists of regular blood pressure control and encourages keeping away from stress."
    ],
    correctIndex: 0,
    explanation: "'... en etkili yolu' (The most effective way to ...), 'benimsemektir' (is to adopt). 'düzenli tansiyon kontrolünü içeren' (that includes regular blood pressure monitoring) ve 'stresten uzak durmayı teşvik eden' (and encourages avoiding stress) relative clause (sıfat cümleciği) yapılarıyla bağlanmalıdır. A şıkkı tüm fiilleri ve zaman kiplerini kusursuz çevirir.",
    difficulty: "Orta",
    isEnToTr: false,
    keyPhrases: ["önlemenin en etkili yolu (The most effective way to prevent)", "benimsemektir (is to adopt)", "içeren ve ... teşvik eden (that includes ... and encourages)"],
  ),
  TranslationQuestion(
    sourceText: "Beynin nöroplastisitesi sayesinde, hastalar inme sonrası rehabilitasyon sürecinde kaybedilen motor fonksiyonlarının önemli bir kısmını geri kazanabilirler.",
    options: [
      "Thanks to the brain's neuroplasticity, patients can regain a significant portion of their lost motor functions during the post-stroke rehabilitation process.",
      "Due to the neuroplasticity of the brain, patients are able to recover a large part of their lost motor functions in the rehabilitation process after a stroke.",
      "Because of the brain's neuroplasticity, patients can regain significant motor functions that were lost during post-stroke rehabilitation.",
      "Through the brain's neuroplasticity, patients may regain most of their lost motor functions during the stroke rehabilitation process.",
      "Thanks to the brain's neuroplasticity, patients have regained a significant portion of their lost motor functions during the post-stroke rehabilitation process."
    ],
    correctIndex: 0,
    explanation: "'sayesinde' (Thanks to), 'önemli bir kısmını' (a significant portion of), 'geri kazanabilirler' (can regain), 'inme sonrası rehabilitasyon sürecinde' (during the post-stroke rehabilitation process). B şıkkında 'are able to' var, A şıkkı 'can' (yapabilirler/olabilirler) ile tam olarak cümleye uyar.",
    difficulty: "Kolay",
    isEnToTr: false,
    keyPhrases: ["sayesinde (Thanks to)", "önemli bir kısmını (a significant portion of)", "geri kazanabilirler (can regain)"],
  ),
  TranslationQuestion(
    sourceText: "Yeterli uyku eksikliğinin bağışıklık sistemini zayıflattığı, hücresel yenilenmeyi engellediği ve kronik hastalıklara yatkınlığı artırdığı yaygın olarak kabul edilmektedir.",
    options: [
      "It is widely accepted that a lack of adequate sleep weakens the immune system, hinders cellular regeneration, and increases susceptibility to chronic diseases.",
      "A lack of adequate sleep is widely accepted to weaken the immune system, hinder cellular regeneration, and increase susceptibility to chronic diseases.",
      "It is generally acknowledged that insufficient sleep suppresses the immune system, prevents cellular regeneration, and increases the risk of chronic diseases.",
      "That a lack of adequate sleep weakens the immune system, inhibits cellular regeneration, and increases susceptibility to chronic diseases is widely accepted.",
      "It has been widely accepted that lacking adequate sleep weakens the immune system, hinders cellular regeneration, and increases susceptibility to chronic diseases."
    ],
    correctIndex: 0,
    explanation: "'... yaygın olarak kabul edilmektedir' (It is widely accepted that ...). 'yeterli uyku eksikliğinin' (a lack of adequate sleep), 'zayıflattığı' (weakens), 'engellediği' (hinders), 'yatkınlığı artırdığı' (increases susceptibility). A şıkkı YÖKDİL kalıplarına en uygun çeviridir.",
    difficulty: "Zor",
    isEnToTr: false,
    keyPhrases: ["yaygın olarak kabul edilmektedir (It is widely accepted that)", "engellediği (hinders / inhibits)", "yatkınlığı artırdığı (increases susceptibility)"],
  ),
  TranslationQuestion(
    sourceText: "Antibiyotik direnci küresel bir kriz haline geldikçe, araştırmacılar bakteriyel enfeksiyonlarla savaşmak için faj terapisi gibi alternatif tedavi yöntemlerine yöneliyorlar.",
    options: [
      "As antibiotic resistance becomes a global crisis, researchers are turning to alternative treatment methods such as phage therapy to combat bacterial infections.",
      "Because antibiotic resistance has become a global crisis, researchers are turning to alternative treatments like phage therapy to fight bacterial infections.",
      "As antibiotic resistance becomes a global crisis, researchers turn to alternative treatment methods like phage therapy for combating bacterial infections.",
      "With antibiotic resistance becoming a global crisis, researchers have turned to alternative treatment methods such as phage therapy to combat bacterial infections.",
      "Since antibiotic resistance became a global crisis, researchers are shifting to alternative therapeutic methods such as phage therapy to combat bacterial infections."
    ],
    correctIndex: 0,
    explanation: "'-dıkça / -dikçe' bağlacı 'As' ile ifade edilir. 'haline geldikçe' (becomes), 'yöneliyorlar' (are turning to), 'savaşmak için' (to combat). A şıkkı 'As' bağlacını ve şimdiki zamanı (are turning to) en kusursuz biçimde yansıtır.",
    difficulty: "Orta",
    isEnToTr: false,
    keyPhrases: ["haline geldikçe (As ... becomes)", "yöneliyorlar (are turning to)", "savaşmak için (to combat)"],
  ),
  TranslationQuestion(
    sourceText: "Mevcut bulgular, erken çocukluk döneminde hava kirliliğine maruz kalmanın ilerleyen yaşlarda astım gelişimine katkıda bulunabileceğini düşündürmektedir.",
    options: [
      "Current findings suggest that exposure to air pollution in early childhood may contribute to the development of asthma in later life.",
      "The current findings suggest that exposing to air pollution during early childhood can contribute to asthma development in later life.",
      "Present findings indicate that exposure to air pollution in early childhood might contribute to developing asthma in later years.",
      "Current findings suggest that being exposed to air pollution in early childhood could contribute to the development of asthma at older ages.",
      "Current evidence suggests that exposure to air pollution during early childhood may lead to the development of asthma in later life."
    ],
    correctIndex: 0,
    explanation: "'Mevcut bulgular' (Current findings), 'düşündürmektedir' (suggest that), 'katkıda bulunabileceğini' (may contribute to), 'ilerleyen yaşlarda' (in later life). A şıkkında hiçbir kelime atlanmamış, yetenek/ihtimal kipi (may) ve bağlaçlar doğru aktarılmıştır.",
    difficulty: "Orta",
    isEnToTr: false,
    keyPhrases: ["Mevcut bulgular (Current findings)", "düşündürmektedir (suggest that)", "katkıda bulunabileceğini (may contribute to)"],
  ),
  TranslationQuestion(
    sourceText: "Hastalara yalnızca semptomlarını hafifletecek ilaçlar yazmak yerine, onları hastalığın kök nedenlerine inen yaşam tarzı değişiklikleri yapmaları konusunda eğitmeliyiz.",
    options: [
      "Instead of merely prescribing medications that will alleviate their symptoms, we must educate patients on making lifestyle changes that address the root causes of the disease.",
      "Rather than just prescribing medications to alleviate their symptoms, we should educate patients to make lifestyle changes that target the root causes of the disease.",
      "Instead of only prescribing medications that alleviate their symptoms, patients must be educated about making lifestyle changes that address the root causes of the disease.",
      "We should educate patients about making lifestyle changes that address the root causes of the disease rather than merely prescribing drugs to relieve their symptoms.",
      "Instead of prescribing drugs merely to relieve their symptoms, we must educate the patients on making lifestyle changes that address the root causes of the disease."
    ],
    correctIndex: 0,
    explanation: "'-mek yerine' (Instead of / Rather than), 'yalnızca semptomlarını hafifletecek ilaçlar yazmak' (merely prescribing medications that will alleviate their symptoms), 'eğitmeliyiz' (we must educate), 'kök nedenlerine inen' (that address the root causes). A şıkkı relative clause (that will alleviate) yapısını tam olarak çevirir.",
    difficulty: "Zor",
    isEnToTr: false,
    keyPhrases: ["yerine (Instead of)", "hafifletecek ilaçlar (medications that will alleviate)", "kök nedenlerine inen (that address the root causes)"],
  ),
  TranslationQuestion(
    sourceText: "Tip 2 diyabet genetik faktörlerden güçlü bir şekilde etkilense de, hastalığın başlangıcı büyük ölçüde diyet ve fiziksel aktivite gibi çevresel faktörler tarafından tetiklenir.",
    options: [
      "Even though type 2 diabetes is strongly influenced by genetic factors, the onset of the disease is largely triggered by environmental factors such as diet and physical activity.",
      "Although type 2 diabetes is strongly influenced by genetic factors, the beginning of the disease is mostly triggered by environmental factors like diet and physical activity.",
      "While type 2 diabetes is highly affected by genetic factors, the onset of the disease is largely triggered by environmental factors such as diet and physical activity.",
      "Even if type 2 diabetes is strongly influenced by genetic factors, the onset of the disease is largely initiated by environmental factors such as diet and physical activity.",
      "Type 2 diabetes is strongly influenced by genetic factors, but the onset of the disease is largely triggered by environmental factors such as diet and physical activity."
    ],
    correctIndex: 0,
    explanation: "'-se de' (Even though / Although), 'güçlü bir şekilde etkilense de' (is strongly influenced), 'hastalığın başlangıcı' (the onset of the disease), 'büyük ölçüde ... tetiklenir' (is largely triggered by). A şıkkı kalıpları ve kelimeleri en iyi aktaran akademik çeviridir.",
    difficulty: "Orta",
    isEnToTr: false,
    keyPhrases: ["etkilense de (Even though ... is influenced)", "hastalığın başlangıcı (the onset of the disease)", "tetiklenir (is triggered by)"],
  ),
  TranslationQuestion(
    sourceText: "Son derece bulaşıcı olan bu yeni virüs varyantı, eğer katı karantina kuralları derhal uygulanmazsa sağlık sistemlerinin kapasitesini aşma potansiyeline sahiptir.",
    options: [
      "This highly contagious new virus variant has the potential to exceed the capacity of healthcare systems unless strict quarantine rules are implemented immediately.",
      "This new virus variant, which is highly contagious, has the potential to exceed the capacity of healthcare systems if strict quarantine rules are not implemented immediately.",
      "If strict quarantine rules are not implemented immediately, this highly contagious new virus variant has the potential to exceed the capacity of healthcare systems.",
      "This highly contagious new virus variant has the potential of exceeding healthcare systems' capacity unless strict quarantine rules are put into effect immediately.",
      "Unless strict quarantine rules are implemented immediately, this highly contagious new virus variant will exceed the capacity of healthcare systems."
    ],
    correctIndex: 0,
    explanation: "'Son derece bulaşıcı olan bu yeni virüs varyantı' (This highly contagious new virus variant), 'aşma potansiyeline sahiptir' (has the potential to exceed). 'eğer ... uygulanmazsa' (unless / if ... not). A şıkkında 'unless' kullanımıyla şart cümlesi birebir sağlanmış ve özne tam olarak başta verilmiştir.",
    difficulty: "Zor",
    isEnToTr: false,
    keyPhrases: ["Son derece bulaşıcı olan (highly contagious)", "aşma potansiyeline sahiptir (has the potential to exceed)", "eğer ... uygulanmazsa (unless ... are implemented)"],
  ),
`;

content = content.replace(/\];\s*$/, newQuestions + '];\n');
fs.writeFileSync(filePath, content, 'utf8');
console.log('Successfully appended 20 translations to translation_data.dart');
