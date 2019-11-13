import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, //important for aligning the content along the main axis of the column or row
            crossAxisAlignment: CrossAxisAlignment.center, //important for aligning the content along the cross axis of the column or row
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/anuj.png'),
              ),
              Text(
                "Anuj Trehan",
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "FLUTTER DEVELOPER",
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20.0,
                  color: Colors.teal.shade100,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5,
                ),
              ),
              Card( // gives a card based view to the app. Does not have any padding. Have to use the Padding class.
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile( // creates a list tile . very help ful for creating a row wise text with some leadign and trailing icons
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal[900],
                  ),
                  title: Text(
                    "+91 9999616069",
                    style: TextStyle(
                      color: Colors.teal[900],
                      fontFamily: "Source Sans Pro",
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                color: Colors.white,
                child: ListTile(
                    leading: Icon(Icons.email, color: Colors.teal[900]),
                    title: Text(
                      "atrehan789@gmail.com",
                      style: TextStyle(
                        color: Colors.teal[900],
                        fontFamily: "Source Sans Pro",
                        fontSize: 20.0,
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
