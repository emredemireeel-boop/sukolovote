import 'mock_exams_data.dart';

final List<ExamQuestion> exam2020Part2 = [
  // 41 Cümle Tamamlama
  const ExamQuestion(
    number: 41,
    type: 'Cümle Tamamlama',
    question: 'Support systems for people with developmental disabilities are often based on the idea of helping them to attain the greatest level of independence possible ----.',
    options: [
      'since many adults with developmental disabilities live with family members or roommates who can provide assistance',
      'so that they can maintain quality of life and make positive contributions to the society in which they live',
      'although recent research has shown that early intervention has a positive effect for many',
      'even if the support programme of one with a developmental disability is at the appropriate level for him or her',
      'while these systems help those with developmental disabilities perform their daily activities with ease'
    ],
    correctIndex: 1,
    explanation: 'Gelişimsel engeli olan kişiler için destek sistemleri genellikle onlara en yüksek bağımsızlık düzeyine ulaşmalarına yardım etme fikrine dayanır, BÖYLECE (so that) yaşam kalitelerini koruyabilir ve topluma olumlu katkılarda bulunabilirler.',
  ),
  
  // 42-47 Çeviri (İngilizce - Türkçe)
  const ExamQuestion(
    number: 42,
    type: 'Çeviri (İng-Tür)',
    question: 'It is possible for people to get most nutrients they need from a balanced diet, though vegans may need to take supplements or fortified foods.',
    options: [
      'İnsanların dengeli beslenme yoluyla edinebilmeleri mümkün olan birçok besini, veganlar ancak ek gıda veya içeriği güçlendirilmiş yiyeceklerle alabilirler.',
      'Dengeli beslenme insanların besin ihtiyaçlarının karşılanmasını mümkün kılsa da, veganlar ek gıda veya içeriği güçlendirilmiş yiyeceklere ihtiyaç duyabilirler.',
      'İnsanların dengeli beslenme sonucu ihtiyaç duyabilecekleri birçok besini almaları mümkündür, ancak buna rağmen veganların ek gıda veya içeriği güçlendirilmiş öğünler tüketmeye ihtiyaçları vardır.',
      'İnsanların ihtiyaç duydukları besinlerin çoğunu dengeli beslenme ile alabilmeleri mümkündür, fakat veganların ek gıda veya içeriği güçlendirilmiş yiyecekler tüketmeleri gerekebilir.',
      'Dengeli beslenme insanların besin ihtiyaçlarının çoğunu karşılamasını mümkün kılar, ancak veganların ek gıda veya içeriği güçlendirilmiş yiyecekler tüketmeleri gerekir.'
    ],
    correctIndex: 3,
    explanation: 'Özne-yüklem uyumu: It is possible (mümkündür), though (fakat/gerçi) vegans may need (veganların gerekebilir). D seçeneği bunu en iyi yansıtan çeviridir.',
  ),
  const ExamQuestion(
    number: 43,
    type: 'Çeviri (İng-Tür)',
    question: 'The stages of language development are universal for all humans; however, the age and the pace at which a child reaches each stage of language development vary greatly.',
    options: [
      'Bir çocuğun tüm insanlar için evrensel olan dil gelişiminin her bir aşamasına hangi yaşta ve hızda eriştiği konusunda büyük farklılıklar vardır.',
      'Dil gelişiminin aşamaları tüm insanlar için evrensel olmasına rağmen bir çocuğun eriştiği her bir dil gelişimi aşaması, yaş ve hız bakımından büyük değişiklik gösterir.',
      'Dil gelişiminin her bir aşamasına hangi yaşta ve hızda erişildiği konusunda çocuklar arasında farklılıklar bulunmaktadır, ancak dil gelişiminin aşamaları tüm insanlar için evrenseldir.',
      'Dil gelişiminin aşamaları tüm insanlar için evrenseldir, ancak bir çocuğun bu aşamaların her birine eriştiği yaş ve hız büyük ölçüde farklılık göstermektedir.',
      'Tüm insanlar için evrensel olan dil gelişimi aşamaları, bir çocuğun bu aşamaların her birine eriştiği yaş ve hız bakımından büyük farklılıklar göstermektedir.'
    ],
    correctIndex: 3,
    explanation: 'The stages of language development are universal (Dil gelişiminin aşamaları evrenseldir); however (ancak), vary greatly (büyük ölçüde farklılık göstermektedir).',
  ),
  const ExamQuestion(
    number: 44,
    type: 'Çeviri (İng-Tür)',
    question: 'Unhealthy nails may be the result of a local injury, fungal infection, nail biting or a deficiency of certain nutrients.',
    options: [
      'Sağlıksız tırnaklar; bölgesel yaralanma, mantar enfeksiyonu, tırnak yeme veya belirli besinlerin eksikliğinin sonucu olabilir.',
      'Bölgesel yaralanma, mantar enfeksiyonu, tırnak yeme veya belirli besinlerin eksikliği, sağlıksız tırnaklarla sonuçlanabilir.',
      'Bölgesel yaralanma, mantar enfeksiyonu, tırnak yeme veya belirli besinlerin eksikliğinin sonucunda sağlıksız tırnaklar ortaya çıkabilir.',
      'Bölgesel yaralanma, mantar enfeksiyonu, tırnak yeme veya belirli besinlerin eksikliği sonucunda sağlıksız tırnaklarla karşılaşılmaktadır.',
      'Bölgesel yaralanma, mantar enfeksiyonu, tırnak yeme veya belirli besinlerin eksikliği, sağlıksız tırnakların nedenleri arasındadır.'
    ],
    correctIndex: 0,
    explanation: 'Özne: Unhealthy nails (Sağlıksız tırnaklar); Yüklem: may be the result of (... sonucu olabilir).',
  ),
  const ExamQuestion(
    number: 45,
    type: 'Çeviri (İng-Tür)',
    question: 'The traditional Mediterranean diet, which is rich in vegies, fish and olive oil, falls short of your daily calcium requirements, so you should add dairy to your meals to strengthen your bones.',
    options: [
      'Geleneksel Akdeniz beslenme tarzı sebze, balık ve zeytinyağı bakımından zengindir, ancak günlük kalsiyum ihtiyacınızı karşılayamadığından, kemiklerinizi güçlendirmek için öğünlerinize süt ürünlerini eklemelisiniz.',
      'Sebze, balık ve zeytinyağı bakımından zengin olmasına rağmen günlük kalsiyum ihtiyacınızı karşılayamayan geleneksel Akdeniz beslenme tarzı, kemiklerinizi güçlendirmek için öğünlerinize süt ürünlerini eklemenizi gerektirebilir.',
      'Sebze, balık ve zeytinyağı bakımından zengin olan geleneksel Akdeniz beslenme tarzı, günlük kalsiyum ihtiyacınızı karşılamamaktadır; bu nedenle kemiklerinizi güçlendirmek için öğünlerinize süt ürünlerini eklemelisiniz.',
      'Sebze, balık ve zeytinyağı bakımından zengin olan geleneksel Akdeniz beslenme tarzında kemiklerinizi güçlendirmek için öğünlerinize süt ürünlerini eklemeniz gerekmektedir, çünkü bu beslenme tarzı günlük kalsiyum ihtiyacınızı karşılamamaktadır.',
      'Geleneksel Akdeniz beslenme tarzı sebze, balık ve zeytinyağı bakımından zengin olsa da günlük kalsiyum ihtiyacınızı karşılamaz; bu yüzden öğünlerinize kemiklerinizi güçlendirecek süt ürünleri eklemeniz gerekir.'
    ],
    correctIndex: 2,
    explanation: 'Özne "sebze, balık ve zeytinyağı bakımından zengin olan geleneksel Akdeniz beslenme tarzı" olarak tanımlanmıştır (which is...). "so (bu nedenle)" bağlacı C şıkkındakiyle uyumludur.',
  ),
  const ExamQuestion(
    number: 46,
    type: 'Çeviri (İng-Tür)',
    question: 'Manufacturers guarantee that their products are safe only until the expiration date, but a study showed that more than 100 drugs are still safe and effective at least one year afterward.',
    options: [
      'Üreticiler sadece son kullanma tarihine kadar ürünlerinin güvenli olduğunu garanti ederler, ancak bir araştırma 100\'den fazla ilacın, en az bir yıl sonra da hâlâ güvenli ve etkili olduğunu göstermiştir.',
      '100\'den fazla ilacın en az bir yıl sonraya kadar hâlâ güvenli ve etkili olduğunu gösteren bir çalışma bulunsa da, üreticiler ürünlerinin sadece son kullanma tarihine kadar güvenli olduğunu garanti etmektedir.',
      'Üreticiler tarafından ürünlerinin sadece son kullanma tarihine kadar güvenli olduğu garanti edilse de bir araştırma 100\'den fazla ilacın, en az bir yıl sonra da hâlâ güvenli ve etkili olduğunu göstermiştir.',
      'Üreticiler yalnızca son kullanma tarihine kadar ilaçlarının güvenli olduğunu garanti etmektedir, ancak bir araştırma tarafından 100\'den fazla ilacın en az bir yıl sonra bile hâlâ güvenli olduğu ortaya konmuştur.',
      'Bir araştırmada 100\'den fazla ilacın en az bir yıl sonrasına kadar hâlâ güvenli ve etkili olduğu ispat edilmiş olmasına rağmen, üreticiler sadece son kullanma tarihine kadar ürünlerinin güvenli olduğunu garanti eder.'
    ],
    correctIndex: 0,
    explanation: 'Manufacturers guarantee (Üreticiler garanti eder), but (ancak) a study showed (bir araştırma göstermiştir). Bu birebir yapı A seçeneğinde vardır.',
  ),
  const ExamQuestion(
    number: 47,
    type: 'Çeviri (İng-Tür)',
    question: 'One of the active ingredients that was initially contained in the secret formula for coke and got buyers addicted was removed in 1903 and replaced with caffeine.',
    options: [
      'Başlangıçta kolanın gizli formülünde bulunan ve satın alanları bağımlı hâle getiren etken maddelerden biri, 1903\'te çıkarıldı ve kafein ile değiştirildi.',
      '1903 yılında, ilk zamanlar kolanın gizli formülünde bulunan etken maddelerden biri, satın alanları bağımlı hale getirdiği için çıkarılarak kafein ile değiştirildi.',
      'İlk zamanlar gizli formülünde satın alanları bağımlı hale getiren bir etken madde olan kola, 1903 yılında bunun yerine kafein ile üretildi.',
      'Başlangıçta satın alanları bağımlı hâle getiren etken bir madde ile üretilen kolanın gizli formülüne, 1903 yılında bunun yerine kafein eklendi.',
      '1903\'te gizli formülünde bulunan etken maddelerden biri çıkarılıp kafein ile değiştirilen kola, ilk zamanlar satın alanları bağımlı hale getiriyordu.'
    ],
    correctIndex: 0,
    explanation: 'Özne: Başlangıçta kolanın gizli formülünde bulunan ve satın alanları bağımlı hale getiren etken maddelerden biri. Yüklem: was removed and replaced (çıkarıldı ve değiştirildi).',
  ),

  // 48-53 Çeviri (Türkçe - İngilizce)
  const ExamQuestion(
    number: 48,
    type: 'Çeviri (Tür-İng)',
    question: 'İnsanlar sağlık konusunda giderek bilinçli hale geldikçe, kendi sağlıklarını koruma konusunda önemli sorumlulukları olduğunu fark etmişlerdir.',
    options: [
      'People have become increasingly health-conscious, because they have realised that they have important responsibility in maintaining their own health.',
      'As people have become increasingly health-conscious, they have realised that they have important responsibility in maintaining their own health.',
      'Realising that they have important responsibility in maintaining their own health has made people become increasingly health-conscious.',
      'People who have become increasingly health-conscious have realised that they have important responsibility in maintaining their own health.',
      'The reason why people become increasingly health-conscious is that they have realised that they have important responsibility in maintaining their own health.'
    ],
    correctIndex: 1,
    explanation: '-dıkça/dikçe bağlacı için "As" kullanılır. As people have become increasingly health-conscious...',
  ),
  const ExamQuestion(
    number: 49,
    type: 'Çeviri (Tür-İng)',
    question: 'Geçmişte ölüme sebep olan birçok hastalık, şu an aşıların kullanımı ile önlenebilmektedir.',
    options: [
      'Many diseases that can now be prevented thanks to the use of vaccines caused death in the past.',
      'Many diseases that caused death in the past can now be prevented through the use of vaccines.',
      'In the past, many diseases caused death, but now they can be prevented with the use of vaccines.',
      'Vaccines used now can prevent many diseases that caused death in the past.',
      'The use of vaccines can now prevent many diseases leading to death in the past.'
    ],
    correctIndex: 1,
    explanation: 'Özne: Many diseases that caused death in the past. Yüklem: can now be prevented.',
  ),
  const ExamQuestion(
    number: 50,
    type: 'Çeviri (Tür-İng)',
    question: 'İlk yardımda öncelik, yardım çağırmadan önce müdahaleye başlanması gereken kalp krizi durumları hariç, acil yardım servisini arayarak tıbbi yardım almaktır.',
    options: [
      'In first aid, the priority is to get medical assistance by calling emergency medical care, except in cases of cardiac arrest in which treatment should be started before calling for help.',
      'First aid gives priority to cases of cardiac arrest as they need to be treated immediately, but except those cases, one should first get medical help by calling emergency medical care.',
      'In first aid, except for cardiac arrest cases which need to be dealt with before calling for help, the first thing we need to do is to call emergency medical care for medical help.',
      'In first aid, it is crucial to get help first by calling emergency medical care as long as it is not a case of cardiac arrest where treatment should be started before calling for help.',
      'Unlike the cases of cardiac arrest which require immediate care before calling for help, the first thing to do in first aid is to call emergency medical care and get medical assistance.'
    ],
    correctIndex: 0,
    explanation: '...hariç kelimesi "except (in cases of...)" ile en iyi şekilde karşılanır. A şıkkı sıralama ve yapı olarak Türkçe cümlenin birebir karşılığıdır.',
  ),
  const ExamQuestion(
    number: 51,
    type: 'Çeviri (Tür-İng)',
    question: 'Problemleri veya hastalıkları saptama sanatı olan \'teşhis\', doktorlarla ilişkilendirilmiş olsa da, bu terim avukatlar ve öğretmenler gibi diğer mesleklerin üyeleri tarafından da kullanılmaktadır.',
    options: [
      '\'Diagnosis\', the art of identifying problems or illnesses, is used by members of different professions, such as lawyers and teachers; however, this term is more associated with physicians.',
      '\'Diagnosis\', the art of identifying problems or illnesses, has been linked with physicians even though this term is also used by members of other professions, such as lawyers and teachers.',
      'Although \'diagnosis\', the art of identifying problems or illnesses, has been linked with physicians, this term is also used by members of other professions, such as lawyers and teachers.',
      '\'Diagnosis\', the art of identifying problems or illnesses, is linked with physicians, but members of other professions, such as lawyers and teachers, use this term as well.',
      'While \'diagnosis\', the art of identifying problems or illnesses, has been associated with physicians, members of other professions, such as lawyers and teachers, use this term.'
    ],
    correctIndex: 2,
    explanation: '...olsa da = Although. Although diagnosis... has been linked with physicians, this term is also used by...',
  ),
  const ExamQuestion(
    number: 52,
    type: 'Çeviri (Tür-İng)',
    question: 'Gereğinden fazla beslenen çocuklar aşırı kilolu veya obez olabilirler ve bu da sağlık sorunlarına ve depresyona yol açabilir.',
    options: [
      'Children who are overnourished may become overweight or obese, and this may lead to health problems and depression.',
      'Health problems and depression may develop in children who are overnourished and thus have become overweight or obese.',
      'Overnourishing can make children overweight or obese, and this is likely to result in health problems and depression.',
      'Overnourished children may end up developing health problems and depression as they have become overweight or obese.',
      'When overnourished, children may develop health problems and depression as a consequence of becoming overweight or obese.'
    ],
    correctIndex: 0,
    explanation: 'Children who are overnourished (Gereğinden fazla beslenen çocuklar) may become (olabilirler), and this may lead to (ve bu da ... yol açabilir).',
  ),
  const ExamQuestion(
    number: 53,
    type: 'Çeviri (Tür-İng)',
    question: 'Beyniniz yeterli dinlenmeden yoksunsa, fazladan uyusanız bile bu kaybı telafi edemeyebilirsiniz, çünkü uzun süren uyku yoksunluğu beyin hücrelerinin kaybına neden olabilir.',
    options: [
      'When your brain is deprived of adequate rest, getting extra sleep may not compensate for the loss, as extended sleep deprivation can result in the loss of brain cells.',
      'If your brain is deprived of adequate rest, you may not be able to compensate for the loss by getting extra sleep since extended sleep deprivation causes the loss of brain cells.',
      'If your brain is deprived of adequate rest, you may not be able to compensate for the loss no matter how much extra sleep you get because extended sleep deprivation results in the loss of brain cells.',
      'Once your brain is deprived of adequate rest, you may not be able to compensate for the loss despite the extra sleep you get, and the result is the loss of brain cells, which is caused by sleep deprivation.',
      'If your brain is deprived of adequate rest, you may not be able to compensate for the loss even if you get extra sleep because extended sleep deprivation can lead to the loss of brain cells.'
    ],
    correctIndex: 4,
    explanation: 'If (Eğer) your brain is deprived (yoksunsa), even if (bile) you get extra sleep, you may not be able to compensate (telafi edemeyebilirsiniz).',
  ),

  // 54-59 Paragraf Tamamlama
  const ExamQuestion(
    number: 54,
    type: 'Paragraf Tamamlama',
    passageRef: 'Hives (also known as urticaria) are itchy, raised splotches on the surface of the skin. About 20 times itchier than a mosquito bite, hives make you want to tear off your clothes and then your skin. ---- In most cases, however, hives are the result of other conditions. For example, although vibratory urticaria is very rare, any vibration against the surface of the skin, even from clothing rubbing against it, can trigger a bout of hives in those prone to cholinergic urticaria.',
    question: 'Parçada boş bırakılan yere hangi cümle gelmelidir?',
    options: [
      'If you do not eat something after contracting the illness, there is a remote chance that you will suffer less from a food allergy.',
      'Urticaria is a common disorder that may cause considerable distress and last for years.',
      'When most people have their first encounter with hives, they assume they are caused by something they ate.',
      'Some patients cannot refrain themselves and resort to excessive scratching.',
      'Hives can occur in any part of the body; arms and legs are more commonly involved.'
    ],
    correctIndex: 2,
    explanation: 'Boşluktan sonra "ancak, çoğu vakada kurdeşen diğer koşulların sonucudur" deniyor. Demek ki öncesinde insanların yanlış bir varsayımından (örneğin yediklerinden kaynaklandığını düşünmelerinden) bahsedilmeli.',
  ),
  const ExamQuestion(
    number: 55,
    type: 'Paragraf Tamamlama',
    passageRef: 'Since a large number of people with high cholesterol are overweight, a healthy diet and regular exercise are probably the most beneficial natural ways to control cholesterol levels. ---- These include meat, shellfish, eggs, and dairy products. Several specific diet options are beneficial for those who have high cholesterol. One is the vegetarian diet, as vegetarians typically get up to 100 percent more fiber and up to 50 percent less cholesterol from food than non-vegetarians.',
    question: 'Parçada boş bırakılan yere hangi cümle gelmelidir?',
    options: [
      'The goal, in general, is to substantially reduce or eliminate foods high in animal fat.',
      'A wide variety of prescription medicines are available to treat cholesterol problems.',
      'Currently, there are few studies on the effectiveness of some existing anti-cholesterol drugs.',
      'This forms plaque in the heart\'s vessels, which may block the supply of blood to the heart.',
      'It is often diagnosed by general practitioners.'
    ],
    correctIndex: 0,
    explanation: 'Boşluktan sonra "Bunlar et, kabuklu deniz ürünleri, yumurta ve süt ürünlerini içerir" deniyor. Bu "hayvansal yağlar yüksek olan yiyeceklerdir", bu yüzden A şıkkı "hayvansal yağı yüksek gıdaları ortadan kaldırmaktır" cümlesi uygundur.',
  ),
  const ExamQuestion(
    number: 56,
    type: 'Paragraf Tamamlama',
    passageRef: 'Because the psychological manifestations of attention deficit hyperactivity disorder (ADHD) are multifaceted, it is necessary to implement comprehensive treatment interventions. One intervention should be related to the proper arrangement of the surroundings for children with ADHD. Structuring the environment so that the child is not easily distracted can be a viable solution. In the home, this entails minimising distracting stimulation from radio or television, especially while the child is doing homework. ---- In this way, the teacher can ensure that the child is on task, is not distracted by other students, or has no opportunity to be disruptive.',
    question: 'Parçada boş bırakılan yere hangi cümle gelmelidir?',
    options: [
      'Informing parents and school personnel about the causes of ADHD can assist children, teachers and parents themselves.',
      'Coordinated effort should be made to promote a healthy lifestyle, including scheduled regulation of bedtime.',
      'Behaviour-modification strategies are effective for training the child to control impulses, and they help both the child and their parents.',
      'In the classroom, on the other hand, consideration should be given to the child\'s seat location to enable the teacher to observe the child closely.',
      'Thus, family counselling and teacher education are integral components of treatment to help maximise the child\'s adaptation.'
    ],
    correctIndex: 3,
    explanation: 'Parçada evdeki düzenlemelerden (In the home...) bahsedildikten sonra "In this way, the teacher can ensure..." diyerek sınıf ortamına geçiş var. Bu geçiş, sınıftaki oturma düzenini (seat location) ele alan D şıkkı ile sağlanır.',
  ),
  const ExamQuestion(
    number: 57,
    type: 'Paragraf Tamamlama',
    passageRef: 'Marie Curie, probably the world\'s best-known woman scientist, was a pioneer in the field of radiation and chemotherapy. She was the first woman awarded a Nobel Prize, in 1903, for her research on radioactivity. Sharing the prize were her husband, Pierre Curie, and Henri Becquerel, who had discovered radioactivity in uranium. She was also awarded a Nobel Prize in 1911 for the previous discovery of polonium and radium and for the isolation of pure radium. ---- Cancer treatment, for example, is among the practices where it is widely employed.',
    question: 'Parçada boş bırakılan yere hangi cümle gelmelidir?',
    options: [
      'She won her second Nobel Prize, this time in the field of chemistry.',
      'The Curies spent four years in a laboratory studying polonium and radium.',
      'She went beyond the study of the element radium to discover a few of its medical uses.',
      'She became the first female professor at Sorbonne University, where she made meticulous scientific studies.',
      'William Thomson Kelvin believed that radium was not an element after all.'
    ],
    correctIndex: 2,
    explanation: 'Boşluktan sonra "Örneğin kanser tedavisi..." diyerek bir tıbbi kullanımdan bahsediliyor. C şıkkında onun radyumun bazı tıbbi kullanımlarını keşfettiğinden söz edilmesi parçayı kusursuz tamamlar.',
  ),
  const ExamQuestion(
    number: 58,
    type: 'Paragraf Tamamlama',
    passageRef: '---- However, allergy skin testing may be used for detection, although an allergic skin response does not always mean that the allergen being tested is causing the asthma. Also, the body\'s immune system produces antibody to fight off the allergen, and the amount of antibody can be measured by a blood test. This will show how sensitive the patient is to a particular allergen.',
    question: 'Parçada boş bırakılan yere hangi cümle gelmelidir?',
    options: [
      'Nedocromil is an anti-inflammatory drug that is often used for asthma.',
      'Today, asthma is viewed as a chronic inflammatory disease of the airways.',
      'It is often difficult to determine what is triggering asthma attacks.',
      'More than half of affected children stop having asthma attacks after a certain age.',
      'Most patients with asthma respond well when the best drug is found.'
    ],
    correctIndex: 2,
    explanation: '"Ancak (However) tespiti için alerji cilt testleri kullanılabilir" dediğine göre, öncesinde "astım krizlerini neyin tetiklediğini belirlemek zordur" gibi bir ifade olmalı.',
  ),
  const ExamQuestion(
    number: 59,
    type: 'Paragraf Tamamlama',
    passageRef: 'Everyone experiences occasional forgetfulness, most commonly with respect to recent information. Such forgetfulness may range from the names of newly introduced people to where the car keys are. Many researchers believe such forgetfulness represents an incompletion in the brain\'s processes for establishing neuronal pathways. That is, the more frequently a person encounters the same information, the more complete the neuronal connections among the various regions of the brain that store the information. ----',
    question: 'Parçada boş bırakılan yere hangi cümle gelmelidir?',
    options: [
      'Therefore, amnesia is the inability to recall past information or to remember information relevant to the future.',
      'Only when information becomes repetitious does the brain create connections among neurons to accommodate it.',
      'Similarly, the quality of memory, particularly short-term memory, normally diminishes.',
      'Even if patients experience memory impairment, they are still able to remember the names of close family members.',
      'As researchers fully understand the biological mechanisms of forgetfulness, they cannot explain how it goes away.'
    ],
    correctIndex: 1,
    explanation: 'Bir kişi aynı bilgiyle ne kadar sık karşılaşırsa nöronal bağlantılar o kadar tamamlanır diyor. Sonraki cümlede de "Sadece bilgi tekrarlayıcı hale geldiğinde beyin... bağlantılar oluşturur" (Only when information becomes repetitious...) diyerek aynı fikri pekiştirir.',
  ),

  // 60-65 İlgisiz Cümle (Anlam bütünlüğünü bozan cümle)
  const ExamQuestion(
    number: 60,
    type: 'İlgisiz Cümle',
    question: '(I) It is possible that women simply pay more attention to what they eat and their health, so are more likely to notice if they have a reaction to allergens, but biological factors seem to be involved, too. (II) For example, men have higher levels of a certain type of antibody thought to help block allergic reactions. (III) The most disturbing food for both men and women is shellfish, followed by certain fruits and vegetables. (IV) And hormones almost certainly play a role because the gender difference in allergies switches at adolescence. (V) Before puberty, boys are affected by allergies twice as much as girls.',
    options: ['I', 'II', 'III', 'IV', 'V'],
    correctIndex: 2,
    explanation: 'Paragraf genel olarak alerjilerdeki cinsiyet farklılıkları, biyolojik faktörler, antikorlar ve hormonlar üzerine kuruludur. III numaralı cümle ise sadece alerjik reaksiyon veren spesifik yiyecekleri anlatarak akışı bozmaktadır.',
  ),
  const ExamQuestion(
    number: 61,
    type: 'İlgisiz Cümle',
    question: '(I) Evidence is growing that, instead of avoiding allergenic foods, it might be important for high-risk children, those with moderate or severe eczema, to encounter them early on. (II) Those that are introduced to peanuts between the ages of 4 months and 11 months are 81 percent less likely to develop a peanut allergy by the time they are 5. (III) Similarly, infants who begin eating eggs at the age of 4 to 6 months are less likely to develop egg allergies. (IV) Being breastfed is essential to develop tolerance to allergens later in life. (V) Therefore, some guidelines in the US and Australia recommend carefully introducing infants to allergenic ingredients from the age of 4 to 6 months.',
    options: ['I', 'II', 'III', 'IV', 'V'],
    correctIndex: 3,
    explanation: 'Parça çocukların alerjen gıdalarla ERKEN TANIŞTIRILMASI ve yemesine başlaması (fıstık, yumurta) ile ilgilidir. IV numaralı cümle "emzirilmenin önemi" diyerek bambaşka bir spesifik konuya sapar, bu yüzden akışı bozar.',
  ),
  const ExamQuestion(
    number: 62,
    type: 'İlgisiz Cümle',
    question: '(I) If you are the type to regularly tuck into a bag of chips, it is worth reconsidering the habit. (II) Too much sodium is not good for anyone, but for people who have hypertension, salt is especially dangerous. (III) Sodium is essential for contracting and relaxing muscles, transmitting nerve signals and maintaining adequate fluid levels. (IV) Too much of it leads to small spikes in blood pressure for people who do not already have hypertension and large spikes in people who do. (V) As a result, several cardiovascular problems, including heart attacks, strokes and coronary artery disease might come up.',
    options: ['I', 'II', 'III', 'IV', 'V'],
    correctIndex: 2,
    explanation: 'Parça sodyum (tuz) tüketiminin FAZLA olmasının zararları hakkındadır. Ancak III numaralı cümlede sodyumun kas kasılması gibi faydalı işlevlerinden bahsedilmektedir, bu da genel zarardan bahseden anlamı bozar.',
  ),
  const ExamQuestion(
    number: 63,
    type: 'İlgisiz Cümle',
    question: '(I) Lead poisoning occurs when a person swallows or inhales lead in any form. (II) The result can be damage to the brain, nerves, and many other parts of the body. (III) Acute lead poisoning, which is relatively rare, occurs when a large amount of lead is taken into the body over a short period of time. (IV) Lead poisoning is also harmful to adults, in whom it can cause high blood pressure, digestive problems, nerve disorders, memory loss, and muscle and joint pain. (V) On the other hand, chronic lead poisoning occurs when small amounts of lead are taken in over a longer period.',
    options: ['I', 'II', 'III', 'IV', 'V'],
    correctIndex: 3,
    explanation: 'III\'te Akut Kurşun Zehirlenmesi tanımlanıyor, V\'te ise On the other hand diyerek Kronik Kurşun Zehirlenmesi tanımlanıyor. Araya giren IV numaralı cümle yetişkinlerdeki etkilerine değinerek bu "Akut vs Kronik" dizilimini böler.',
  ),
  const ExamQuestion(
    number: 64,
    type: 'İlgisiz Cümle',
    question: '(I) Gluten-free diets have recently been gaining attention for their potential to manage gastrointestinal issues such as acid reflux or irritable bowel syndrome. (II) Probiotics - foods prepared with live, \'good\' bacteria such as yoghurt, kimchi and kefir - have been shown to help with conditions like irritable bowel syndrome, and they may also be beneficial for people with weakened immune systems. (III) But their long-term effects on overall health are not yet fully known. (IV) Fermented foods and drinks such as sauerkraut and kombucha are gaining in popularity as well. (V) Their effects on health again are not clear, but consuming them will not do any harm and might improve microbial diversity in the gut.',
    options: ['I', 'II', 'III', 'IV', 'V'],
    correctIndex: 0,
    explanation: 'Diğer tüm cümleler probiyotikler, faydalı bakteriler, mayalı gıdalar (kefir, yoğurt, kombucha) ve bunların faydaları hakkındadır. I numaralı cümlede "Glütensiz diyetlerden" bahsedilmesi konuya tamamen yabancıdır.',
  ),
  const ExamQuestion(
    number: 65,
    type: 'İlgisiz Cümle',
    question: '(I) Cancer is a progressive disease, and goes through several stages. (II) Many other diseases, besides cancer, could produce the same symptoms. (III) Each phase may produce a number of symptoms, some of which may occur due to a tumour that is growing within an organ or a gland. (IV) As the tumour grows, it may press on the nearby nerves, organs and blood vessels. (V) This causes pain and some pressure which may be the earliest warning signs of cancer.',
    options: ['I', 'II', 'III', 'IV', 'V'],
    correctIndex: 1,
    explanation: 'Paragraf kanserin aşamalı ilerleyişi, evreler, tümörün büyümesi ve sinirlere baskı yapması gibi konunun iç dinamiğine odaklanırken, II numaralı cümle genel olarak "diğer hastalıklar da aynı belirtiyi verebilir" diyerek odak noktasından sapar.',
  ),

  // 66-80 Paragraf Soruları
  const ExamQuestion(
    number: 66,
    type: 'Okuma Parçası',
    passageRef: 'What causes you to develop a food allergy in the first place? Is it your genetic make-up? Something in your food supply? Something you ate too much of as a kid? A great deal of research has been devoted to answering these questions. The best evidence comes from studies of peanut allergy in twins. Studies of peanut allergy in twins have provided the strongest proof that genes play a role in developing food allergy but are not exclusively responsible. An important study shows that an identical twin has a 64 percent chance of sharing a peanut allergy with the twin sibling who is allergic to peanut. With non-identical twins, the risk drops to a mere 7 percent. The study clearly demonstrates a strong genetic link to peanut allergy but also proves that food allergy is not purely a genetic disease. What leads one of the identical twins to develop the allergy and spares the second is unknown. Allergy specialists believe that exposure to an allergen - in this case the food that causes the allergy - plays a role in developing a food allergy, but determining exactly what each twin is exposed to in the uncontrolled testing environment of daily living is nearly impossible.',
    question: 'According to the passage, studies of peanut allergy in twins ----.',
    options: [
      'compare the genetic make-up of the twins besides analysing their daily food consumption',
      'will no longer be carried out as they have not produced conclusive results',
      'are the most promising ones for understanding causes of food allergy',
      'have proven that food allergy is not purely a genetic disease',
      'focus on the thorough genetic analysis of the twins participating in the studies'
    ],
    correctIndex: 3,
    explanation: 'Parçada "but also proves that food allergy is not purely a genetic disease" ifadesi D şıkkını doğrudan destekler.',
  ),
  const ExamQuestion(
    number: 67,
    type: 'Okuma Parçası',
    passageRef: 'What causes you to develop a food allergy in the first place? Is it your genetic make-up? ...',
    question: 'Which of the following is true about food allergy according to the passage?',
    options: [
      'It is thought that both genetic and environmental factors trigger food allergy.',
      'Non-identical twins have a higher likelihood of developing food allergy.',
      'The validity of the mentioned twin studies on food allergy is prone to controversy.',
      'If one of the identical twins has a food allergy, the other is bound to develop it as well.',
      'Allergy specialists think that studies on food allergy should target adults rather than kids.'
    ],
    correctIndex: 0,
    explanation: 'Sadece genetik olmadığı (not purely genetic) ve aynı zamanda alerjene maruz kalmanın (çevresel faktör, exposure) rol oynadığı düşünülmektedir.',
  ),
  const ExamQuestion(
    number: 68,
    type: 'Okuma Parçası',
    passageRef: 'What causes you to develop a food allergy in the first place? Is it your genetic make-up? ...',
    question: 'Which of the following can be inferred from the passage?',
    options: [
      'The number of allergy studies with identical twins outnumbers those with non-identical twins.',
      'Figuring out exactly what foods each twin is exposed to in the uncontrolled testing environment of daily living is almost unattainable.',
      'The discovery of a strong genetic link to food allergy means that there could soon be a treatment for it.',
      'The contribution of genetic factors outweighs that of environmental factors in most allergy sufferers.',
      'Food experiences during childhood have a greater effect on the likelihood of developing an allergy in twin siblings.'
    ],
    correctIndex: 1,
    explanation: 'Son cümlede "determining exactly what each twin is exposed to ... is nearly impossible" denilmiştir, bu da B şıkkında "almost unattainable" (neredeyse ulaşılamaz) olarak ifade edilmiştir.',
  ),
  const ExamQuestion(
    number: 69,
    type: 'Okuma Parçası',
    passageRef: 'The earliest acting out behaviours are often referred to as temper tantrums. These behaviours are usually first observed in infants between the ages of 12 and 18 months of age. At that point, temper tantrums can be considered a normal part of growth and development, and they are not necessarily caused by the wrong behaviour of the parents. These early tantrums are simply an infant\'s attempt to communicate feelings of dissatisfaction or extreme disappointment. Observed behaviours in infants trying to express their anger or frustration usually include angry-sounding crying and kicking hands and feet. For toddlers, such violent outbursts of temper often include hitting, kicking, and biting others, and possibly self-injurious behaviours such as head-banging. Temper tantrums can include any highly emotional, disruptive, and unacceptable outburst that appears to be the child\'s reaction to unmet needs or wishes. A primary reason for such emotional lack of control in a child, especially above the age of three or four, is having not learnt how to cope with their own frustration. Such temper tantrums usually peak between the ages of two and three. Because under normal circumstances the child has learnt the necessary lessons in how to deal with disappointment by the time he or she has reached the age of four, there is then a noticeable decrease in this sort of acting out behaviour.',
    question: 'It is stated in the passage that temper tantrums in infants ----.',
    options: [
      'commonly start to appear within the first year of life',
      'can be assumed as typical and a part of natural development process',
      'are not usually observed in babies older than a half years',
      'will steadily increase to reach their peak at the age of four',
      'are generally caused by the inappropriate behaviour of the parents'
    ],
    correctIndex: 1,
    explanation: 'Parçada "temper tantrums can be considered a normal part of growth and development" geçmektedir. Bu B şıkkı (tipik ve gelişim sürecinin bir parçası) ile eşleşir.',
  ),
  const ExamQuestion(
    number: 70,
    type: 'Okuma Parçası',
    passageRef: 'The earliest acting out behaviours are often referred to as temper tantrums. ...',
    question: 'According to the passage, toddlers ----.',
    options: [
      'exhibit their disappointment by avoiding interaction with others',
      'tend to cry and kick hands and feet to convey feelings of dissatisfaction',
      'will completely grow out of temper tantrums when they reach the age of four',
      'are easier to control than four-year-old children',
      'might be more destructive compared to infants\' observed cases of acting out'
    ],
    correctIndex: 4,
    explanation: 'Parçada yeni yürümeye başlayan çocuklarda (toddlers) bu nöbetlerin "başkalarına vurma, tekme atma, ısırma ve kafasını vurma gibi kendine zarar verici" (violent outbursts, self-injurious) hareketlere dönüştüğü belirtilmiştir, yani bebeklerden (infants) daha yıkıcı (destructive) olabilir.',
  ),
  const ExamQuestion(
    number: 71,
    type: 'Okuma Parçası',
    passageRef: 'The earliest acting out behaviours are often referred to as temper tantrums. ...',
    question: 'It can be inferred from the passage that ----.',
    options: [
      'some displays of temper by a child can be considered a sign of serious behavioural disorders',
      'self-injurious behaviours often bring other mental problems to a child',
      'treatment of serious behavioural disorders in children such as temper tantrums takes too much time',
      'certain physical acts such as crying and kicking are extreme, yet they significantly help toddlers calm down',
      'temper tantrums might have one or multiple reasons depending on a child\'s age'
    ],
    correctIndex: 4,
    explanation: 'Çocuğun yaşına göre nöbetlerin nedeni değişebilir. Erken dönemde memnuniyetsizliği iletişim kurma çabasıyken (infants), daha ileri yaşta kendi hayal kırıklığıyla baş etmeyi öğrenememiş olmasıdır. Bütün bunlar yaşa göre nedenlerin değişebileceğini (E şıkkı) gösterir.',
  ),
  const ExamQuestion(
    number: 72,
    type: 'Okuma Parçası',
    passageRef: 'The word \'nausea\' evokes an awful experience: that uneasy rolling-wave sensation in the stomach and head that often precedes vomiting. Terrible as it is, nausea is also an expression of the body\'s wisdom. Just as hunger tells us to fill up when we need food, nausea conveys that we need to empty our stomachs. In the case of food poisoning, for example, the most appropriate response is to surrender to the feeling. Once you vomit, you reduce the damaging potential of a toxin or pathogen and usually feel better almost instantly. There are times when nausea manifests inappropriately, and repressing it becomes inevitable; during motion sickness, for instance, when one\'s stomach feels upset on the deck of a rocking boat. Therefore, a wide variety of pharmaceuticals are available to treat nausea, of which dimenhydrinate is among the most popular. However, side effects can include headache, dizziness, and severe drowsiness. If there seems to be no reason for a case of nausea and it persists for more than two days, seeing a physician will be the wisest option. This can be an early indicator of serious problems including bowel cancer and gallbladder disease or a potentially less serious condition such as a migraine or the flu.',
    question: 'It is pointed out in the passage that ----.',
    options: [
      'after vomiting, it is normal to feel dizziness',
      'food poisoning must be immediately medicated',
      'nausea should be medicated if vomiting follows',
      'one with nausea can feel relief after vomiting',
      'having a headache will inevitably lead to nausea'
    ],
    correctIndex: 3,
    explanation: 'Parçada "Once you vomit... usually feel better almost instantly" (Kustuktan sonra anında daha iyi hissedersiniz / rahatlarsınız) denmektedir. Bu da D şıkkını doğrular.',
  ),
  const ExamQuestion(
    number: 73,
    type: 'Okuma Parçası',
    passageRef: 'The word \'nausea\' evokes an awful experience... ',
    question: 'One can understand from the passage that ----.',
    options: [
      'a person stuck on a boat trip might have nausea with a severe headache and drowsiness',
      'hunger can be considered as one of the possible causes of nausea',
      'people who have had nausea because of motion sickness must see a physician',
      'dimenhydrinate is the most famous nausea medicine for its mild side effects',
      'having continual nausea may be an initial sign of some serious diseases'
    ],
    correctIndex: 4,
    explanation: 'Eğer mide bulantısı nedeni olmadan iki günden uzun sürerse "early indicator of serious problems" (ciddi sorunların erken göstergesi) olabilir. Bu durum E şıkkıyla (continual nausea may be an initial sign...) eşleşir.',
  ),
  const ExamQuestion(
    number: 74,
    type: 'Okuma Parçası',
    passageRef: 'The word \'nausea\' evokes an awful experience... ',
    question: 'It can be inferred from the passage that ----.',
    options: [
      'patients should be cautious about the length of nausea and the potential reasons behind it',
      'pharmaceuticals for the treatment of nausea are available for any diseases',
      'drowsiness can be one of the side effects of the pharmaceuticals available for any diseases',
      'cancer or gallbladder disease would cause nausea more often than a migraine',
      'physicians need to prescribe for nausea if there is an obvious cause like a serious disease'
    ],
    correctIndex: 0,
    explanation: 'İki günden fazla sürerse doktora gitmeli, çünkü kanser gibi nedenler olabilir denmesi (uzunluğu ve potansiyel nedenleri hakkında dikkatli olunmalıdır) A şıkkını destekler.',
  ),
  const ExamQuestion(
    number: 75,
    type: 'Okuma Parçası',
    passageRef: 'Bacillus anthracis is the bacterium that causes anthrax. The bacteria adopt long, rod-like shapes when they find themselves in an environment suitable for rapid growth, such as the moist, nutrient-rich insides of an animal. Under arid conditions, however, the bacteria create hard, nearly indestructible spores that can lie dormant for a long time. When the spores are injected into healthy mice, they turn back into B. anthracis, triggering anthrax and killing the animals. Despite the existence of effective vaccines, currently, anthrax is still a concern worldwide due to its potential for being used as an unconventional weapon in biological warfare. Dried and kept in cold storage, the spores that cause anthrax will survive for years, allowing for industrial-scale production and stockpiling of the material long before it is used against soldiers on the battlefield.',
    question: 'Which of the following is true about the bacteria that cause anthrax?',
    options: [
      'Humidity of the environment that will host the bacteria serves an important function in their growth.',
      'General health condition of the recipient of the bacteria is of great significance for the spread of the disease in humans.',
      'Nutrient-rich insides of an animal lead the bacteria to produce spores.',
      'The shape of the bacteria remains the same despite the environmental changes that allow rapid growth.',
      'In arid conditions, they grow rapidly in a short time, posing several threats to both animals and humans.'
    ],
    correctIndex: 0,
    explanation: 'Parçada "nemli (moist) ortamlarda hızlı büyüme" ve "kurak (arid) ortamlarda spor oluşturma" denmiştir. Ortamın neminin (humidity) önemli bir işlevi vardır.',
  ),
  const ExamQuestion(
    number: 76,
    type: 'Okuma Parçası',
    passageRef: 'Bacillus anthracis is the bacterium that causes anthrax. ...',
    question: 'The underlined word in the passage \'dormant\' is closest in meaning to ----.',
    options: ['unlimited', 'indispensable', 'inactive', 'intolerable', 'unavoidable'],
    correctIndex: 2,
    explanation: 'dormant: uyku halinde, aktif olmayan. En yakın anlamı inactive (hareketsiz / aktif olmayan).',
  ),
  const ExamQuestion(
    number: 77,
    type: 'Okuma Parçası',
    passageRef: 'Bacillus anthracis is the bacterium that causes anthrax. ...',
    question: 'What is the purpose of the author in writing the passage?',
    options: [
      'To give information about B. anthracis, which could be used as a biological weapon',
      'To warn people against coming into contact with mice infected with B. anthracis',
      'To criticise scientists and medical people for not taking precautions against anthrax',
      'To complain about the inefficiency of the vaccines developed against the disease',
      'To highlight the importance of cold storage for the spores created by B. anthracis'
    ],
    correctIndex: 0,
    explanation: 'Yazarın amacı Bacillus anthracis (şarbon bakterisi) ve onun biyolojik silah potansiyeli hakkında bilgi vermektir.',
  ),
  const ExamQuestion(
    number: 78,
    type: 'Okuma Parçası',
    passageRef: 'Doctors suspect vitamin K deficiency when abnormal bleeding occurs in people with conditions that put them at risk. Blood tests to measure how well blood clots are done to help confirm the diagnosis. Knowing how much vitamin K people consume helps doctors interpret results of their blood tests. Meanwhile, a vitamin K injection in the muscle is recommended for all newborns to reduce the risk of bleeding within the brain after delivery. Breastfed infants who have not received this injection at birth are especially susceptible to vitamin K deficiency in adulthood because breast milk contains only small amounts of vitamin K. Otherwise, vitamin K is usually taken by mouth or given by injection under the skin. If a drug is the cause of the deficiency, the dose of the drug is adjusted or extra vitamin K is given. Vitamin K deficiency may also weaken bones. People who have vitamin K deficiency and liver disorder may also need blood transfusions to replenish the clotting factors. A damaged liver may be unable to synthesise clotting factors even after vitamin K injections are given.',
    question: 'It can be understood from the passage that ----.',
    options: [
      'vitamin K injections may have negative effects on bones if the dose cannot be adjusted carefully',
      'vitamin K deficiency is experienced especially after the loss of excessive amounts of blood',
      'doctors may need multiple sources of information before they diagnose whether a patient has vitamin K deficiency',
      'people should give an account of their daily food intake for doctors to decide whether a blood transfusion is necessary',
      'blood tests run on blood clots usually provide doctors with reliable results'
    ],
    correctIndex: 2,
    explanation: 'Parçaya göre doktorlar anormal kanama gördüğünde, kan pıhtılaşma testi (blood tests) yaptırır ve ayrıca hastanın ne kadar K vitamini tükettiğini bilmesi (knowing how much vitamin K people consume) sonuçları yorumlamasına yardımcı olur. Yani teşhis koymadan önce birden fazla bilgi kaynağına ihtiyaç duyar (multiple sources of information).',
  ),
  const ExamQuestion(
    number: 79,
    type: 'Okuma Parçası',
    passageRef: 'Doctors suspect vitamin K deficiency when abnormal bleeding occurs... ',
    question: 'It is pointed out in the passage that ----.',
    options: [
      'newborns diagnosed with vitamin K deficiency after they are born are especially susceptible to liver dysfunction',
      'the only way of providing extra vitamin K for babies is through injection in the muscle since other methods are not effective',
      'breastfeeding is very important for newborns since it is extremely rich in vitamin K',
      'if doctors suspect a drug of causing vitamin K deficiency in adults, they recommend that extra vitamin K be taken',
      'adults prefer to take vitamin K by mouth rather than injections since the first one is more effective'
    ],
    correctIndex: 3,
    explanation: 'Parçada "If a drug is the cause of the deficiency, the dose of the drug is adjusted or extra vitamin K is given" denmektedir. Bu da D şıkkını doğrular.',
  ),
  const ExamQuestion(
    number: 80,
    type: 'Okuma Parçası',
    passageRef: 'Doctors suspect vitamin K deficiency when abnormal bleeding occurs... ',
    question: 'One can conclude from the passage that ----.',
    options: [
      'vitamin K deficiency can be the main cause of liver disorders',
      'severe liver disorders are mostly accompanied by vitamin K deficiency',
      'people who want to increase the amount of vitamin K in their bodies should be provided with an appropriate diet',
      'Breastfeeding does not provide any protection for babies against bleeding risk',
      'vitamin K injections can fall short of being useful if the liver is not functioning properly'
    ],
    correctIndex: 4,
    explanation: 'Son cümlede "A damaged liver may be unable to synthesise clotting factors even after vitamin K injections are given" (Hasarlı bir karaciğer, K vitamini enjeksiyonu verilse bile pıhtılaşma faktörlerini sentezleyemeyebilir) denmektedir. Bu E şıkkıyla (Karaciğer düzgün çalışmıyorsa iğneler yetersiz kalabilir) aynı anlamdadır.',
  ),
];
