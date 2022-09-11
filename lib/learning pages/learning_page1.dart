import 'package:flutter/material.dart';
import 'package:sun_walker/QuizTest/quiz_screen.dart';
import 'package:sun_walker/front_page.dart';
import 'package:sun_walker/learning%20pages/animated_video.dart';

class LearningPage1 extends StatelessWidget {
  const LearningPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.blue,
            child: const Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: VideoApp(),
            ),
          ),
        ),
        Expanded(
            flex: 3,
            child: Container(
              color: Colors.black87,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        RichText(
                            text: const TextSpan(
                                text:
                                    "The Sun is the star at the center of the Solar System. It is a nearly perfect ball of hot plasma, heated to incandescence by nuclear fusion reactions in its core, radiating the energy mainly as light, ultraviolet, and infrared radiation.",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20))),
                        //Padding(padding: const EdgeInsets.only(bottom: 10)),
                        RichText(
                            text: const TextSpan(
                                text:
                                    "The sun's atmosphere is made up of several layers, mainly the photosphere, the chromosphere and the corona.",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20))),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.only(
                        top: 5, bottom: 5, right: 10, left: 10),
                    height: 50,
                    child: Row(
                      children: [
                        FlatButton(
                          child: const Text(
                            'Home',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const FrontPage()));
                          },
                        ),
                        const Spacer(),
                        FlatButton(
                          child: const Text(
                            'Next',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const LearningPage2()));
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ))
      ],
    );
  }
}

//page2
class LearningPage2 extends StatelessWidget {
  const LearningPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.blue,
            child: const Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: VideoApp2(),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.black87,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      RichText(
                        textAlign: TextAlign.start,
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: 'According to the',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            TextSpan(
                              text: ' European Space Agency (ESA),\n',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text:
                                  'Eugene Newman Parker, professor from Chicago University, is the man who first proposed the existence of solar wind in 1958.',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.only(
                      top: 5, bottom: 5, right: 10, left: 10),
                  height: 50,
                  child: Row(
                    children: [
                      FlatButton(
                        child: const Text(
                          'Previous',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const LearningPage1()));
                        },
                      ),
                      const Spacer(),
                      FlatButton(
                        child: const Text(
                          'Next',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const LearningPage3()));
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

//page3
class LearningPage3 extends StatelessWidget {
  const LearningPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.blue,
            child: const Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: VideoApp3(),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.black87,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      RichText(
                        textAlign: TextAlign.start,
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: 'Sixty years after Dr. Parker’s paper, NASA is about to launch a spacecraft that is to dive into outer wisps of the sun’s atmosphere and gather information about how our star generates the solar wind',
                              style:
                              TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            TextSpan(
                              text: '  NASA named the mission to honor Parker for his contributions.',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.only(
                      top: 5, bottom: 5, right: 10, left: 10),
                  height: 50,
                  child: Row(
                    children: [
                      FlatButton(
                        child: const Text(
                          'Previous',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const LearningPage2()));
                        },
                      ),
                      const Spacer(),
                      FlatButton(
                        child: const Text(
                          'Next',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const LearningPage4()));
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

//page4
class LearningPage4 extends StatelessWidget {
  const LearningPage4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.blue,
            child: const VideoApp4(),
          ),
        ),
        Expanded(
            flex: 3,
            child: Container(
              color: Colors.blueGrey,
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.only(
                        top: 5, bottom: 5, right: 10, left: 10),
                    height: 50,
                    child: Row(
                      children: [
                        FlatButton(
                          child: const Text(
                            'Previous',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const LearningPage3()));
                          },
                        ),
                        const Spacer(),
                        FlatButton(
                          child: const Text(
                            'Next',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const LearningPage5()));
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ))
      ],
    );
  }
}

//page5
class LearningPage5 extends StatelessWidget {
  const LearningPage5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.blue,
            child: const VideoApp5(),
          ),
        ),
        Expanded(
            flex: 3,
            child: Container(
              color: Colors.blueGrey,
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.only(
                        top: 5, bottom: 5, right: 10, left: 10),
                    height: 50,
                    child: Row(
                      children: [
                        FlatButton(
                          child: const Text(
                            'Previous',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const LearningPage4()));
                          },
                        ),
                        const Spacer(),
                        FlatButton(
                          child: const Text(
                            'Next',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const LearningPage6()));
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ))
      ],
    );
  }
}

//page6
class LearningPage6 extends StatelessWidget {
  const LearningPage6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.blue,
            child: const VideoApp6(),
          ),
        ),
        Expanded(
            flex: 3,
            child: Container(
              color: Colors.blueGrey,
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.only(
                        top: 5, bottom: 5, right: 10, left: 10),
                    height: 50,
                    child: Row(
                      children: [
                        FlatButton(
                          child: const Text(
                            'Previous',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const LearningPage5()));
                          },
                        ),
                        const Spacer(),
                        FlatButton(
                          child: const Text(
                            'Next',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const LearningPage7()));
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ))
      ],
    );
  }
}

//page7
class LearningPage7 extends StatelessWidget {
  const LearningPage7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.blue,
            child: const VideoApp7(),
          ),
        ),
        Expanded(
            flex: 3,
            child: Container(
              color: Colors.blueGrey,
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.only(
                        top: 5, bottom: 5, right: 10, left: 10),
                    height: 50,
                    child: Row(
                      children: [
                        FlatButton(
                          child: const Text(
                            'Previous',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const LearningPage6()));
                          },
                        ),
                        const Spacer(),
                        FlatButton(
                          child: const Text(
                            'Next',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const LearningPage8()));
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ))
      ],
    );
  }
}

//page8
class LearningPage8 extends StatelessWidget {
  const LearningPage8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.blue,
            child: const VideoApp8(),
          ),
        ),
        Expanded(
            flex: 3,
            child: Container(
              color: Colors.blueGrey,
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.only(
                        top: 5, bottom: 5, right: 10, left: 10),
                    height: 50,
                    child: Row(
                      children: [
                        FlatButton(
                          child: const Text(
                            'Previous',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const LearningPage7()));
                          },
                        ),
                        const Spacer(),
                        FlatButton(
                          child: const Text(
                            'Next',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const LearningPage9()));
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ))
      ],
    );
  }
}

//page9
class LearningPage9 extends StatelessWidget {
  const LearningPage9({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.blue,
            child: const VideoApp9(),
          ),
        ),
        Expanded(
            flex: 3,
            child: Container(
              color: Colors.blueGrey,
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.only(
                        top: 5, bottom: 5, right: 10, left: 10),
                    height: 50,
                    child: Row(
                      children: [
                        FlatButton(
                          child: const Text(
                            'Previous',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const LearningPage8()));
                          },
                        ),
                        const Spacer(),
                        FlatButton(
                          child: const Text(
                            'Next',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const LearningPage10()));
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ))
      ],
    );
  }
}

//page10
class LearningPage10 extends StatelessWidget {
  const LearningPage10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.blue,
            child: const VideoApp10(),
          ),
        ),
        Expanded(
            flex: 3,
            child: Container(
              color: Colors.blueGrey,
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.only(
                        top: 5, bottom: 5, right: 10, left: 10),
                    height: 50,
                    child: Row(
                      children: [
                        FlatButton(
                          child: const Text(
                            'Previous',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const LearningPage9()));
                          },
                        ),
                        const Spacer(),
                        FlatButton(
                          child: const Text(
                            'Next',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const LearningPage11()));
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ))
      ],
    );
  }
}

//page11
class LearningPage11 extends StatelessWidget {
  const LearningPage11({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.blue,
            child: const VideoApp10(),
          ),
        ),
        Expanded(
            flex: 3,
            child: Container(
              color: Colors.blueGrey,
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.only(
                        top: 5, bottom: 5, right: 10, left: 10),
                    height: 50,
                    child: Row(
                      children: [
                        FlatButton(
                          child: const Text(
                            'Previous',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const LearningPage10()));
                          },
                        ),
                        const Spacer(),
                        FlatButton(
                          child: const Text(
                            'Quiz',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const QuizScreen()));
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ))
      ],
    );
  }
}
