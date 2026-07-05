const fs = require('fs');
const file = 'c:/Users/GAMER/Desktop/sukoyok/lib/data/translation_data.dart';
let content = fs.readFileSync(file, 'utf8');

const newEnToTr = `
  TranslationQuestion(
    sourceText: "Given the alarming rise in obesity rates among pediatric populations, pediatricians are increasingly emphasizing the necessity of early intervention programs that focus not only on dietary modifications but also on encouraging regular physical activity.",
    options: [
      "Çocukluk çağı nüfusunda obezite oranlarındaki endişe verici artış göz önüne alındığında, çocuk doktorları sadece diyet değişikliklerine odaklanan değil, aynı zamanda düzenli fiziksel aktiviteyi teşvik eden erken müdahale programlarının gerekliliğini giderek daha fazla vurgulamaktadır.",
      "Çocuk doktorları, obezite oranlarının çocuklar arasında hızla artması nedeniyle, sadece beslenme alışkanlıklarını değiştirmekle kalmayıp düzenli sporu da teşvik eden erken müdahale programlarının önemini daha çok vurguluyorlar.",
      "Çocuk nüfusundaki obezite oranlarının endişe verici düzeyde artmasına rağmen, çocuk doktorları hem diyet değişikliklerine hem de düzenli fiziksel aktiviteye odaklanan erken müdahale programlarının gerekliliğinin altını çizmektedir.",
      "Obezite oranlarının çocukluk çağı nüfusunda endişe verici bir şekilde artmasıyla birlikte, çocuk doktorları sadece diyet kısıtlamalarına değil, aynı zamanda fiziksel aktiviteyi artırmaya yönelik erken müdahale programlarının şart olduğunu belirtiyor.",
      "Çocuk doktorlarının giderek daha fazla vurguladığı erken müdahale programları, çocukluk çağı obezite oranlarındaki endişe verici artış göz önüne alındığında, sadece diyet değişikliklerine değil fiziksel aktiviteye de odaklanmaktadır."
    ],
    correctIndex: 0,
    explanation: "'Given ...' (göz önüne alındığında), 'increasingly emphasizing' (giderek daha fazla vurgulamaktadır), 'not only ... but also' (sadece ... değil, aynı zamanda). A seçeneği eksiksiz çeviridir.",
    difficulty: "Zor",
    isEnToTr: true,
    keyPhrases: ["Given (göz önüne alındığında)", "increasingly emphasizing (giderek daha fazla vurgulamaktadır)", "not only ... but also (sadece ... değil, aynı zamanda)"],
  ),
  TranslationQuestion(
    sourceText: "Although some patients experience a dramatic reduction in tumor size following the initial round of chemotherapy, oncologists usually recommend a complete cycle to eradicate any remaining microscopic cancer cells and prevent potential recurrence.",
    options: [
      "Bazı hastalar ilk kemoterapi seansından sonra tümör boyutunda çarpıcı bir küçülme yaşasa da, onkologlar genellikle kalan mikroskobik kanser hücrelerini yok etmek ve olası nüksetmeyi önlemek için tam bir kür önermektedir.",
      "İlk kemoterapi seansının ardından bazı hastalarda tümör boyutunda büyük bir azalma görülmesine rağmen, onkologlar geriye kalan kanser hücrelerini temizleyip tekrarı engellemek adına tedavinin tamamlanmasını tavsiye eder.",
      "Onkologlar genellikle olası bir nüksetmeyi önlemek ve kalan mikroskobik kanser hücrelerini yok etmek için tam bir kür önerirler, çünkü bazı hastalar ilk kemoterapi sonrası tümör boyutunda belirgin bir küçülme yaşar.",
      "Bazı hastalar ilk kemoterapi turundan sonra tümörün boyutunda çarpıcı bir küçülme tecrübe eder, ancak onkologlar mikroskobik kanser hücrelerini ortadan kaldırmak ve nüksü önlemek için genellikle tam bir kür önermektedir.",
      "Her ne kadar ilk kemoterapi uygulamasından sonra tümör boyutunda önemli bir azalma olsa da, onkologlar potansiyel nüksetmeyi önlemek ve kalan kanser hücrelerini yok etmek amacıyla genellikle tedavinin tamamlanmasını şart koşarlar."
    ],
    correctIndex: 0,
    explanation: "'Although' (-sa da / -mesine rağmen), 'experience a dramatic reduction' (çarpıcı bir küçülme yaşasa da), 'usually recommend' (genellikle ... önermektedir), 'eradicate' (yok etmek). A şıkkı doğru karşılıktır.",
    difficulty: "Orta",
    isEnToTr: true,
    keyPhrases: ["Although (-sa da / -mesine rağmen)", "usually recommend (genellikle önermektedir)", "eradicate (yok etmek)"],
  ),
  TranslationQuestion(
    sourceText: "Recent epidemiological data indicate that individuals who consistently adhere to a Mediterranean-style diet are significantly less likely to develop neurodegenerative disorders, such as Alzheimer's and Parkinson's diseases, in their later years.",
    options: [
      "Son epidemiyolojik veriler, Akdeniz tarzı diyete sürekli olarak bağlı kalan bireylerin ileriki yaşlarında Alzheimer ve Parkinson hastalıkları gibi nörodejeneratif bozukluklar geliştirme olasılıklarının önemli ölçüde daha düşük olduğunu göstermektedir.",
      "Epidemiyolojik verilerin son zamanlarda gösterdiğine göre, sürekli olarak Akdeniz diyetini uygulayan bireylerin yaşlılıklarında Alzheimer ve Parkinson gibi nörodejeneratif hastalıklara yakalanma riskleri oldukça düşüktür.",
      "Son epidemiyolojik veriler gösteriyor ki, Alzheimer ve Parkinson hastalıkları gibi nörodejeneratif bozuklukların ileriki yaşlarda gelişme olasılığı, Akdeniz tarzı beslenmeyi sürekli uygulayan bireylerde önemli ölçüde azdır.",
      "Akdeniz tarzı diyete sürekli bağlı kalan bireyler, son epidemiyolojik verilere göre, ileriki yaşlarında Alzheimer ve Parkinson gibi nörodejeneratif rahatsızlıklar geliştirme açısından önemli ölçüde daha düşük riske sahiptir.",
      "Son epidemiyolojik çalışmalara göre, Akdeniz tarzı beslenen kişilerde Alzheimer ve Parkinson hastalığı gibi nörodejeneratif bozuklukların yaşlılıkta ortaya çıkma olasılığı önemli ölçüde daha düşüktür."
    ],
    correctIndex: 0,
    explanation: "'indicate that' (göstermektedir), 'consistently adhere to' (sürekli olarak bağlı kalan), 'significantly less likely to develop' (geliştirme olasılıklarının önemli ölçüde daha düşük olduğunu). A şıkkı tam ve doğru yapıya sahiptir.",
    difficulty: "Zor",
    isEnToTr: true,
    keyPhrases: ["indicate that (göstermektedir)", "consistently adhere to (sürekli olarak bağlı kalan)", "significantly less likely to develop (geliştirme olasılıklarının önemli ölçüde daha düşük olduğunu)"],
  ),
  TranslationQuestion(
    sourceText: "Because the overuse of broad-spectrum antibiotics in intensive care units has led to the emergence of multidrug-resistant bacterial strains, infectious disease experts are now advocating for more stringent antimicrobial stewardship programs.",
    options: [
      "Yoğun bakım ünitelerinde geniş spektrumlu antibiyotiklerin aşırı kullanımı çoklu ilaca dirençli bakteri suşlarının ortaya çıkmasına yol açtığı için, enfeksiyon hastalıkları uzmanları artık daha sıkı antimikrobiyal yönetim programlarını savunmaktadır.",
      "Geniş spektrumlu antibiyotiklerin yoğun bakım ünitelerinde gereğinden fazla kullanılması çoklu ilaca dirençli bakterilerin oluşmasına neden olduğundan, uzmanlar günümüzde daha katı antimikrobiyal kontrol programlarını desteklemektedir.",
      "Enfeksiyon hastalıkları uzmanları artık daha sıkı antimikrobiyal yönetim programlarını savunuyor, çünkü yoğun bakım ünitelerinde geniş spektrumlu antibiyotiklerin aşırı kullanımı çoklu ilaca dirençli bakteri suşlarına neden olmuştur.",
      "Yoğun bakım ünitelerinde geniş spektrumlu antibiyotiklerin aşırı kullanımının çoklu ilaca dirençli bakteri türlerinin ortaya çıkmasına yol açması nedeniyle, enfeksiyon uzmanları daha sıkı antimikrobiyal programların uygulanması gerektiğini belirtiyor.",
      "Çoklu ilaca dirençli bakteri suşlarının ortaya çıkması, yoğun bakım ünitelerinde geniş spektrumlu antibiyotiklerin aşırı kullanımından kaynaklandığı için enfeksiyon hastalıkları uzmanları artık daha katı yönetim programları talep etmektedir."
    ],
    correctIndex: 0,
    explanation: "'Because ... has led to' (... yol açtığı için), 'emergence' (ortaya çıkması), 'are now advocating for' (artık ... savunmaktadır). A şıkkı bağlaç ve zaman açısından eksiksizdir.",
    difficulty: "Orta",
    isEnToTr: true,
    keyPhrases: ["Because ... has led to (... yol açtığı için)", "emergence (ortaya çıkması)", "are now advocating for (artık ... savunmaktadır)"],
  ),
  TranslationQuestion(
    sourceText: "The newly proposed public health legislation aims to mitigate the adverse effects of chronic air pollution on respiratory health by imposing stricter emission standards on industrial facilities located near densely populated urban centers.",
    options: [
      "Yeni önerilen halk sağlığı mevzuatı, yoğun nüfuslu kentsel merkezlerin yakınında bulunan endüstriyel tesislere daha sıkı emisyon standartları getirerek kronik hava kirliliğinin solunum sağlığı üzerindeki olumsuz etkilerini hafifletmeyi amaçlamaktadır.",
      "Halk sağlığı alanında yeni önerilen mevzuat, yoğun nüfuslu şehir merkezlerinin yanındaki sanayi tesislerine daha katı emisyon kuralları uygulayarak hava kirliliğinin solunum sağlığına olan olumsuz etkilerini azaltmayı hedefliyor.",
      "Kronik hava kirliliğinin solunum sağlığı üzerindeki olumsuz etkilerini hafifletmeyi amaçlayan yeni halk sağlığı mevzuatı, kalabalık şehir merkezlerine yakın sanayi tesislerine daha sıkı emisyon standartları getirmektedir.",
      "Yoğun nüfuslu kentsel merkezlerin yakınındaki endüstriyel tesislere daha sıkı emisyon standartları getirilmesi, yeni önerilen halk sağlığı mevzuatının kronik hava kirliliğinin olumsuz etkilerini azaltma amacının bir parçasıdır.",
      "Yeni halk sağlığı mevzuatı, kronik hava kirliliğinin solunum yolu hastalıkları üzerindeki zararlı etkilerini azaltmak amacıyla yoğun nüfuslu kent merkezlerindeki sanayi tesislerine daha katı emisyon standartları koymayı planlamaktadır."
    ],
    correctIndex: 0,
    explanation: "'aims to mitigate' (hafifletmeyi amaçlamaktadır), 'by imposing' (getirerek/uygulayarak), 'located near densely populated urban centers' (yoğun nüfuslu kentsel merkezlerin yakınında bulunan). A şıkkı cümlenin ana fiilini ve yapısını doğru verir.",
    difficulty: "Zor",
    isEnToTr: true,
    keyPhrases: ["aims to mitigate (hafifletmeyi amaçlamaktadır)", "by imposing (getirerek)", "located near (yakınında bulunan)"],
  ),
  TranslationQuestion(
    sourceText: "Despite the fact that cognitive behavioral therapy has proven to be highly effective in managing chronic pain, many patients continue to rely heavily on opioid analgesics, which pose a significant risk of addiction and severe side effects.",
    options: [
      "Bilişsel davranışçı terapinin kronik ağrı yönetiminde son derece etkili olduğu kanıtlanmasına rağmen, birçok hasta önemli bir bağımlılık riski ve şiddetli yan etkiler oluşturan opioid analjeziklere büyük ölçüde güvenmeye devam etmektedir.",
      "Bilişsel davranışçı terapi kronik ağrıyı kontrol etmede oldukça etkili olduğunu kanıtlamış olsa da, hastaların çoğu ciddi yan etki ve bağımlılık riski taşıyan opioid analjezikleri yoğun olarak kullanmayı sürdürüyor.",
      "Pek çok hasta, önemli bir bağımlılık ve şiddetli yan etki riski oluşturan opioid analjeziklere güvenmeye devam etmesine rağmen, bilişsel davranışçı terapinin kronik ağrıyı yönetmede son derece etkili olduğu kanıtlanmıştır.",
      "Kronik ağrının yönetiminde bilişsel davranışçı terapinin çok etkili olduğu kanıtlanmış olmasına karşın, hastaların büyük bir kısmı bağımlılık ve şiddetli yan etkileri olan opioid ağrı kesicilere bel bağlamaya devam ediyor.",
      "Bilişsel davranışçı terapi kronik ağrı tedavisinde son derece etkili olmasına rağmen, birçok hasta bağımlılık yapma ve şiddetli yan etkilere neden olma riski yüksek olan opioid analjeziklere aşırı derecede güvenmeyi bırakmıyor."
    ],
    correctIndex: 0,
    explanation: "'Despite the fact that' (... olmasına/kanıtlanmasına rağmen), 'continue to rely heavily on' (büyük ölçüde güvenmeye devam etmektedir), 'which pose' (oluşturan). A şıkkı 'which' cümlecik bağını ve ana fiili doğru aktarır.",
    difficulty: "Orta",
    isEnToTr: true,
    keyPhrases: ["Despite the fact that (... kanıtlanmasına rağmen)", "continue to rely heavily on (büyük ölçüde güvenmeye devam etmektedir)", "which pose (oluşturan)"],
  ),
  TranslationQuestion(
    sourceText: "If the current shortage of qualified nursing staff in rural hospitals is not addressed promptly, the quality of patient care is expected to deteriorate rapidly, leading to increased mortality rates and prolonged hospital stays.",
    options: [
      "Kırsal hastanelerde mevcut kalifiye hemşire personeli eksikliği derhal giderilmezse, hasta bakım kalitesinin hızla bozulması ve bunun da artan ölüm oranlarına ve uzamış hastane yatışlarına yol açması beklenmektedir.",
      "Eğer kırsal hastanelerdeki nitelikli hemşire eksikliğine hemen müdahale edilmezse, hasta bakım kalitesi hızla kötüleşecek ve bu durum artan ölüm oranlarına ile daha uzun hastane yatış sürelerine neden olacaktır.",
      "Kırsal bölge hastanelerindeki kalifiye hemşire eksikliği acilen çözülmediği takdirde, hasta bakım kalitesinin hızla düşeceği ve artan ölüm oranlarıyla uzayan yatışlara yol açacağı öngörülüyor.",
      "Kırsal hastanelerde kalifiye hemşire personelinin mevcut yetersizliği derhal ele alınmazsa, hasta bakım kalitesinin hızla gerilemesi beklenmekte olup, bu da ölüm oranlarının artmasına ve yatışların uzamasına neden olabilir.",
      "Mevcut kalifiye hemşire eksikliği kırsal hastanelerde hızlıca giderilmezse, hasta bakım kalitesinin bozulmasıyla birlikte artan ölüm oranları ve uzun hastane yatışları kaçınılmaz hale gelecektir."
    ],
    correctIndex: 0,
    explanation: "'is not addressed promptly' (derhal giderilmezse / ele alınmazsa), 'is expected to deteriorate' (bozulması/kötüleşmesi beklenmektedir), 'leading to' (yol açarak / yol açması). A şıkkı, pasif yapıyı ve expectation (beklenti) durumunu en doğru şekilde çevirir.",
    difficulty: "Zor",
    isEnToTr: true,
    keyPhrases: ["is not addressed promptly (derhal giderilmezse)", "is expected to deteriorate (bozulması beklenmektedir)", "leading to (yol açması / yol açarak)"],
  ),
  TranslationQuestion(
    sourceText: "Advances in genomic sequencing technologies have revolutionized personalized medicine, enabling clinicians to tailor therapeutic interventions based on an individual's unique genetic profile rather than employing a one-size-fits-all approach.",
    options: [
      "Genomik dizileme teknolojilerindeki ilerlemeler, kişiselleştirilmiş tıpta devrim yaratarak klinisyenlerin herkese uyan tek bir yaklaşım uygulamak yerine tedavi edici müdahaleleri bireyin benzersiz genetik profiline göre uyarlamasını sağlamıştır.",
      "Kişiselleştirilmiş tıpta devrim yaratan genomik dizileme teknolojilerindeki gelişmeler, klinisyenlerin standart bir yaklaşım kullanmak yerine tedavileri hastaların eşsiz genetik profillerine göre şekillendirmelerine olanak tanımaktadır.",
      "Genomik dizileme teknolojilerinin ilerlemesi sayesinde kişiselleştirilmiş tıp devrim geçirmiş ve klinisyenler tek tip bir yaklaşım benimsemek yerine müdahaleleri bireylerin genetik özelliklerine göre ayarlamaya başlamıştır.",
      "Genomik dizileme teknolojilerindeki ilerlemeler kişiselleştirilmiş tıpta devrim yaratmıştır ve klinisyenlerin herkese uyan tek bir yaklaşımı bırakarak tedavi yöntemlerini bireyin kendi genetik profiline göre ayarlamasına olanak tanır.",
      "Kişiselleştirilmiş tıp, genomik dizileme teknolojilerindeki yeniliklerle devrim yaşamış olup, bu sayede klinisyenler genelgeçer bir yaklaşım yerine hastanın genetik profiline uygun tedavi müdahaleleri yapabilmektedir."
    ],
    correctIndex: 0,
    explanation: "'have revolutionized' (devrim yaratmıştır / yaratarak), 'enabling clinicians to tailor' (klinisyenlerin ... uyarlamasını sağlamıştır / olanak tanıyarak), 'rather than employing' (uygulamak yerine). A şıkkı relative yapıları ve fiil formlarını eksiksiz yansıtır.",
    difficulty: "Orta",
    isEnToTr: true,
    keyPhrases: ["have revolutionized (devrim yaratarak)", "enabling clinicians to tailor (klinisyenlerin ... uyarlamasını sağlamıştır)", "rather than employing (uygulamak yerine)"],
  ),
  TranslationQuestion(
    sourceText: "While vaccination remains the most effective strategy for preventing the spread of infectious diseases, vaccine hesitancy among certain demographic groups continues to undermine global efforts to achieve herd immunity.",
    options: [
      "Aşılama, bulaşıcı hastalıkların yayılmasını önlemede en etkili strateji olmaya devam ederken, belirli demografik gruplar arasındaki aşı tereddüdü, sürü bağışıklığına ulaşmaya yönelik küresel çabaları baltalamaya devam etmektedir.",
      "Aşılamanın bulaşıcı hastalıkların yayılmasını engellemedeki en etkili yöntem olmasına rağmen, bazı demografik gruplarda görülen aşı kararsızlığı sürü bağışıklığını sağlama yönündeki küresel çabaları sürekli zayıflatmaktadır.",
      "Aşılama bulaşıcı hastalıkların yayılmasını önlemek için hala en etkili stratejidir, ancak belirli demografik gruplar içindeki aşı tereddüdü, sürü bağışıklığı elde etmeye yönelik küresel çabaları sekteye uğratmayı sürdürüyor.",
      "Belirli demografik gruplar arasındaki aşı tereddüdü sürü bağışıklığına ulaşma amaçlı küresel çabaları baltalamaya devam ederken, aşılama bulaşıcı hastalıkların yayılmasını önlemedeki en etkili strateji olmaya devam etmektedir.",
      "Aşılama bulaşıcı hastalıkların yayılmasını önlemede en etkili strateji olmayı sürdürse de, belirli demografik grupların aşı tereddüdü sürü bağışıklığına ulaşma konusundaki küresel girişimleri başarısız kılmaya devam ediyor."
    ],
    correctIndex: 0,
    explanation: "'While' (... iken / -mesine rağmen), 'remains' (olmaya devam ederken), 'vaccine hesitancy' (aşı tereddüdü), 'undermine' (baltalamak / zayıflatmak). A şıkkı 'While' bağlacının en temel 'iken/olmaya devam ederken' anlamını çok iyi karşılar.",
    difficulty: "Zor",
    isEnToTr: true,
    keyPhrases: ["While (... iken / olmaya devam ederken)", "remains (olmaya devam ederken)", "undermine (baltalamaya devam etmektedir)"],
  ),
  TranslationQuestion(
    sourceText: "Patients diagnosed with end-stage renal disease often require regular hemodialysis sessions to artificially filter waste products from their blood, a process that is physically exhausting and profoundly impacts their quality of life.",
    options: [
      "Son evre böbrek hastalığı teşhisi konan hastalar, atık ürünleri kanlarından yapay olarak filtrelemek için sıklıkla düzenli hemodiyaliz seanslarına ihtiyaç duyarlar; bu, fiziksel olarak yorucu olan ve yaşam kalitelerini derinden etkileyen bir süreçtir.",
      "Son evre böbrek hastalığı olan hastalar genellikle kanlarındaki atık maddeleri yapay yolla süzmek adına düzenli hemodiyaliz seanslarına gereksinim duyarlar ve bu süreç fiziksel olarak yorucu olup yaşam kalitelerini ciddi şekilde etkiler.",
      "Atık ürünleri kanlarından yapay olarak filtrelemek için düzenli hemodiyaliz seanslarına ihtiyaç duyan son evre böbrek hastaları, fiziksel olarak yorucu olan ve yaşam kalitelerini çok etkileyen bir süreçten geçerler.",
      "Son evre böbrek hastalığı tanısı konan hastaların, atık ürünleri kanlarından yapay yolla temizlemek için sık sık düzenli hemodiyaliz seanslarına ihtiyaç duyması, fiziksel olarak yorucu bir durumdur ve yaşam kalitelerini derinden etkiler.",
      "Son evre böbrek hastalığı teşhisi alan hastalar atık ürünleri kanlarından yapay olarak süzmek için düzenli hemodiyaliz seanslarına girmek zorundadır, ki bu da fiziksel olarak tüketici olan ve yaşam kalitesini derinden sarsan bir süreçtir."
    ],
    correctIndex: 0,
    explanation: "'diagnosed with' (teşhisi konan), 'often require' (sıklıkla ihtiyaç duyarlar), 'a process that is...' (bu, ... bir süreçtir). A şıkkı, ikinci cümlecikteki tanımlama yapısını (a process that...) en uygun şekilde çevirir.",
    difficulty: "Orta",
    isEnToTr: true,
    keyPhrases: ["diagnosed with (teşhisi konan)", "often require (sıklıkla ihtiyaç duyarlar)", "a process that is (bu, ... bir süreçtir)"],
  ),
  TranslationQuestion(
    sourceText: "Klinik araştırmalar, tip 2 diyabetik hastalarda kan şekeri seviyelerini kontrol altında tutmanın, böbrek yetmezliği ve görme kaybı gibi uzun vadeli mikrovasküler komplikasyonların riskini önemli ölçüde azalttığını göstermektedir.",
    options: [
      "Clinical studies demonstrate that keeping blood sugar levels under control in type 2 diabetic patients significantly reduces the risk of long-term microvascular complications such as kidney failure and vision loss.",
      "Clinical trials indicate that keeping blood sugar levels under control in type 2 diabetic patients is significantly reducing the risk of long-term microvascular complications like kidney failure and vision loss.",
      "It is shown by clinical studies that controlling blood sugar levels in type 2 diabetic patients significantly reduces the risks of long-term microvascular complications such as kidney failure and vision loss.",
      "Clinical studies demonstrate that to keep blood sugar levels under control in type 2 diabetic patients significantly reduced the risk of long-term microvascular complications like kidney failure and vision loss.",
      "Clinical researches show that keeping blood sugar levels controlled in type 2 diabetic patients significantly decreases the risk for long-term microvascular complications such as kidney failure and vision loss."
    ],
    correctIndex: 0,
    explanation: "'göstermektedir' (demonstrate/show/indicate), 'kontrol altında tutmanın' (keeping ... under control), 'önemli ölçüde azalttığını' (significantly reduces). A şıkkı hem kelime seçimi hem de gramer açısından tam doğrudur.",
    difficulty: "Orta",
    isEnToTr: false,
    keyPhrases: ["göstermektedir (demonstrate)", "kontrol altında tutmanın (keeping ... under control)", "önemli ölçüde azalttığını (significantly reduces)"],
  ),
  TranslationQuestion(
    sourceText: "Sağlık uzmanları, hamilelik sırasında yetersiz beslenmenin sadece annenin sağlığını tehlikeye atmakla kalmayıp, aynı zamanda fetüsün bilişsel gelişimini de olumsuz yönde etkileyebileceği konusunda defalarca uyarıda bulunmuşlardır.",
    options: [
      "Health professionals have repeatedly warned that inadequate nutrition during pregnancy not only endangers the mother's health but may also adversely affect the cognitive development of the fetus.",
      "Health experts have repeatedly warned that insufficient nutrition during pregnancy not only endangers the mother's health but also it can adversely affect the fetus's cognitive development.",
      "Health professionals warned repeatedly that malnutrition during pregnancy not only endangers the mother's health, but may also have an adverse effect on the cognitive development of the fetus.",
      "Health professionals have repeatedly been warning that poor nutrition during pregnancy can not only endanger the mother's health but also adversely affect the cognitive development of the fetus.",
      "Health professionals have repeatedly warned about inadequate nutrition during pregnancy not only endangering the mother's health but also adversely affecting the cognitive development of the fetus."
    ],
    correctIndex: 0,
    explanation: "'defalarca uyarıda bulunmuşlardır' (have repeatedly warned), 'sadece ... kalmayıp, aynı zamanda' (not only ... but also). A şıkkı fiil kiplerini (have warned) ve 'may also adversely affect' yapısını en doğru şekilde verir.",
    difficulty: "Zor",
    isEnToTr: false,
    keyPhrases: ["defalarca uyarıda bulunmuşlardır (have repeatedly warned)", "sadece ... kalmayıp, aynı zamanda (not only ... but also)", "olumsuz yönde etkileyebileceği (may also adversely affect)"],
  ),
  TranslationQuestion(
    sourceText: "Yaşlanan nüfusla birlikte artan sağlık bakım maliyetleri göz önüne alındığında, hükümetlerin kronik hastalıkların tedavisi yerine önleyici sağlık hizmetlerine daha fazla kaynak ayırması zorunlu hale gelmiştir.",
    options: [
      "Given the rising healthcare costs along with the aging population, it has become imperative for governments to allocate more resources to preventive healthcare services rather than the treatment of chronic diseases.",
      "Considering the rising healthcare costs with the aging population, it became mandatory for governments to allocate more resources to preventive healthcare services instead of treating chronic diseases.",
      "Given the increasing healthcare costs along with the aging population, it has become necessary that governments allocate more resources to preventive healthcare services rather than the treatment of chronic diseases.",
      "When the rising healthcare costs along with the aging population are considered, it has become imperative for governments to allocate more resources to preventive health services rather than treating chronic illnesses.",
      "Due to the rising healthcare costs along with the aging population, it is now imperative for governments to allocate more resources to preventive healthcare services rather than to the treatment of chronic diseases."
    ],
    correctIndex: 0,
    explanation: "'göz önüne alındığında' (Given / Considering), 'zorunlu hale gelmiştir' (it has become imperative), 'yerine' (rather than). A şıkkı orijinal cümleyi tam olarak çevirir.",
    difficulty: "Orta",
    isEnToTr: false,
    keyPhrases: ["göz önüne alındığında (Given)", "zorunlu hale gelmiştir (it has become imperative)", "yerine (rather than)"],
  ),
  TranslationQuestion(
    sourceText: "Pek çok insan düzenli olarak vitamin takviyeleri almanın bağışıklık sistemini güçlendireceğine inansa da, bilimsel kanıtlar dengeli bir diyetin dışarıdan alınan takviyelerden çok daha etkili olduğunu ortaya koymaktadır.",
    options: [
      "Although many people believe that taking vitamin supplements regularly will strengthen the immune system, scientific evidence reveals that a balanced diet is much more effective than externally taken supplements.",
      "Even though a lot of people believe taking vitamin supplements regularly will strengthen the immune system, scientific evidence shows a balanced diet to be much more effective than externally taken supplements.",
      "While many people believe that to take vitamin supplements regularly strengthens the immune system, scientific evidence reveals that a balanced diet is far more effective than supplements taken from outside.",
      "Many people believe that taking vitamin supplements regularly will strengthen the immune system, but scientific evidence reveals that a balanced diet is much more effective than externally taken supplements.",
      "Although many people believe taking regular vitamin supplements will strengthen the immune system, scientific evidence reveals that a balanced diet is much more effective than externally taken supplements."
    ],
    correctIndex: 0,
    explanation: "'-sa da' (Although/Even though), 'güçlendireceğine' (will strengthen), 'ortaya koymaktadır' (reveals/shows). A şıkkı, 'taking vitamin supplements regularly' ve cümlenin diğer unsurlarını birebir çevirir.",
    difficulty: "Orta",
    isEnToTr: false,
    keyPhrases: ["inansa da (Although ... believe)", "güçlendireceğine (will strengthen)", "ortaya koymaktadır (reveals)"],
  ),
  TranslationQuestion(
    sourceText: "Kalp krizini atlatan hastalar için kardiyak rehabilitasyon programları, sadece fiziksel iyileşmeyi hızlandırmakla kalmaz, aynı zamanda hastaların yaşayabileceği depresyon ve anksiyete gibi psikolojik sorunlarla başa çıkmalarına da yardımcı olur.",
    options: [
      "For patients who have survived a heart attack, cardiac rehabilitation programs not only accelerate physical recovery but also help them cope with psychological issues such as depression and anxiety that they may experience.",
      "Cardiac rehabilitation programs for patients surviving a heart attack not only accelerate physical recovery but also help them deal with psychological problems like depression and anxiety they may experience.",
      "For patients who survived a heart attack, cardiac rehabilitation programs do not only accelerate physical recovery but they also help them cope with psychological issues such as depression and anxiety they may experience.",
      "Cardiac rehabilitation programs for heart attack survivors not only accelerate physical recovery but also help them cope with psychological issues such as depression and anxiety that they might experience.",
      "For patients who have survived a heart attack, cardiac rehabilitation programs not only accelerate physical recovery, but also help patients cope with psychological issues such as depression and anxiety that they may experience."
    ],
    correctIndex: 0,
    explanation: "'atlatan' (who have survived), 'sadece ... kalmaz, aynı zamanda ... yardımcı olur' (not only accelerate ... but also help). A şıkkı gramer ve kelime anlamları açısından kusursuz bir uyum içindedir.",
    difficulty: "Zor",
    isEnToTr: false,
    keyPhrases: ["atlatan (who have survived)", "sadece ... kalmaz, aynı zamanda ... yardımcı olur (not only ... but also help)", "başa çıkmalarına (cope with)"],
  ),
  TranslationQuestion(
    sourceText: "Son zamanlarda yapılan epidemiyolojik bir çalışma, hava kirliliğinin yüksek olduğu bölgelerde yaşayan çocukların, temiz havaya sahip bölgelerde yaşayan yaşıtlarına kıyasla astım geliştirme olasılığının iki kat daha fazla olduğunu bulmuştur.",
    options: [
      "A recent epidemiological study has found that children living in areas with high air pollution are twice as likely to develop asthma compared to their peers living in areas with clean air.",
      "A recent epidemiological study found that children who live in areas with high air pollution have twice the likelihood of developing asthma compared to their peers living in areas with clean air.",
      "According to a recent epidemiological study, children living in areas with high air pollution are two times more likely to develop asthma compared to their peers who live in areas with clean air.",
      "A recently conducted epidemiological study has found that children living in high air pollution areas are twice as likely to develop asthma in comparison with their peers living in clean air areas.",
      "A recent epidemiological study has discovered that children living in areas with high air pollution are twice as likely to develop asthma when compared to their peers living in areas with clean air."
    ],
    correctIndex: 0,
    explanation: "'iki kat daha fazla olduğunu' (are twice as likely to), 'kıyasla' (compared to), 'bulmuştur' (has found). A şıkkı İngilizce'de bu karşılaştırmayı en doğal ve doğru aktaran ifadedir.",
    difficulty: "Orta",
    isEnToTr: false,
    keyPhrases: ["iki kat daha fazla olduğunu (are twice as likely to)", "kıyasla (compared to)", "bulmuştur (has found)"],
  ),
  TranslationQuestion(
    sourceText: "Kanser tedavisi gören hastaların bağışıklık sistemleri genellikle baskılanmış olduğundan, bu hastalar fırsatçı enfeksiyonlara karşı son derece savunmasızdırlar ve bu nedenle hastane ortamında katı hijyen kurallarına uyulmalıdır.",
    options: [
      "Since the immune systems of patients undergoing cancer treatment are generally suppressed, these patients are highly vulnerable to opportunistic infections, and therefore strict hygiene rules must be followed in the hospital environment.",
      "Because the immune systems of patients undergoing cancer treatment are generally suppressed, these patients are highly vulnerable to opportunistic infections, which is why strict hygiene rules must be followed in the hospital environment.",
      "As the immune systems of patients undergoing cancer treatment are generally suppressed, these patients are extremely vulnerable to opportunistic infections, and thus strict hygiene rules should be followed in the hospital setting.",
      "The immune systems of patients undergoing cancer treatment are generally suppressed, making them highly vulnerable to opportunistic infections, and therefore strict hygiene rules must be followed in the hospital environment.",
      "Since patients undergoing cancer treatment generally have suppressed immune systems, they are highly vulnerable to opportunistic infections, and therefore strict hygiene rules must be followed in the hospital environment."
    ],
    correctIndex: 0,
    explanation: "'-dığından' (Since/As/Because), 'genellikle baskılanmış' (are generally suppressed), 'son derece savunmasızdırlar' (are highly vulnerable), 'bu nedenle' (and therefore). A şıkkı, pasif yapıları ve bağlaçları mükemmel bir şekilde yansıtmaktadır.",
    difficulty: "Zor",
    isEnToTr: false,
    keyPhrases: ["-dığından (Since)", "genellikle baskılanmış (are generally suppressed)", "son derece savunmasızdırlar (are highly vulnerable)"],
  ),
  TranslationQuestion(
    sourceText: "Modern yaşamın getirdiği yüksek stres seviyeleri ve uyku düzensizlikleri, hipertansiyon ve obezite gibi metabolik sendromların görülme sıklığındaki hızlı artışın başlıca sorumluları olarak kabul edilmektedir.",
    options: [
      "High stress levels and sleep irregularities brought about by modern life are considered to be the primary culprits for the rapid increase in the incidence of metabolic syndromes such as hypertension and obesity.",
      "High stress levels and sleep irregularities brought by modern life are accepted as the main culprits for the rapid increase in the prevalence of metabolic syndromes such as hypertension and obesity.",
      "The high stress levels and sleep irregularities brought about by modern life are considered as the primary culprits of the rapid increase in the incidence of metabolic syndromes like hypertension and obesity.",
      "High stress levels and sleep irregularities that modern life brings are considered to be the main culprits for the rapid increase in the incidence of metabolic syndromes such as hypertension and obesity.",
      "High stress levels and sleep irregularities brought about by modern life are considered the primary reasons for the rapid increase in the incidence of metabolic syndromes such as hypertension and obesity."
    ],
    correctIndex: 0,
    explanation: "'getirdiği' (brought about by), 'başlıca sorumluları olarak kabul edilmektedir' (are considered to be the primary culprits for), 'görülme sıklığındaki' (incidence of). A şıkkı, akademik İngilizceye uygun, anlamı tam veren en doğru seçenektir.",
    difficulty: "Orta",
    isEnToTr: false,
    keyPhrases: ["getirdiği (brought about by)", "başlıca sorumluları olarak kabul edilmektedir (are considered to be the primary culprits for)", "görülme sıklığındaki (incidence of)"],
  ),
  TranslationQuestion(
    sourceText: "Her ne kadar cerrahi teknikler son on yılda büyük bir ilerleme kaydetmiş olsa da, cerrahlar ameliyat sonrası dönemde oluşabilecek enfeksiyon riskini en aza indirmek için hastaların durumunu yakından takip etmek zorundadır.",
    options: [
      "Even though surgical techniques have made great progress in the last decade, surgeons must closely monitor the condition of patients to minimize the risk of infection that may occur in the postoperative period.",
      "Although surgical techniques have made great progress in the last ten years, surgeons have to closely monitor patients' condition to minimize the risk of infection that may occur in the postoperative period.",
      "While surgical techniques have made great progress in the last decade, surgeons must closely follow the condition of patients to minimize the risk of infection that can occur in the postoperative period.",
      "Even though surgical techniques made great progress in the last decade, surgeons must closely monitor the condition of patients to minimize the risk of infection that may occur in the postoperative period.",
      "Even though surgical techniques have made great progress in the last decade, surgeons must closely monitor the patients' condition in order to minimize the risk of infection that may occur in the postoperative period."
    ],
    correctIndex: 0,
    explanation: "'Her ne kadar ... -sa da' (Even though/Although), 'büyük bir ilerleme kaydetmiş' (have made great progress), 'yakından takip etmek zorundadır' (must closely monitor). A şıkkı tüm unsurları eksiksiz karşılar.",
    difficulty: "Orta",
    isEnToTr: false,
    keyPhrases: ["Her ne kadar ... sa da (Even though)", "büyük bir ilerleme kaydetmiş (have made great progress)", "yakından takip etmek zorundadır (must closely monitor)"],
  ),
  TranslationQuestion(
    sourceText: "Dünya Sağlık Örgütü, antibiyotik direncinin küresel bir halk sağlığı acil durumu olduğunu ilan etmiş ve yeni antibiyotik sınıflarının geliştirilmesinin yanı sıra mevcut ilaçların bilinçli kullanımını teşvik etmiştir.",
    options: [
      "The World Health Organization has declared antibiotic resistance a global public health emergency and has promoted the judicious use of existing drugs in addition to the development of new antibiotic classes.",
      "The World Health Organization declared that antibiotic resistance is a global public health emergency and promoted the judicious use of existing drugs as well as the development of new antibiotic classes.",
      "The World Health Organization has declared antibiotic resistance to be a global public health emergency and has promoted the judicious use of existing drugs in addition to developing new antibiotic classes.",
      "The World Health Organization has declared antibiotic resistance a global public health emergency and promoted the conscious use of existing drugs along with the development of new antibiotic classes.",
      "The World Health Organization has declared antibiotic resistance as a global public health emergency and has encouraged the judicious use of existing drugs in addition to the development of new antibiotic classes."
    ],
    correctIndex: 0,
    explanation: "'ilan etmiş' (has declared), 'yanı sıra' (in addition to / as well as), 'bilinçli kullanımını' (judicious use), 'teşvik etmiştir' (has promoted). A şıkkı fiil kipleri ve akademik kelime tercihleriyle orijinal metnin kusursuz çevirisidir.",
    difficulty: "Zor",
    isEnToTr: false,
    keyPhrases: ["ilan etmiş (has declared)", "yanı sıra (in addition to)", "teşvik etmiştir (has promoted)"],
  )
];`;

content = content.replace('];', newEnToTr + '\n];');
fs.writeFileSync(file, content, 'utf8');
console.log('Appended translation questions to ' + file);
