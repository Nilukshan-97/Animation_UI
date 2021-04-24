import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Nunito"),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Center(
            child: LoginPage(),
          ),
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int _pageState = 0;
  var _backgroundColor = Colors.white;
  var _headingColor = Color(0xFFB40284A);
  @override
  Widget build(BuildContext context) {
    switch (_pageState) {
      case 0:
        _backgroundColor = Colors.white;
        _headingColor = Color(0xFFB40284A);
        break;
      case 1:
        _backgroundColor = Color(0xFFBD34C59);
        _headingColor = Colors.white;
        break;
      case 2:
        _backgroundColor = Color(0xFFBD34C59);
        _headingColor = Colors.white;
        break;
    }
    return AnimatedContainer(
      curve: Curves.fastLinearToSlowEaseIn,
      duration: Duration(milliseconds: 1000),
      color: _backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Container(
                    margin: const EdgeInsets.only(top: 100),
                    child: Text(
                      "Learn Free",
                      style: TextStyle(
                          color: _headingColor,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    )),
                Container(
                  margin: EdgeInsets.all(25),
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  child: Text(
                    "The following defines the version and build number for your application.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: _headingColor, fontSize: 16),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Center(
              child: Image.asset("assets/images/splash_bg.png"),
            ),
          ),
          Container(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  if (_pageState != 0) {
                    _pageState = 0;
                  } else {
                    _pageState = 1;
                  }
                });
              },
              child: Container(
                margin: EdgeInsets.all(32),
                padding: EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xFFB40284A),
                    borderRadius: BorderRadius.circular(50)),
                child: Center(
                    child: Text(
                  "Get Started",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )),
              ),
            ),
          )
        ],
      ),
    );
  }
}