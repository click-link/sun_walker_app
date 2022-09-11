import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sun_walker/support_page.dart';
import 'package:url_launcher/url_launcher.dart';
import 'QuizTest/quiz_screen.dart';
import 'front_page_video.dart';
import 'learning pages/learning_page1.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({Key? key}) : super(key: key);

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var h = size.height;
    var w = size.width;

    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.all(15),
              width: w,
              decoration: const BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(bottom: 20)),
                  RichText(
                    textAlign: TextAlign.start,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                            text: 'Welcome to\n\n',
                            style:
                                TextStyle(fontSize:24,color:Colors.white, letterSpacing: 3.0),),

                        TextSpan(
                            text: 'Sun Walker',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 32,
                                color: Colors.orangeAccent,
                                letterSpacing: 3.0),)
                      ],
                    ),
                  ),
                  const Padding(
                      padding: EdgeInsets.only(
                          top: 25, left: 15, right: 15, bottom: 15)),
                  const Spacer(),
                  SizedBox(
                    height: h / 13,
                    width: w * 0.95,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        primary: Colors.white,
                        textStyle: const TextStyle(
                            color: Color(0x000f143a),
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LearningPage1()),
                        );
                      },
                      child: const Text('Way to Sun',
                      style: TextStyle(color: Colors.black),),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.all(10),
              width: w,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.indigoAccent),
              child: Row(
                children: [
                  const Padding(padding: EdgeInsets.all(10)),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox.fromSize(
                        size: const Size(55, 55),
                        child: ClipOval(
                          child: Material(
                            color: Colors.white,
                            child: InkWell(
                              splashColor: Colors.white70,
                              onTap: () =>
                                  launch('https://spaceplace.nasa.gov/'),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.language,
                                    size: 32,
                                  ), // <-- Icon
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.all(3)),
                      const Text('NASA',
                          style: TextStyle(color: Colors.white, fontSize: 18))
                    ],
                  ),
                  const Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox.fromSize(
                        size: const Size(55, 55),
                        child: ClipOval(
                          child: Material(
                            color: Colors.white,
                            child: InkWell(
                              splashColor: Colors.white70,
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => QuizScreen()));
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const <Widget>[
                                  Icon(Icons.quiz_outlined, size: 32),
                                  // <-- Icon
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.all(3)),
                      const Text('QUIZ',
                          style: TextStyle(color: Colors.white, fontSize: 18))
                    ],
                  ),
                  const Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox.fromSize(
                        size: const Size(55, 55),
                        child: ClipOval(
                          child: Material(
                            color: Colors.white,
                            child: InkWell(
                              splashColor: Colors.white70,
                              onTap: () {},
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const <Widget>[
                                  Icon(Icons.games_outlined, size: 32),
                                  // <-- Icon
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.all(3)),
                      const Text('GAME',
                          style: TextStyle(color: Colors.white, fontSize: 18))
                    ],
                  ),
                  const Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox.fromSize(
                        size: const Size(55, 55),
                        child: ClipOval(
                          child: Material(
                            color: Colors.white,
                            child: InkWell(
                              splashColor: Colors.white70,
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const Support()));
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const <Widget>[
                                  Icon(Icons.support_agent_outlined, size: 32),
                                  // <-- Icon
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.all(3)),
                      const Text('SUPPORT',
                          style: TextStyle(color: Colors.white, fontSize: 18))
                    ],
                  ),
                  const Padding(padding: EdgeInsets.only(right: 15))
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: w,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Colors.indigo),
              child: SizedBox(
                height: h * 0.5,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(padding: EdgeInsets.only(top: 10)),
                          const Text('Videos',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white)),
                          const Padding(padding: EdgeInsets.only(bottom: 10)),
                          Container(
                            height: 150,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                const Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
                                Container(
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    color: Colors.white,
                                  ),
                                  height: 145,
                                  width: 250,
                                  child: const VideoFront(),
                                ),
                                const Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0)),
                                Container(
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    color: Colors.white,
                                  ),
                                  height: 145,
                                  width: 250,
                                  child: const VideoFront2(),
                                ),
                                const Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0)),
                                Container(
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    color: Colors.white,
                                  ),
                                  height: 145,
                                  width: 250,
                                  child: const VideoFront3(),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 10)),
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('New Exploration',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white)),
                          const Padding(padding: EdgeInsets.only(bottom: 10)),
                          Container(
                            height: 150,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                const Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
                                Card(
                                  color: Colors.transparent,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                  child: InkWell(
                                    onTap: () => launch(
                                        "https://spaceplace.nasa.gov/all-about-the-sun/en"),
                                    child: Container(
                                      alignment: Alignment.center,
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                          color: Colors.black54),
                                      height: 145,
                                      width: 250,
                                      child: const Text("About the Sun",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.orangeAccent,
                                              fontSize: 28)),
                                    ),
                                  ),
                                ),
                                const Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0)),
                                Card(
                                  color: Colors.transparent,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                  child: InkWell(
                                    onTap: () => launch(
                                        "https://spaceplace.nasa.gov/menu/earth/n"),
                                    child: Container(
                                      alignment: Alignment.center,
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                          color: Colors.black54),
                                      height: 145,
                                      width: 250,
                                      child: const Text("About the Earth",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.orangeAccent,
                                              fontSize: 28)),
                                    ),
                                  ),
                                ),
                                const Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0)),
                                Card(
                                  color: Colors.transparent,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                  child: InkWell(
                                    onTap: () => launch(
                                        "https://spaceplace.nasa.gov/menu/space/"),
                                    child: Container(
                                      alignment: Alignment.center,
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                          color: Colors.black54),
                                      height: 145,
                                      width: 250,
                                      child: const Text("About the Universe",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.orangeAccent,
                                              fontSize: 28)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(bottom: 10)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    var size;
    properties.add(DiagnosticsProperty('size', size));
    properties.add(DiagnosticsProperty('size', size));
  }
}
