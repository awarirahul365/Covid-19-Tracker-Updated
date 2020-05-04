import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class contactscreen extends StatefulWidget {
  @override
  _contactscreenState createState() => _contactscreenState();
}

class _contactscreenState extends State<contactscreen> {

  String url="";
  _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          title:Text("EMERGENCY CONTACTS"),
          backgroundColor: Color(0xff010080),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
            title: Text("Government Of India"),
            trailing:Wrap(children: <Widget>[
              IconButton(
              icon: Icon(Icons.phone),
              color: Colors.black54,
              onPressed:(){
                _launchURL("tel:1123978046");
              } , 
            ),
            IconButton(
              icon: Icon(Icons.mail),
              color: Colors.black54,
              onPressed:(){
                _launchURL("mailto:ncov2019@gov.in");
              } , 
            ),
            IconButton(
              icon: Icon(Icons.web),
              color: Colors.black54,
              onPressed:(){
               _launchURL("https://www.mohfw.gov.in/");
              } , 
            ),
            ],) 
          ),
            new SizedBox(
          height: 1.0,
          child: new Center(
          child: new Container(
          margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
          height: 1.0,
          color: Colors.black,
          ),
        ),
        ),
            ListTile(
            title: Text("Andhra Pradesh"),
            trailing:Wrap(children: <Widget>[
              IconButton(
              icon: Icon(Icons.phone),
              color: Colors.black54,
              onPressed:(){
                _launchURL("tel:08662410978");
              } , 
            ),
            ],) 
          ),
            new SizedBox(
            height: 1.0,
            child: new Center(
            child: new Container(
            margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
            height: 1.0,
            color: Colors.black,
            ),
        ),
        ),  
             ListTile(
            title: Text("Arunachal Pradesh"),
            trailing:Wrap(children: <Widget>[
              IconButton(
              icon: Icon(Icons.phone),
              color: Colors.black54,
              onPressed:(){
                _launchURL("tel:9436055743");
              } , 
            ),
            ],) 
          ),
            new SizedBox(
            height: 1.0,
            child: new Center(
            child: new Container(
            margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
            height: 1.0,
            color: Colors.black,
            ),
        ),
        ),
            ListTile(
            title: Text("Assam"),
            trailing:Wrap(children: <Widget>[
              IconButton(
              icon: Icon(Icons.phone),
              color: Colors.black54,
              onPressed:(){
                _launchURL("tel:6913347770");
              } , 
            ),
            ],) 
          ),
            new SizedBox(
            height: 1.0,
            child: new Center(
            child: new Container(
            margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
            height: 1.0,
            color: Colors.black,
            ),
        ),
        ),
            ListTile(
            title: Text("Bihar"),
            trailing:Wrap(children: <Widget>[
              IconButton(
              icon: Icon(Icons.phone),
              color: Colors.black54,
              onPressed:(){
                _launchURL("tel:104");
              } , 
            ),
            ],) 
          ),
            new SizedBox(
            height: 1.0,
            child: new Center(
            child: new Container(
            margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
            height: 1.0,
            color: Colors.black,
            ),
        ),
        ),
            ListTile(
            title: Text("Chhattisgarh"),
            trailing:Wrap(children: <Widget>[
              IconButton(
              icon: Icon(Icons.phone),
              color: Colors.black54,
              onPressed:(){
                _launchURL("tel:104");
              } , 
            ),
            ],) 
          ),
            new SizedBox(
            height: 1.0,
            child: new Center(
            child: new Container(
            margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
            height: 1.0,
            color: Colors.black,
            ),
        ),
        ),
            ListTile(
            title: Text("Goa"),
            trailing:Wrap(children: <Widget>[
              IconButton(
              icon: Icon(Icons.phone),
              color: Colors.black54,
              onPressed:(){
                _launchURL("tel:104");
              } , 
            ),
            ],) 
          ),
            new SizedBox(
            height: 1.0,
            child: new Center(
            child: new Container(
            margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
            height: 1.0,
            color: Colors.black,
            ),
        ),
        ),
            ListTile(
            title: Text("Gujarat"),
            trailing:Wrap(children: <Widget>[
              IconButton(
              icon: Icon(Icons.phone),
              color: Colors.black54,
              onPressed:(){
                _launchURL("tel:104");
              } , 
            ),
            ],) 
          ),
            new SizedBox(
            height: 1.0,
            child: new Center(
            child: new Container(
            margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
            height: 1.0,
            color: Colors.black,
            ),
        ),
        ),
            ListTile(
            title: Text("Himachal Pradesh"),
            trailing:Wrap(children: <Widget>[
              IconButton(
              icon: Icon(Icons.phone),
              color: Colors.black54,
              onPressed:(){
                _launchURL("tel:104");
              } , 
            ),
            ],) 
          ),
            new SizedBox(
            height: 1.0,
            child: new Center(
            child: new Container(
            margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
            height: 1.0,
            color: Colors.black,
            ),
        ),
        ),
            ListTile(
            title: Text("Jharkhand"),
            trailing:Wrap(children: <Widget>[
              IconButton(
              icon: Icon(Icons.phone),
              color: Colors.black54,
              onPressed:(){
                _launchURL("tel:104");
              } , 
            ),
            ],) 
          ),
            new SizedBox(
            height: 1.0,
            child: new Center(
            child: new Container(
            margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
            height: 1.0,
            color: Colors.black,
            ),
        ),
        ),
            ListTile(
            title: Text("Karnataka"),
            trailing:Wrap(children: <Widget>[
              IconButton(
              icon: Icon(Icons.phone),
              color: Colors.black54,
              onPressed:(){
                _launchURL("tel:104");
              } , 
            ),
            ],) 
          ),
            new SizedBox(
            height: 1.0,
            child: new Center(
            child: new Container(
            margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
            height: 1.0,
            color: Colors.black,
            ),
        ),
        ),
            ListTile(
            title: Text("Madhya Pradesh"),
            trailing:Wrap(children: <Widget>[
              IconButton(
              icon: Icon(Icons.phone),
              color: Colors.black54,
              onPressed:(){
                _launchURL("tel:104");
              } , 
            ),
            ],) 
          ),
            new SizedBox(
            height: 1.0,
            child: new Center(
            child: new Container(
            margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
            height: 1.0,
            color: Colors.black,
            ),
        ),
        ),
            ListTile(
            title: Text("Maharashtra"),
            trailing:Wrap(children: <Widget>[
              IconButton(
              icon: Icon(Icons.phone),
              color: Colors.black54,
              onPressed:(){
                _launchURL("tel:02026127394");
              } , 
            ),
            ],) 
          ),
            new SizedBox(
            height: 1.0,
            child: new Center(
            child: new Container(
            margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
            height: 1.0,
            color: Colors.black,
            ),
        ),
        ),
            ListTile(
            title: Text("Manipur"),
            trailing:Wrap(children: <Widget>[
              IconButton(
              icon: Icon(Icons.phone),
              color: Colors.black54,
              onPressed:(){
                _launchURL("tel:3852411668");
              } , 
            ),
            ],) 
          ),
            new SizedBox(
            height: 1.0,
            child: new Center(
            child: new Container(
            margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
            height: 1.0,
            color: Colors.black,
            ),
        ),
        ),
            ListTile(
            title: Text("Meghalaya"),
            trailing:Wrap(children: <Widget>[
              IconButton(
              icon: Icon(Icons.phone),
              color: Colors.black54,
              onPressed:(){
                _launchURL("tel:108");
              } , 
            ),
            ],) 
          ),
            new SizedBox(
            height: 1.0,
            child: new Center(
            child: new Container(
            margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
            height: 1.0,
            color: Colors.black,
            ),
        ),
        ),
            ListTile(
            title: Text("Rajasthan"),
            trailing:Wrap(children: <Widget>[
              IconButton(
              icon: Icon(Icons.phone),
              color: Colors.black54,
              onPressed:(){
                _launchURL("tel:01412225624");
              } , 
            ),
            ],) 
          ),
            new SizedBox(
            height: 1.0,
            child: new Center(
            child: new Container(
            margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
            height: 1.0,
            color: Colors.black,
            ),
        ),
        ),
            ListTile(
            title: Text("Tamil Nadu"),
            trailing:Wrap(children: <Widget>[
              IconButton(
              icon: Icon(Icons.phone),
              color: Colors.black54,
              onPressed:(){
                _launchURL("tel:044-29510500");
              } , 
            ),
            ],) 
          ),
            new SizedBox(
            height: 1.0,
            child: new Center(
            child: new Container(
            margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
            height: 1.0,
            color: Colors.black,
            ),
        ),
        ),
          ],
        ),
      
      ),
    );
  }
}