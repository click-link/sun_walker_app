class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "What is the full form of ESA?",
    [
      Answer("Euro Space Agency", false),
      Answer("European Space Age", false),
      Answer("European Space Agency", true),
      Answer("European Space Authority", false),
    ],
  ));

  list.add(Question(
    "Eugene Newman Parker, professor from -",
    [
      Answer("Chicago University", true),
      Answer("University of USA", false),
      Answer("University of Liverpool", false),
      Answer("Oxford University", false),
    ],
  ));

  list.add(Question(
    "Parker Solar Probe has ___ main parts.?",
    [
      Answer("4", false),
      Answer("3", false),
      Answer("5", false),
      Answer("6", true),
    ],
  ));

  list.add(Question(
    " If we calculate ∆v of Parker's Solar Probe, it would require -",
    [
      Answer("∆v=2.9 km/s", true),
      Answer("∆v=2.6 km/s", false),
      Answer("∆v=2.9 km/min", false),
      Answer("∆v=2.6 km/min", false),
    ],
  ));

  list.add(Question(
    "What is the full form of SWEAP",
    [
      Answer("Solar Wind Electrons Alpha and Protons", true),
      Answer("Solar Wind Electro Alphas and Protons", false),
      Answer("Solar Wish Electrons Alpha and Proton", false),
      Answer("Sun Wind Electrons Alpha and Proton", false),
    ],
  ));

  list.add(Question(
    "The sun's atmosphere is made up of mainly___",
    [
      Answer("4 layers", false),
      Answer("5 layers", false),
      Answer("2 layers", false),
      Answer("3 layers", true),
    ],
  ));

  list.add(Question(
    "Parker's Solar Probe is launched by a ___",
    [
      Answer("Delta IV Heavy Rocket", true),
      Answer("Delta V Heavy Rocket", false),
      Answer("Alpha IV Heavy Rocket", false),
      Answer("Alpha V Heavy Rocket", false),
    ],
  ));

  list.add(Question(
    "Parker's Solar Probe is launched on-",
    [
      Answer("11 August 2017", false),
      Answer("12 August 2017", false),
      Answer("12 August 2018", true),
      Answer("11 August 2018", false),
    ],
  ));

  list.add(Question(
    "The only material which will survive there will be____",
    [
      Answer("NIOBIUM C-102", false),
      Answer("NIOBIUM C-103", true),
      Answer("MIOBIUM C-103", false),
      Answer("MIORIUM C-103", false),
    ],
  ));

  list.add(Question(
    "Lifespan of the Parker solar probe-",
    [
      Answer("Seven-years", true),
      Answer("Eight-years", false),
      Answer("Nine-years", false),
      Answer("Ten-years", false),
    ],
  ));

  return list;
}