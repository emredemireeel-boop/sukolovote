class ConnectorCategory {
  final String title;
  final String description;
  final List<ConnectorItem> connectors;

  const ConnectorCategory({
    required this.title,
    required this.description,
    required this.connectors,
  });
}

class ConnectorItem {
  final String english;
  final String turkish;
  final String usage;
  final String example;
  final String? note;

  const ConnectorItem({
    required this.english,
    required this.turkish,
    required this.usage,
    required this.example,
    this.note,
  });
}

final List<ConnectorCategory> connectorCategories = [
  // 1. ZITLIK BAĞLAÇLARI
  ConnectorCategory(
    title: 'Zıtlık Bağlaçları (Contrast)',
    description: 'İki cümle arasında zıtlık ilişkisi kurar. YÖKDİL\'de en sık çıkan bağlaç grubu.',
    connectors: [
      ConnectorItem(
        english: 'Although / Even though / Though',
        turkish: '...e rağmen / ...masına rağmen',
        usage: 'Yan cümle bağlacı → + CÜMLE (S + V)',
        example: 'Although the treatment was costly, it saved the patient\'s life.',
        note: 'Although = Even though = Though (üçü de aynı anlam, farklı formalite)',
      ),
      ConnectorItem(
        english: 'Despite / In spite of',
        turkish: '...e rağmen',
        usage: 'Edat → + İSİM / GERUND (-ing)',
        example: 'Despite showing improvement, the patient remained in the ICU.',
        note: '⚠️ Despite + cümle OLMAZ! "Despite he was sick" YANLIŞ → "Despite being sick" DOĞRU',
      ),
      ConnectorItem(
        english: 'However',
        turkish: 'Ancak / Bununla birlikte',
        usage: 'Bağımsız bağlaç → Cümle1. However, Cümle2. VEYA Cümle1; however, Cümle2.',
        example: 'The drug was effective. However, it caused severe side effects.',
        note: 'Öncesinde nokta (.) veya noktalı virgül (;) gelir',
      ),
      ConnectorItem(
        english: 'Nevertheless / Nonetheless',
        turkish: 'Yine de / Buna rağmen',
        usage: 'Bağımsız bağlaç → Cümle1; nevertheless, Cümle2.',
        example: 'The surgery was risky; nevertheless, the team decided to proceed.',
        note: 'However\'dan daha güçlü zıtlık ifade eder',
      ),
      ConnectorItem(
        english: 'On the other hand',
        turkish: 'Öte yandan / Diğer taraftan',
        usage: 'Bağımsız bağlaç → karşılaştırma yapar',
        example: 'Surgery offers a permanent solution. On the other hand, it carries significant risks.',
      ),
      ConnectorItem(
        english: 'Whereas / While',
        turkish: '...iken / oysa',
        usage: 'Yan cümle bağlacı → + CÜMLE',
        example: 'Type 1 diabetes is autoimmune, whereas Type 2 is largely lifestyle-related.',
        note: 'While hem "iken" (zaman) hem "oysa" (zıtlık) anlamında kullanılabilir',
      ),
      ConnectorItem(
        english: 'Yet / Still',
        turkish: 'Ama / Yine de',
        usage: 'Bağımsız veya yan cümle bağlacı',
        example: 'The virus mutated rapidly, yet the vaccine remained effective.',
      ),
      ConnectorItem(
        english: 'On the contrary',
        turkish: 'Aksine / Tam tersine',
        usage: 'Bağımsız bağlaç → güçlü zıtlık',
        example: 'The drug did not worsen the condition. On the contrary, it led to significant improvement.',
      ),
      ConnectorItem(
        english: 'Conversely',
        turkish: 'Tam tersine',
        usage: 'Bağımsız bağlaç',
        example: 'Exercise improves cardiovascular health. Conversely, a sedentary lifestyle increases disease risk.',
      ),
      ConnectorItem(
        english: 'In contrast (to)',
        turkish: '...in aksine / ...den farklı olarak',
        usage: 'Bağımsız bağlaç veya edat (+ isim)',
        example: 'In contrast to earlier studies, this research found no link between the vaccine and autism.',
      ),
    ],
  ),

  // 2. SEBEP-SONUÇ BAĞLAÇLARI
  ConnectorCategory(
    title: 'Sebep-Sonuç Bağlaçları (Cause-Effect)',
    description: 'Neden-sonuç ilişkisi kurar. Sağlık metinlerinde çok yaygın.',
    connectors: [
      ConnectorItem(
        english: 'Because / Since / As',
        turkish: 'Çünkü / ...den dolayı / ...diği için',
        usage: 'Yan cümle bağlacı → + CÜMLE',
        example: 'Because the patient was allergic to penicillin, an alternative antibiotic was prescribed.',
        note: 'Since ve As hem "çünkü" hem "...den beri/iken" anlamında → bağlama dikkat!',
      ),
      ConnectorItem(
        english: 'Because of / Due to / Owing to',
        turkish: '...den dolayı / ...nedeniyle',
        usage: 'Edat → + İSİM / GERUND',
        example: 'Due to the lack of clinical evidence, the drug was not approved.',
        note: '⚠️ "Because of" + isim, "Because" + cümle → çok sık karıştırılır!',
      ),
      ConnectorItem(
        english: 'Therefore / Thus / Hence',
        turkish: 'Bu nedenle / Bu yüzden / Dolayısıyla',
        usage: 'Bağımsız bağlaç → Cümle1; therefore, Cümle2.',
        example: 'The infection spread rapidly; therefore, quarantine measures were implemented.',
      ),
      ConnectorItem(
        english: 'Consequently / As a result',
        turkish: 'Sonuç olarak / Bunun sonucunda',
        usage: 'Bağımsız bağlaç',
        example: 'The patient missed several doses. Consequently, the infection returned.',
      ),
      ConnectorItem(
        english: 'So',
        turkish: 'Bu yüzden',
        usage: 'Eşgüdümlü bağlaç → Cümle1, so Cümle2.',
        example: 'The patient had a high fever, so the doctor prescribed antipyretics.',
      ),
      ConnectorItem(
        english: 'For this reason',
        turkish: 'Bu sebeple',
        usage: 'Bağımsız bağlaç',
        example: 'Antibiotics are ineffective against viruses. For this reason, they should not be used for the common cold.',
      ),
      ConnectorItem(
        english: 'Accordingly',
        turkish: 'Buna göre / Bu doğrultuda',
        usage: 'Bağımsız bağlaç',
        example: 'The blood tests showed elevated liver enzymes. Accordingly, the medication was discontinued.',
      ),
      ConnectorItem(
        english: 'Now that',
        turkish: 'Madem ki / ...diğine göre',
        usage: 'Yan cümle bağlacı → + CÜMLE',
        example: 'Now that the vaccine is available, we can begin the immunization campaign.',
      ),
    ],
  ),

  // 3. KOŞUL BAĞLAÇLARI
  ConnectorCategory(
    title: 'Koşul Bağlaçları (Condition)',
    description: 'Bir koşula bağlı durumları ifade eder.',
    connectors: [
      ConnectorItem(
        english: 'If',
        turkish: 'Eğer / ...se',
        usage: 'Yan cümle bağlacı → If + koşul, sonuç.',
        example: 'If the diagnosis is made early, the survival rate increases significantly.',
      ),
      ConnectorItem(
        english: 'Unless',
        turkish: '...medikçe / ...mezse',
        usage: 'Yan cümle bağlacı → Unless = If...not',
        example: 'Unless the patient takes the medication regularly, recovery will be delayed.',
        note: '⚠️ Unless = If not → Unless cümlesinde "not" kullanılmaz!',
      ),
      ConnectorItem(
        english: 'Provided (that) / Providing (that)',
        turkish: '...şartıyla / ...koşuluyla',
        usage: 'Yan cümle bağlacı → + CÜMLE',
        example: 'The transplant will succeed provided that a compatible donor is found.',
      ),
      ConnectorItem(
        english: 'As long as / So long as',
        turkish: '...dığı sürece',
        usage: 'Yan cümle bağlacı → + CÜMLE',
        example: 'As long as the patient follows the diet, blood sugar levels will remain stable.',
      ),
      ConnectorItem(
        english: 'In case',
        turkish: '...durumunda / ...ihtimaline karşı',
        usage: 'Yan cümle bağlacı → + CÜMLE',
        example: 'In case of an allergic reaction, administer epinephrine immediately.',
      ),
      ConnectorItem(
        english: 'Otherwise',
        turkish: 'Aksi takdirde / Yoksa',
        usage: 'Bağımsız bağlaç',
        example: 'Patients must complete the full course of antibiotics. Otherwise, drug-resistant bacteria may develop.',
      ),
      ConnectorItem(
        english: 'On condition that',
        turkish: '...şartıyla',
        usage: 'Yan cümle bağlacı → + CÜMLE',
        example: 'The drug may be used on condition that the patient is monitored closely.',
      ),
    ],
  ),

  // 4. EKLEME BAĞLAÇLARI
  ConnectorCategory(
    title: 'Ekleme Bağlaçları (Addition)',
    description: 'Bir bilgiye ek bilgi ekler. Paragraf akışında sık kullanılır.',
    connectors: [
      ConnectorItem(
        english: 'Moreover / Furthermore',
        turkish: 'Ayrıca / Üstelik / Dahası',
        usage: 'Bağımsız bağlaç',
        example: 'The drug reduces inflammation. Moreover, it alleviates chronic pain.',
      ),
      ConnectorItem(
        english: 'In addition (to) / Additionally',
        turkish: 'Buna ek olarak / Ayrıca',
        usage: 'Bağımsız bağlaç veya edat (+ isim)',
        example: 'In addition to lowering cholesterol, the medication improves cardiovascular function.',
      ),
      ConnectorItem(
        english: 'Besides',
        turkish: 'Bunun yanı sıra',
        usage: 'Bağımsız bağlaç veya edat',
        example: 'Besides surgery, there are several non-invasive treatment options available.',
      ),
      ConnectorItem(
        english: 'Also / Too / As well',
        turkish: 'Ayrıca / De/Da',
        usage: 'Zarf → cümle içinde kullanılır',
        example: 'Regular exercise also improves mental health and cognitive function.',
      ),
      ConnectorItem(
        english: 'Not only ... but also',
        turkish: 'Sadece ... değil, aynı zamanda ...',
        usage: 'İkili bağlaç → devrik yapı mümkün',
        example: 'Not only does regular exercise strengthen the heart, but it also reduces stress.',
        note: '⚠️ "Not only" cümle başında → devrik yapı (auxiliary + S + V)',
      ),
      ConnectorItem(
        english: 'Apart from / Aside from',
        turkish: '...den başka / ...nin dışında',
        usage: 'Edat → + İSİM / GERUND',
        example: 'Apart from its analgesic properties, aspirin also has anti-inflammatory effects.',
      ),
      ConnectorItem(
        english: 'What is more',
        turkish: 'Dahası / Üstelik',
        usage: 'Bağımsız bağlaç',
        example: 'The new treatment is more effective. What is more, it has fewer side effects.',
      ),
    ],
  ),

  // 5. AMAÇ BAĞLAÇLARI
  ConnectorCategory(
    title: 'Amaç Bağlaçları (Purpose)',
    description: 'Bir eylemin amacını ifade eder.',
    connectors: [
      ConnectorItem(
        english: 'In order to / So as to',
        turkish: '...mak amacıyla / ...mek için',
        usage: 'Amaç zarfı → + fiil (V1)',
        example: 'In order to prevent infection, the wound was thoroughly cleaned.',
        note: 'Olumsuz: "in order not to" / "so as not to"',
      ),
      ConnectorItem(
        english: 'So that',
        turkish: '...sin diye / ...ması için',
        usage: 'Yan cümle bağlacı → + CÜMLE (genellikle can/could/will/would ile)',
        example: 'The doctor prescribed antibiotics so that the infection could be controlled.',
      ),
      ConnectorItem(
        english: 'For the purpose of',
        turkish: '... amacıyla',
        usage: 'Edat → + İSİM / GERUND',
        example: 'For the purpose of early detection, routine screening is recommended.',
      ),
      ConnectorItem(
        english: 'With a view to / With the aim of',
        turkish: '... amacıyla',
        usage: 'Edat → + GERUND',
        example: 'With the aim of reducing mortality, a new vaccination program was launched.',
      ),
    ],
  ),

  // 6. ZAMAN BAĞLAÇLARI
  ConnectorCategory(
    title: 'Zaman Bağlaçları (Time)',
    description: 'Olaylar arasında zaman ilişkisi kurar.',
    connectors: [
      ConnectorItem(
        english: 'When',
        turkish: '...diğinde / ...ince',
        usage: 'Yan cümle bağlacı → + CÜMLE',
        example: 'When the symptoms first appeared, the patient was immediately hospitalized.',
      ),
      ConnectorItem(
        english: 'While / As',
        turkish: '...iken / ...irken',
        usage: 'Yan cümle bağlacı → eşzamanlılık',
        example: 'While the surgeon was operating, the patient\'s heart rate dropped suddenly.',
        note: 'While + continuous tense genellikle eşzamanlılık bildirir',
      ),
      ConnectorItem(
        english: 'Before / After',
        turkish: '...den önce / ...den sonra',
        usage: 'Yan cümle bağlacı veya edat',
        example: 'After the surgery was completed, the patient was monitored in the recovery room.',
      ),
      ConnectorItem(
        english: 'Since',
        turkish: '...den beri',
        usage: 'Yan cümle bağlacı → genellikle Present/Past Perfect ile',
        example: 'Since the vaccine was introduced, the incidence of the disease has dropped dramatically.',
        note: '⚠️ Since: 1) "...den beri" (zaman) 2) "çünkü" (sebep) → bağlama dikkat!',
      ),
      ConnectorItem(
        english: 'Until / Till',
        turkish: '...e kadar',
        usage: 'Yan cümle bağlacı → + CÜMLE',
        example: 'The patient should remain on bed rest until the inflammation subsides.',
      ),
      ConnectorItem(
        english: 'By the time',
        turkish: '...e kadar / ...diğinde',
        usage: 'Yan cümle bağlacı → genellikle Perfect tense ile',
        example: 'By the time the ambulance arrived, the patient had already lost consciousness.',
        note: '⚠️ By the time + Past Simple → Past Perfect (ana cümlede)',
      ),
      ConnectorItem(
        english: 'Once',
        turkish: 'Bir kere ... mi / ...dikten sonra',
        usage: 'Yan cümle bağlacı → + CÜMLE',
        example: 'Once the diagnosis is confirmed, treatment should begin immediately.',
      ),
      ConnectorItem(
        english: 'As soon as',
        turkish: '...ir ...mez',
        usage: 'Yan cümle bağlacı → + CÜMLE',
        example: 'As soon as the test results came back, the doctor changed the treatment plan.',
      ),
    ],
  ),

  // 7. KARŞILAŞTIRMA
  ConnectorCategory(
    title: 'Karşılaştırma Bağlaçları (Comparison)',
    description: 'Benzerlik ve farklılık ifade eder.',
    connectors: [
      ConnectorItem(
        english: 'Just as / As ... as',
        turkish: 'Tıpkı ... gibi / ...kadar',
        usage: 'Karşılaştırma yapısı',
        example: 'Just as exercise benefits the body, reading benefits the mind.',
      ),
      ConnectorItem(
        english: 'Similarly / Likewise',
        turkish: 'Benzer şekilde / Aynı şekilde',
        usage: 'Bağımsız bağlaç',
        example: 'Diabetes requires careful monitoring. Similarly, hypertension demands regular check-ups.',
      ),
      ConnectorItem(
        english: 'In the same way',
        turkish: 'Aynı şekilde',
        usage: 'Bağımsız bağlaç',
        example: 'In the same way that antibiotics fight bacteria, antivirals target viruses.',
      ),
      ConnectorItem(
        english: 'Unlike',
        turkish: '...den farklı olarak',
        usage: 'Edat → + İSİM',
        example: 'Unlike Type 1 diabetes, Type 2 can often be managed with lifestyle changes.',
      ),
    ],
  ),

  // 8. AÇIKLAMA / ÖRNEKLEME
  ConnectorCategory(
    title: 'Açıklama & Örnekleme (Exemplification)',
    description: 'Bir fikri açıklar veya örneklendirir.',
    connectors: [
      ConnectorItem(
        english: 'For example / For instance',
        turkish: 'Örneğin',
        usage: 'Bağımsız bağlaç',
        example: 'Some chronic diseases are preventable. For example, Type 2 diabetes can be avoided through diet and exercise.',
      ),
      ConnectorItem(
        english: 'Such as / Like',
        turkish: 'Gibi / Örneğin',
        usage: 'Edat → + İSİM (liste)',
        example: 'Autoimmune diseases such as lupus and rheumatoid arthritis affect millions.',
      ),
      ConnectorItem(
        english: 'That is (to say) / Namely / i.e.',
        turkish: 'Yani / Diğer bir deyişle',
        usage: 'Bağımsız bağlaç → açıklama',
        example: 'The patient is in remission; that is, the symptoms have temporarily disappeared.',
      ),
      ConnectorItem(
        english: 'In other words',
        turkish: 'Başka bir deyişle',
        usage: 'Bağımsız bağlaç',
        example: 'The prognosis is poor. In other words, the outlook for recovery is not favorable.',
      ),
      ConnectorItem(
        english: 'Specifically / In particular',
        turkish: 'Özellikle / Bilhassa',
        usage: 'Bağımsız bağlaç',
        example: 'Certain nutrients are essential for immune function, in particular vitamin C and zinc.',
      ),
    ],
  ),

  // 9. SONUÇ / ÖZET
  ConnectorCategory(
    title: 'Sonuç & Özet Bağlaçları (Conclusion)',
    description: 'Bir tartışmayı özetler veya sonuçlandırır.',
    connectors: [
      ConnectorItem(
        english: 'In conclusion / To conclude',
        turkish: 'Sonuç olarak',
        usage: 'Bağımsız bağlaç → paragraf/metin sonunda',
        example: 'In conclusion, early intervention is the key to successful treatment outcomes.',
      ),
      ConnectorItem(
        english: 'In summary / To sum up',
        turkish: 'Özetlemek gerekirse',
        usage: 'Bağımsız bağlaç',
        example: 'To sum up, the study demonstrates a clear link between smoking and lung cancer.',
      ),
      ConnectorItem(
        english: 'Overall / On the whole',
        turkish: 'Genel olarak',
        usage: 'Bağımsız bağlaç',
        example: 'Overall, the new drug proved to be both safe and effective in clinical trials.',
      ),
      ConnectorItem(
        english: 'All in all',
        turkish: 'Her şey göz önüne alındığında',
        usage: 'Bağımsız bağlaç',
        example: 'All in all, the vaccination campaign has been a remarkable success.',
      ),
    ],
  ),
];
