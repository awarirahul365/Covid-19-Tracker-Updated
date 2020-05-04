import 'package:covibattle/ChartsDemo.dart';
import 'package:covibattle/Screens/cityscreen.dart';
import 'package:covibattle/Screens/icmr_screen.dart';
import 'package:covibattle/contactscreen.dart';
import 'package:covibattle/newscreen.dart';
import 'package:covibattle/precautionscreen.dart';
import 'package:flutter/material.dart';
import 'Screens/cityscreen.dart';
import 'Screens/devscreen.dart';
import 'main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'HomePage.dart';
import 'Screens/icmr_screen.dart';

class ProfileScreen extends StatelessWidget {
  final UserDetails detailsUser;

  ProfileScreen({Key key, @required this.detailsUser}) : super(key: key);  

  @override
  Widget build(BuildContext context) {
  final GoogleSignIn _gSignIn =  GoogleSignIn();
    return  Scaffold(
        appBar:  AppBar(
          backgroundColor:  Color(0xff010080),
          title:  Center(
            child: Text("HOME"),
          ),
          actions: <Widget>[
          IconButton(
            icon: Icon(
              FontAwesomeIcons.signOutAlt,
              size: 20.0,
              color: Colors.white,
            ),
            onPressed: (){
               _gSignIn.signOut();
              print('Signed out');
               Navigator.pop(context);
            },
          ),
        ],
        ),
        drawer: new Drawer(
          child:Column(
            children:<Widget>[
              Container(
                width:double.infinity,
                padding:EdgeInsets.all(30.0),
                color:  Color(0xff010080),
                child: Center(
                  child:Column(
                    children:<Widget>[
                      CircleAvatar(
                        backgroundImage:NetworkImage(detailsUser.photoUrl),
                        radius: 40.0,
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text( detailsUser.userName,style: TextStyle(fontWeight: FontWeight.bold,color:Colors.white),),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text( detailsUser.userEmail,style: TextStyle(fontWeight: FontWeight.bold,color:Colors.white),)
                    ]
                  )
                ),
              ),
              ListTile(
                leading:Icon(FontAwesomeIcons.newspaper),
                title: Center(
                  child:Text("COVID NEWS",style: TextStyle(fontSize: 14,color:Colors.black),),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>newscreen()));
                },
              ),
              Divider(
                color: Colors.black87,
              ),
              ListTile(
                leading:Icon(FontAwesomeIcons.city),
                title: Center(
                  child:Text("CITY STATS",style: TextStyle(fontSize: 14,color:Colors.black),),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>cityscreen()));
                },
              ),
              Divider(
                color: Colors.black87,
              ),
              ListTile(
                leading:Icon(FontAwesomeIcons.database),
                title: Center(
                  child:Text("COVID GRAPHS",style: TextStyle(fontSize: 14,color:Colors.black),),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ChartsDemo()));
                },
              ),
              Divider(
                color: Colors.black,
              ),
              ListTile(
                leading:Icon(FontAwesomeIcons.info),
                title: Center(
                  child:Text("PRECAUTIONS",style: TextStyle(fontSize: 14,color:Colors.black),),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>precautionscreen()));
                },
              ),
              
              Divider(
                color: Colors.black,
              ),
              ListTile(
                leading:Icon(FontAwesomeIcons.hospital),
                title: Center(
                  child:Text("ICMR TESTS",style: TextStyle(fontSize: 14,color:Colors.black),),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>icmr_screen()));
                },
              ),
              
              Divider(
                color: Colors.black,
              ),
               ListTile(
                leading:Icon(Icons.contact_phone),
                title: Center(
                  child:Text("CONTACTS",style: TextStyle(fontSize: 14,color:Colors.black),),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>contactscreen()));
                },
              ),
              Divider(
                color: Colors.black,
              ),
              ListTile(
                leading:Icon(Icons.person),
                title: Center(
                  child:Text("DEVELOPER",style: TextStyle(fontSize: 14,color:Colors.black),),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>dev_screen()));
                },
              ),
              Divider(
                color: Colors.black,
              ),
            ]
          )
        ) ,
        backgroundColor: Color(0xffFCFFF9),
        body: HomePage(),
    );
  }
}