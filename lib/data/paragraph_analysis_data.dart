class ParagraphAnalysisData {
  final String title;
  final String fullText;
  final String summaryTr;
  final List<SentenceAnalysis> sentences;

  const ParagraphAnalysisData({
    required this.title,
    required this.fullText,
    required this.summaryTr,
    required this.sentences,
  });
}

class SentenceAnalysis {
  final String english;
  final String turkish;
  final bool isTopicSentence;
  final List<WordHighlight> highlights;

  const SentenceAnalysis({
    required this.english,
    required this.turkish,
    this.isTopicSentence = false,
    this.highlights = const [],
  });
}

class WordHighlight {
  final String word;
  final String meaning;
  final String type; // e.g., 'Bağlaç', 'Fiil', 'Sıfat'

  const WordHighlight({
    required this.word,
    required this.meaning,
    required this.type,
  });
}

const List<ParagraphAnalysisData> paragraphAnalysisList = [
  ParagraphAnalysisData(
    title: 'The Impact of Sleep on Memory',
    fullText: 'Sleep is not merely a period of rest; it is a highly active state during which the brain consolidates memories. Throughout the day, the brain acquires a vast amount of information, but it is during deep sleep that this information is processed and stored. Consequently, individuals who suffer from chronic sleep deprivation often experience significant cognitive deficits. Furthermore, research indicates that adequate sleep enhances problem-solving skills and creativity. Therefore, prioritizing sleep is essential for optimal brain function and overall well-being.',
    summaryTr: 'Uyku sadece dinlenme değil, hafızanın pekiştirildiği aktif bir süreçtir. Gün boyu alınan bilgiler derin uykuda işlenir ve depolanır. Bu nedenle uykusuzluk çekenler bilişsel eksiklikler yaşar. Ayrıca yeterli uyku, problem çözme ve yaratıcılığı artırır. Sonuç olarak, beyin fonksiyonları ve genel sağlık için uykuya öncelik verilmelidir.',
    sentences: [
      SentenceAnalysis(
        english: 'Sleep is not merely a period of rest; it is a highly active state during which the brain consolidates memories.',
        turkish: 'Uyku sadece bir dinlenme dönemi değildir; beynin anıları pekiştirdiği oldukça aktif bir durumdur.',
        isTopicSentence: true,
        highlights: [
          WordHighlight(word: 'merely', meaning: 'sadece, yalnızca', type: 'Zarf'),
          WordHighlight(word: 'consolidates', meaning: 'pekiştirmek, sağlamlaştırmak', type: 'Fiil'),
        ],
      ),
      SentenceAnalysis(
        english: 'Throughout the day, the brain acquires a vast amount of information, but it is during deep sleep that this information is processed and stored.',
        turkish: 'Gün boyunca beyin çok miktarda bilgi edinir, ancak bu bilginin işlendiği ve depolandığı zaman derin uyku sırasındadır.',
        highlights: [
          WordHighlight(word: 'acquires', meaning: 'edinmek, kazanmak', type: 'Fiil'),
          WordHighlight(word: 'vast amount', meaning: 'büyük miktar', type: 'Sıfat Tamlaması'),
        ],
      ),
      SentenceAnalysis(
        english: 'Consequently, individuals who suffer from chronic sleep deprivation often experience significant cognitive deficits.',
        turkish: 'Sonuç olarak, kronik uyku yoksunluğu çeken bireyler sıklıkla belirgin bilişsel eksiklikler yaşarlar.',
        highlights: [
          WordHighlight(word: 'Consequently', meaning: 'Sonuç olarak', type: 'Bağlaç'),
          WordHighlight(word: 'deprivation', meaning: 'yoksunluk', type: 'İsim'),
          WordHighlight(word: 'deficits', meaning: 'eksiklikler', type: 'İsim'),
        ],
      ),
      SentenceAnalysis(
        english: 'Furthermore, research indicates that adequate sleep enhances problem-solving skills and creativity.',
        turkish: 'Ayrıca araştırmalar, yeterli uykunun problem çözme becerilerini ve yaratıcılığı artırdığını göstermektedir.',
        highlights: [
          WordHighlight(word: 'Furthermore', meaning: 'Ayrıca, dahası', type: 'Bağlaç'),
          WordHighlight(word: 'adequate', meaning: 'yeterli', type: 'Sıfat'),
          WordHighlight(word: 'enhances', meaning: 'artırmak, geliştirmek', type: 'Fiil'),
        ],
      ),
      SentenceAnalysis(
        english: 'Therefore, prioritizing sleep is essential for optimal brain function and overall well-being.',
        turkish: 'Bu nedenle, uykuya öncelik vermek optimal beyin fonksiyonu ve genel refah için esastır.',
        highlights: [
          WordHighlight(word: 'Therefore', meaning: 'Bu nedenle', type: 'Bağlaç'),
          WordHighlight(word: 'prioritizing', meaning: 'öncelik vermek', type: 'Fiil (Gerund)'),
          WordHighlight(word: 'well-being', meaning: 'refah, sağlık durumu', type: 'İsim'),
        ],
      ),
    ],
  ),
  ParagraphAnalysisData(
    title: 'Epidemiology of Diabetes',
    fullText: 'Diabetes mellitus is a chronic metabolic disorder characterized by persistent hyperglycemia. It occurs either when the pancreas does not produce enough insulin or when the body cannot effectively use the insulin it produces. Over the past few decades, the global prevalence of diabetes has risen dramatically, largely driven by increasing rates of obesity and physical inactivity. If left untreated, diabetes can lead to severe complications, including cardiovascular disease, neuropathy, and kidney failure. Thus, early detection and lifestyle modifications are critical components of disease management.',
    summaryTr: 'Diabetes mellitus, sürekli yüksek kan şekeri ile karakterize kronik metabolik bir bozukluktur. Pankreasın yeterli insülin üretememesi veya vücudun insülini etkili kullanamaması sonucu oluşur. Son yıllarda artan obezite ve hareketsizlik nedeniyle küresel diyabet sıklığı önemli ölçüde artmıştır. Tedavi edilmezse kalp hastalıkları ve böbrek yetmezliği gibi ciddi komplikasyonlara yol açar. Bu yüzden erken teşhis ve yaşam tarzı değişiklikleri hastalık yönetiminde kritiktir.',
    sentences: [
      SentenceAnalysis(
        english: 'Diabetes mellitus is a chronic metabolic disorder characterized by persistent hyperglycemia.',
        turkish: 'Diabetes mellitus, sürekli hiperglisemi (yüksek kan şekeri) ile karakterize kronik metabolik bir bozukluktur.',
        isTopicSentence: true,
        highlights: [
          WordHighlight(word: 'chronic', meaning: 'süregelen, kronik', type: 'Sıfat'),
          WordHighlight(word: 'characterized by', meaning: '...ile karakterize edilen', type: 'Fiil (Pasif)'),
          WordHighlight(word: 'persistent', meaning: 'sürekli, inatçı', type: 'Sıfat'),
        ],
      ),
      SentenceAnalysis(
        english: 'It occurs either when the pancreas does not produce enough insulin or when the body cannot effectively use the insulin it produces.',
        turkish: 'Ya pankreas yeterince insülin üretmediğinde ya da vücut ürettiği insülini etkili bir şekilde kullanamadığında ortaya çıkar.',
        highlights: [
          WordHighlight(word: 'occurs', meaning: 'meydana gelmek', type: 'Fiil'),
          WordHighlight(word: 'either...or', meaning: 'ya...ya da', type: 'Bağlaç'),
        ],
      ),
      SentenceAnalysis(
        english: 'Over the past few decades, the global prevalence of diabetes has risen dramatically, largely driven by increasing rates of obesity and physical inactivity.',
        turkish: 'Geçtiğimiz birkaç on yıl içinde, büyük ölçüde artan obezite ve fiziksel hareketsizlik oranlarının tetiklemesiyle küresel diyabet yaygınlığı dramatik bir şekilde arttı.',
        highlights: [
          WordHighlight(word: 'prevalence', meaning: 'yaygınlık', type: 'İsim'),
          WordHighlight(word: 'dramatically', meaning: 'önemli ölçüde, çarpıcı biçimde', type: 'Zarf'),
          WordHighlight(word: 'driven by', meaning: '...tarafından tetiklenen', type: 'Fiil (Participle)'),
        ],
      ),
      SentenceAnalysis(
        english: 'If left untreated, diabetes can lead to severe complications, including cardiovascular disease, neuropathy, and kidney failure.',
        turkish: 'Tedavi edilmediği takdirde diyabet; kardiyovasküler hastalık, nöropati ve böbrek yetmezliği dahil olmak üzere ciddi komplikasyonlara yol açabilir.',
        highlights: [
          WordHighlight(word: 'untreated', meaning: 'tedavi edilmemiş', type: 'Sıfat'),
          WordHighlight(word: 'lead to', meaning: 'yol açmak', type: 'Fiil (Phrasal)'),
          WordHighlight(word: 'severe', meaning: 'ciddi, şiddetli', type: 'Sıfat'),
        ],
      ),
      SentenceAnalysis(
        english: 'Thus, early detection and lifestyle modifications are critical components of disease management.',
        turkish: 'Bu nedenle, erken teşhis ve yaşam tarzı değişiklikleri hastalık yönetiminin kritik bileşenleridir.',
        highlights: [
          WordHighlight(word: 'Thus', meaning: 'Bu nedenle, böylece', type: 'Bağlaç'),
          WordHighlight(word: 'detection', meaning: 'teşhis, saptama', type: 'İsim'),
          WordHighlight(word: 'modifications', meaning: 'değişiklikler', type: 'İsim'),
        ],
      ),
    ],
  ),
];
