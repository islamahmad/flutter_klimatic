import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:klimatic/ui/KlimaticHome.dart';

import 'values.dart' as util;

void main() async {
  runApp(MyApp());
  data = await getJSON(util.metricApiKey, 'metric');
}

Map data;
Future<Map> getJSON(String apiKey, String units) async {
  // if the response here starts with a { not a [ it's a Map not a List
  http.Response response =
      //await http.get(apiUrl + query + apiKey);
      //await http.get(apiKey+util.query+'&units='+units)
      await http.get(
          'https://samples.openweathermap.org/data/2.5/weather?q=Cairo&appid=44c2f12484f0c26d35aa08a683afd11d');
  return json.decode(response.body);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Klimatic',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: KlimaticHome(data),
    );
  }
}
