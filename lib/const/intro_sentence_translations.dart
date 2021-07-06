const List<String> englishSentences_intro = [
  'What is your name?',
  "How are you doing?",
  "I am fine, thank you.",
  "My name is ----",
  "Could you please speak slowly?",
  "Where do you live?",
  "Do you want to get food?",
  "Can you repeat what you just said?",
  "I live at ------",
  "What do you do?",
  "I work as a --------",
  "Can you help me?",
  "Are you able to understand me",
  "Can you give me your phone number",
  "Thank you",
  "I am sorry",
  "I understand.",
  "Goodbye.",
  "I do not understand.",
  "Nice to meet you.",
  "Come with me.",
  "Where are you going",
  "What are you doing",
  "I am going to -----, would you like to come?",
  "I am doing -------"
];
const Map<String, Map<String, String>> translations_intro = {
  "Telugu": {
    "What is your name?": 'తుమ్హారా నామ్ క్యా?(Nī pēru ēmiṭi?)',
    "How are you doing?": 'నువ్వు ఎలా ఉన్నావు?(Nuvvu elā unnāvu?)',
    "I am fine, thank you.":
        'నేను బాగున్నాను, ధన్యవాదాలు.?(Nēnu bāgunnānu, dhan\'yavādālu.)',
    "My name is ----": 'నా పేరు ----(Nā pēru ----)',
    "Could you please speak slowly?":
        "మీరు నెమ్మదిగా మాట్లాడగలరా?(Mīru nem'madigā māṭlāḍagalarā?)",
    "Where do you live?":
        "మీరు ఎక్కడ నివసిస్తున్నారు?(Mīru ekkaḍa nivasistunnāru?)",
    "Do you want to get food?":
        "మీరు ఆహారం పొందాలనుకుంటున్నారా?(Mīru āhāraṁ pondālanukuṇṭunnārā?)",
    "Can you repeat what you just said?":
        "మీరు ఇప్పుడే చెప్పినదాన్ని పునరావృతం చేయగలరా?(Mīru ippuḍē ceppinadānni punarāvr̥taṁ cēyagalarā?)",
    "I live at ------": "నెను నివసించెది ------ (Nenu nivasin̄cedi ------)",
    "What do you do?": "మీరు ఏమి చేస్తారు? (Mīru ēmi cēstāru?)",
    "I work as a --------":
        "నేను -------- గా పనిచేస్తాను (Nēnu -------- gā panicēstānu)",
    "Can you help me?":
        "మీరు నాకు సహాయం చేయగలరా? (Mīru nāku sahāyaṁ cēyagalarā?)",
    "Are you able to understand me":
        "మీరు నన్ను అర్థం చేసుకోగలరా? (Mīru nannu arthaṁ cēsukōgalarā?)",
    "Can you give me your phone number":
        "మీ ఫోన్ నంబర్ నాకు ఇవ్వగలరా? (Mī phōn nambar nāku ivvagalarā?)",
    "Thank you": "ధన్యవాదాలు (Dhan'yavādālu)",
    "I am sorry": "నన్ను క్షమించు (Nannu kṣamin̄cu)",
    "I understand.": "నాకు అర్థమైనది.(Nāku arthamainadi.)",
    "Goodbye.": "వీడ్కోలు.(Vīḍkōlu.)",
    "I do not understand.": "నాకు అర్థం కాలేదు.(Nāku arthaṁ kālēdu.)",
    "Nice to meet you.":
        "మిమ్ములని కలసినందుకు సంతోషం.(Mim'mulani kalasinanduku santōṣaṁ.)",
    "Come with me.": "నాతో రా.(Nātō rā.)",
    "Where are you going":
        "మీరు ఎక్కడికి వెళుతున్నారు. (Mīru ekkaḍiki veḷutunnāru)",
    "What are you doing": "నువ్వేమి చేస్తున్నావు. (Nuvvēmi cēstunnāvu)",
    "I am going to -----, would you like to come?":
        "నేను వెళుతున్నాను -----, మీరు రావాలనుకుంటున్నారా?(Nēnu veḷutunnānu -----, mīru rāvālanukuṇṭunnārā?)",
    "I am doing -------": "()"
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

// const Map<String, List<String>> suggestions_intro = {
//   'My Name is ___': [
//     'What Is Your Name?',
//     'How Are You Doing?',
//   ],
//   'Good Morning!': [
//     'How Are You Doing?',
//     'What Is Your Name?',
//     'Are You Vaccinated?',
//     'See You Later'
//   ],
//   'Are You Vaccinated?': ['How Are You Doing?'],
//   "I will get vaccinated": ["Are You Vaccinated?"],
//   'I am vaccinated': ["Are You Vaccinated"],
//   'How Are You Doing?': ['Are You Vaccinated?', 'See You Later'],
//   'What Is Your Name?': ['How Are You Doing?', 'Are You Vaccinated?'],
//   "See You Later": ['Okay'],
//   "Okay": ['See You Later']
// };
