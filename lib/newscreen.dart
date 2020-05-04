import 'package:covibattle/models/newsapi.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class newscreen extends StatefulWidget {
  @override
  _newscreenState createState() => _newscreenState();
}

class _newscreenState extends State<newscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getnews();
  }
  String str="";
  _launchURL(String str) async {
  if (await canLaunch(str)) {
    await launch(str);
  } else {
    throw 'Could not launch $str';
  }
}
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          title:Text("COVID-19 NEWS"),
          backgroundColor: Color(0xff010080),
        ),
        body: Container(
          child: FutureBuilder(
            future: getnews(),
            builder: (context,SnapShot){
              if(SnapShot.hasData)
              {
                return ListView.builder(
                  itemCount: SnapShot.data.length,
                  itemBuilder: (BuildContext context,int index){
                    //like for loop
                    Map wpost=SnapShot.data[index];
                    return Card(
                      elevation: 6.0,
                      child: InkWell(
                        child:Column(  
                          mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 4.5,
                        ),
                        Image.network(wpost['urlToImage'],
                        width: double.infinity,
                        height: 200,
                        ),
                        SizedBox(
                          height:5.0,
                        ),
                        Text(wpost['title'],style: TextStyle(fontWeight:FontWeight.bold,fontSize: 16,color: Colors.black)),
                        SizedBox(
                          height:5.0,
                        ),
                      ],
                    ),
                    onTap: (){
                      _launchURL(wpost['url']);
                    },
                      )
                    );
                  },
                );
              }
              else
              {
                return Center(
                  child:CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
      ),
    );
  }

  }

