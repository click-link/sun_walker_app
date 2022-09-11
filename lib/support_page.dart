import 'package:flutter/material.dart';
import 'package:sun_walker/front_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Support extends StatelessWidget {
  const Support({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var h = size.height;
    var w = size.width;

    return Scaffold(
        body: Container(
      width: w,
      color: Colors.black87,
      child: Column(
        children: [
          const Padding(padding: EdgeInsets.only(top: 50)),
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                    text: 'Welcome to ',
                    style: TextStyle(fontSize: 20, color: Colors.white)),
                TextSpan(
                    text: 'Space Eye',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.white)),
                TextSpan(
                    text: ' Support Desk',
                    style: TextStyle(fontSize: 20, color: Colors.white)),
              ],
            ),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 25)),
          SizedBox(
            height: h / 13,
            width: w * 0.9,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                primary: Colors.brown[700],
                textStyle: const TextStyle(
                    color: Color(0x000f143a),
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.mail_outline_rounded,
                    color: Colors.white,
                    size: 20,
                  ),
                  Padding(padding: EdgeInsets.only(left: 10)),
                  Text(
                    'Email Us',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 15)),
          SizedBox(
            height: h / 13,
            width: w * 0.9,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                primary: Colors.blue[800],
                textStyle: const TextStyle(
                    color: Color(0x000f143a),
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () => launch('https://www.facebook.com/spaceeye2021'),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.facebook_outlined,
                    color: Colors.white,
                    size: 20,
                  ),
                  Padding(padding: EdgeInsets.only(left: 10)),
                  Text(
                    'FACEBOOK',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 15)),
          SizedBox(
            width: w * 0.9,
            child: TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.text,
              cursorColor: Colors.black,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                contentPadding: const EdgeInsets.symmetric(vertical: 40),
                filled: true,
                fillColor: Colors.white54,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                hintText: "Feel free to share your opinion",
                hintStyle: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Spacer(),
          SizedBox(
            height: h / 13,
            width: w * 0.9,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                primary: Colors.blue[800],
                textStyle: const TextStyle(
                    color: Color(0x000f143a),
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FrontPage()),
                );
              },
              child: const Text(
                'Back to Home',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15))
        ],
      ),
    ));
  }
}
