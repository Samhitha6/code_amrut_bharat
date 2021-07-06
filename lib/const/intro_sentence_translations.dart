const List<String> englishSentences_intro = [
  'My Name is ___',
  'Good Morning!',
  "Are You Vaccinated?",
  "I will get vaccinated",
  'I am vaccinated',
  'How Are You Doing?',
  'What Is Your Name?',
  "See You Later",
  "Okay"
];
const Map<String, Map<String, String>> translations_intro = {
  "Telugu": {
    "My Name is ___": 'నా పేరు(Nā pēru)',
    "Good Morning!": 'శుభోదయం(Śubhōdayaṁ)',
    "Are You Vaccinated?": 'మీరు టీకాలు వేస్తున్నారా?(Mīru ṭīkālu vēstunnārā?)',
    "I will get vaccinated": 'నేను టీకాలు వేస్తాను(Nēnu ṭīkālu vēstānu)',
    "I am vaccinated": 'నాకు టీకాలు వేస్తున్నాను(Nāku ṭīkālu vēstunnānu)',
    "How Are You Doing?": "నువ్వు ఎలా ఉన్నావు?(Nuvvu elā unnāvu?)",
    "What Is Your Name?": "నీ పేరు ఏమిటి?(Nī pēru ēmiṭi?)",
    "See You Later": "మళ్ళీ కలుస్తారు(Maḷḷī kalustāru)",
    "Okay": "సరే(Sarē)"
  }
};

const Map<String, List<String>> audioFiles_intro = {
  "Telugu": [
    'assets/audio/my name.mp4',
    'assets/audio/good morning.mp4',
    'assets/audio/are you vaccinated.mp4',
    'assets/audio/i need to get vaccinated.mp4',
    'assets/audio/i have been vaccinated.mp4',
    "assets/audio/how are you.mp4",
    "assets/audio/what is your name.mp4",
    "assets/audio/see you later.mp4"
  ]
};

const Map<String, List<String>> suggestions_intro = {
  'My Name is ___': [
    'What Is Your Name?',
    'How Are You Doing?',
  ],
  'Good Morning!': [
    'How Are You Doing?',
    'What Is Your Name?',
    'Are You Vaccinated?',
    'See You Later'
  ],
  'Are You Vaccinated?': ['How Are You Doing?'],
  "I will get vaccinated": ["Are You Vaccinated?"],
  'I am vaccinated': ["Are You Vaccinated"],
  'How Are You Doing?': ['Are You Vaccinated?', 'See You Later'],
  'What Is Your Name?': ['How Are You Doing?', 'Are You Vaccinated?'],
  "See You Later": ['Okay'],
  "Okay": ['See You Later']
};
