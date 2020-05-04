import 'package:covibattle/models/icmrapi.dart';
import 'package:flutter/material.dart';
import 'package:covibattle/ProfileScreen.dart';

class icmr_screen extends StatefulWidget {
  @override
  _icmr_screenState createState() => _icmr_screenState();
}

class _icmr_screenState extends State<icmr_screen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    geticmr();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:Text("ICMR TEST STATS"),
          backgroundColor: Color(0xff010080),
        ),
        body: Container(
          child: FutureBuilder
          (
            future: geticmr(),
            builder: (context,SnapShot){
              if(SnapShot.hasData)
              {
                return ListView.builder(
                  itemCount: SnapShot.data.length,
                  itemBuilder: (BuildContext context,int index){
                    Map icpost=SnapShot.data[index];
                    return Card(
                      elevation: 4.0,
                      child: InkWell(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                          height: 4.5,
                        ),
                        SizedBox(
                          height:5.0,
                        ),
                        Text("                                  ${icpost['day']}",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 16,color: Colors.red),),
                        SizedBox(
                          height:5.0,
                        ),
                        Text("TotalSampleTested:  ${icpost['totalSamplesTested'].toString()}",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 14,color: Colors.black),),
                        SizedBox(
                          height:5.0,
                        ),
                        Text("TotalIndividualTested:  ${icpost['totalIndividualsTested'].toString()}",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 14,color: Colors.black),),
                        SizedBox(
                          height:5.0,
                        ),
                        Text("TotalPositiveCases:  ${icpost['totalPositiveCases'].toString()}",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 14,color: Colors.black),),
                        ],
                        ),
                      ),
                    );
                  }
                  );
              }
              else
              {
                return Center(child:CircularProgressIndicator());
              }
            }
          ),
        ),
      ),
    );
  }
}