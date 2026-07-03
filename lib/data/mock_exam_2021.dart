import 'mock_exams_data.dart';

final List<ExamQuestion> exam2021 = [
  // 1-20 Vocabulary and Grammar
  const ExamQuestion(
    number: 1,
    type: 'Kelime',
    question: 'Many of the technological advances in medicine have been provided for us by the ---- of engineers, physicists, biologists, and medical doctors.',
    options: ['suspension', 'hesitation', 'recession', 'elimination', 'collaboration'],
    correctIndex: 4,
    explanation: 'collaboration: işbirliği. Mühendisler, fizikçiler, biyologlar ve doktorların işbirliği anlamındadır.',
  ),
  const ExamQuestion(
    number: 2,
    type: 'Kelime',
    question: '---- to carbon monoxide results in a wide variety of potential adverse effects, particularly in individuals who have pre-existing cardiac or lung disease.',
    options: ['Opposition', 'Solution', 'Exposure', 'Obstacle', 'Superiority'],
    correctIndex: 2,
    explanation: 'Exposure to: -e maruz kalma. Karbonmonoksite maruz kalma olumsuz etkilere yol açar.',
  ),
  const ExamQuestion(
    number: 3,
    type: 'Kelime',
    question: 'Adolescent diets are often ---- for their reliance on snacks and junk foods high in calories and saturated fat, leading to increased risk of heart disease in later life.',
    options: ['beneficial', 'adequate', 'notorious', 'sustainable', 'available'],
    correctIndex: 2,
    explanation: 'notorious for: -ile adı çıkmış/kötü şöhretli. Abur cubur tüketimiyle bilinirler.',
  ),
  const ExamQuestion(
    number: 4,
    type: 'Kelime',
    question: 'Studies have shown that people can ---- reduce longings for such food as burgers and cookies by thinking of all the negatives of eating them.',
    options: ['recklessly', 'scarcely', 'extravagantly', 'doubtfully', 'substantially'],
    correctIndex: 4,
    explanation: 'substantially: önemli ölçüde. İnsanlar bu yiyeceklere olan arzularını önemli ölçüde azaltabilirler.',
  ),
  const ExamQuestion(
    number: 5,
    type: 'Kelime',
    question: 'Amphetamines, central nervous system stimulants used medically to treat narcolepsy, are also used to ---- performance.',
    options: ['abandon', 'approve', 'hinder', 'eliminate', 'enhance'],
    correctIndex: 4,
    explanation: 'enhance: artırmak, geliştirmek. Performansı artırmak için kullanılır.',
  ),
  const ExamQuestion(
    number: 6,
    type: 'Phrasal Verb',
    question: 'The heart, blood, and blood vessels ---- the circulatory or cardiovascular system whose primary role is to pump blood around the body to supply cells with oxygen, food and other essentials.',
    options: ['call off', 'bring down', 'make up', 'set back', 'take away'],
    correctIndex: 2,
    explanation: 'make up: oluşturmak. Kalp ve damarlar dolaşım sistemini oluşturur.',
  ),
  const ExamQuestion(
    number: 7,
    type: 'Gramer',
    question: 'According to a 2013 study, when ---- on athletes after intense physical exercise, participants who ---- 3.1 gr of ginger per day experienced significantly reduced muscle soreness.',
    options: ['tested / received', 'to have tested / would have received', 'having been tested / were received', 'having tested / have received', 'to test / had received'],
    correctIndex: 0,
    explanation: 'when tested (test edildiğinde) ve participants who received (alan katılımcılar) passive/active kısaltmaları.',
  ),
  const ExamQuestion(
    number: 8,
    type: 'Gramer',
    question: 'Mechanical injuries to the skin ---- into those caused by a blunt force, such as a punch from a fist, and those ---- from a sharp force, such as a knife.',
    options: ['have been divided / to have resulted', 'had been divided / having resulted', 'were divided / to be resulting', 'are divided / resulting', 'would be divided / to result'],
    correctIndex: 3,
    explanation: 'Genel bir gerçeği anlattığı için Present Passive (are divided) ve aktif kısaltma (resulting) kullanılır.',
  ),
  const ExamQuestion(
    number: 9,
    type: 'Gramer',
    question: 'In Australia, the vaccine ---- rotavirus, the most prevalent cause of severe diarrhoea ---- young children, was added to routine, early-childhood immunisations in 2007.',
    options: ['against / among', 'off / for', 'in / by', 'with / at', 'to / in'],
    correctIndex: 0,
    explanation: 'vaccine against (karşı aşı) ve among young children (küçük çocuklar arasında).',
  ),
  const ExamQuestion(
    number: 10,
    type: 'Gramer',
    question: 'Vegetative patients can live for several years and usually die ---- infections, organ failure or complications related to the brain injury that has put them ---- this state.',
    options: ['for / with', 'about / at', 'from / into', 'by / over', 'under / on'],
    correctIndex: 2,
    explanation: 'die from (bir şeyden ölmek) ve put them into this state (onları bu duruma sokmak).',
  ),
  const ExamQuestion(
    number: 11,
    type: 'Gramer',
    question: 'Water is essential ---- health as it helps regulate body temperature, removes wastes, and transports nutrients ---- the body.',
    options: ['with / from', 'in / over', 'by / on', 'to / throughout', 'beyond / under'],
    correctIndex: 3,
    explanation: 'essential to/for (sağlık için temel) ve throughout the body (vücudun her yerine).',
  ),
  const ExamQuestion(
    number: 12,
    type: 'Gramer',
    question: '---- the flavours of tea, coffee, and cocoa are so different, they all depend for their stimulating effect upon a spicy-tasting substance called caffeine.',
    options: ['Only if', 'Even though', 'Because', 'Until', 'Unless'],
    correctIndex: 1,
    explanation: 'Zıtlık bağlacı: Tatları çok farklı olmasına rağmen (Even though) hepsi kafeine dayanır.',
  ),
  const ExamQuestion(
    number: 13,
    type: 'Gramer',
    question: 'Taken in balance with other foodstuffs, honey can be a positive health factor for most who consume it ---- it is free of processing.',
    options: ['in order that', 'as long as', 'unless', 'until', 'although'],
    correctIndex: 1,
    explanation: 'Koşul bağlacı: İşlem görmediği sürece (as long as) faydalıdır.',
  ),
  const ExamQuestion(
    number: 14,
    type: 'Gramer',
    question: 'A daily low dose of aspirin is often recommended for people who are at risk of having a heart attack or stroke ---- it makes it easier for blood to flow through arteries.',
    options: ['unless', 'whether', 'as', 'even if', 'while'],
    correctIndex: 2,
    explanation: 'Sebep sonuç: Çünkü/İçin (as) kanın akışını kolaylaştırır.',
  ),
  const ExamQuestion(
    number: 15,
    type: 'Gramer',
    question: 'Treatment options suggested for cold sores are limited; ----, doctors may prescribe antiviral medications for recurrent or severe episodes of cold sores.',
    options: ['likewise', 'however', 'instead', 'moreover', 'in other words'],
    correctIndex: 1,
    explanation: 'Zıtlık: Tedavi seçenekleri sınırlıdır; ancak (however) doktorlar antiviral ilaç yazabilirler.',
  ),
  const ExamQuestion(
    number: 16,
    type: 'Gramer',
    question: '---- everyone\'s brain loses volume over time, the shrinkage happens faster in people who have trouble sleeping than in those who are better rested.',
    options: ['Whereas', 'Since', 'As long as', 'Once', 'As if'],
    correctIndex: 0,
    explanation: 'Zıtlık/Karşılaştırma: Herkesin beyni zamanla hacim kaybederken (Whereas), uyku sorunu çekenlerde daha hızlı küçülür.',
  ),
  const ExamQuestion(
    number: 17,
    type: 'Gramer',
    question: 'Many people use aspirin to relieve various kinds of minor aches and pains ---- headaches, toothaches, and muscle pain.',
    options: ['regardless of', 'in the absence of', 'by means of', 'such as', 'in contrast with'],
    correctIndex: 3,
    explanation: 'Örneklendirme: Baş ağrısı, diş ağrısı gibi (such as) küçük ağrılar.',
  ),
  const ExamQuestion(
    number: 18,
    type: 'Gramer',
    question: '---- lack of support, mental health conditions experienced by children and adolescents can lead to school failure, including poor academic performance and higher drop-out rates.',
    options: ['Due to', 'In comparison with', 'In spite of', 'Unlike', 'With the help of'],
    correctIndex: 0,
    explanation: 'Sebep: Destek eksikliği nedeniyle (Due to).',
  ),
  const ExamQuestion(
    number: 19,
    type: 'Gramer',
    question: 'One of the best ways to battle Parkinson\'s symptoms is with physical activity, ---- self-guided such as yoga and walking ---- under a physiotherapist\'s supervision.',
    options: ['either / or', 'neither / nor', 'the more / the more', 'as / as', 'so / that'],
    correctIndex: 0,
    explanation: 'Seçenek: Ya (either) kendi yönlendirdiği ya da (or) bir fizyoterapist gözetiminde.',
  ),
  const ExamQuestion(
    number: 20,
    type: 'Gramer',
    question: 'When a blood sample is taken, the skin around the vein ---- the needle will be inserted is cleaned with an antiseptic.',
    options: ['what', 'whose', 'where', 'why', 'how'],
    correctIndex: 2,
    explanation: 'Yer nitelemesi: İğnenin gireceği yerdeki (where) damarın etrafındaki deri.',
  ),

  // 21-25 Cloze Test
  const ExamQuestion(
    number: 21,
    type: 'Cloze Test',
    question: 'A cough is a forceful release of air from the lungs that can be heard. Coughing (21)---- the respiratory system by clearing it of irritants and secretions.',
    options: ['distinguishes', 'protects', 'constitutes', 'stimulates', 'destroys'],
    correctIndex: 1,
    explanation: 'protects: korur. Öksürmek solunum sistemini korur.',
  ),
  const ExamQuestion(
    number: 22,
    type: 'Cloze Test',
    question: '(22)---- people can generally cough voluntarily, a cough is usually a reflex triggered when an irritant stimulates one or more of the cough receptors...',
    options: ['Before', 'While', 'Since', 'Only if', 'Except for'],
    correctIndex: 1,
    explanation: 'While: İnsanlar genellikle isteyerek öksürebilseler de (While), öksürük genellikle bir reflekstir.',
  ),
  const ExamQuestion(
    number: 23,
    type: 'Cloze Test',
    question: 'These receptors then send a message to the cough centre in the brain, which in turn tells the body (23)----.',
    options: ['coughed', 'cough', 'to have coughed', 'to cough', 'coughing'],
    correctIndex: 3,
    explanation: 'tell somebody to do something: vücuda öksürmesini (to cough) söyler.',
  ),
  const ExamQuestion(
    number: 24,
    type: 'Cloze Test',
    question: 'A cough begins (24)---- a deep breath in, at which point the opening between the vocal cords shuts...',
    options: ['above', 'off', 'for', 'with', 'outside'],
    correctIndex: 3,
    explanation: 'begins with: ile başlar. Derin bir nefes alma ile (with) başlar.',
  ),
  const ExamQuestion(
    number: 25,
    type: 'Cloze Test',
    question: '(25)---- the pressing of the diaphragm and other muscles involved in breathing against the lungs, the glottis suddenly opens...',
    options: ['In pursuit of', 'On behalf of', 'Similar to', 'As a result of', 'In case of'],
    correctIndex: 3,
    explanation: 'As a result of: -in bir sonucu olarak.',
  ),

  // 26-30 Cloze Test
  const ExamQuestion(
    number: 26,
    type: 'Cloze Test',
    question: 'Cigarette smoking became (26)---- across social strata, a mark of sophistication and success.',
    options: ['regrettable', 'negligible', 'suspicious', 'fashionable', 'hazardous'],
    correctIndex: 3,
    explanation: 'fashionable: modaya uygun, popüler. Toplumsal katmanlar arasında popüler hale geldi.',
  ),
  const ExamQuestion(
    number: 27,
    type: 'Cloze Test',
    question: 'But as early as the 1940s, doctors (27)---- that many of their patients who had heart disease or lung disease, including lung cancer, were smokers.',
    options: ['have recognised', 'recognised', 'can recognise', 'would have recognised', 'should have recognised'],
    correctIndex: 1,
    explanation: 'Geçmişte belirli bir zaman (1940s) belirtildiği için Simple Past Tense (recognised) kullanılır.',
  ),
  const ExamQuestion(
    number: 28,
    type: 'Cloze Test',
    question: 'In 1964, a team of doctors released the landmark report, which presented (28)---- fairly severe detail the known and suspected health consequences of cigarette smoking.',
    options: ['in', 'from', 'onto', 'below', 'over'],
    correctIndex: 0,
    explanation: 'in detail: detaylı olarak.',
  ),
  const ExamQuestion(
    number: 29,
    type: 'Cloze Test',
    question: 'The report\'s publication was a wake-up call for doctors (29)---- the general public, nearly 45 percent of whom were smokers.',
    options: ['such as', 'as opposed to', 'as well as', 'owing to', 'regardless of'],
    correctIndex: 2,
    explanation: 'as well as: yanı sıra. Doktorların yanı sıra (as well as) genel halk için de bir uyanış çağrısıydı.',
  ),
  const ExamQuestion(
    number: 30,
    type: 'Cloze Test',
    question: 'Over the next 40 years, vigorous education efforts resulted in cutting the number of smokers nearly in half. (30)----, cardiovascular diseases and lung cancer increased dramatically due to the consequences of smoking.',
    options: ['Similarly', 'For instance', 'In other words', 'Therefore', 'Nevertheless'],
    correctIndex: 4,
    explanation: 'Nevertheless: Yine de. Sigara içenlerin sayısı yarı yarıya azalmasına rağmen, yine de (Nevertheless) hastalıklar arttı.',
  ),

  // 31-41 Cümle Tamamlama
  const ExamQuestion(
    number: 31,
    type: 'Cümle Tamamlama',
    question: '----, but they can make diagnosing breast cancer more difficult because of the dense, fibrous tissue.',
    options: [
      'Excess levels of the hormones estrogen and prolactin cause breast cysts',
      'Fibrocystic breasts affect as many as 60 percent of women typically between ages 30 and 50',
      'A cancerous growth in the breast is often not tender or freely movable when touched',
      'Fibrocystic lumps generally get worse with the menstrual cycle',
      'Fibrocystic lumps are benign and do not increase the risk for breast cancer'
    ],
    correctIndex: 4,
    explanation: '...ancak yoğun doku nedeniyle kanser teşhisini zorlaştırabilirler. Bu yüzden iyi huyludurlar ve risk oluşturmazlar (ama teşhisi zorlaştırırlar).',
  ),
  const ExamQuestion(
    number: 32,
    type: 'Cümle Tamamlama',
    question: 'If you dial the emergency services in Denmark, ----.',
    options: [
      'it is difficult to pick up on all of the emergency signals at all times',
      'only one percent of the emergency calls are for cardiac arrest',
      'recognising the symptoms early makes the difference between life or death',
      'a human operator as well as an artificially intelligent assistant will be listening',
      'it is not always easy to detect the severity of an incident'
    ],
    correctIndex: 3,
    explanation: 'Danimarka\'da acil servisi ararsanız, yapay zekalı bir asistan ve insan operatör dinliyor olacaktır (Type 1 Koşul Cümlesi).',
  ),
  const ExamQuestion(
    number: 33,
    type: 'Cümle Tamamlama',
    question: 'While chickenpox is no more than a matter of a few days\' discomfort for the majority, ----.',
    options: [
      'people are mostly protected against re-infection following vaccination',
      'some groups are at risk of developing severe complications such as pneumonia',
      'it is well known that it can strike any age group, even older children and adults',
      'lesions generally spread to the face and extremities and fade away in a couple of days',
      'the disease is caused by the varicella-zoster virus'
    ],
    correctIndex: 1,
    explanation: 'Çoğunluk için sadece birkaç günlük rahatsızlıkken (While), bazı gruplar şiddetli komplikasyonlar geliştirme riski altındadır.',
  ),
  const ExamQuestion(
    number: 34,
    type: 'Cümle Tamamlama',
    question: '----, clinical evidence indicates that certain foods can worsen it in susceptible individuals and that food allergies can increase joint pain.',
    options: [
      'Just as rheumatoid arthritis is an autoimmune condition, in which the body attacks itself',
      'Even if a deficiency of certain vitamins can accelerate joint deterioration',
      'Whereas rheumatoid arthritis refers to inflamed joints that often cripple the patient',
      'Although some medical opinions disclaim the effects of food on arthritis',
      'As fish oil reduces the formation of inflammatory substances in the body'
    ],
    correctIndex: 3,
    explanation: 'Bazı tıbbi görüşler gıdaların artrit üzerindeki etkisini reddetmesine rağmen (Although), klinik kanıtlar gıdaların durumu kötüleştirebileceğini gösteriyor.',
  ),
  const ExamQuestion(
    number: 35,
    type: 'Cümle Tamamlama',
    question: '----, the antibodies produced by a vaccine can eliminate a disease even before it gets started.',
    options: [
      'Because sometimes vaccinations create minor side effects',
      'Given that anti-vaccination movements have spread in parts of the developed world',
      'Even if sufficient numbers of a population are vaccinated against a disease',
      'Unlike the usual delayed immune response that allows a virus to take hold in the body',
      'In order for vaccines for one illness to decrease the chances of other illnesses'
    ],
    correctIndex: 3,
    explanation: 'Virüsün vücuda yerleşmesine izin veren olağan gecikmiş bağışıklık tepkisinin aksine (Unlike), aşıların ürettiği antikorlar hastalığı başlamadan ortadan kaldırabilir.',
  ),
  const ExamQuestion(
    number: 36,
    type: 'Cümle Tamamlama',
    question: 'Toothaches should always be professionally treated by a dentist; ----.',
    options: [
      'therefore, identifying the problem tooth is often difficult in cases of severe pain',
      'however, some methods of self-treatment may help manage the pain until professional care is available',
      'yet, diagnosis includes the identification of the location of the tooth as well as the cause',
      'instead, the dentist will remove the decayed area and restore the tooth by filling it',
      'on the contrary, the dentist begins by asking the patient specific questions about the toothache'
    ],
    correctIndex: 1,
    explanation: 'Diş ağrıları her zaman bir diş hekimi tarafından tedavi edilmelidir; ancak (however), profesyonel bakım mevcut olana kadar bazı kendi kendine tedavi yöntemleri ağrıyı yönetmeye yardımcı olabilir.',
  ),
  const ExamQuestion(
    number: 37,
    type: 'Cümle Tamamlama',
    question: 'Modern medicine has become increasingly successful at treating and controlling many chronic health conditions ----.',
    options: [
      'because Alzheimer\'s disease follows a course that progressively deprives a person of memories',
      'given that no cure or drug has been able to halt the course of Alzheimer\'s disease',
      'unless Alzheimer\'s researchers recognise the need to learn more regarding prevention strategies of the disease',
      'as studies have indicated that maintaining cardiovascular health may diminish the risk of Alzheimer\'s disease',
      'although some age-related ones such as Alzheimer\'s disease have defied attempts to find preventive therapies'
    ],
    correctIndex: 4,
    explanation: 'Modern tıp birçok kronik sağlık sorununu tedavi etmede başarılı olmasına rağmen (although), Alzheimer gibi bazı yaşa bağlı hastalıklar önleyici tedaviler bulma çabalarına meydan okumaya devam etmektedir.',
  ),
  const ExamQuestion(
    number: 38,
    type: 'Cümle Tamamlama',
    question: 'Powerful sulphur compounds in onions are responsible for their sharp and unpleasant odour; ----.',
    options: [
      'as protecting health implies much more than health care',
      'so onions contain a variety of nutrients, such as vitamin C and chromium',
      'but they can help reduce blood sugar, cholesterol and blood pressure',
      'now that there are many varieties of them around the world',
      'however, consuming onions in large amounts may cause acid reflux'
    ],
    correctIndex: 2,
    explanation: 'Soğandaki güçlü kükürt bileşikleri keskin ve hoş olmayan kokusundan sorumludur; fakat (but) kan şekerini ve kolesterolü düşürmeye de yardımcı olabilirler.',
  ),
  const ExamQuestion(
    number: 39,
    type: 'Cümle Tamamlama',
    question: 'Health authorities identify pregnant women and children 6-24 months of age as the priority target groups for iron supplementation ----.',
    options: [
      'given that efforts to improve the iron status of populations worldwide through supplementation have met with great success',
      'because these populations are at the highest risk of iron deficiency and most likely to benefit from its control',
      'as long as the recommended dose of supplementation is increased for populations where the prevalence of anemia is 40% or higher',
      'once recommendations about iron supplementation are given for other target groups, such as children and adolescents',
      'since the liquid formulation, which is available for infants, is not used often in anemia control programmes in developing countries'
    ],
    correctIndex: 1,
    explanation: 'Sağlık yetkilileri, hamile kadınları ve 6-24 aylık çocukları öncelikli hedef kitle olarak belirliyor çünkü (because) bu gruplar demir eksikliği açısından en yüksek risk altındadır.',
  ),
  const ExamQuestion(
    number: 40,
    type: 'Cümle Tamamlama',
    question: '----, the immune system reacts by producing antibodies, which attack the small intestine, reducing its ability to absorb nutrients.',
    options: [
      'Even if celiac disease affects a large number of people throughout the world',
      'Although the reduced absorption of nutrients leads to malnutrition in those with celiac disease',
      'When a person with celiac disease eats gluten-containing food',
      'Since supplements can play an important role in the lives of people with celiac disease',
      'While some diabetic patients face the hazard of developing celiac disease'
    ],
    correctIndex: 2,
    explanation: 'Çölyak hastalığı olan bir kişi gluten içeren yiyecekler yediğinde (When), bağışıklık sistemi ince bağırsağa saldıran antikorlar üreterek tepki verir.',
  ),
  const ExamQuestion(
    number: 41,
    type: 'Cümle Tamamlama',
    question: 'Any single-gene disorder can be detected in the first 6 to 10 weeks of pregnancy ----.',
    options: [
      'in terms of favourable conditions for a possible pregnancy',
      'despite the risk of having a child with a single-gene disorder',
      'because of the concerns sparking controversy in prenatal screening',
      'thanks to a test looking for increases in the level of mutations',
      'due to reasons related with decreases in the cases of pregnancy'
    ],
    correctIndex: 3,
    explanation: 'Herhangi bir tek gen bozukluğu, mutasyon seviyesindeki artışları araştıran bir test sayesinde (thanks to a test...) hamileliğin ilk 6-10 haftasında tespit edilebilir.',
  ),

  // 42-47 Çeviri (İngilizce -> Türkçe)
  const ExamQuestion(
    number: 42,
    type: 'Çeviri (İng-Tür)',
    question: 'Stretching is thought to prevent injury and allow you to feel less tired after exercise, but research has shown that stretching does not have a remarkable impact on muscle soreness.',
    options: [
      'Esneme hareketinin yaralanmayı önlediği ve egzersiz sonrasındaki yorgunluk hissini azalttığı düşünülse de araştırmalar esnemenin kas ağrısı üzerinde önemli bir etkisi olmadığını göstermektedir.',
      'Esneme hareketinin yaralanmayı önlediği ve egzersiz sonrasındaki yorgunluğu azalttığı düşünülür, ancak araştırmalar sonucunda esnemenin kas ağrısı üzerinde kayda değer bir etkisi olmadığı ortaya konulmuştur.',
      'Her ne kadar esneme hareketinin yaralanmayı önlediği ve egzersiz sonrasında daha az yorgun hissetmenizi sağladığı düşünülse de esnemenin kas ağrısı üzerinde kayda değer bir etkisi olmadığını gösteren araştırmalar bulunmaktadır.',
      'Esneme hareketinin yaralanmayı önlediği ve egzersiz sonrasında daha az yorgun hissetmenizi sağladığı düşünülür, ancak araştırmalar esnemenin kas ağrısı üzerinde kayda değer bir etkisi olmadığını göstermektedir.',
      'Yaralanmayı önlemek ve egzersiz sonrasında yorgunluk hissini azaltmak için esneme hareketinin yapılması gerektiği düşünülür, ancak araştırmalar esnemenin kas ağrısı üzerinde önemli bir etkisi olmadığını göstermektedir.'
    ],
    correctIndex: 3,
    explanation: 'Stretching is thought to prevent... = Esneme hareketinin ... önlediği ... düşünülür, but = ancak, research has shown = araştırmalar ... göstermektedir.',
  ),
  const ExamQuestion(
    number: 43,
    type: 'Çeviri (İng-Tür)',
    question: 'Sleep deprivation can be linked to obesity due to hormonal changes that slow down metabolism and increase appetite.',
    options: [
      'Metabolizmayı yavaşlatırken iştahı da artıran hormonal değişiklikler yüzünden uykusuzluk obezite ile ilişkilendirilir.',
      'Uykusuzluğun obezite ile ilişkilendirilmesinin sebebi, hormonal değişiklikler ile metabolizmayı yavaşlatması ve iştahı artırmasıdır.',
      'Uykusuzluk, metabolizmayı yavaşlatan ve iştahı artıran hormonal değişikliklere yol açtığı için obezite ile ilişkilendirilebilir.',
      'Uykusuzluk, metabolizmayı yavaşlatan ve iştah artıran hormonal değişikliklerden dolayı obezite ile ilişkilendirilebilir.',
      'Metabolizmayı yavaşlattığı ve iştahı artırdığı için hormonal değişiklikler, uykusuzluk ve obezite ile ilişkilendirilebilir.'
    ],
    correctIndex: 3,
    explanation: 'Sleep deprivation can be linked to obesity = Uykusuzluk obezite ile ilişkilendirilebilir, due to hormonal changes = hormonal değişikliklerden dolayı.',
  ),
  const ExamQuestion(
    number: 44,
    type: 'Çeviri (İng-Tür)',
    question: 'It is no surprise that scientists have turned their attention to enhancing human memory using techniques that stimulate, supplement and even mimic parts of the brain.',
    options: [
      'Bilim insanlarının, dikkatlerini beynin bölümlerini uyaran, destekleyen ve hatta taklit eden teknikler sayesinde insan hafızasını geliştirmeye yöneltmesi şaşırtıcı değildir.',
      'Bilim insanlarının, dikkatlerini beynin bölümlerini uyaran, destekleyen ve hatta taklit eden teknikler kullanarak insan hafızasını geliştirmeye yöneltmiş olmaları şaşırtıcı değildir.',
      'Bilim insanlarının, dikkatlerini insan hafızasını geliştirmeye yöneltmesi ve bunun için beynin bölümlerini uyaran, destekleyen ve hatta taklit eden teknikleri kullanmaları şaşırtıcı değildir.',
      'Bilim insanlarının, dikkatlerini insan hafızasını geliştirmeye yönelterek beynin bölümlerini uyaran, destekleyen ve hatta taklit eden teknikleri kullanmaları şaşırtıcı değildir.',
      'Bilim insanlarının, beynin bölümlerini uyaran, destekleyen ve hatta taklit eden teknikler kullanmalarının ardından, dikkatlerini insan hafızasını geliştirmeye yöneltmiş olmaları şaşırtıcı değildir.'
    ],
    correctIndex: 1,
    explanation: 'It is no surprise that = ... şaşırtıcı değildir, using techniques = teknikler kullanarak, turned their attention to = dikkatlerini ... yöneltmiş olmaları.',
  ),
  const ExamQuestion(
    number: 45,
    type: 'Çeviri (İng-Tür)',
    question: 'Helping prepare the body for \'fight or flight\' by increasing blood sugar levels and slowing down digestion, cortisol is released in times of stress.',
    options: [
      'Stres anında vücudun \'savaş ya da kaç durumu için hazırlanmasına yardım eden kortizol, kan şekeri seviyelerini artırmak ve sindirimi yavaşlatmak için salgılanır.',
      'Kortizol, stres anında ve \'savaş ya da kaç\' durumunda kan şekeri seviyelerini artırmaya ve sindirimi yavaşlatmaya yardımcı olması amacıyla salgılanır.',
      'Kan şekeri seviyelerini artırarak ve sindirimi yavaşlatarak vücudun \'savaş ya da kaç durumu için hazırlanmasına yardımcı olan kortizol, stres anında salgılanır.',
      'Stres anında vücudun \'savaş ya da kaç durumuna hazırlanmasına yardım etmek için salgılanan kortizol, kan şekeri seviyelerini artırır ve sindirimi yavaşlatır.',
      'Stres anında salgılanarak vücuda yardımcı olan kortizol, kan şekeri seviyelerini artırıp sindirimi yavaşlatarak vücudu \'savaş ya da kaç\' durumuna hazırlar.'
    ],
    correctIndex: 2,
    explanation: 'Helping prepare = hazırlamasına yardımcı olan, by increasing ... and slowing down = artırarak ve yavaşlatarak, cortisol is released = kortizol salgılanır.',
  ),
  const ExamQuestion(
    number: 46,
    type: 'Çeviri (İng-Tür)',
    question: 'Experts suggest that eating a handful of almonds every day for a month can increase levels of antioxidants in the bloodstream and lower blood pressure.',
    options: [
      'Uzmanlar, bir ay boyunca her gün bir avuç dolusu badem yiyerek kan dolaşımındaki antioksidan seviyelerinin artırılabileceğini ve kan basıncının düşürülebileceğini dile getirmektedir.',
      'Kan dolaşımındaki antioksidan seviyelerini artırmak ve kan basıncını düşürmek için uzmanlar tarafından bir ay boyunca her gün bir avuç dolusu badem yenmesi önerilmektedir.',
      'Uzmanlar, bir ay boyunca her gün bir avuç dolusu badem yemenin kan dolaşımındaki antioksidan seviyelerini artırabileceğini ve kan basıncını düşürebileceğini öne sürmektedir.',
      'Bir ay boyunca her gün bir avuç dolusu badem yemenin sadece kan dolaşımındaki antioksidan seviyelerini artırmakla kalmayıp aynı zamanda kan basıncını da düşürdüğü, uzmanlar tarafından öne sürülmektedir.',
      'Uzmanlar, bir ay boyunca her gün bir avuç dolusu badem yemenin hem kan dolaşımındaki antioksidan seviyelerini artırabileceğini hem de kan basıncını düşürebileceğini iddia etmektedir.'
    ],
    correctIndex: 2,
    explanation: 'Experts suggest that = Uzmanlar ... öne sürmektedir, eating... can increase... and lower = yemenin ... artırabileceğini ve ... düşürebileceğini.',
  ),
  const ExamQuestion(
    number: 47,
    type: 'Çeviri (İng-Tür)',
    question: 'Studies carried out in Italy found that eating oily fish cooked with olive oil significantly reduced the threat of cancer.',
    options: [
      'İtalya\'da yürütülen çalışmalar, zeytinyağı ile pişirilen yağlı balıkların yenilerek kanser riskinin büyük oranda azaltıldığını ortaya çıkardı.',
      'İtalya\'da yürütülen çalışmalar, zeytinyağı ile pişirilen yağlı balıkları yemenin kanser riskini önemli ölçüde azalttığını ortaya koydu.',
      'İtalya\'da yapılan çalışmalarda, kanser riskini büyük oranda azaltmak için yağlı balıkların zeytinyağı ile pişirilip yenmesi gerektiği ortaya kondu.',
      'İtalya\'da yapılan çalışmalar sayesinde zeytinyağı ile pişirilmiş yağlı balıkları yemenin kanser riskini önemli ölçüde azalttığı keşfedildi.',
      'Zeytinyağı ile pişirilen yağlı balıkları yemenin kanser riskini önemli ölçüde azalttığı, İtalya\'da yürütülen çalışmalarda tespit edildi.'
    ],
    correctIndex: 1,
    explanation: 'Studies... found that = çalışmalar ... ortaya koydu/buldu, eating... significantly reduced = yemenin ... önemli ölçüde azalttığını.',
  ),

  // 48-53 Çeviri (Türkçe -> İngilizce)
  const ExamQuestion(
    number: 48,
    type: 'Çeviri (Tür-İng)',
    question: 'Yumurta, süt ve balıkta bol miktarda bulunan A vitamini, bağışıklık sisteminin düzgün çalışmasını sağlamakla birlikte cildimizi ve gözlerimizi de sağlıklı tutar.',
    options: [
      'Vitamin A, which helps the immune system function properly and keeps our skin and eyes healthy, is abundant in egg, milk and fish.',
      'Besides keeping our skin and eyes healthy, vitamin A helps the immune system function properly, and it is abundant in egg, milk and fish.',
      'Egg, milk and fish are rich in vitamin A, which keeps our skin and eyes healthy and helps the immune system function properly.',
      'There is plenty of vitamin A in egg, milk and fish, and it keeps our skin and eyes healthy along with helping the immune system function properly.',
      'Vitamin A, abundant in egg, milk and fish, keeps our skin and eyes healthy as well as helping the immune system function properly.'
    ],
    correctIndex: 4,
    explanation: '...bol miktarda bulunan A vitamini = Vitamin A, abundant in..., ...sağlamakla birlikte ... de sağlıklı tutar = keeps ... healthy as well as helping...',
  ),
  const ExamQuestion(
    number: 49,
    type: 'Çeviri (Tür-İng)',
    question: 'İnsanların iskeletleri hayatları boyunca değişir, bu yüzden kafanın ölçüsüne oranla vücudun ölçüsü bir yetişkinde bir çocuktakinden daha büyüktür.',
    options: [
      'The size of the body in relation to the size of the head is greater in an adult than in a child since people\'s skeletons change throughout their lives.',
      'The fact that people\'s skeletons change during their lives is the reason behind the bigger body size in relation to head size in adulthood rather than in childhood.',
      'People\'s skeletons change throughout their lives, so the size of the body in relation to the size of the head is greater in an adult than in a child.',
      'The size of the body in relation to that of the head is greater in adults than in children, which shows that people\'s skeletons change throughout their lives.',
      'The reason why the size of the body in relation to the size of the head is greater in an adult than in a child is that people\'s skeletons change throughout their lives.'
    ],
    correctIndex: 2,
    explanation: '...değişir, bu yüzden ... = ...change..., so the size of the body in relation to the size of the head is greater...',
  ),
  const ExamQuestion(
    number: 50,
    type: 'Çeviri (Tür-İng)',
    question: 'Düzenli egzersiz, ruh hâlinizi yükseltmeye, endişe ve öfkeyi azaltmaya ve stresten dolayı gergin olmaya meyilli kaslara kan akışını artırmaya yardımcı olabilir.',
    options: [
      'In addition to boosting your mood, regular exercise can lessen anxiety and anger, and increase blood flow to the muscles, which tend to be tense because of stress.',
      'Regular exercise can help elevate your mood as it lessens anxiety and anger, and increase blood flow to the muscles, which tend to be tense due to stress.',
      'Regular exercise can help elevate your mood, lessen anxiety and anger, and increase blood flow to the muscles, which tend to be tense due to stress.',
      'Because muscles are likely to be tense due to stress, regular exercise can help elevate your mood, lessen anxiety and anger, and increase blood flow to the muscles.',
      'Regular exercise boosts your mood by helping lessen anxiety and anger, and can increase blood flow to the muscles, which tend to be tense because of stress.'
    ],
    correctIndex: 2,
    explanation: 'Düzenli egzersiz ... yardımcı olabilir = Regular exercise can help..., ruh halinizi yükseltmeye, azaltmaya ve artırmaya = elevate..., lessen..., and increase...',
  ),
  const ExamQuestion(
    number: 51,
    type: 'Çeviri (Tür-İng)',
    question: 'Gıda zehirlenmesi geçiren insanlar aktif belirtiler hafifledikten sonra bir hafta boyunca yorgun hissetseler de genellikle antibiyotik tedavisi olmadan iyileşirler.',
    options: [
      'People who have had food poisoning generally recover without antibiotic treatment, although they feel tired for a week after the active symptoms subside.',
      'After the active symptoms subside, people who suffer from food poisoning generally recover in a week without antibiotic treatment, but they may feel tired.',
      'People who have had food poisoning generally feel tired for a week after the active symptoms subside unless they recover without antibiotic treatment.',
      'Although people affected by food poisoning feel tired for a week, they generally recover without antibiotic treatment when active symptoms subside.',
      'Without antibiotic treatment, people who have had food poisoning feel tired, but they generally recover in a week after the active symptoms subside.'
    ],
    correctIndex: 0,
    explanation: '...hissetseler de = although they feel tired, genellikle ... iyileşirler = generally recover...',
  ),
  const ExamQuestion(
    number: 52,
    type: 'Çeviri (Tür-İng)',
    question: 'Doğuştan ya da yaşamlarının başlangıcında meydana gelen işitme kaybına sahip çocuklar, genellikle konuşma dili gelişiminde ciddi bir gecikme yaşar.',
    options: [
      'Children may have hearing loss either from birth or acquired at the beginning of their life, and it generally leads to serious delay in their spoken language development.',
      'Hearing loss in children, either from birth or acquired at the beginning of their life, generally causes a serious delay in their spoken language development.',
      'Either from birth or acquired at the beginning of their life, hearing loss in children generally causes them to experience a serious delay in spoken language development.',
      'Children having hearing loss, either from birth or acquired at the beginning of their life, generally have a serious delay in spoken language development.',
      'A serious delay in spoken language development is generally the result of hearing loss in children, either from birth or acquired at the beginning of their life.'
    ],
    correctIndex: 3,
    explanation: '...işitme kaybına sahip çocuklar = Children having hearing loss..., genellikle ... gecikme yaşar = generally have a serious delay...',
  ),
  const ExamQuestion(
    number: 53,
    type: 'Çeviri (Tür-İng)',
    question: 'Eğitim, insani ve ekonomik kalkınmanın önemli bir yapı taşı olarak kabul edilmektedir, ancak zihinsel sağlık sorunları olan çoğu insan eğitime erişimde gereğinden fazla engelle karşı karşıya kalmaktadır.',
    options: [
      'It is recognised that education is a fundamental building block of human and economic development; nevertheless, there are undue barriers preventing most people with mental health conditions from accessing it.',
      'Education is regarded as an essential building block of human and economic development, yet most people with mental health conditions face undue barriers in accessing schooling.',
      'Although education is seen as an essential building block of human and economic development, most people with mental health conditions face undue barriers while trying to access it.',
      'For human and economic development to progress, education should be accepted as the building block, but most people with mental health conditions encounter undue barriers to access it.',
      'Most people with mental health conditions struggle with undue barriers so as to access education, which is accepted as an important building block of human and economic development.'
    ],
    correctIndex: 1,
    explanation: '...kabul edilmektedir = Education is regarded as..., ancak ... karşı karşıya kalmaktadır = yet most people ... face undue barriers...',
  ),

  // 54-59 Paragraf Tamamlama
  const ExamQuestion(
    number: 54,
    type: 'Paragraf Tamamlama',
    question: 'During adolescence, bodies are rapidly changing and growing, which often causes teens to feel uncomfortable with themselves, especially if they are different from their peers. Emotional distress may cause them to either eat too much or too little. ---- They usually begin between ages 14 and 20 and severely affect a large number of adolescents. It is important to provide early intervention to avoid serious long-term complications.',
    options: [
      'Such patterns can lead to the development of eating disorders, which are characterised by unhealthy eating behaviours.',
      'Due to differences in body type, physical activity, and rate of growth, every adolescent may need different nutritional supplements.',
      'Adolescents may have special nutritional needs, so they must definitely seek professional help.',
      'Dietitians play an important role in educating teenagers about eating well-balanced diets.',
      'A diet heavily dependent on fast food results in excess fat.'
    ],
    correctIndex: 0,
    explanation: 'Boşluktan önce çok yeme veya az yeme eğiliminden (emotional distress) bahsediliyor, boşluktan sonra "They usually begin..." diyerek yeme bozukluklarına (eating disorders) atıfta bulunuluyor.',
  ),
  const ExamQuestion(
    number: 55,
    type: 'Paragraf Tamamlama',
    question: 'An enormous amount of brain development takes place during childhood, particularly early childhood. ---- Nutrition, education, verbal exposure, language, emotional and interpersonal experience all critically impact the formation of connections between neurons and the building of neural networks. This kind of environmental input affects which synaptic connections survive or die off.',
    options: [
      'One way to resolve the nature/nurture dilemma is to assume that the basic structure of the brain is genetically determined.',
      'However, there is ample evidence that iron is required for normal brain development.',
      'Because of the central role of experience on brain development, the nature of any environmental input in childhood is critical.',
      'Some scholars argue that genetic factors have a greater impact on brain development than environmental input.',
      'The human brain is uniquely designed to learn and process language, and as a critical environmental input, learning a language changes the brain.'
    ],
    correctIndex: 2,
    explanation: 'Boşluktan sonra beslenme, eğitim gibi çevresel faktörlerin (environmental input) öneminden bahsediliyor. Bu nedenle deneyimlerin ve çevresel girdilerin kritik olduğunu söyleyen C seçeneği en uygundur.',
  ),
  const ExamQuestion(
    number: 56,
    type: 'Paragraf Tamamlama',
    question: 'Many side effects have been attributed to vaccines. In fact, side effects depend on the vaccine, and side effects such as swelling and soreness are usually minor, while more serious side effects such as autoimmune reactions can occur. ---- Through systematic and extensive research, vaccines have also not been linked to other serious side effects such as autism. Reports that vaccines cause side effects such as AIDS and sterility are \'urban legends\'.',
    options: [
      'Furthermore, information on the handling and storage of vaccines is available from numerous sources.',
      'On the other hand, vaccinations save about \$14 in health care for every \$1 spent.',
      'However, serious side effects are rare if vaccines are administered properly.',
      'Nevertheless, dangerous diseases such as rubella have decreased by 90% thanks to vaccines.',
      'Moreover, vaccinations can benefit people other than those receiving them.'
    ],
    correctIndex: 2,
    explanation: 'Bir önceki cümlede ciddi yan etkilerden bahsedilmiş, boşluktan sonra ise aşıların otizm gibi başka ciddi yan etkilerle bağlantılı "olmadığı" söyleniyor. Aradaki geçişi "Ancak ciddi yan etkiler nadirdir" cümlesi sağlar.',
  ),
  const ExamQuestion(
    number: 57,
    type: 'Paragraf Tamamlama',
    question: 'Along with strategies to prevent the spread of cold viruses, it is vitally important for health care professionals to teach patients that antibiotics have no role in the treatment of the common cold. Antibiotics should not be prescribed for colds because antibiotics are not effective against the viruses that cause colds. ---- Another dangerous public health consequence of antibiotics is the emergence of strains of bacteria that are resistant to these medications due to overuse.',
    options: [
      'Similarly, individuals have varied reactions to different cold medications and may find some more helpful than others.',
      'Furthermore, antibiotics should not be prescribed unnecessarily because they can produce side effects such as rash and diarrhoea.',
      'Overall, antibiotics may be informally defined as the subgroup of anti-infectives that are derived from bacterial sources.',
      'Occasionally, a cold will lead to a secondary bacterial infection that causes bronchitis, sinus infection, or a middle ear infection.',
      'Generally, many doctors encounter patients seeking antibiotic treatment for cold symptoms that may resolve on their own.'
    ],
    correctIndex: 1,
    explanation: 'Boşluktan sonra "Bir DİĞER tehlikeli halk sağlığı sonucu..." diyerek dirençli bakterilerden bahsediyor. Demek ki boşlukta gereksiz antibiyotik kullanımının bir "başka" olumsuz sonucundan (yan etkiler) bahsedilmeli.',
  ),
  const ExamQuestion(
    number: 58,
    type: 'Paragraf Tamamlama',
    question: 'Products made from chemicals continue to play an ever-present part in our lives. There is little doubt that a wide spectrum of chemicals and drugs has enhanced the quality of our lives. ---- But fortunately, toxicologists provide detailed information on how best to eliminate, reduce, or prevent any damage.',
    options: [
      'It is now easier to detect even small amounts of chemicals in biological systems.',
      'The understanding of molecular toxicology continues to advance rapidly.',
      'However, some of them, in particular situations, can clearly harm certain people.',
      'In addition, toxicologists conduct extensive research on what is safe or dangerous.',
      'On the other hand, people have recently become more aware of the hazards of chemicals.'
    ],
    correctIndex: 2,
    explanation: 'Kimyasalların hayat kalitemizi artırdığı söyleniyor, sonra "Fakat neyse ki zararları önlemek için toksikologlar bilgi veriyor" deniyor. İkisi arasındaki "zıtlık/zarar" bildiren cümle C seçeneğidir.',
  ),
  const ExamQuestion(
    number: 59,
    type: 'Paragraf Tamamlama',
    question: 'Dementia is a decline in a person\'s ability to think and learn. To distinguish true dementia from more limited difficulties... the strict medical definition requires that this decline affects at least two distinct spheres of mental activity... However, this may be difficult to detect when these are already limited, either by choice or by another mental or physical disorder. As a result, the most recent and most authoritative definition does not include this criterion. ----',
    options: [
      'Identification of difficulties in thinking and learning started to occur in the late 18th century.',
      'Psychiatrists have sought to define disorders in ways that would help reveal their causes.',
      'There are concerns about the safety of antipsychotic agents used to treat behavioural symptoms of dementia.',
      'Some definitions of dementia also require that it interferes with a person\'s work and social life.',
      'In Europe, dementia is more common than stroke in terms of both incidence and prevalence.'
    ],
    correctIndex: 3,
    explanation: 'Paragraf demansın "tanımlarından" ve hangi kriterleri içerip içermediğinden bahsediyor. D seçeneği, bazı tanımların başka bir kriteri daha (iş ve sosyal hayata müdahale) gerektirdiğini söyleyerek konu bütünlüğünü sürdürüyor.',
  ),

  // 60-65 Anlamı Bozan Cümle
  const ExamQuestion(
    number: 60,
    type: 'Anlam Bütünlüğü',
    question: '(I) The larynx is an organ situated at the front of the neck above the windpipe, which contains the vocal cords. (II) The larynx contains several cartilages - one of which, the thyroid cartilage forms the Adam\'s apple - bound together by muscles and ligaments. (III) When they are infected, this often makes speaking very difficult and extremely painful. (IV) Within are the two vocal cords: folds of tissue separated by a narrow slit, the glottis. (V) The vocal cords modify the flow of exhaled air through the glottis to produce the sounds of speech and song.',
    options: ['I', 'II', 'III', 'IV', 'V'],
    correctIndex: 2,
    explanation: 'Paragraf tamamen gırtlağın anatomik yapısını (kıkırdaklar, ses telleri vb.) anlatırken III. cümle aniden "enfeksiyon" konusuna geçerek bütünlüğü bozar.',
  ),
  const ExamQuestion(
    number: 61,
    type: 'Anlam Bütünlüğü',
    question: '(I) Bruises change colour over time in a predictable pattern, so it is possible to estimate when an injury has occurred by the colour of the bruise. (II) Initially, a bruise will be reddish and appear just under the skin. (III) After one to two days, the red blood cells begin to break down, and the bruise will darken to a blue or purplish colour. (IV) This fades to green at about day six. (V) Long periods of standing will cause the blood that collects in a bruise to flow through tissues.',
    options: ['I', 'II', 'III', 'IV', 'V'],
    correctIndex: 4,
    explanation: 'I, II, III ve IV. cümleler morlukların (bruise) zamanla renk değiştirmesi sürecini anlatırken, V. cümle uzun süre ayakta durmanın morluktaki kan akışına etkisinden bahsederek konuyu saptırır.',
  ),
  const ExamQuestion(
    number: 62,
    type: 'Anlam Bütünlüğü',
    question: '(I) Weight and muscle tone along with a frequent exercise can affect how well the bladder works. (II) Keeping excess pounds off can improve control by minimising pressure on the bladder. (III) People who do not have any body weight issues should try Kegel exercises to strengthen and better their bladders. (IV) Caffeine, citrus juices, and alcohol can also irritate bladder muscles and cause leaks when consumed too much. (V) As an alternative, Pilates, a system of exercise that involves controlled movements, stretching and breathing, may also help prevent incontinence.',
    options: ['I', 'II', 'III', 'IV', 'V'],
    correctIndex: 3,
    explanation: 'Paragraf ağırlık, kas tonusu ve egzersizin (Kegel, Pilates vb.) mesane üzerindeki olumlu etkilerini anlatırken, IV. cümle diyet/yiyeceklerin mesaneyi irrite etmesinden bahsederek bütünlüğü bozar.',
  ),
  const ExamQuestion(
    number: 63,
    type: 'Anlam Bütünlüğü',
    question: '(I) Touch is our very first sense connection to the world from birth and a fundamental human need throughout our entire life span. (II) It is a powerful form of nourishment that goes right to the core of the parts of ourselves where only that \'silent\' language can fully express what we are feeling. (III) In this digital age, it seems we are out of touch with this vital non-verbal connection. (IV) Whether we receive a pleasant caress, a pat on the back, a massage or just a handshake, being touched by another human being can evoke positive emotions, healing physical sensations, and spiritual growth. (V) When this happens, the sensation we receive can play a role in putting us back on our feet in terms of trust, relaxation, and deep connection.',
    options: ['I', 'II', 'III', 'IV', 'V'],
    correctIndex: 2,
    explanation: 'Metin genel olarak dokunmanın fiziksel ve ruhsal faydalarını vurguluyor. III. cümle ise araya girip "dijital çağda bu bağlantıdan koptuk" diyerek ana anlatım akışını (faydaları) bölüyor.',
  ),
  const ExamQuestion(
    number: 64,
    type: 'Anlam Bütünlüğü',
    question: '(I) Apples have been used in multiple idioms: \'the apple of my eye\', \'the apple never falls far from the tree\' and, probably most famously, \'an apple a day keeps the doctor away\'. (II) It is best to eat organically grown apples as they are one of the fruits with the highest use of pesticides when farmed otherwise. (III) Apples certainly have anecdotal celebrity, and maybe this is due to their myriad health benefits. (IV) They are one of the best sources of pectin, a non-digestible fibre, and many different polyphenols, types of antioxidant compounds, that can also have a feeding effect for gut bacteria. (V) There has also been a link between apples and better blood sugar regulation that can help with weight management.',
    options: ['I', 'II', 'III', 'IV', 'V'],
    correctIndex: 1,
    explanation: 'Paragraf elmaların kültürel ünü ve sağlık faydalarından bahsederken, II. cümle organik tarım ve pestisit kullanımından bahsederek konuyu dağıtır.',
  ),
  const ExamQuestion(
    number: 65,
    type: 'Anlam Bütünlüğü',
    question: '(I) Screening is the testing of people who are at risk of a disorder but do not have any symptoms. (II) Screening can allow for early treatment, sometimes keeping disorders from turning deadly. (III) For example, abnormalities of the cervix or colon can be diagnosed and cured before they turn cancerous. (IV) One of the most common causes of cancer death among American women is cervical cancer. (V) Screening programmes have greatly reduced the number of deaths associated with a great number of abnormalities and disorders.',
    options: ['I', 'II', 'III', 'IV', 'V'],
    correctIndex: 3,
    explanation: 'Metin "tarama" (screening) testlerinin önemi ve faydaları hakkındadır. IV. cümle ise aniden Amerikalı kadınlar arasındaki rahim ağzı kanseri ölümlerine odaklanarak genel konudan sapar.',
  ),

  // 66-68 Okuma Parçası 1 (Çölyak)
  const ExamQuestion(
    number: 66,
    type: 'Okuma Parçası',
    passageRef: 'Celiac disease occurs when the body reacts abnormally to gluten, a protein found in wheat, rye and barley. It may be discovered from infancy through adulthood with no particular risk groups...',
    question: 'According to the passage, celiac disease ----.',
    options: [
      'is likely to occur at any age',
      'can be diagnosed more easily in infants',
      'affects all European countries to the same extent',
      'contributes to the severity of other health problems',
      'is less prevalent in the US than in Europe'
    ],
    correctIndex: 0,
    explanation: 'Parçada "It may be discovered from infancy through adulthood" (bebeklikten yetişkinliğe kadar herhangi bir yaşta keşfedilebilir) deniyor. Bu nedenle her yaşta ortaya çıkması muhtemeldir (A).',
  ),
  const ExamQuestion(
    number: 67,
    type: 'Okuma Parçası',
    passageRef: '...A recent study of random blood samples tested for celiac disease in the US showed one in 250 testing positive, which suggests that the disease could be more common than health authorities estimate...',
    question: 'The study with random blood samples in the US shows that ----.',
    options: [
      'each person with celiac disease is affected almost completely differently',
      'the symptoms of celiac disease might be different from other conditions',
      'celiac disease may be more prevalent among individuals than it is actually thought',
      'celiac disease is diagnosed more accurately in the US when compared to Europe',
      'celiac disease can be easily discovered during testing for certain genetic disorders'
    ],
    correctIndex: 2,
    explanation: 'Rastgele kan örnekleriyle yapılan çalışma, hastalığın "sağlık yetkililerinin tahmin ettiğinden daha yaygın olabileceğini" gösteriyor (C).',
  ),
  const ExamQuestion(
    number: 68,
    type: 'Okuma Parçası',
    passageRef: '...One thing, however, is certain: because of the known genetic component, relatives of patients with celiac disease are at higher risk of the disorder.',
    question: 'According to the passage, which of the following factors poses a higher risk for a person to develop celiac disease?',
    options: [
      'Having unhealthy dietary habits',
      'Being descended from African or Asian ancestors',
      'Having a relative with celiac disease',
      'Living in a country where barley is excessively consumed',
      'Belonging to a certain age group'
    ],
    correctIndex: 2,
    explanation: 'Parçanın sonunda "çölyak hastalarının akrabalarının daha yüksek risk altında olduğu" açıkça belirtilmiştir (C).',
  ),

  // 69-71 Okuma Parçası 2 (Depresyon)
  const ExamQuestion(
    number: 69,
    type: 'Okuma Parçası',
    passageRef: 'Despite extensive study, understanding of depression is so elusive that there is no traditional biomedical approach to it yet. ... Its origins are also intricate, with evidence for many possible roots such as genetics, gut bacteria, diet, hormones, childhood trauma, and yes, brain chemistry, among others.',
    question: 'According to the passage, factors causing depression ----.',
    options: [
      'have been precisely detected thanks to detailed studies conducted in the field',
      'have mainly originated from biological roots which can be detected via genetics studies',
      'are basically categorised according to the severity of the impact they create',
      'can be related to more than one type of source and may differ from one patient to other',
      'have been thought to be extremely severe if they are rooted in brain chemistry'
    ],
    correctIndex: 3,
    explanation: 'Depresyonun kökenlerinin genetik, diyet, travma vb. gibi birçok olası nedeni olduğu (more than one type of source) belirtiliyor.',
  ),
  const ExamQuestion(
    number: 70,
    type: 'Okuma Parçası',
    passageRef: '...The standard clinical approach is some combination of behavioural interventions, plus counselling and medication. Due to the individual nature of depression, treatment is a set of trials, errors, and adjustments. We also know that treatment may fail in up to 50 percent of cases.',
    question: 'Which of the following can be understood from the passage about the treatment of depression?',
    options: [
      'Treatment of depression can be offered in different forms with varying success rates.',
      'Behavioural intervention precedes the other two kinds of treatment since it has proven to be more effective.',
      'More than half of the treatment attempts appear to be successful thanks to appropriate personal adjustments.',
      'The most challenging point about depression is to identify its source rather than the best treatment options.',
      'There has been an increase in the number of people being treated through medication.'
    ],
    correctIndex: 0,
    explanation: 'Tedavinin davranışsal müdahaleler, danışmanlık ve ilaç kombinasyonu olduğu (farklı formlar) ve %50\'ye kadar vakada başarısız olabildiği (değişen başarı oranları) belirtiliyor.',
  ),
  const ExamQuestion(
    number: 71,
    type: 'Okuma Parçası',
    passageRef: '...Though some people tend to hide themselves at the initial phases of the treatment or even keep themselves from seeking help with the fear of being labelled, there have been always many others such as bloggers, researchers, clinicians and brave patients speaking their truth about this disease.',
    question: 'Which could be inferred from the passage?',
    options: [
      'Depression has always been a topic of discussion, about which many people have put forward their ideas.',
      'Patients who are afraid of mentioning their illnesses for fear that other people may easily label them are criticised by bloggers.',
      'Those who have recently started treatment are advised to remain silent until it is known whether the treatment is effective.',
      'All people who have something to say about depression should make their voices heard to help clinicians to come up with an effective treatment.',
      'Patients should be encouraged to break their silence in order to encourage other people to seek help for depression.'
    ],
    correctIndex: 4,
    explanation: 'Parçada depresyonu gizlememek gerektiği ve sesini yükselten cesur hastaların ve uzmanların önemli olduğu vurgulanıyor; buradan hastaların sessizliğini bozmaya teşvik edilmesi gerektiği çıkarılabilir (E).',
  ),

  // 72-74 Okuma Parçası 3 (Gıda Zehirlenmesi)
  const ExamQuestion(
    number: 72,
    type: 'Okuma Parçası',
    passageRef: 'Food contamination refers to foods that are spoiled or tainted because they either contain microorganisms... or toxic substances... This kind of contamination can be microbial or environmental, with the former being more common.',
    question: 'It is stated in the passage that food contamination ----.',
    options: [
      'is more often caused by microbial factors',
      'leads to an increase in mortality rates every year',
      'can be more visible when it is caused by toxic materials',
      'mainly arises at the food production stage',
      'is more dangerous if it is caused by environmental factors'
    ],
    correctIndex: 0,
    explanation: 'Kirliliğin mikrobiyal veya çevresel olabileceği ve ilkinin (the former - mikrobiyal olanın) daha yaygın olduğu açıkça belirtilmiştir (A).',
  ),
  const ExamQuestion(
    number: 73,
    type: 'Okuma Parçası',
    passageRef: '...Many opportunities exist for food to become contaminated as it is produced and distributed. To start with, bacteria are present in the animals raised for food. Meat and poultry can become contaminated during slaughter...',
    question: 'Which of the following is true according to the passage?',
    options: [
      'Washing our food well before eating is the best precaution for contamination.',
      'Food is vulnerable to contaminants during production and distribution.',
      'Meat and poultry are contaminated with the water used during their production process.',
      'The leading environmental food contaminants are pesticides and heavy metals.',
      'While being distributed, food is less likely to be contaminated by chemical agents.'
    ],
    correctIndex: 1,
    explanation: 'Parçada "Gıdaların üretildiği ve dağıtıldığı sırada kirlenmesi için pek çok fırsat (olasılık) vardır" deniyor, yani üretim ve dağıtım sırasında kirleticilere karşı savunmasızdır (B).',
  ),
  const ExamQuestion(
    number: 74,
    type: 'Okuma Parçası',
    passageRef: 'Gıda kontaminasyonunun ne olduğu, mikrobiyal ve çevresel nedenleri, et, meyve/sebze ve ev hijyeni gibi farklı yollarla nasıl bulaştığı anlatılıyor.',
    question: 'What is the passage mainly about?',
    options: [
      'The protection methods against food contamination',
      'Foodborne diseases caused by food contamination',
      'Different factors that causes foods to be contaminated',
      'The consequences of food contamination with statistics',
      'The importance of hygiene in our homes to prevent food contamination'
    ],
    correctIndex: 2,
    explanation: 'Paragraf baştan sona gıdaların kontamine (kirli) olmasına neden olan çeşitli faktörleri anlatmaktadır (C).',
  ),

  // 75-77 Okuma Parçası 4 (Bağırsak Florası)
  const ExamQuestion(
    number: 75,
    type: 'Okuma Parçası',
    passageRef: '...Gut bacteria, or flora, are a key component of GI health. Those flora help digest nutrients and synthesise vitamins.',
    question: 'According to the passage, gut bacteria ----.',
    options: [
      'may cause stomach upset or diarrhoea when extremely supported by probiotic supplements',
      'play a fundamental role in sustaining the GI health of your pet',
      'should be supported with vitamins as they diminish gradually with age',
      'decrease both in humans and their pets during travel',
      'need continuous flow of supplements to digest nutrients and vitamins'
    ],
    correctIndex: 1,
    explanation: 'Bağırsak bakterilerinin (floranın) GI sağlığının kilit bir bileşeni olduğu ve sindirime/vitamin sentezine yardım ettiği, yani temel bir rol oynadığı (B) belirtiliyor.',
  ),
  const ExamQuestion(
    number: 76,
    type: 'Okuma Parçası',
    passageRef: '...Approximately 70% of the immune system is in the gut, which acts as the barrier through which nutrients pass into the rest of the body.',
    question: 'It is clearly stated in the passage that the gut of your pet ----.',
    options: [
      'cannot alone react effectively to bad bacteria if it is not supported by probiotics',
      'cannot be protected from bad bacteria if different probiotics are taken together, so pet owners should prefer a specific type',
      'deteriorates in terms of its functions in digestion as your pet ages because the number of bad bacteria increases dramatically',
      'is an important part of the immune system and controls which nutrients will be sent to the other parts of the body',
      'should consist of different kinds and amounts of bacteria for your pet to have a healthy and long life'
    ],
    correctIndex: 3,
    explanation: 'Bağışıklık sisteminin %70\'inin bağırsakta olduğu ve besinlerin vücudun geri kalanına geçişinde bir bariyer görevi gördüğü açıkça yazılmıştır (D).',
  ),
  const ExamQuestion(
    number: 77,
    type: 'Okuma Parçası',
    passageRef: 'Metin genel olarak evcil hayvanların bağırsak sağlığı (flora, probiyotikler) ve bunun bağışıklık/sindirim sistemine faydalarından bahsediyor.',
    question: 'Which could be the best title for this passage?',
    options: [
      'The Use of Probiotics in Pets',
      'Digestion Problems in Humans and Animals',
      'Improving the Immune System with Supplements',
      'Essential Nutrients and Vitamins for Pets',
      'Healthy Gut, Healthy Pet'
    ],
    correctIndex: 4,
    explanation: 'Metin evcil hayvanlarda "sağlıklı bir bağırsak ve sağlıklı bir evcil hayvan" temasını (Healthy Gut, Healthy Pet) işliyor.',
  ),

  // 78-80 Okuma Parçası 5 (Kırmızı Et)
  const ExamQuestion(
    number: 78,
    type: 'Okuma Parçası',
    passageRef: '...However, most research in this area is unreliable, as it only observes what people choose to eat. The best research involves randomised trials...',
    question: 'According to the passage, most research on health effects of eating red or processed meat is unreliable because it is ----.',
    options: [
      'difficult to find subjects who are willing to change their diets',
      'time-consuming and difficult to conduct with large groups',
      'merely based on observation of people\'s food preferences',
      'done on people who have already had serious health problems',
      'supported by a limited number of health authorities'
    ],
    correctIndex: 2,
    explanation: 'Çoğu araştırmanın güvenilmez olduğu, çünkü "sadece insanların ne yemeyi seçtiklerini gözlemlediği" (merely based on observation) belirtiliyor.',
  ),
  const ExamQuestion(
    number: 79,
    type: 'Okuma Parçası',
    passageRef: '...The authors conclude that people should continue to eat their current levels... unless they feel inclined to change them. However, they add that some might want to change their diet for animal welfare or environmental reasons.',
    question: 'It is clearly stated in the passage that ----.',
    options: [
      'a person can choose not to eat meat for reasons other than health',
      'processed meat causes more damage to the body than red meat',
      'people do not tend to change their diets even if they experience health problems caused by eating meat',
      'Johnston and his colleagues recommend eating less meat because high consumption of meat leads to several health problems',
      'research with randomised trials has shown that eating processed meat increases the risk of developing cancer'
    ],
    correctIndex: 0,
    explanation: 'İnsanların sağlık dışında hayvan refahı veya çevresel nedenlerle de (reasons other than health) diyetlerini değiştirmek (et yememek) isteyebilecekleri belirtiliyor.',
  ),
  const ExamQuestion(
    number: 80,
    type: 'Okuma Parçası',
    passageRef: '...Thus, it seems that further research must be done to clearly see the effects of meat consumption.',
    question: 'The main aim of the author is to inform the reader about ----.',
    options: [
      'the misconceptions related to randomised trials',
      'the dangers of red and processed meat',
      'why health authorities suggest us to eat less meat',
      'the benefits of reducing meat intake',
      'the necessity of more research on meat consumption'
    ],
    correctIndex: 4,
    explanation: 'Yazar, et tüketimi hakkındaki araştırmaların güvenilmez olduğunu anlatarak "daha fazla araştırma yapılması gerekliliği" (necessity of more research) hakkında bilgi veriyor.',
  ),
];
