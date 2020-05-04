import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class dev_screen extends StatefulWidget {
  @override
  _dev_screenState createState() => _dev_screenState();
}

class _dev_screenState extends State<dev_screen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body:SafeArea(
          child:Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(0, 160.0, 0.00, 0.00),
              ),
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage("assets/selfimg.png"),
              ),
              Container(
                margin: EdgeInsets.all(2.0),
              ),
              SizedBox(
                height: 10.0,
                width: 150.0,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.phone),
                  SizedBox(
                  width: 5.0,
                  ),
                  Text("+91-7038133396"),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.mail),
                  SizedBox(
                  width: 5.0,
                  ),
                  Text("awarirahul365@gmail.com"),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(FontAwesomeIcons.github),
                  SizedBox(
                  width: 5.0,
                  ),
                  Text("github.com/awarirahul365"),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Card(
                  child: Icon(FontAwesomeIcons.linkedin)),
                  SizedBox(
                  width: 5.0,
                  ),
                  Text("linkedin.com/in/rahul-awari-98a70817a/"),
                ],
              ),
            ],
          )
        ),
        appBar: AppBar(
          backgroundColor: Color(0xff010080),
          title: Center(
            child: Text("DEVELOPER CONTACT",
          style: TextStyle(fontSize: 20.0,fontFamily: 'Chilanka'),
          ),
          )
        ),
        
      ),
    );
  }
}