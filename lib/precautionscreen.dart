import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class precautionscreen extends StatefulWidget {
  @override
  _precautionscreenState createState() => _precautionscreenState();
}

class _precautionscreenState extends State<precautionscreen> {
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
          title:Text("PRECAUTIONS"),
          backgroundColor: Color(0xff010080),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            padding:const EdgeInsets.all(15.0) ,
          width: MediaQuery.of(context).size.width,
          height: 1100.0,
          child: Column(
            children:<Widget>[
              Image.asset("assets/who.jpg"),
              SizedBox(
                height:27.00,
              ),
              Text("What are the symptoms of COVID-19?",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 15),),
              SizedBox(
                height:5
              ),
              Divider(),
              SizedBox(
                height:5
              ),
              Text("The most common symptoms of COVID-19 are fever, tiredness, and dry cough. Some patients may have aches and pains, nasal congestion, runny nose, sore throat or diarrhea. These symptoms are usually mild and begin gradually. Some people become infected but don’t develop any symptoms and don't feel unwell. Most people (about 80%) recover from the disease without needing special treatment. Around 1 out of every 6 people who gets COVID-19 becomes seriously ill and develops difficulty breathing. Older people, and those with underlying medical problems like high blood pressure, heart problems or diabetes, are more likely to develop serious illness. People with fever, cough and difficulty breathing should seek medical attention.",style: TextStyle(fontSize: 14)),
              SizedBox(
                height: 24,
              ),
              Text("Preventions",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 15),),
              Divider(),
              SizedBox(
                height:5
              ),
              Row(
                children:<Widget>[
                  Image.asset("assets/washing.jpg",
                  width:60.0,
                  height: 60.0,
                  ),
                  SizedBox(
                    width:10,
                  ),
                  Column(
                    children:<Widget>[
                      Text("Wash your hands often with soap and water",style: TextStyle(fontSize: 14)),
                      Text("for at least 20 seconds",style: TextStyle(fontSize: 14)),
                    ]
                  )
                ]
      
              ),
              SizedBox(
                height:10,
              ),
              Row(
                children:<Widget>[
                  Image.asset("assets/stayhome.jpg",
                  width:60.0,
                  height: 60.0,
                  ),
                  SizedBox(
                    width:10,
                  ),
                  Column(
                    children:<Widget>[
                      Text("Stay at home as much as possible avoid",style: TextStyle(fontSize: 14)),
                      Text(" close contact with people",style: TextStyle(fontSize: 14)),
                    ]
                  )
                ]
      
              ),
              SizedBox(
                height:10,
              ),
              Row(
                children:<Widget>[
                  Image.asset("assets/disinfect.png",
                  width:60.0,
                  height: 60.0,
                  ),
                  SizedBox(
                    width:10,
                  ),
                  Column(
                    children:<Widget>[
                      Text("Clean AND disinfect frequently touched",style: TextStyle(fontSize: 14)),
                      Text("surfaces",style: TextStyle(fontSize: 14)),
                    ]
                  )
                ]
      
              ),
              SizedBox(
                height: 24,
              ),
              Text("Important Documents",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 15),),
              Divider(),
              SizedBox(
                height:5
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget>[
                  Container(
                    child:RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                        color: Colors.blue[50],
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                        Icon(FontAwesomeIcons.fileDownload,color: Color(0xffCE107C),),
                        SizedBox(width:10.0),
                        Text(
                        'Frequently asked Questions',
                        style: TextStyle(color: Colors.black,fontSize: 18.0),
                    ),
                    ],),
                    onPressed: (){
                      _launchURL("https://drive.google.com/uc?export=download&id=1oYjvHeCgvRJq4c4B4vck5Pkg_agsNPId");
                    },
                    )
                  )
                ]
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget>[
                  Container(
                    child:RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                        color: Colors.blue[50],
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                        Icon(FontAwesomeIcons.fileDownload,color: Color(0xffCE107C),),
                        SizedBox(width:10.0),
                        Text(
                        'How to Protect Yourself and Others',
                        style: TextStyle(color: Colors.black,fontSize: 18.0),
                    ),
                    ],),
                    onPressed: (){
                      _launchURL("https://drive.google.com/uc?export=download&id=1pM6tU6Y7ENp8gM6zmIV6dZrYZtJlG5_z");
                    },
                    )
                  )
                ]
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget>[
                  Container(
                    child:RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                        color: Colors.blue[50],
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                        Icon(FontAwesomeIcons.fileDownload,color: Color(0xffCE107C),),
                        SizedBox(width:10.0),
                        Text(
                        'COVID-19 Symptoms by CDC',
                        style: TextStyle(color: Colors.black,fontSize: 18.0),
                    ),
                    ],),
                    onPressed: (){
                      _launchURL("https://drive.google.com/uc?export=download&id=1nWjDlCDeBTy7pofHllnYEmS_2KsT4dSG");
                    },
                    )
                  )
                ]
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget>[
                  Container(
                    child:RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                        color: Colors.blue[50],
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                        Icon(FontAwesomeIcons.internetExplorer,color: Color(0xffCE107C),),
                        SizedBox(width:10.0),
                        Text(
                        'COVID-19 Statewise',
                        style: TextStyle(color: Colors.black,fontSize: 18.0),
                    ),
                    ],),
                    onPressed: (){
                      _launchURL("https://www.mohfw.gov.in/dashboard/index.php");
                    },
                    )
                  )
                ]
              ),
            ]
          ),
          ),
        ),
      ),
    );
  }
}