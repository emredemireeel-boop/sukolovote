class SynonymAntonymItem {
  final String word;
  final String meaning;
  final List<String> synonyms;
  final List<String> antonyms;
  final String exampleSentence;

  const SynonymAntonymItem({
    required this.word,
    required this.meaning,
    required this.synonyms,
    required this.antonyms,
    required this.exampleSentence,
  });
}

const List<SynonymAntonymItem> synonymAntonymData = [
  SynonymAntonymItem(
    word: 'Abundant',
    meaning: 'Bol, çok miktarda',
    synonyms: ['Plentiful', 'Copious', 'Ample', 'Bountiful'],
    antonyms: ['Scarce', 'Rare', 'Insufficient', 'Sparse'],
    exampleSentence: 'The region has an abundant supply of fresh water.',
  ),
  SynonymAntonymItem(
    word: 'Detrimental',
    meaning: 'Zararlı, kötü etkileyen',
    synonyms: ['Harmful', 'Damaging', 'Adverse', 'Deleterious'],
    antonyms: ['Beneficial', 'Advantageous', 'Helpful', 'Favorable'],
    exampleSentence: 'Smoking has a detrimental effect on cardiovascular health.',
  ),
  SynonymAntonymItem(
    word: 'Alleviate',
    meaning: 'Hafifletmek, dindirmek',
    synonyms: ['Relieve', 'Ease', 'Mitigate', 'Soothe', 'Palliate'],
    antonyms: ['Aggravate', 'Exacerbate', 'Intensify', 'Worsen'],
    exampleSentence: 'The medication helped to alleviate her back pain.',
  ),
  SynonymAntonymItem(
    word: 'Susceptible',
    meaning: 'Duyarlı, hassas, yatkın',
    synonyms: ['Vulnerable', 'Prone', 'Liable', 'Sensitive'],
    antonyms: ['Immune', 'Resistant', 'Invulnerable', 'Protected'],
    exampleSentence: 'Elderly people are more susceptible to severe flu complications.',
  ),
  SynonymAntonymItem(
    word: 'Eradicate',
    meaning: 'Kökünü kazımak, yok etmek',
    synonyms: ['Eliminate', 'Destroy', 'Wipe out', 'Extirpate'],
    antonyms: ['Preserve', 'Conserve', 'Establish', 'Maintain'],
    exampleSentence: 'The global vaccination campaign aims to eradicate polio.',
  ),
  SynonymAntonymItem(
    word: 'Lethal',
    meaning: 'Ölümcül',
    synonyms: ['Fatal', 'Deadly', 'Mortal'],
    antonyms: ['Harmless', 'Safe', 'Benign'],
    exampleSentence: 'A lethal dose of the poison was found in the victim\'s blood.',
  ),
  SynonymAntonymItem(
    word: 'Prevalent',
    meaning: 'Yaygın, çok rastlanan',
    synonyms: ['Widespread', 'Common', 'Ubiquitous', 'Rampant'],
    antonyms: ['Rare', 'Uncommon', 'Unusual', 'Infrequent'],
    exampleSentence: 'Malaria is prevalent in tropical regions.',
  ),
  SynonymAntonymItem(
    word: 'Crucial',
    meaning: 'Çok önemli, kritik',
    synonyms: ['Vital', 'Critical', 'Essential', 'Pivotal', 'Imperative'],
    antonyms: ['Trivial', 'Insignificant', 'Unimportant', 'Minor'],
    exampleSentence: 'Early diagnosis is crucial for the successful treatment of cancer.',
  ),
  SynonymAntonymItem(
    word: 'Obscure',
    meaning: 'Belirsiz, anlaşılmaz',
    synonyms: ['Unclear', 'Vague', 'Ambiguous', 'Hidden'],
    antonyms: ['Clear', 'Obvious', 'Apparent', 'Evident'],
    exampleSentence: 'The causes of this rare disease remain obscure.',
  ),
  SynonymAntonymItem(
    word: 'Inevitable',
    meaning: 'Kaçınılmaz',
    synonyms: ['Unavoidable', 'Inescapable', 'Certain', 'Sure'],
    antonyms: ['Avoidable', 'Preventable', 'Uncertain'],
    exampleSentence: 'Cognitive decline is not always an inevitable part of aging.',
  ),
  SynonymAntonymItem(
    word: 'Deteriorate',
    meaning: 'Kötüleşmek',
    synonyms: ['Worsen', 'Decline', 'Degrade'],
    antonyms: ['Improve', 'Ameliorate', 'Enhance'],
    exampleSentence: 'The patient\'s condition began to deteriorate rapidly.',
  ),
  SynonymAntonymItem(
    word: 'Simultaneous',
    meaning: 'Eşzamanlı',
    synonyms: ['Concurrent', 'Coinciding', 'Synchronous'],
    antonyms: ['Sequential', 'Consecutive', 'Successive'],
    exampleSentence: 'The drug acts on two simultaneous biochemical pathways.',
  ),
];
