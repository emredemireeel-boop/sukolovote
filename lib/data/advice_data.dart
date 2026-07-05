class AdviceSection {
  final String title;
  final List<String> items;

  const AdviceSection({
    required this.title,
    required this.items,
  });
}

class Advice {
  final String id;
  final String title;
  final String author;
  final String description;
  final String sourceInfo;
  final String icon;
  final List<AdviceSection> sections;

  const Advice({
    required this.id,
    required this.title,
    required this.author,
    required this.description,
    required this.sourceInfo,
    required this.icon,
    required this.sections,
  });
}

final List<Advice> adviceList = [
  const Advice(
    id: 'nisanur_el_85plus',
    title: 'YÖKDİL\'den 1 Ayda 85+ Puan Almak',
    author: 'Nisanur El',
    description: 'Ezberlemeden & Kalıcı Kelime Öğrenme Yöntemi ve Kapsamlı Çalışma Rehberi',
    sourceInfo: 'Bu rehber, Nisanur El\'in "YÖKDİL\'den 1 Ayda 85+ Puan Almak | Ezberlemeden & Kalıcı Kelime Öğrenme Yöntemim!" adlı videosundan özetlenmiştir.',
    icon: '🎯',
    sections: [
      AdviceSection(
        title: '1. YÖKDİL\'e Genel Bakış ve Zihniyet',
        items: [
          'Korkulacak Bir Sınav Değil: YÖKDİL, doğru strateji ve çabayla 1 ay gibi bir sürede 80-85-90 gibi yüksek puanların rahatlıkla alınabileceği bir sınavdır.',
          'YDS ile Karşılaştırma: Kelimeler ve soru içerikleri bakımından YDS\'ye göre bir tık daha kolaydır.',
          'Avantajı: Sosyal, Fen ve Sağlık olmak üzere 3 alana ayrılır. Kendi mezuniyet alanınızdan girdiğiniz için aşina olduğunuz kelimeler ve konulardan soru gelir; bu büyük bir avantajdır.',
          'Sınav Yapısı: 80 sorudan oluşur, 180 dakika süresi vardır ve yanlışlar doğruları götürmez.',
        ],
      ),
      AdviceSection(
        title: '2. İlk Adım: Sınavı Tanıma ve Seviye Tespiti',
        items: [
          'Çalışmaya başlamadan önce ezbere bir yola girmemek için mevcut durumunuzu görmeniz gerekir.',
          'Ön İnceleme: ÖSYM\'nin sitesine girip son 5 yılın çıkmış YÖKDİL sorularından birini açın. Soruların yapısına, kelimelere, gramer ağırlığına göz atarak konulara ne kadar uzak veya yakın olduğunuzu tartın.',
          'Seviye Belirleme Sınavı (Deneme Çözümü): İngilizce konusunda sıfır değilseniz, kendi alanınızdan (Sosyal, Fen veya Sağlık) son 4-5 yılın çıkmış bir sınavını gerçek sınav koşullarında çözün.',
          'Süre Tavsiyesi: Sınav 180 dakika olsa da, kendinizi denemek için 170-175 dakika süre verin (YÖKDİL genelde süre problemi yaşanan bir sınav değildir).',
        ],
      ),
      AdviceSection(
        title: '3. Altın Kurallar: Deneme Analizi ve Strateji Belirleme',
        items: [
          'Çözdüğünüz ilk denemenin sonucu, önünüzdeki 1 - 1.5 aylık çalışma programınızın omurgasını oluşturacaktır.',
          'Sınav temel olarak; Kelime, Gramer, Çeviri, Cümle Tamamlama ve Paragraf sorularından oluşur.',
          'Hangi bölümde eksik, hangi bölümde iyi olduğunuzu net bir şekilde belirleyin (Örn: Grameriniz tam olabilir ama çeviride hata yapıyor olabilirsiniz).',
          'İyi olduğunuz konuları arka plana atıp, eksik olduğunuz konulara yoğunlaşacağınız bir program çizin.',
          '💡 En Kritik İpucu: YÖKDİL\'in her bölümünde istisnasız en önemli olan iki şey "Kelime" ve "Bağlaç" bilgisidir. Sadece ilk 20-30 soruda değil, doğrudan paragraf sorularını çözdürecek olan temel anahtar budur. Eğer 80-85 üstü hedefliyorsanız kelime ve bağlaç çalışmasını asla atlamayın.',
        ],
      ),
      AdviceSection(
        title: '4. Kaynak Seçimi ve Gramer Çalışması',
        items: [
          'İlk deneme sonucunuza göre kaynak seçiminizi yapın. Puanınız 80 civarıysa ek bir gramer kitabı almanıza gerek yoktur, internet kaynakları yeterlidir. Ancak 80\'in altındaysanız ve 85-90 hedefliyorsanız bir gramer kitabı edinmeniz şarttır.',
          'Klasik YDS/YÖKDİL Konu Anlatımlı Soru Bankası: Taktik ağırlıklı, Türkçe anlatımlı orta seviye kitaplar (İlk 30 soruluk gramer ve kelime kısmı için idealdir).',
          'Cesur Öztürk - Gramer Kitabı: (B1-B2 seviyesinde olanlar için) Tamamen İngilizce anlatımlı, içeriği dopdolu ve orta/ileri seviye bir kaynaktır. Sadece sınav için değil, ömür boyu kaynak olarak kullanılabilir.',
          'Paragraf Odaklı Kitaplar: (Örn: ODTÜ veya Hacettepe Taş Yayınları) Paragraf soruları ve paragraf kelimelerini çözmek/öğrenmek için özel olarak hazırlanmış orta/orta-üstü kaynaklardır.',
          'Gramer için kural: Her gün belirlediğiniz sayfa sayısı veya süre (1-2 saat) kadar düzenli çalışın. YÖKDİL\'de çok üst düzey gramer karşınıza çıkmaz, temel kuralları oturtmak yeterlidir.',
        ],
      ),
      AdviceSection(
        title: '5. 🌟 Ana Odak: Ezberlemeden Kalıcı Kelime Öğrenme Yöntemi',
        items: [
          'Videonun en önemli taktiği budur. YÖKDİL ve YDS\'de kelimeler yıllar içinde sürekli kendini tekrar eder. Bu kelimelerin listesini internette "YÖKDİL Çıkmış Kelimeler" yazarak kolayca bulabilirsiniz. Önemli olan kelimeleri bulmak değil, onları nasıl çalıştığınızdır.',
          'Kullanılacak 3 Temel Site:\n1) Tureng.com: Kelimenin Türkçe anlamına bakmak için.\n2) Longman Dictionary: Kelimenin İngilizce anlamını ve en önemlisi örnek cümlelerini görmek için.\n3) Collins Dictionary: Kelimenin eş anlamlılarına (synonyms) ve zıt anlamlılarına (antonyms) bakmak için.',
          'Kalıcı Öğrenme (Flashcard) Pratiğinin Uygulanışı:\nBir A4 kağıdını 4 veya 5 parçaya (kartlara) bölün.\nAdım 1: Kartın en üstüne çalışacağınız kelimeyi yazın. (Şimdilik Türkçe hiçbir şey yazmayın).\nAdım 2: Longman\'a girin, kelimenin İngilizce anlamını bulun. Anlayacağınız şekilde (gerekirse kısaltarak) kartınıza İngilizce olarak yazın.\nAdım 3: Yine Longman\'dan, o kelimenin en yaygın kullanılan anlamına uygun bir örnek cümleyi seçip karta yazın.\nAdım 4: Collins\'e girin. O anlama en yakın eş anlamlılarını (ve varsa zıt anlamlılarını) karta ekleyin.\nAdım 5 (Opsiyonel İstisna): Tüm bu İngilizce detaylara rağmen kelime aklınızda oturmuyorsa, en alta dikkatinizi çok dağıtmayacak şekilde ufakça Türkçesini de not edebilirsiniz.',
          'Nasıl Çalışılır?\nOturup bir kelimeyi 10 kere yazarak veya karşılığını ezberleyerek asla çalışmayın. Hazırladığınız bu kelime kartlarını, günde ayırdığınız bir vakitte (örn: 30-40 dakika) sadece baştan sona okuyun. Bu okumaları düzenli (her gün) yaptığınızda, kelimeleri bağlam içinde ve kalıcı olarak öğrendiğinizi göreceksiniz.',
        ],
      ),
      AdviceSection(
        title: '6. Paragraf ve Soru Çözümü Taktikleri',
        items: [
          'Kelime ve gramer temelinizi sağlamlaştırdıktan sonra geriye kalan en büyük iş bol soru çözmektir.',
          'İlk başlarda İngilizce paragraf çözmek zor geliyorsa, direkt soru çözmek yerine YouTube\'dan "Soru Çözüm Videoları" (Örn: Sınav Kampı kanalı) izleyin. Hocaların sorulara nasıl yaklaştığını, hangi taktikleri kullandığını görerek başlayın.',
          'Kendinize günlük hedefler koyun (Örn: Her kategoriden şu kadar soru, veya şu kadar saat çalışma) ve süreklilik sağlayın.',
          'YÖKDİL\'de okuduğunu hızlı anlamak, geri dönüp soruları tekrar kontrol etme şansı vereceği için hız pratikleri yapın.',
        ],
      ),
      AdviceSection(
        title: '7. Deneme Çözümü ve Son Hafta Stratejileri',
        items: [
          'Zamanlama: Eğer sınava 1-1.5 ay gibi kısa bir sürede hazırlanıyorsanız, yoğun deneme çözümlerini son 1-1.5 haftaya bırakın. Süreniz daha uzunsa son 3-4 haftaya yayabilirsiniz.',
          'Deneme Analizi (Çok Önemli): Denemeyi çözüp geçmeyin. Yapamadığınız veya bilmediğiniz kelimeleri mutlaka not alın ve kendi oluşturduğunuz kelime fişleri (kartları) listenize ekleyerek onlara da çalışın.',
          'Sınav Anı / Kategori Stratejisi: Sınava başlarken kitapçığı sırayla çözmek zorunda değilsiniz. Kendinize ait bir stratejiniz olsun.\nÖrnek 1: Çeviride kendinize güveniyorsanız çeviriden başlayıp moral bulun.\nÖrnek 2: Odaklanmanız en yüksekken zor olan paragrafları aradan çıkarıp, sona daha kolay bölümleri bırakın.\nÖnemli olan sınav anında paniklememek ve size en uygun olan taktiği denemelerde belirlemiş olmaktır.',
          'Özetle; Düzenli kelime okumaları (ezber değil), gramer eksiklerini kapatma, stratejik soru çözümü ve analizli denemeler ile YÖKDİL\'den kısa sürede çok yüksek verim almak mümkündür.',
        ],
      ),
    ],
  ),
  const Advice(
    id: 'dr_eda_21_days',
    title: 'YÖKDİL / TIPDİL\'den 21 Günde 80 Puan Almak',
    author: 'Dr. Eda',
    description: 'Nokta atışı taktiklerle kısıtlı zamanda yüksek puana ulaşma çalışma programı',
    sourceInfo: 'Bu rehber, "Dr Eda Blog" kanalının "YÖKDİL/TIPDİL 21 günde nasıl 80 aldım? ÇALIŞMA PROGRAMI" adlı videosundan derlenmiştir.',
    icon: '🩺',
    sections: [
      AdviceSection(
        title: '1. Genel Prensip: Boş Saatler Değil, "Verimli Saatler"',
        items: [
          'Gerçekçi Çalışma: Sadece masada saatlerce boş boş oturmak yerine, yüksek verimle odaklanarak çalışmak esastır.',
          'Çalışma Günlüğü Tutmak: Her gün hangi konuya, ne kadar süre çalıştığınızı bir ajandaya veya kağıda mutlaka not edin. Bu hem motivasyon sağlar hem de eksiklerinizi görmenizi kolaylaştırır.',
          'Esneklik: Program günde ortalama 3-4 saatlik bir çalışmayı baz alır. Eğer tüm gününüz boşsa bu süreyi artırarak çok daha yüksek puanlar (90+) hedefleyebilirsiniz.',
        ],
      ),
      AdviceSection(
        title: '2. 21 Günlük Kampın Genel Dağılımı',
        items: [
          'A. İlk 11 Gün: Konu Anlatımı ve Gramer (Hafta 1 ve Hafta 2\'nin Başı)\nİlk 11 günün temel amacı Gramer (Dilbilgisi) ve Bağlaç konularını tamamen bitirmektir.\nÖnce YouTube\'dan ilgili gramer konusunun konu anlatım videosunu izleyin.\nArdından elinizdeki YÖKDİL/TIPDİL konu anlatımlı kitaptan aynı konuyu okuyup notlarınızı pekiştirin.\nHemen sonrasında kitabın arkasındaki o konuyla ilgili soru testlerini çözün.',
          'Günlük 30 Dakika Sesli Kelime Tekrarı: Günün sonunda veya başında mutlaka 30 dakika kelime çalışması yapılmalıdır. Yeni öğrenilen kelimelerin üzeri fosforlu kalemle çizilmeli, ancak yanlarına hemen Türkçeleri yazılmamalıdır. Kelimeler sesli bir şekilde okunarak tekrar edilmelidir.',
          'B. Kalan 10 Gün: Soru Çözümü, Çeviri ve Denemeler (Hafta 2\'nin Sonu ve Hafta 3)\nKonular bittikten sonra ağırlık tamamen pratik yapmaya ve sınav formatına alışmaya kayar.',
          'Çeviri Çalışmaları: Paragraf sorularını ve anlam bütünlüğü sorularını çözebilmek için çeviri yeteneği şarttır. Çeviri kitaplarından ve YouTube\'daki çeviri videolarından yararlanarak İngilizce metinleri sınav formatında çevirme pratikleri yapın.',
          'Kelime Tekrarında Süre Yönetimi: Eğer 30 dakikalık kelime sürenizin 10 dakikasında o günün yeni kelimelerini bitirdiyseniz, "Kalan 20 dakika benimdir" demeyin. Kalan sürede bir önceki hafta öğrendiğiniz kelimeleri sesli okuyarak tekrar edin.',
          'YouTube Canlı Yayın Kampları: Konular bittikten sonra deneme çözme aşamasında paniklerseniz, YouTube\'daki "YÖKDİL Canlı Yayın Kampları"nı izleyin. Hocaların genel tekrar yaptığı ve deneme çözdüğü bu videolar, eksik konuları fark etmenizi ve sınav taktiklerini kapmanızı sağlar.',
          'C. Son Hafta: Tam Odak ve Çıkmış Sorular\nSınava yaklaştıkça çalışma saatleri giderek artırılmalıdır (Örn: Dr. Eda son hafta 4 saat, ardından 5 saat ve sınavdan önceki gün 6.5 saat çalışmıştır).',
          'Son 3 Yılın Çıkmış Soruları: Sınavdan önce mutlaka son 3 sınavın çıkmış sorularına bakın. Kağıt üzerinde kendiniz çözmektense, soruların çözümlü videolarını izlemek çok daha öğreticidir.',
          'Deneme Çözümü ve Hata Analizi: 10\'lu bir deneme setinin en az 4-5 tanesini çözün.\nYanlış yaptığınız soruları analiz edin. Eğer sorun bir gramer kuralıysa, geri dönüp konu anlatımlı kitaptan o eksik bölüme çalışın.\nSorudaki bilmediğiniz kelimeleri kelime defterinize/kağıdınıza ekleyin.',
          'Son Gün "Hızlı Tarama": Sınavdan bir gün önce elinizde ne kadar not, PDF, kelime listesi, deneme analizi varsa çok hızlı bir şekilde (üzerinde saatlerce durmadan) tarayın. Hafızayı son kez tazelemek büyük fark yaratır.',
        ],
      ),
      AdviceSection(
        title: '3. 🌟 Sınav Kazandıran "İki Altın Taktik"',
        items: [
          'Dr. Eda\'nın 80 almasında en kritik rolü oynayan ve şiddetle tavsiye ettiği iki özel yöntem:',
          'Altın Taktik 1: Kendi "Bağlaç Formül" Kağıdınızı Hazırlayın\nBağlaçlar hem cümle tamamlama hem de çeviri sorularında sınavın en büyük kurtarıcısıdır. Sadece anlamlarını bilmek yetmez.\nKendi el yazınızla, çalışma sürecinizde fark ettiğiniz detayları bir kağıda "formül" gibi dökün.\n* Hangi bağlaçlar birbiriyle eş anlamlı?\n* Hangi bağlacın peşinden tam cümle (S+V+O) gelir?\n* Hangi bağlaç kendinden sonra isim/isim öbeği alır?\n* Hangi bağlaç olumsuz bir anlam gerektirir?\nNasıl Kullanılır? Bu özenle hazırlanmış bağlaç taktik kağıdını, sınav günü evden çıkmadan 1 saat önce tamamen bu kağıda odaklanarak detaylıca tekrar edin. Sınavda doğrudan net getirecektir.',
          'Altın Taktik 2: Kelimeleri "Ses Kaydına" Almak (Ölü Zamanları Değerlendirme)\nKelime ezberlemek masada oturarak yapılacak bir iş değildir.\nYeni kelimeleri, Türkçe anlamlarını ve birbirinin yerine geçebilecek eş anlamlılarını kendi sesinizle telefona kaydedin.\nNe Zaman Dinlenmeli? Kahvaltı hazırlarken, markete giderken, yolda yürürken... Kısacası müzik dinlemek yerine kulaklığı takıp arka planda kendi sesinizden bu kelimeleri dinleyin. Ne kadar sık maruz kalırsanız o kadar kalıcı olur.',
          '🚨 Son Dakika "Bahçe" Taktiği: "Sınav sabahı veya son gün ders çalışılmaz" efsanesine inanmayın! Dr. Eda, hazırladığı bu uzun ses kaydını sınav günü binanın bahçesinde beklerken açmış, çarpı 1.5 (1.5x) hızına alarak son saniyeye kadar dinlemiştir. Son dakika duyduğunuz bir kelime sınavda doğrudan bir soru çözdürebilir.',
          'Özetle; kısıtlı zaman, doğru kaynaklar (konu anlatımı + çeviri + çıkmış soru çözümleri), bağlaçların mantığını kavrama ve kelimeleri işitsel/sesli olarak sürekli tekrar etme stratejisiyle birleştirildiğinde başarı kaçınılmazdır.',
        ],
      ),
    ],
  ),
  const Advice(
    id: 'yokdil_50_puan_baraji',
    title: 'YÖKDİL: 50 Puan Barajını Aşma Rehberi',
    author: 'Uzman Eğitmen',
    description: 'YÖKDİL / YDS / TIPDİL\'den 50 puan (40 doğru) barajını en az stresle aşmak için nokta atışı taktikler.',
    sourceInfo: 'Bu rehber, akademik başvurular için gereken 50 puan barajını hedefleyen adaylar için özel olarak hazırlanmıştır.',
    icon: '📌',
    sections: [
      AdviceSection(
        title: '📌 Ana Felsefe: 50 Puan Aslında Ne Demektir?',
        items: [
          'YÖKDİL\'de 50 puan almak demek, 40 tane soruya yanlış cevap verme lüksünüzün olması demektir! Bu çok büyük bir avantajdır.',
          'Sınavdaki en zor 30-40 soruyu hiç yapamasanız bile hedefinize ulaşabilirsiniz. Bu yüzden mükemmeliyetçi olmayı bırakmalı, "her kelimeyi çevirmeliyim, tüm grameri bilmeliyim" psikolojisinden çıkmalısınız.',
          'Hedefimiz, sınavın en kolay ve en net bölümlerinden garanti 40 neti toplamaktır.',
        ],
      ),
      AdviceSection(
        title: '🎯 50 Puan İçin Odaklanılması Gereken "Garanti Puan" Bölümleri',
        items: [
          'Sınavda enerjinizi ve zamanınızı eşit dağıtmayın. Puanları şu bölümlerden toplayacağız:',
          '1. Çeviri Soruları (Sınavın Altın Madeni)\nSoru Sayısı: 12 | Hedef Doğru: 10 - 12\nNeden Önemli? Çeviri soruları Türkçe dil bilginizle bile çözebileceğiniz, sınavın en kolay bölümüdür. Cümleyi baştan sona okuyup çevirmeye çalışmayın.\nTaktik: Sadece ÖZNE (Subject) ve YÜKLEM (Verb) eşleştirmesi yapın. İngilizce cümlede yüklem "is expected" (beklenmektedir) ise, Türkçe şıklarda son kelimesi "beklenmektedir" olmayan tüm şıkları anında eleyin. İkinci adımda BAĞLAÇ (ve, ama, çünkü) kontrolü yapın.',
          '2. Bağlaçlar ve Cümle Tamamlama (Sınavın Omurgası)\nSoru Sayısı: Yaklaşık 15-20 soru | Hedef Doğru: En az 10\nNeden Önemli? İngilizce gramerinde her şeyi bilmenize gerek yok, ama Bağlaçları (Conjunctions) adınız gibi bilmelisiniz.\nTaktik (+ / - Mantığı): Cümle tamamlama sorularını anlamdan çok matematikle çözün.\n* Cümlenin başı olumlu bir şeyden (+) bahsediyor, şıklardaki cümle de olumluysa (+), araya Sebep-Sonuç veya Paralellik bağlacı (Because, Therefore, And) gelir.\n* Cümlenin başı olumlu (+), devamı olumsuz (-) ise araya kesinlikle Zıtlık bağlacı (But, Although, However) gelir. Anlamını bilmediğiniz kelimeler olsa bile bu matematiksel geçişle soruları doğru yapabilirsiniz.',
          '3. Kelime Soruları (Temel Düzey)\nSoru Sayısı: İlk 20 soru içinde (Kelime + Phrasal Verb)\nNeden Önemli? Her kelimeyi öğrenemezsiniz ama ÖSYM\'nin takıntılı olduğu akademik kelimeler vardır.\nTaktik: İleri düzey edebi kelimeleri boşverin. Temel fiilleri (increase, decrease, cause, prevent, provide) ve bunların eş anlamlılarını iyi bilin. Phrasal Verb\'lerde gözünüzü korkutmayın; en sık çıkan 30-40 tanesine bakmanız 50 puan için yeterlidir.',
          '4. Paragraf ve Okuma (Seçici Olma Vakti)\nSoru Sayısı: 15 (5 Paragraf x 3 Soru)\nTaktik: 50 puan hedefleyen biri paragraf sorularında çok zaman kaybetmemelidir. Paragrafların tamamını anlamaya çalışmayın. Soruda sizden istenen "anahtar kelimeyi (keyword)" bulun ve metin içinde sadece o kelimenin geçtiği cümleye odaklanın (Scanning). Paragrafın genel fikri veya felsefesiyle ilgilenmeyin, sadece bilgi arayın.',
        ],
      ),
      AdviceSection(
        title: '💡 Altın Değerinde İpuçları ve Detaylı Dipnotlar',
        items: [
          'Zamanı Yönetme ve Turlama Tekniği: Sınava 1. sorudan başlayıp 80. soruda bitirmek zorunda değilsiniz. Kendi güçlü olduğunuz, en kolay bulduğunuz bölümden başlayın (Önerilen: Çeviri -> Cümle Tamamlama -> Kelime/Gramer -> Paragraf). Zorlandığınız soruda 1 dakikadan fazla durmayın, yuvarlak içine alıp hemen geçin.',
          'Yanlış Doğruyu GÖTÜRMEZ: YÖKDİL\'de yanlış cevaplar doğrularınızı etkilemez. Optik formda asla boş yer bırakmayın. Sınavın son 5-10 dakikasında yapamadığınız veya yetişmeyen tüm sorular için kendinize bir "joker şık" (örn: hepsi C) belirleyip işaretleyin. Şans eseri 3-4 net kazanabilirsiniz.',
          'Tense (Zaman) Uyumu Pratiği: Gramer sorularında veya cümle tamamlamalarda bir taraf "Past" (Geçmiş - V2, was/were) ise, diğer tarafın da "Past" olma ihtimali yüzde 90\'dır. Bir taraf "Present/Future" ise diğer taraf da öyle olmalıdır. Bu basit kural size cümlenin anlamını bilmeden şık eletebilir.',
          'Referans Kelimeler (Reference Words): Akışı bozan cümle veya paragraf tamamlama sorularında "This, That, Such, These, They" gibi işaret zamirleri hayat kurtarır. Bir cümlede "these patients" (bu hastalar) diyorsa, o cümleden hemen önce "hastalar"dan bahsedilmiş olması şarttır. Yoksa akış bozulmuş demektir.',
          '"Too, Also, As well" (Paralellik Avcısı): Şıklarda veya metinde bu kelimeleri görüyorsanız, cümleye "ayrıca, dahi, de/da" anlamı katar. Bu, önceki cümledeki fikrin aynı şekilde, belki başka bir özne üzerinden desteklenerek devam edeceğinin kesin kanıtıdır.',
          '"Eksi" (-) Şıkları Eleme Taktiği: Özellikle ilk kelime/gramer sorularında, şıklardaki 5 kelimenin 4\'ü olumsuz (zarar vermek, azaltmak, yok etmek) ve 1\'i olumlu (artırmak, geliştirmek) anlama geliyorsa, cevap genellikle farklı olan o tek olumlu kelimedir (veya tam tersi).',
        ],
      ),
    ],
  ),
  const Advice(
    id: 'fikirhastasi_60plus',
    title: 'YÖKDİL\'de Başarı Stratejileri (60+ Puan)',
    author: 'FikirHastası',
    description: 'YÖKDİL sınavında barajı aşmak ve 60+ puan almak için son günlerde uygulanabilecek çalışma tavsiyeleri.',
    sourceInfo: 'Bu rehber, "FikirHastası" kanalının "YÖKDİL\'de Başarı Stratejileri" adlı videosundan derlenmiştir.',
    icon: '🚀',
    sections: [
      AdviceSection(
        title: '1. YÖKDİL Neden Daha Avantajlı Bir Sınav?',
        items: [
          'ÖSYM\'nin düzenlediği dil sınavları arasında en kolayı YÖKDİL olarak kabul edilir.',
          'YDS kadar zor sorular içermez ve YDT gibi zaman kısıtlaması aşırı dar değildir.',
          'Yanlışlar doğruları götürmediği için emin olunmayan sorularda da işaretleme yapılabilir.',
          'Sağlık, Fen ve Sosyal Bilimler olmak üzere üçe ayrılması, adayların aşina olduğu metinlerle karşılaşmasını sağlar.',
        ],
      ),
      AdviceSection(
        title: '2. Sınav Çözüm Stratejisi',
        items: [
          'Zorlayıcı Sorular: Paragraf tamamlama ve paragraf okuduğunu anlama soruları.',
          'Orta Zorluktaki Sorular: Cümle tamamlama, cloze test ve kelime soruları.',
          'En Kolay Sorular: Çeviri, gramer ve anlamı bozan cümleyi bulma soruları.',
          'Tavsiye: Sınava doğru yapma ihtimalinizin en yüksek olduğu, nispeten daha "kolay" olan (örneğin çeviri) sorularla başlayın. Bu soruları yorgun bir zihinle sona bırakmak, puan kaybetmenize yol açabilir.',
        ],
      ),
      AdviceSection(
        title: '3. Kısa Sürede Puan Sıçratacak Konular',
        items: [
          'Sınava kısa bir süre kalsa bile sadece Phrasal Verbs (Deyimsel Fiiller) ve Bağlaçlar üzerine yoğunlaşmak size 10-15 civarında soru kazandırabilir.',
          'En sık çıkan 50-60 bağlaç ve 50-60 phrasal verb\'e çalışmak büyük fark yaratır.',
        ],
      ),
      AdviceSection(
        title: '4. Son Dönem Kelime Çalışması',
        items: [
          'Sınava az gün kaldı diyerek kelime çalışmayı bırakmayın; günde 15 kelime çalışmak 20 günde 300 kelime gibi ciddi bir rakama ulaşmanızı sağlar.',
          'Kelime listesi ezberlemek yerine geçmiş yılların YÖKDİL sınavlarını inceleyin.',
          'Özellikle soru köklerinde bilmediğiniz kelimeleri ve yapıları çıkararak sınava kadar öğrenmeye çalışın, çünkü asıl problem genelde soru kökünü anlayamamaktır.',
        ],
      ),
      AdviceSection(
        title: '💡 Dipnotlar ve Altın Kurallar',
        items: [
          'Sallamak Yok: Soruları asla tamamen boş bırakmayın ya da körü körüne sallamayın. Doğrudan cevabı bulamasanız bile şıkları eleyerek en yakın seçeneğe gitmeye çalışın.',
          'Motivasyon: Kendinize güvenmek, sınav anında enerjiyi yüksek tutmak ve olumlu düşünmek başarıyı doğrudan etkiler.',
        ],
      ),
    ],
  ),
  const Advice(
    id: 'ai_ultimate_90_plus',
    title: 'Kusursuz YÖKDİL Rotası: 90+ İçin Bilimsel Çalışma Metodu',
    author: 'Antigravity AI',
    description: 'Bilişsel bilimlere dayalı, aralıklı tekrar ve analitik okuma yöntemleriyle 90+ puanı garantileyen en üst düzey rehber.',
    sourceInfo: 'Bu rehber, Antigravity AI tarafından binlerce dil öğrenimi ve sınav stratejisi analiz edilerek, "Aktif Hatırlama" ve "Aralıklı Tekrar" prensipleri üzerine inşa edilmiştir.',
    icon: '🧠',
    sections: [
      AdviceSection(
        title: '1. Bilişsel Temel: Neden Unutuyoruz ve Çözüm Ne?',
        items: [
          'Ebbinghaus Unutma Eğrisi: Yeni öğrendiğiniz bir kelimenin veya gramer kuralının yüzde 70\'ini ilk 24 saat içinde unutursunuz. Bu beynin doğal bir savunma mekanizmasıdır.',
          'Çözüm -> Aralıklı Tekrar (Spaced Repetition): Kelimeleri ve bağlaçları klasik listelerden alt alta okumak yerine; 1. Gün, 3. Gün, 7. Gün ve 14. Gün olacak şekilde sistemli aralıklarla tekrar etmelisiniz.',
          'Uygulama: Kelime havuzu modülümüzdeki veya kendi çıkardığınız kelimeleri mutlaka flaş kart (flashcard) mantığıyla, sadece hatırlayamadıklarınızı daha sık göreceğiniz bir düzenekte çalışın.',
        ],
      ),
      AdviceSection(
        title: '2. Kelimede Kök (Root) ve Ek (Affix) Analizi',
        items: [
          'Akademik kelimeler tesadüfen oluşmaz; Latince ve Yunanca köklerden türetilirler. Sadece 100 kök kelime öğrenerek 1000\'den fazla kelimenin anlamını tahmin edebilirsiniz.',
          'Örnek Prefix (Ön Ek): "Mal-" (kötü) -> Malnutrition (kötü beslenme), Malign (kötü huylu tümör), Malfunction (işlev bozukluğu). Sadece "Mal-" ekini bilmek, sınavda şıklardaki olumsuz bir kelimeyi anında yakalamanızı sağlar.',
          'Örnek Suffix (Son Ek): "-itis" (iltihap) -> Bronchitis (bronş iltihabı), Hepatitis (karaciğer iltihabı).',
          'Sınav Taktik: Anlamını hiç bilmediğiniz bir kelime sorusunda, kelimenin ön ekine bakarak (+) olumlu mu yoksa (-) olumsuz mu olduğunu tahmin edin ve bağlaç mantığıyla şıkları eleyin.',
        ],
      ),
      AdviceSection(
        title: '3. Paragrafları "Parsing" (Cümle Bölme) Tekniğiyle Okumak',
        items: [
          'YÖKDİL paragraflarını bir roman okur gibi baştan sona akıcı şekilde okumaya çalışmak en büyük hatadır. Akademik makaleler, kompleks ve uzun yapılar barındırır.',
          'Taktik: Uzun cümleleri "Bağlaçlardan" (and, but, because, although) ve "Relative Clause" (who, which, that) kısımlarından bıçakla keser gibi bölün.',
          'Örnek: "The bacteria, which have developed resistance to multiple antibiotics due to overuse in hospitals, represent a global threat."\nBölünmüş hali:\n1. The bacteria represent a global threat. (Ana Fikir)\n2. which have developed resistance to antibiotics (Ek Bilgi)\n3. due to overuse in hospitals (Sebep)',
          'Sadece ana omurgayı (1. kısım) okuyarak metnin yüzde 80\'ini hızlıca anlayabilir ve detaylarda boğulmaktan kurtulabilirsiniz.',
        ],
      ),
      AdviceSection(
        title: '4. Hata Defteri (Error Log) Tutmanın Gücü',
        items: [
          'Denemelerde doğru yaptığınız sorular size hiçbir şey öğretmez. Sizi geliştirecek olan tek şey yanlışlarınızdır.',
          'Uygulama: Bir "Hata Defteri" tutun. Yanlış yaptığınız veya sallayarak doğru bulduğunuz her soruyu bu deftere yazın.',
          'Analiz Aşaması: Altına şu üç seçenekten birini not düşün:\n1. "Kelimeyi bilmediğim için yanlış yaptım" (Kelimeyi not al)\n2. "Çeviriyi toparlayamadım" (O cümleyi analiz et)\n3. "Dikkatsizlik/Zaman" (Sınav stratejini gözden geçir)',
          'Sınava 1 hafta kala yeni deneme çözmek yerine sadece bu hata defterini baştan sona okumak, puanınızı en az 10-15 puan yukarı çekecektir.',
        ],
      ),
      AdviceSection(
        title: '5. Sınav Anı Biyolojisi ve Zihinsel Yönetim',
        items: [
          'Glikoz Yönetimi: Sınav 3 saattir ve beyin aşırı glikoz tüketir. 2. saatin sonlarına doğru okuduğunuzu anlamamaya başlamanızın sebebi İngilizce bilmemeniz değil, odak (glikoz) düşüşüdür. Sınav öncesi kompleks karbonhidrat (örn: yulaf) tüketmek şekerinizi uzun süre dengede tutar.',
          'Göz Dinlendirme Kuralı (20-20-20): Her 20 soruda bir (yaklaşık 30-40 dakikada), kağıttan kafanızı kaldırın ve 20 saniye boyunca uzağa bakın. Bu, silier kasları gevşeterek optik yorgunluğu ve odak kaybını önler.',
          'Turlama Tekniğinin Zirvesi: Zor bir soruya denk geldiğinizde beyninizin amigdala bölgesi (korku merkezi) aktifleşir. Bu anksiyete, hemen sonraki kolay soruyu da yanlış yapmanıza sebep olur. Yapamadığınız soruda inatlaşmayın, hemen atlayın. İkinci turda bilinçaltınız o soruyu arka planda çoktan çözmüş olacaktır.',
        ],
      ),
    ],
  ),
  const Advice(
    id: 'dt_enes_ozdil_80',
    title: 'YÖKDİL\'den Nasıl 80 Puan Aldım?',
    author: 'Dt. Enes Özdil',
    description: 'Diş Hekimliği öğrencisi gözünden 2 aylık bir çalışmayla Sağlık Bilimleri sınavından 80 puan (64 doğru) alma serüveni.',
    sourceInfo: 'Bu rehber, Dt. Enes Özdil\'in "YÖKDİL Sağlık Bilimleri sınavından 2 aylık çalışmayla nasıl 80 puan aldım?" temalı video özetinden derlenmiştir.',
    icon: '🦷',
    sections: [
      AdviceSection(
        title: '1. Çalışma Süreci ve Temel Stratejiler',
        items: [
          'Çalışma Süresi: Toplamda yaklaşık 2 - 2.5 ay süren bir hazırlık dönemi ve bu sürenin verimliliğinin yüzde 60-65 civarında olması.',
          'Kelime Öğrenimi ve Tekrar: Hazırlığın merkezinde kelime ezberi var. Ancak klasik ezber yerine "çok fazla tekrar" esastır. Beyin aynı anda çok kelimeyi sadece kısa süreli hafızaya atar, kalıcılık için sürekli tekrar şarttır.',
          'İngilizceye Maruz Kalma: Okul derslerini bazen ihmal edip odağı İngilizce kelimelerde tutmak, otobüs veya metroda seyahat ederken bile telefondan kelime tekrarları yapmak büyük fark yaratır.',
        ],
      ),
      AdviceSection(
        title: '2. Kullanılan ve Önerilen Kaynaklar',
        items: [
          'Kaynak seçimi net olmalı, soru bankası çözmek çoğu zaman bir zaman kaybıdır.',
          'Konu Anlatımlı Kitaplar: Tercih ettiğiniz iyi bir yazarın Sağlık Bilimleri kitabındaki kelime ve cümle yapılarını defalarca (10 kez baştan sona) okuyarak tekrar etmek.',
          'Makale Çevirileri: Belli bir doygunluğa (yaklaşık 70-80 makale çevirisi) ulaştıktan sonra okuduğunuzu anlar hale gelirsiniz.',
          'Soru Bankaları vs Çıkmış Sorular: Soru bankalarındaki sorular YÖKDİL formatından daha zor (extreme) olabilir. Asıl odaklanılması gereken çıkmış sorulardır.',
          'Gramer Çalışması: Gramere çok fazla zaman ayırmak yerine sadece bağlaçlara yoğunlaşmak yeterlidir.',
        ],
      ),
      AdviceSection(
        title: '3. Odaklanılması Gereken Kritik Konular',
        items: [
          'Bağlaçlar (Conjunctions): Bağlaçları ezberlemek yerine "ruhunu ve mantığını" kavramak gerekir. Cümlenin bir tarafı pozitif, diğer tarafı negatifse zıtlık bağlacı geleceğini hissetmek hayat kurtarır.',
          'Çıkmış Sorular: Soru bankası yerine sadece geçmiş yılların sorularını çözmek başarıyı getirir.',
          'Prepositions (Edatlar): Edatları liste halinde ezberlemek çok zordur; sınav anında deneme yanılma ve kulağa hoş gelme yoluyla çözmek daha pratik bir yoldur.',
        ],
      ),
      AdviceSection(
        title: '4. Pratik Tavsiyeler ve Taktikler',
        items: [
          'YouTube\'dan Çıkmış Soru Çözümleri: Sınavın uzun sürmesi nedeniyle deneme çözerken sıkılıyorsanız, hocaların çıkmış soru çözüm videolarını izlemek hem teknik öğretir hem stresi azaltır.',
          'Sosyal Medya ve Ölü Zamanlar: Yolda geçirilen ölü zamanları değerlendirmek için YÖKDİL kelimeleri paylaşan Instagram sayfalarından ekran görüntüleri alıp sürekli tekrar yapın.',
          'Deneme Stratejisi: Çok fazla deneme çözmeye gerek kalmayabilir. Süreç içinde sadece çıkmış bir sınavı gerçek süreyle çözüp durum analizi yapmak yeterlidir.',
          'Eş Anlamlılar (Synonyms): Kelime çalışırken tek bir anlama takılı kalmayıp, o kelimenin şıklarda geçebilecek eş anlamlılarını da mutlaka birlikte öğrenin.',
        ],
      ),
      AdviceSection(
        title: '5. Özet: Ne Yapmalısınız?',
        items: [
          'İyi bir konu anlatımlı kitabı (kelime ve çeviri ağırlıklı) alıp içindeki cümleleri doğal bir şekilde defalarca okuyarak ezberleyin.',
          'Çıkmış soruları alıp çözün, içindeki bilmediğiniz kelimeleri bir deftere yazıp eş anlamlılarıyla birlikte sürekli tekrar edin. Soru bankalarına gereksiz para ve zaman harcamayın.',
        ],
      ),
    ],
  ),
];
