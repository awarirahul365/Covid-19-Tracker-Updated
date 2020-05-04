import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<List>geticmr()async{
  final response=await http.get("https://api.rootnet.in/covid19-in/stats/testing/history");

  var convertDatatoJson=jsonDecode(response.body);
  
  var convertwithdata=convertDatatoJson['data'];
  
  print(convertwithdata);
  return convertwithdata;

}