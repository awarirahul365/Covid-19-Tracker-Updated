import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<List>getnews()async{

  final response=await http.get("http://newsapi.org/v2/top-headlines?country=in&q=corona&sortBy=publishedAt&apiKey=d9fa391aacfe428e81b8c6002ea8a507");

  var convertDatatoJson=jsonDecode(response.body);

  var convertwitharticle=convertDatatoJson['articles'];
  print(convertwitharticle);

  return convertwitharticle;

}