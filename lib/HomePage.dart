import 'dart:convert';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'models/Tcases.dart';
import 'world.dart';
import 'india.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String url="https://www.who.int/emergencies/diseases/novel-coronavirus-2019/advice-for-public/myth-busters";
  _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
 }

  final String url1="https://corona.lmao.ninja/v2/all";//link of api
  //getting data using api and request
  Future<Tcases>getData()async{

    var response=await http.get(
      Uri.encodeFull(url1),
    );
    if(response.statusCode==200)
    {
      final convertDataJSON=jsonDecode(response.body);

      return Tcases.fromJson(convertDataJSON);
    }
    else
    {
      throw Exception('Try to reload');
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  navigatetocountry()async{
    await Navigator.push(context, MaterialPageRoute(builder: (context)=>world()));
  }
  navigatetoindia()async{
    await Navigator.push(context, MaterialPageRoute(builder: (context)=>india()));
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:SingleChildScrollView(
          child:Container(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:<Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(0, 10, 0, 0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Card(
                      color: Color(0xff010080),
                      child: Text("COVID TRACKER",style: TextStyle(color:Colors.white,fontSize: 24,fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
                SizedBox(
                  height: 16.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    OutlineButton(
                      color:Color(0xff010080) ,
                      borderSide: BorderSide(color:Color(0xff3895D3)),
                      child: Text("WORLDWIDE STATISTICS",style: TextStyle(color:Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
                SizedBox(
                  height: 16.0,
                ),
                FutureBuilder(
                  future: getData(),
                  builder: (BuildContext context,SnapShot){
                    if(SnapShot.hasData)
                    {
                      final covid=SnapShot.data;
                      return Column( 
              children : <Widget>[
              Card(color: Color(0xff010080),
              child : ListTile(

               
              title: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children : <Widget>[
                
                
              Text("Total Cases ",style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
              Text("Deaths",style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
              Text("Recoveries",style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),

              ]) )
            ),
            Card(color: Color(0xff010080),
            child : ListTile(

               
              title: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children : <Widget>[
                
                
              Text("${covid.cases} ",style: TextStyle(color: Colors.blue, fontSize: 23, fontWeight: FontWeight.bold),),
              Text("${covid.deaths}",style: TextStyle(color: Colors.red, fontSize: 23, fontWeight: FontWeight.bold),),
              Text("${covid.recovered}",style: TextStyle(color: Colors.green, fontSize: 23, fontWeight: FontWeight.bold)),

              ]) )
            ),
            ]);
                    }
                    else{
                      return Center(
                      child: CircularProgressIndicator() ,
                    );
                    }
                  }
                ),
                SizedBox(
                  height: 16.0,
                ),
                Container(
                  padding: const EdgeInsets.only(left:20.0,right: 20.0),
                  child:Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Card(
                        elevation: 4,
                        color:Colors.white,
                        child: InkWell(
                        child: Stack(
                        children: <Widget>[
                        Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                        Center(
                          child:Image.asset("assets/india.png",
                          width: 160,
                          height: 160,
                          )
                        ),
                      ],
                    ),
                  ],
               ),
                onTap: (){
                  navigatetoindia();
                },
              ),
              ),
                      Card(
                        elevation: 4,
                        color:Colors.white,
                        child: InkWell(
                        child: Stack(
                        children: <Widget>[
                        Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                        Center(
                          child:Image.asset("assets/world.png",
                          width: 160,
                          height: 160,
                          )
                        ),
                      ],
                    ),
                  ],
               ),
                onTap: (){
                  navigatetocountry();
                },
              ),
              ),
                    ],
                  )
                ),
                SizedBox(height: 16.0,),
                Container(
                  padding: const EdgeInsets.only(left:20.0,right:20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                       Card(
                       elevation: 5.1,
                       color:Colors.white,
                       child: InkWell(
                       child: Stack(
                       children: <Widget>[
                       Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                       Center(
                          child:Image(image: AssetImage("assets/myths.png"),
                          width: 333,
                          height: 130,
                          ),
                       ),
                      ],
                      ),
                     ],
                   ),
                   onTap: (){
                    _launchURL(url);
                    },
                  ),
                  ),
                    ],
                  ),
                )
            ]
          ),
        ) ,
        )
      ),
    );
  }
}