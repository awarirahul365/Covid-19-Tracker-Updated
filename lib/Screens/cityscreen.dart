import 'dart:convert';

import 'package:covibattle/Services/post_services.dart';
import 'package:covibattle/models/cityapi.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;


class cityscreen extends StatefulWidget {
  @override
  _cityscreenState createState() => _cityscreenState();
}

class _cityscreenState extends State<cityscreen> {  

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getAllPosts();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title:Text("CITY TRACKERer"),
        ),
        body: Container(
          child:FutureBuilder<List<Autogenerated>>(
            future: getAllPosts(),
            builder: (context, snapshot) {
              if(snapshot.hasData)
                {
                  return ListView.builder(
                    itemCount: 5,
                    itemBuilder:(BuildContext context,index){
                      
                    } 
                    );
                }
              else
                return CircularProgressIndicator();
            }
        )

        ),
      ),
    );
  }
}