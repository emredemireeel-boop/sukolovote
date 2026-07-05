const fs = require('fs');
const path = require('path');

const targetFile = 'C:\\\\Users\\\\GAMER\\\\Desktop\\\\sukoyok\\\\lib\\\\data\\\\questions_data.dart';
let content = fs.readFileSync(targetFile, 'utf8');

const newCategory = `
  QuestionType(
    id: 'mixed_yokdil_health_25',
    title: 'Karma YÖKDİL Sağlık (Zor)',
    subtitle: 'Premium Karışık Test',
    icon: '🔥',
    questionCount: 25,
    description: 'Gerçek YÖKDİL Sağlık sınavı zorluk seviyesini simüle eden karma kelime, gramer ve anlam bilgisi soruları.',
    strategies: [
      'Gramer sorularında önce yapıya, kelime sorularında ise cümlenin olumlu/olumsuz gidişatına (context) odaklanın.',
      'Şıklardaki bilmediğiniz kelimelerden ziyade bildikleriniz üzerinden eleme yöntemi yapın.'
    ],
    tips: [
      '💡 Çift boşluklu sorularda ilk boşluktan ziyade ikinci boşluğun gramer yapısı genellikle eleyicidir.',
      '💡 Relative Clause sorularında niteleyen ismin insan mı, nesne mi, yer mi yoksa zaman mı olduğuna dikkat edin.'
    ],
    detailedExplanation: 'Karma bölüm, sınav öncesi pratik yapmanız için çok yönlü soru tiplerini barındırır. Sorular genel YÖKDİL Sağlık ortalamasının bir tık üstündedir.',
    commonMistakes: [
      '❌ Cümlenin tamamını çevirmeye çalışırken zaman kaybetmek.',
      '❌ Relative clause ile Noun clause farkını gözden kaçırmak.'
    ],
    keyPhrases: [
      'predisposition to — -e yatkınlık',
      'in conjunction with — ile birlikte / ile bağlantılı olarak',
      'derive from — -den türemek / kaynaklanmak'
    ],
    examples: [
      ExampleQuestion(
        question: 'The prolonged administration of high-dose corticosteroids can ---- osteoporosis by disrupting the delicate balance between bone formation and resorption.',
        options: ['A) alleviate', 'B) trigger', 'C) diagnose', 'D) eradicate', 'E) suspend'],
        correctIndex: 1,
        explanation: 'Kortikosteroidlerin kemik yapımı ve yıkımı dengesini bozarak osteoporoza (kemik erimesine) "yol açabileceği / tetikleyebileceği" (trigger) ifade ediliyor.',
        stepByStep: '1️⃣ "can ---- osteoporosis" → kemik erimesine ne yapabilir? Olumsuz bir durum olduğuna göre "tetiklemek" veya "sebep olmak" gerekir.\\n2️⃣ Şıkları incele:\\n • alleviate = hafifletmek\\n • trigger = tetiklemek ✅\\n • eradicate = kökünü kazımak\\n3️⃣ Sonuç: B şıkkı.'
      ),
      ExampleQuestion(
        question: '---- the discovery of penicillin in 1928, bacterial infections were the leading cause of mortality worldwide.',
        options: ['A) Prior to', 'B) As a result of', 'C) In addition to', 'D) Regardless of', 'E) Thanks to'],
        correctIndex: 0,
        explanation: 'Penisilinin keşfinden "önce" (Prior to) bakteriyel enfeksiyonların dünya çapında en önde gelen ölüm nedeni olduğu vurgulanmaktadır.',
        stepByStep: '1️⃣ Anlam ilişkisi kur: "Penisilinin keşfi (1928)" ve "bakteriyel enfeksiyonların en büyük ölüm nedeni olması".\\n2️⃣ Mantıken penisilin keşfedildikten sonra değil, KEŞFİNDEN ÖNCE ölümler fazlaydı.\\n3️⃣ Prior to = Before (Önce) ✅\\n4️⃣ Sonuç: A şıkkı.'
      ),
      ExampleQuestion(
        question: 'Patients who exhibit a strong genetic predisposition to type 2 diabetes are highly advised to adhere to a strict dietary regimen ---- they might require insulin therapy much earlier in life.',
        options: ['A) therefore', 'B) thus', 'C) otherwise', 'D) moreover', 'E) nevertheless'],
        correctIndex: 2,
        explanation: 'Sıkı bir diyet rejimine uymaları şiddetle tavsiye edilir, "aksi takdirde" (otherwise) yaşamın çok daha erken dönemlerinde insülin tedavisine ihtiyaç duyabilirler.',
        stepByStep: '1️⃣ "strict dietary regimen" (sıkı diyet) ile "require insulin therapy" (insülin gerekmesi) arasında bir GİZLİ KOŞUL vardır.\\n2️⃣ Diyet yapmalılar, (yapmazlarsa / aksi takdirde) insülin gerekir.\\n3️⃣ Otherwise = Aksi takdirde ✅\\n4️⃣ Sonuç: C şıkkı.'
      ),
      ExampleQuestion(
        question: 'Neurological assessments revealed that the trauma had inflicted severe damage on the left hemisphere, ---- is predominantly responsible for language and logical processing.',
        options: ['A) who', 'B) that', 'C) which', 'D) where', 'E) whose'],
        correctIndex: 2,
        explanation: 'Sol yarım küreyi (the left hemisphere) niteleyen bir relative clause gereklidir. Virgülden sonra geldiği için "that" KULLANILAMAZ. İnsan dışı bir yapı olduğu için "which" doğrudur.',
        stepByStep: '1️⃣ Boşluktan önce virgül (,) var. Virgül sonrası "that" elenir.\\n2️⃣ Nitelediği kelime "left hemisphere" (sol yarımküre) yani insan dışı bir varlık.\\n3️⃣ İnsan dışı ve virgüllü yapı için "which" kullanılır ✅\\n4️⃣ Sonuç: C şıkkı.'
      ),
      ExampleQuestion(
        question: 'The efficacy of the new antiviral medication largely depends on ---- it is administered within the first 48 hours of symptom onset.',
        options: ['A) that', 'B) whether', 'C) which', 'D) what', 'E) in case'],
        correctIndex: 1,
        explanation: '"Depends on" edatından (preposition) sonra noun clause (isim cümleciği) gelir. İlk 48 saatte uygulanıp uygulanmamasına (whether) bağlıdır anlamı taşır.',
        stepByStep: '1️⃣ Boşluktan önce "depends on" edatı var. Edatlardan sonra "that" clause gelmez.\\n2️⃣ Cümle anlamı: "uygulanıp uygulanmamasına bağlıdır".\\n3️⃣ Bu ikilemi (olup olmama) "whether" verir ✅\\n4️⃣ Sonuç: B şıkkı.'
      ),
      ExampleQuestion(
        question: 'Recent epidemiological studies have shown that sedentary lifestyle habits are ---- linked to the alarming surge in obesity rates among adolescents.',
        options: ['A) randomly', 'B) ambiguously', 'C) inextricably', 'D) marginally', 'E) scarcely'],
        correctIndex: 2,
        explanation: 'Hareketsiz yaşam tarzı alışkanlıklarının ergenlerdeki obezite oranlarındaki artışa "ayrılmaz / koparılamaz bir şekilde" (inextricably) bağlı olduğu ifade edilmektedir.',
        stepByStep: '1️⃣ Hareketsiz yaşam ile obezite arasında nasıl bir bağ vardır? Çok güçlü ve sıkı bir bağ.\\n2️⃣ Şıklara bak:\\n • randomly = rastgele\\n • inextricably = ayrılamaz, koparılamaz şekilde ✅\\n • marginally = azıcık\\n3️⃣ Sonuç: C şıkkı.'
      ),
      ExampleQuestion(
        question: '---- providing immediate pain relief, the novel analgesic compound also exhibits potent anti-inflammatory properties.',
        options: ['A) Rather than', 'B) In addition to', 'C) Regardless of', 'D) Instead of', 'E) But for'],
        correctIndex: 1,
        explanation: 'Cümlenin ikinci kısmında "also" (ayrıca) geçiyor. Hızlı ağrı kesici sağlamasına "EK OLARAK / YANI SIRA" (In addition to) güçlü anti-inflamatuar özellikler de gösterir.',
        stepByStep: '1️⃣ İkinci cümledeki "also" kelimesi bize paralellik / ekleme (addition) olduğunu söyler.\\n2️⃣ "Hem ağrı kesiyor, hem DE inflamasyonu engelliyor."\\n3️⃣ In addition to = ...e ek olarak ✅\\n4️⃣ Sonuç: B şıkkı.'
      ),
      ExampleQuestion(
        question: 'By the time the surgical team ---- the operation, the patient ---- more than three units of blood.',
        options: ['A) finishes / will lose', 'B) had finished / lost', 'C) finished / had lost', 'D) is finishing / has lost', 'E) has finished / is losing'],
        correctIndex: 2,
        explanation: '"By the time" geçmiş zaman anlattığında, diğer taraf "Past Perfect (had V3)" olur. Ameliyat bittiğinde (finished), hasta kanı çoktan kaybetmişti (had lost).',
        stepByStep: '1️⃣ "By the time" zaman bağlacı tense uyumu (Zaman uyumu) ister.\\n2️⃣ By the time + V2 (Past Simple) → Diğer taraf had + V3 (Past Perfect).\\n3️⃣ C şıkkı: "finished" (V2) ve "had lost" (had V3) tam uyar ✅\\n4️⃣ Sonuç: C şıkkı.'
      ),
      ExampleQuestion(
        question: 'Many endemic species of gut bacteria ---- when patients are subjected to prolonged courses of broad-spectrum antibiotics.',
        options: ['A) flourish', 'B) multiply', 'C) thrive', 'D) perish', 'E) mutate'],
        correctIndex: 3,
        explanation: 'Geniş spektrumlu antibiyotiklerin uzun süreli kullanımı bağırsaktaki faydalı veya endemik bakterilerin "ölmesine / yok olmasına" (perish) neden olur.',
        stepByStep: '1️⃣ "broad-spectrum antibiotics" bağırsak bakterilerine ne yapar? Onları öldürür veya yok eder.\\n2️⃣ Şıklara bak:\\n • flourish / thrive = gelişmek, serpilmek (Olumlu)\\n • perish = yok olmak, ölmek (Olumsuz) ✅\\n3️⃣ Sonuç: D şıkkı.'
      ),
      ExampleQuestion(
        question: 'The World Health Organization emphasizes that early ---- of the disease dramatically improves the chances of a full recovery.',
        options: ['A) detection', 'B) transmission', 'C) symptom', 'D) infection', 'E) prevalence'],
        correctIndex: 0,
        explanation: 'Hastalığın "erken teşhisi" (early detection), tam iyileşme şansını önemli ölçüde artırır.',
        stepByStep: '1️⃣ İyileşme şansını artıran şey nedir? Hastalığın "erken teşhis edilmesi".\\n2️⃣ Şıklarda "teşhis / saptama" anlamına gelen "detection" kelimesi doğru cevaptır ✅\\n3️⃣ Sonuç: A şıkkı.'
      ),
      ExampleQuestion(
        question: '---- the clinical trial yields definitive results, physicians are advised to continue using the existing, standard treatment protocols.',
        options: ['A) Since', 'B) Now that', 'C) Until', 'D) While', 'E) Because'],
        correctIndex: 2,
        explanation: 'Klinik deneyler kesin sonuçlar "VERENE KADAR" (Until), doktorlara mevcut standart tedaviyi kullanmaları tavsiye edilir.',
        stepByStep: '1️⃣ "Kesin sonuçlar vermesi" ile "mevcut tedaviyi kullanmaya devam etme" arasında bir zaman sınırı var.\\n2️⃣ "Sonuçlar çıkana KADAR mevcut olana devam et."\\n3️⃣ Until = -e kadar ✅\\n4️⃣ Sonuç: C şıkkı.'
      ),
      ExampleQuestion(
        question: 'If the emergency room physicians ---- the signs of cardiac tamponade earlier, the patient ----.',
        options: ['A) recognized / wouldn\'t die', 'B) had recognized / might have survived', 'C) recognize / will survive', 'D) have recognized / survives', 'E) are recognizing / could survive'],
        correctIndex: 1,
        explanation: 'Bu bir Type 3 (Past Unreal) If koşul cümlesidir. "Eğer daha erken fark etselerdi (had recognized), hasta hayatta kalabilirdi (might have survived)."',
        stepByStep: '1️⃣ Cümlede geçmişe dönük pişmanlık/olmamış bir olay (earlier) vurgusu var.\\n2️⃣ Type 3 If Clause Kuralı: If + Past Perfect (had V3) → would/could/might + have V3.\\n3️⃣ B şıkkı bu kurala tam olarak uymaktadır ✅\\n4️⃣ Sonuç: B şıkkı.'
      ),
      ExampleQuestion(
        question: 'The implementation of the new hygiene regulations is ---- to significantly curtail the spread of nosocomial (hospital-acquired) infections.',
        options: ['A) anticipated', 'B) discouraged', 'C) abandoned', 'D) forbidden', 'E) neglected'],
        correctIndex: 0,
        explanation: 'Yeni hijyen kurallarının uygulanmasının, hastane enfeksiyonlarını önemli ölçüde azaltması "beklenmektedir / umulmaktadır" (anticipated).',
        stepByStep: '1️⃣ Hijyen kurallarının "hastane enfeksiyonlarını azaltması" olumlu bir durumdur ve geleceğe dönük bir hedeftir.\\n2️⃣ Şıklara bak:\\n • anticipated = beklenen, umulan ✅\\n • discouraged = cesareti kırılan / tavsiye edilmeyen\\n3️⃣ Sonuç: A şıkkı.'
      ),
      ExampleQuestion(
        question: '---- rigorous training, surgical residents are not permitted to perform complex cardiovascular procedures independently.',
        options: ['A) Because of', 'B) By means of', 'C) Without', 'D) Despite', 'E) On behalf of'],
        correctIndex: 2,
        explanation: '"Zorlu bir eğitim OLMAKSIZIN / OLMADAN" (Without rigorous training), cerrahi asistanların tek başlarına karmaşık operasyonlar yapmalarına izin verilmez.',
        stepByStep: '1️⃣ "Eğitim" ve "operasyon yapmaya izin verilmemesi" arasındaki bağ:\\n2️⃣ "Eğitim OLMADAN izin verilmez."\\n3️⃣ Without = -sız, -siz, olmadan ✅\\n4️⃣ Sonuç: C şıkkı.'
      ),
      ExampleQuestion(
        question: 'The rapid mutation rate of the influenza virus makes it exceptionally difficult to develop a vaccine that confers ---- immunity.',
        options: ['A) momentary', 'B) superficial', 'C) lifelong', 'D) fragile', 'E) transient'],
        correctIndex: 2,
        explanation: 'İnfluenza virüsünün (gribin) hızlı mutasyon oranı, "ömür boyu" (lifelong) bağışıklık sağlayan bir aşı geliştirmeyi son derece zorlaştırmaktadır.',
        stepByStep: '1️⃣ Grip aşısının neden zor olduğu anlatılıyor. Çünkü kalıcı bir etki sağlayamıyor.\\n2️⃣ Hangi tür bağışıklık geliştirmek zordur? "Ömür boyu (kalıcı) bağışıklık".\\n3️⃣ Lifelong = ömür boyu ✅ (Diğer şıkların hepsi geçici veya zayıf anlamındadır).\\n4️⃣ Sonuç: C şıkkı.'
      ),
      ExampleQuestion(
        question: 'Obesity is now recognized not merely as a consequence of overeating, ---- as a complex metabolic disorder with genetic and environmental roots.',
        options: ['A) nor', 'B) and', 'C) or', 'D) but', 'E) so'],
        correctIndex: 3,
        explanation: '"Not merely ... but (also) ..." kalıbı (sadece ... değil, aynı zamanda ...) kullanılmıştır.',
        stepByStep: '1️⃣ Cümledeki "not merely" (not only) ifadesini bulun.\\n2️⃣ İngilizcede "not only/merely ... but (also) ..." ayrılmaz bir kalıptır.\\n3️⃣ Sonuç: D şıkkı.'
      ),
      ExampleQuestion(
        question: 'Physicians often caution that vitamins and supplements should be taken in moderation, as ---- consumption can lead to hypervitaminosis and organ toxicity.',
        options: ['A) insufficient', 'B) adequate', 'C) moderate', 'D) excessive', 'E) negligible'],
        correctIndex: 3,
        explanation: 'Aşırı vitamin birikimi (hipervitaminoz) ve organ toksisitesine yol açan durum vitaminlerin "aşırı" (excessive) tüketimidir.',
        stepByStep: '1️⃣ Zehirlenmeye (toxicity) yol açan şey vitaminin eksik alınması mıdır, çok alınması mıdır?\\n2️⃣ Elbette "aşırı" (excessive) alınmasıdır ✅\\n3️⃣ Sonuç: D şıkkı.'
      ),
      ExampleQuestion(
        question: '---- treating the symptoms of autoimmune diseases, modern immunosuppressive therapies attempt to target the underlying cellular mechanisms.',
        options: ['A) In spite of', 'B) Instead of', 'C) Thanks to', 'D) Due to', 'E) As regards'],
        correctIndex: 1,
        explanation: 'Semptomları tedavi etmenin "YERİNE" (Instead of), modern tedaviler altta yatan hücresel mekanizmaları hedef almaya çalışır.',
        stepByStep: '1️⃣ "Semptomları tedavi etmek" ile "altta yatan sebebi hedeflemek" birbiriyle zıttır veya birbirinin alternatifidir.\\n2️⃣ "Sadece semptomları tedavi etmenin YERİNE (Instead of), kök sebebi hedefliyor."\\n3️⃣ Sonuç: B şıkkı.'
      ),
      ExampleQuestion(
        question: 'Research indicates that individuals ---- diets are rich in ultra-processed foods exhibit a significantly higher risk of cardiovascular morbidity.',
        options: ['A) who', 'B) which', 'C) whose', 'D) that', 'E) whom'],
        correctIndex: 2,
        explanation: '"Individuals" (bireyler) ile "diets" (diyetleri) arasında sahiplik ilişkisi vardır. "Diyetleri ... olan bireyler" anlamı vermek için "whose" kullanılır.',
        stepByStep: '1️⃣ Boşluktan önce "individuals" (isim), boşluktan sonra "diets" (isim) var.\\n2️⃣ Bireyler İLE Diyetleri arasındaki aidiyet bağını "whose" kurar (Kimin diyeti? Bireylerin diyeti).\\n3️⃣ Sonuç: C şıkkı.'
      ),
      ExampleQuestion(
        question: 'The newly discovered antibiotic is remarkably potent; ----, it has proven effective against several strains of antibiotic-resistant bacteria.',
        options: ['A) on the other hand', 'B) conversely', 'C) furthermore', 'D) otherwise', 'E) nonetheless'],
        correctIndex: 2,
        explanation: 'İlk cümle olumlu (antibiyotik son derece güçlü). İkinci cümle de olumlu (dirençli bakterilere karşı bile etkili). İki olumlu/destekleyici ifade "dahası / üstelik" (furthermore) ile bağlanır.',
        stepByStep: '1️⃣ Cümle 1: (+) Güçlü bir antibiyotik.\\n2️⃣ Cümle 2: (+) Dirençli bakterileri bile öldürüyor.\\n3️⃣ Paralellik ve anlamı güçlendirme bağlacı aranmalıdır.\\n4️⃣ Furthermore = dahası, üstelik ✅\\n5️⃣ Sonuç: C şıkkı.'
      ),
      ExampleQuestion(
        question: 'Scientists are currently exploring whether specific microbiomes can be manipulated ---- cognitive decline in aging populations.',
        options: ['A) preventing', 'B) to prevent', 'C) having prevented', 'D) to be prevented', 'E) prevent'],
        correctIndex: 1,
        explanation: 'Manipüle edilebilir mi (can be manipulated) ifadesinden sonra amaç bildiren to-infinitive (to prevent - önlemek için) gelir.',
        stepByStep: '1️⃣ "Manipulated" (Müdahale edilmek, kullanılmak) fiilinden sonra bir AMAÇ bildiriliyor.\\n2️⃣ "Bilişsel çöküşü önlemek İÇİN".\\n3️⃣ İngilizcede amaç "to + V1" ile verilir ✅\\n4️⃣ Sonuç: B şıkkı.'
      ),
      ExampleQuestion(
        question: 'The presence of microscopic plastic particles in human blood indicates that environmental pollution has ---- permeated the human body.',
        options: ['A) rarely', 'B) barely', 'C) completely', 'D) hesitantly', 'E) scarcely'],
        correctIndex: 2,
        explanation: 'İnsan kanında bile plastik bulunması, çevre kirliliğinin insan vücuduna "tamamen / bütünüyle" (completely) nüfuz ettiğini gösterir.',
        stepByStep: '1️⃣ Kanda bile plastik varsa, kirlilik vücuda nasıl nüfuz etmiştir?\\n2️⃣ Şıklara bak:\\n • rarely / barely / scarcely = nadiren, zar zor (Olumsuz)\\n • completely = tamamen ✅\\n3️⃣ Sonuç: C şıkkı.'
      ),
      ExampleQuestion(
        question: 'A substantial amount of research has focused on ---- the immune system differentiates between benign self-antigens and dangerous foreign pathogens.',
        options: ['A) what', 'B) why', 'C) how', 'D) whenever', 'E) whichever'],
        correctIndex: 2,
        explanation: 'Bağışıklık sisteminin zararsız kendi antijenleri ile tehlikeli patojenleri "NASIL" (how) ayırt ettiğine odaklanılmıştır.',
        stepByStep: '1️⃣ Cümledeki fiil "differentiates" (ayırt eder).\\n2️⃣ "Bağışıklık sisteminin bunu NASIL (how) ayırt ettiğine odaklanıldı" mantıklıdır.\\n3️⃣ Sonuç: C şıkkı.'
      ),
      ExampleQuestion(
        question: 'If the tumor ---- to adjacent tissues, the surgical intervention ---- much more complicated and risky.',
        options: ['A) spreads / becomes', 'B) had spread / would have become', 'C) will spread / has become', 'D) spread / will become', 'E) has spread / became'],
        correctIndex: 1,
        explanation: 'Type 3 koşul cümlesi. Eğer tümör yayılmış olsaydı (had spread), müdahale çok daha karmaşık hale gelirdi (would have become).',
        stepByStep: '1️⃣ Geçmişe yönelik bir kurgu / hipotetik durum söz konusu.\\n2️⃣ "Eğer yayılsaydı, daha zor olurdu."\\n3️⃣ If + Past Perfect (had V3) → would have V3 ✅\\n4️⃣ Sonuç: B şıkkı.'
      ),
      ExampleQuestion(
        question: 'The primary goal of palliative care is not to cure the underlying disease ---- to optimize the patient\'s quality of life during their final days.',
        options: ['A) nor', 'B) and', 'C) or', 'D) but', 'E) yet'],
        correctIndex: 3,
        explanation: '"Not ... but ..." (Şu değil, ... budur) kalıbı. Hastalığı tedavi etmek DEĞİL (not to cure), yaşam kalitesini artırmaktır (but to optimize).',
        stepByStep: '1️⃣ Cümledeki "not" bağlacına dikkat edin.\\n2️⃣ İngilizcede bir şeyin o değil de şu olduğunu vurgulamak için "not X but Y" kalıbı kullanılır.\\n3️⃣ Sonuç: D şıkkı.'
      ),
    ]
  ),
`;

content = content.replace('  ),\n];', '  ),' + newCategory + '\n];');
fs.writeFileSync(targetFile, content);
console.log('Successfully appended 25 new Karma questions to questions_data.dart');
