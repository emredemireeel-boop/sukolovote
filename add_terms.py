import re
import sys

new_terms_text = """
144. preserve
korumak, muhafaza etmek, saklamak
conserve, maintain, safeguard
A fundamental challenge for archivists is to preserve digital artifacts in formats that will remain accessible despite rapid technological obsolescence.

145. pretend
rol yapmak, numara yapmak, gibi davranmak
feign, simulate, affect
Nations can ill afford to pretend that climate change is a distant threat when its impacts are already manifesting in devastating wildfires and floods.

146. prevent
önlemek, engellemek, mani olmak
stop, avert, hinder
Vaccination campaigns are the most effective public health measure to prevent the resurgence of infectious diseases once thought to be under control.

147. print
basmak, yazdırmak, iz bırakmak
publish, imprint, reproduce
The invention of the movable-type printing press did not merely print books; it fundamentally altered the dissemination of knowledge and the power structures of society.

148. prioritise
öncelik vermek, önceliklendirmek
focus on
In emergency rooms, medical staff must prioritise patients based on the severity of their conditions rather than arrival time.

149. prohibit
yasaklamak, men etmek, engel olmak
ban, forbid
International treaties prohibit the militarization of outer space, but the development of anti-satellite weapons tests the boundaries of these agreements.

150. prolong
uzatmak, sürmesini sağlamak
extend, lengthen, perpetuate
Palliative care aims not to prolong life at all costs, but to ensure the highest possible quality of life for patients with terminal illnesses.

151. promote
tanıtmak, terfi ettirmek, teşvik etmek
encourage, advance, foster
Public policies that actively promote gender equality in STEM fields are crucial for unlocking the full potential of a nation's innovative capacity.

152. prove
kanıtlamak, ispat etmek, göstermek
demonstrate, verify, confirm
The experiment successfully proved that the new compound can kill cancer cells without damaging healthy tissue.

153. provide
sağlamak, temin etmek, sunmak
supply, furnish, offer
A robust social safety net is essential to provide a foundation of economic security, allowing citizens to take entrepreneurial risks.

154. provoke
kışkırtmak, tahrik etmek, yol açmak
incite, stimulate, elicit
The government's decision to cut research funding provoked widespread protests from the academic community.

155. pursue
peşinden gitmek, takip etmek, sürdürmek (hedef)
follow, seek, chase
The research team decided to pursue a new line of investigation after their initial hypothesis failed.

156. radiate
yaymak, ışıma yapmak, etrafa saçmak
emit, emanate, diffuse
Major cultural capitals radiate influence, setting trends in art, fashion, and thought that are adopted worldwide.

157. raise
yükseltmek, artırmak; (soru) sormak, gündeme getirmek; (çocuk) yetiştirmek
increase, elevate; bring up
The discovery of ancient artifacts in the region raises profound questions about the timeline of human migration across the continent.

158. receive
almak, teslim almak, karşılamak
get, obtain, accept
A scientific theory only gains widespread acceptance after its findings can be independently replicated and received favorably by the broader academic community.

159. recognise
tanımak, kabul etmek, fark etmek
acknowledge, identify, admit
Psychologists recognise that early childhood experiences play a crucial role in shaping adult personality.

160. refuse
reddetmek, geri çevirmek, kabul etmemek
decline, reject, turn down
The experimental mice refused to enter the brightly lit section of the maze, suggesting an aversion to intense light.

161. regulate
düzenlemek, regüle etmek, ayarlamak
control, govern, oversee
A central challenge for the 21st century is how to effectively regulate emergent technologies like Al and biotechnology without stifling innovation.

162. reject
reddetmek, geri çevirmek, kabul etmemek
refuse, decline, turn down
The scientific community initially tends to reject paradigm-shifting theories, as they challenge deeply entrenched assumptions.

163. release
serbest bırakmak; yayınlamak; yaymak, salmak, açığa çıkarmak
free; issue, publish; give out
Burning fossil fuels releases large amounts of carbon dioxide into the atmosphere.

164. relieve
rahatlatmak, hafifletmek
alleviate, ease, mitigate
The new medication helps to relieve symptoms of chronic pain without causing significant side effects.

165. report
rapor etmek, bildirmek, haber yapmak
document, inform, announce
Several participants reported experiencing unusual side effects after taking the experimental drug.

166. resign
istifa etmek, çekilmek, teslim olmak (kadere)
quit, step down
The minister was forced to resign following a scandal that eroded public trust in the government's integrity.

167. resist
direnmek, karşı koymak, dayanmak
oppose, withstand, defy
Certain bacteria have evolved mechanisms to resist even the most potent antibiotics, posing a grave threat to modern medicine.

168. resolve
çözmek, karara bağlamak, kesin karar vermek
solve, settle; determine
The peace treaty aimed to resolve the longstanding territorial dispute through diplomatic means rather than continued conflict.

169. restrain
dizginlemek, sınırlamak, tutmak
curb, restrict, hold back
Central banks must carefully calibrate monetary policy to restrain inflation without triggering a recession.

170. retain
elinde tutmak, muhafaza etmek, akılda tutmak
keep, maintain, preserve
Despite globalization, many indigenous communities strive to retain their linguistic heritage and traditional knowledge systems.

171. retrieve
geri almak, getirmek, (bilgi) erişmek
recover, fetch, reclaim
Archaeologists use advanced imaging techniques to retrieve digital models of artifacts that are too fragile to be physically excavated.

172. reverse
tersine çevirmek, geri almak, geri gitmek
overturn, undo, revert
Researchers are exploring whether certain lifestyle changes can reverse the effects of early stage cognitive decline.

173. rotate
döndürmek, rotasyon yapmak, sırayla değiştirmek
turn, spin, alternate
To prevent soil depletion and maintain biodiversity, sustainable agriculture practices often involve rotating crops according to a carefully planned cycle.

174. sacrifice
feda etmek, kurban etmek, gözden çıkarmak
give up
Some farmers must sacrifice short-term profits to invest in sustainable practices that protect soil health for future generations.

175. scatter
dağıtmak, saçmak, yaymak
disperse, spread
The collapse of the empire caused its cultural artifacts to be scattered across museums and private collections worldwide, complicating efforts at historical reconstruction.

176. seize
ele geçirmek, zapt etmek, (fırsat) değerlendirmek
capture, take hold of, grab
The research team decided to seize the opportunity to collaborate with a Nobel laureate visiting their university.

177. separate
ayırmak, bölmek, ayrılmak
divide, segregate, part
A fundamental tenet of the scientific method is the attempt to separate observable facts from the researcher's personal biases or expectations.

178. settle
yerleşmek; çözmek (anlaşmazlık); ödemek (borç); yerine oturmak
resolve; colonize; pay
After years of migration, the tribe settled in a fertile valley near the river.

179. signify
İfade etmek, anlamına gelmek, belirtmek
mean, denote, indicate
Dark green leaves on a plant usually signify good health and adequate nutrient intake.

180. simulate
benzetim yapmak, simüle etmek, taklit etmek
imitate, replicate, model
Climate scientists use supercomputers to simulate future scenarios based on different greenhouse gas emission pathways.

181. spark
kıvılcım çıkarmak, tetiklemek, harekete geçirmek
ignite, trigger, provoke
The discovery of microbial life on another planet would spark a revolution in our understanding of biology.

182. spread
yayılmak, yaymak, dağılmak
disseminate, propagate, diffuse
Researchers are investigating how misinformation spreads on social media platforms during public health crises.

183. store
depolamak, saklamak, biriktirmek
keep, save, accumulate
Advanced batteries that can efficiently store energy from intermittent renewable sources are critical for transitioning to a carbon-neutral power grid.

184. strive
çabalamak, uğraşmak, gayret etmek
endeavor, struggle, aim
Ethical researchers must constantly strive to minimize harm and maximize beneficence in their studies involving human subjects.

185. substitute
yerine koymak, ikame etmek
replace, supplant
While artificial sweeteners can substitute for sugar in terms of taste, their long-term health effects remain a subject of ongoing scientific debate.

186. surpass
aşmak, geçmek, üstün gelmek
exceed, outdo, outperform
For the first time in history, renewable energy investments are projected to surpass those in fossil fuel infrastructure globally.

187. surrender
teslim olmak, bırakmak, vazgeçmek
give in, yield
Scientists must not surrender to pressure from funding sources that could compromise research integrity.

188. suspend
askıya almak, geçici olarak durdurmak; asmak
halt, postpone; hang
Airline operations were temporarily suspended due to the volcanic ash cloud.

189. sustain
sürdürmek, devam ettirmek; desteklemek (yaşam)
maintain, support, uphold
The central question for policymakers is how to sustain economic growth while simultaneously reducing inequality and environmental degradation.

190. tackle
üstesinden gelmeye çalışmak, ele almak, müdahale etmek
address, confront, deal with
A multilateral approach is essential to effectively tackle transnational challenges such as climate change, pandemics, and cybercrime.

191. target
hedeflemek, nişan almak, amaçlamak
aim at, focus on
The new drug specifically targets cancer cells without affecting healthy tissue.

192. transmit
İletmek, aktarmak, bulaştırmak (hastalık), yayınlamak
convey, transfer; broadcast
Cultural values are primarily transmitted through language, rituals, and shared narratives across generations.

193. trigger
tetiklemek, başlatmak, harekete geçirmek
set off, initiate, spark
A seemingly minor diplomatic incident can trigger a cascade of events leading to a major international crisis.

194. undermine
zayıflatmak, baltalamak, temelini sarsmak
weaken, erode
Spreading false information about vaccines can undermine public trust in healthcare institutions.

195. utilise
kullanmak, faydalanmak, istifade etmek
use, employ, harness
Modern archaeology utilises non-invasive technologies like ground-penetrating radar to map sites without disturbing them.

196. validate
doğrulamak, geçerli kılmak, onaylamak
confirm, verify, authenticate
Peer review is a crucial process used to validate research findings before they are published.

197. violate
ihlal etmek, çiğnemek, bozmak
break, breach, infringe
The company was fined for violating environmental regulations by dumping waste into the river.

198. warrant
haklı çıkarmak, gerektirmek; (yasal) izin vermek
justify, merit; authorize
The severity of the side effects observed during the trial warrants further investigation before the drug can be approved.

199. withdraw
geri çekmek, çekilmek; (para) çekmek
retreat, pull out
The research team decided to withdraw their paper from the journal after discovering a critical error in their data.

200. yield
vermek (sonuç/ürün); boyun eğmek
produce; surrender, give up
The archaeological excavation yielded artifacts that challenged previous assumptions about the technological capabilities of the ancient civilization.

201. abolish
yürürlükten kaldırmak, son vermek
cancel, eradicate, eliminate
The government has promised to abolish the controversial tax law by next year.

202. absorb
emmek, içine çekmek, kavramak
soak up, assimilate, take in
The new fabric is designed to absorb moisture rapidly during intense physical exercise.

203. accuse
suçlamak, itham etmek
blame, charge, indict
The scientists were accused of fabricating their data to secure further funding.

204. adjust
ayarlamak, uymak, alışmak
modify, adapt, regulate
Patients may need several weeks to adjust to the new medication and its side effects.

205. admit
kabul etmek, itiraf etmek; (hastaneye) yatırmak
acknowledge, confess, hospitalize
The hospital had to admit several patients suffering from acute food poisoning.

206. adopt
benimsemek, evlat edinmek
embrace, take on, assume
Many organizations have started to adopt remote work policies to improve employee satisfaction.

207. advocate
savunmak, desteklemek
support, back, champion
Environmental groups strongly advocate for stricter regulations on plastic production.

208. afford
maddi gücü yetmek, karşılayabilmek
bear, manage
Many families cannot afford the rising costs of higher education without taking on significant debt.

209. allocate
ayırmak, tahsis etmek
assign, distribute, allot
The health ministry decided to allocate more resources to mental health services this year.

210. alter
değiştirmek, değişmek
change, modify, amend
Even a slight variation in temperature can significantly alter the outcome of the chemical reaction.

211. anticipate
beklemek, ummak, öngörmek
expect, foresee, predict
We do not anticipate any major difficulties in implementing the new software system.

212. approach
yaklaşmak; (soruna) yaklaşmak
move toward, come near; handle
The research team decided to approach the problem from a completely different disciplinary angle.

213. approve
onaylamak, kabul etmek
accept, endorse, ratify
The regulatory agency is expected to approve the new vaccine for public distribution soon.

214. arise
ortaya çıkmak, meydana gelmek
emerge, occur, stem from
Complications can arise if the patient does not adhere strictly to the prescribed recovery plan.

215. assemble
toplamak, bir araya getirmek
gather, collect, put together
Researchers assembled a large dataset of genomic information to look for common disease markers.

216. assess
değerlendirmek, değer biçmek
evaluate, judge, estimate
The committee will assess the environmental impact of the proposed dam before making a decision.

217. associate
ilişkilendirmek, bağdaştırmak
link, connect, correlate
High levels of stress are often associated with an increased risk of cardiovascular diseases.

218. assume
varsaymak, üstlenmek (sorumluluk)
presume, suppose, undertake
It is dangerous to assume that economic growth will automatically lead to reduced poverty.

219. attain
ulaşmak, elde etmek
achieve, accomplish, reach
The athlete trained vigorously for years to attain a level of performance required for the Olympics.

220. attribute
atfetmek, bağlamak, yormak
ascribe, credit
The sudden drop in local temperatures can be attributed to the unusual arctic weather front.

221. calculate
hesaplamak
compute, figure out, estimate
Engineers must calculate the load-bearing capacity of the bridge to ensure maximum safety.

222. cease
durdurmak, son vermek, kesmek
stop, halt, terminate
The company will cease operations in the region due to ongoing political instability.

223. claim
iddia etmek, talep etmek
assert, declare, demand
Some nutritionists claim that a plant-based diet is optimal for long-term health.

224. clarify
açıklamak, netleştirmek
clear up, elucidate, explain
The professor used several examples to clarify the complex theories discussed in the lecture.

225. collaborate
birlikte çalışmak, işbirliği yapmak
work together, cooperate, team up
Scientists from different countries are collaborating to develop a more effective treatment for the virus.

226. compile
derlemek, toplamak
gather, collect, assemble
The researchers compiled data from over fifty different studies to perform a comprehensive meta-analysis.

227. comprehend
anlamak, kavramak
understand, grasp, fathom
It is often difficult for laypeople to comprehend the intricacies of quantum physics.

228. conceal
gizlemek, saklamak
hide, cover up, disguise
The suspect attempted to conceal his true identity by using a series of complex aliases.

229. conclude
sonuçlandırmak, karara varmak
finish, deduce, infer
Based on the evidence, the jury concluded that the defendant was not guilty of the charges.

230. conduct
yürütmek (deney/araştırma); iletmek (ısı/elektrik)
carry out, perform; transmit
The university will conduct a thorough investigation into the allegations of academic misconduct.

231. confine
sınırlandırmak, hapsetmek
restrict, limit, imprison
The outbreak was successfully confined to a small geographic area, preventing a national epidemic.

232. confront
yüzleşmek, karşı karşıya kalmak
face, encounter, tackle
Society must urgently confront the ethical dilemmas posed by rapid advancements in artificial intelligence.

233. consume
tüketmek, harcamak
eat, use up, exhaust
Data centers consume vast amounts of electricity, prompting calls for more energy-efficient infrastructure.

234. contradict
çelişmek, yalanlamak, karşı çıkmak
oppose, deny, counter
The new archaeological findings completely contradict previous theories about ancient trade routes.

235. contribute
katkıda bulunmak, sebep olmak
donate, supply; lead to
Poor dietary habits and lack of physical activity contribute significantly to the rising rates of obesity.

236. convert
dönüştürmek, çevirmek
change, transform, turn into
Solar panels are used to convert sunlight directly into usable electrical energy.

237. convey
iletmek, aktarmak (duygu/mesaj)
communicate, impart, transmit
The novel successfully conveys the sense of isolation experienced by immigrants in a new city.

238. convince
ikna etmek, inandırmak
persuade, assure, satisfy
The presentation was compelling enough to convince the board of directors to approve the budget.

239. cure
iyileştirmek, tedavi etmek
heal, treat, remedy
While there is no way to cure the common cold, various treatments can help alleviate the symptoms.

240. debate
tartışmak, müzakere etmek
discuss, argue, dispute
Politicians continue to debate the most effective strategies for stimulating economic recovery.

241. decay
çürümek, bozulmak
rot, decompose, deteriorate
Without proper preservation, organic materials will rapidly decay in hot and humid environments.

242. deduce
sonuç çıkarmak
infer, conclude, derive
From the available clues, the detective was able to deduce the exact sequence of events.

243. defend
savunmak, korumak
protect, guard, justify
The lawyer strongly defended her client against the accusations of corporate espionage.

244. deplete
tüketmek, azaltmak
exhaust, use up, reduce
Decades of overfishing have severely depleted marine life populations in many coastal areas.

245. derive
türetmek, elde etmek, kaynaklanmak
obtain, extract, originate
Many modern medicines are derived from compounds originally discovered in tropical rainforests.

246. detect
tespit etmek, fark etmek, bulmak
notice, discover, spot
Early screening programs aim to detect the disease before any noticeable symptoms appear.

247. deter
caydırmak, vazgeçirmek
discourage, prevent, hinder
Strict penalties are often implemented to deter individuals from engaging in illegal activities.

248. devote
adamak, tahsis etmek
dedicate, allocate, assign
She decided to devote her entire career to finding a cure for the rare genetic disorder.

249. display
sergilemek, göstermek
show, exhibit, present
Male peacocks display their vibrant feathers primarily to attract potential mates.

250. distinguish
ayırt etmek, farkı görmek
differentiate, discriminate, recognize
It is sometimes difficult to distinguish between symptoms of a severe cold and those of influenza.
"""

def parse_terms(text):
    blocks = re.split(r'\n\s*\n', text.strip())
    terms = []
    
    for block in blocks:
        lines = block.split('\n')
        if len(lines) < 4:
            continue
            
        header = lines[0].strip()
        match = re.match(r'^(\d+)\.\s+(.*)$', header)
        if not match:
            continue
            
        english = match.group(2).strip()
        turkish = lines[1].strip()
        # skip meaning/synonyms line which is lines[2] usually
        example = " ".join(lines[3:]).strip()
        
        terms.append({
            'english': english,
            'turkish': turkish,
            'example': example
        })
        
    return terms

parsed_terms = parse_terms(new_terms_text)
dart_code = ""

for term in parsed_terms:
    english = term['english'].replace("'", "\\'")
    turkish = term['turkish'].replace("'", "\\'")
    example = term['example'].replace("'", "\\'")
    
    dart_code += f"""  const HealthTerm(
    english: '{english}',
    turkish: '{turkish}',
    category: 'Fiiller',
    example: '{example}',
  ),\n"""

filepath = r"c:\Users\GAMER\Desktop\sukoyok\lib\data\health_terms_extra.dart"
with open(filepath, 'r', encoding='utf-8') as f:
    content = f.read()

# Remove the trailing "];" and whitespaces
content = re.sub(r',\n\];\s*$', ',\n', content)
content = re.sub(r'\n\];\s*$', ',\n', content)

# Remove the trailing comma from dart_code and add "];"
dart_code = dart_code.rstrip(',\n') + "\n];\n"

with open(filepath, 'w', encoding='utf-8') as f:
    f.write(content + dart_code)

print(f"Added {len(parsed_terms)} terms.")
