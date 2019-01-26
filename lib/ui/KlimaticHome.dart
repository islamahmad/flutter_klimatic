import 'package:flutter/material.dart';

class KlimaticHome extends StatefulWidget {
  Map data;
  KlimaticHome(Map data) {
    this.data = data;
  }
  @override
  _KlimaticHomeState createState() => _KlimaticHomeState(this.data);
}

class _KlimaticHomeState extends State<KlimaticHome> {
  TextEditingController cityController = TextEditingController();
  Map weatherData;
  _KlimaticHomeState(Map data) {
    this.weatherData = data;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Klimatic',
          style: TextStyle(color: Colors.grey.shade900),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.menu),
              color: Colors.red,
              onPressed: () => debugPrint('hello')),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Center(
            child: Text('Hello'),
          ),
          Center(
            child: ListView(
              padding: EdgeInsets.all(20.0),
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      hintText: 'e.g. New York', labelText: 'City'),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                Text('Hello Text'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
