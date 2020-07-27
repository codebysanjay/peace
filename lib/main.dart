import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Peace(),
      theme: ThemeData(fontFamily: 'Comfortaa'),
    );
  }
}

class Peace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.5),
          image: DecorationImage(
            image: AssetImage('assets/bg.jpg'),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 30, top: 50),
                      child: RichText(
                        textAlign: TextAlign.start,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Welcome to,',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontFamily: 'Comfortaa',
                              ),
                            ),
                            TextSpan(
                              text: '\nPeace',
                              style: TextStyle(
                                fontSize: 50,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//style: TextStyle(
//fontSize: 50,
//color: Colors.white,
//),
