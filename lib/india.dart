import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class india extends StatefulWidget {
  @override
  _indiaState createState() => _indiaState();
}

class _indiaState extends State<india> {

  final String url="https://api.rootnet.in/covid19-in/stats/latest";

  Future<List>datas;

  Future<List>getindiadata()async{
    var response=await Dio().get(url);
    return response.data['data']['regional'];
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    datas=getindiadata();
  }
  Future display(String confirmedCasesIndian,discharged,deaths,totalConfirmed)async{
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
                Text("Total Cases: $confirmedCasesIndian",style:TextStyle(fontSize: 25,color: Colors.blue)),
                Text("Recovered: $discharged",style:TextStyle(fontSize: 25,color: Colors.green)),
                Text("Total death: $deaths",style:TextStyle(fontSize: 25,color: Colors.red)),
                Text("Active Confirmed: $totalConfirmed",style:TextStyle(fontSize: 25,color: Colors.pink)),
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
          title:Text("INDIA STATISTICS"),
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
                itemCount:27,
                itemBuilder: (BuildContext context,index)=>SizedBox(
                  height: 60,
                  width: 60,
                  child: GestureDetector(
                    onTap:()=>display(
                      SnapShot.data[index]['confirmedCasesIndian'].toString(),
                      SnapShot.data[index]['discharged'].toString(),
                      SnapShot.data[index]['deaths'].toString(),
                      SnapShot.data[index]['totalConfirmed'].toString(),
                    ),
                    child:Card(
                      elevation: 4.0,
                      child: Container(
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Image.asset('icons/flags/png/in.png', package: 'country_icons',
                            height: 60,
                            width: 60,
                            ),
                            Text(SnapShot.data[index]['loc'],style:TextStyle(fontSize: 14,color: Colors.black))
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