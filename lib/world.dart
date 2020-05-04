import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'package:country_icons/country_icons.dart';

class world extends StatefulWidget {
  @override
  _worldState createState() => _worldState();
}

class _worldState extends State<world> {


  List<String>country=["af","al","dz","ad","ao","ai","ag","ar","am","aw","au","at","az","bs","bh","bd","bb","by","be","bz","bj","bm","bt","bo","ba","bw","br","vg","bn","bg","bf","bi","cv","kh","cm","ca","bq","ky","cf","td","je","cl","cn","co","cg","cg","cr","hr","cu","cw","cy","cz","ci","cd","dk","cu","dj","dm","do","ec","eg","sv","gq","er","ee","et","fk","fo","fj","fi","fr","gf","pf","ga","gm","ge","de","gh","gi","gr","gl","gd","gp","gt","gn","gw","gy","ht","va","hn","hk","hu","is","in","id","ir","iq","ie","im","il","it","jm","jp","jo","kz","ke","kw","kg","la","lv","lb","lr","ly","li","lt","lu","kw","mo","mk","mg","mw","my","mv","ml","mt","mq","mr","mu","yt","mx","md","mc","mn","me","ms","ma","mz","mm","na","np","nl","nc","nz","ni","ne","ng","no","om","pk","ps","pa","pg","py","pe","ph","pl","pt","qa","ro","ru","rw","re","kr","kn","lc","mf","pm","vc","sm","st","sa","sn","rs","sc","sl","sg","sx","sk","si","so","za","ss","es","lk","bl","sd","sr","sz","se","ch","sy","tw","tj","tz","th","tl","tg","tt","tn","tr","tc","ae","gb","us","ug","ua","uy","uz","ve","vn","eh","ye","zm","zw"];
  final String url="https://corona.lmao.ninja/v2/countries";
  Future<List>datas;
  Future<List>getcountryData()async{
    var response=await Dio().get(
      url
    );
    return response.data;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    datas=getcountryData();
  }
  Future displaydata(String cases,tdeaths,death,recover,activecases)async
  {
    await showDialog(
      context: context,
      builder: (BuildContext context)
      {
        return AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
          ),
          content: SingleChildScrollView(
            child:ListBody(
              children:<Widget>[
                Text("Total Cases: $cases",style:TextStyle(fontSize: 25,color: Colors.blue)),
                Text("Today's death: $tdeaths",style:TextStyle(fontSize: 25,color: Colors.pink)),
                Text("Total death: $death",style:TextStyle(fontSize: 25,color: Colors.red)),
                Text("Recovered: $recover",style:TextStyle(fontSize: 25,color: Colors.green)),
                Text("Active Cases: $activecases",style:TextStyle(fontSize: 25,color: Colors.orange)),
              ]
            )
          ),
        );
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title:Text("WORLD STATISTICS"),
          backgroundColor: Color(0xff010080),
        ),
      body: Container(
        padding:const EdgeInsets.all(10),
        child:FutureBuilder(
          future: datas,
          builder: (BuildContext context,SnapShot){
            if(SnapShot.hasData)
            {
              return GridView.builder(
                gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1.0,
                ) ,
                itemCount:212,
                itemBuilder: (BuildContext context,index)=>SizedBox(
                  height: 60,
                  width: 60,
                  child: GestureDetector(
                    onTap:()=>displaydata(
                      SnapShot.data[index]['cases'].toString(),
                      SnapShot.data[index]['todayDeaths'].toString(),
                      SnapShot.data[index]['deaths'].toString(),
                      SnapShot.data[index]['recovered'].toString(),
                      SnapShot.data[index]['active'].toString(),
                    ),
                    child:Card(
                      elevation: 4.0,
                      child: Container(
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Image.asset('icons/flags/png/${country[index]}.png', package: 'country_icons',
                            height: 60,
                            width: 60,
                            ),
                            Text(SnapShot.data[index]['country'],style:TextStyle(fontSize: 14,color: Colors.black))
                          ],
                        ),
                      ),
                      )
                  ),
                ), 
              );
            }
            else{
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }
        )
      ),
      ),
    );
  }
}