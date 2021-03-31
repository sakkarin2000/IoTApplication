import 'package:flutter/material.dart';
//import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  hexColor(String colorhexcode) {
    String colornew = '0xff' + colorhexcode;
    colornew = colornew.replaceAll('#', '');
    int colorint = int.parse(colornew);
    return colorint;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: new Column(children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: 'I',
                  style: TextStyle(
                      color: Color(hexColor('#BED4DF')),
                      fontSize: 64,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'mali'),
                ),
                TextSpan(
                  text: 'o',
                  style: TextStyle(
                      color: Color(hexColor('#CCADA5')),
                      fontSize: 64,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'mali'),
                ),
                TextSpan(
                  text: 'T',
                  style: TextStyle(
                      color: Color(hexColor('#FFB9A3')),
                      fontSize: 64,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'mali'),
                ),
              ]),
            ),
            Padding(
              padding: EdgeInsets.all(18.0),
            ),
            new Text(
              'Manage your time, \nevents and \nactivities',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'mali'),
            ),
            Padding(
              padding: EdgeInsets.all(35.0),
            ),
            ElevatedButton(
              onPressed: () {
                //something just like this too doo doo too doo doo
              },
              style: ElevatedButton.styleFrom(
                  primary: Color(hexColor('#E17262')),
                  padding: EdgeInsets.symmetric(
                    horizontal: 52,
                    vertical: 19,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(15.0))),
              child: Text(
                'Let’s go',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'mali'),
              ),
            )
          ]),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/waiting-bg.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      //child: Text('Hello',style: TextStyle(fontFamily: 'mali'),),
    );
  }
}
