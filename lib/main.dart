import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyStatelessWidget(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateless Widgets"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            MyCard("I love flutter", Icons.favorite, Colors.pink),
            MyCard("I love my phone", Icons.local_phone, Colors.blue),
            MyCard("I love riding bike", Icons.directions_bike, Colors.black),
          ],
        ),
      ),
    );
  }

    Widget MyCard(String title, IconData icon, Color color) {
      return Container(
        padding: EdgeInsets.only(bottom: 15.0),
        child: Card(
          child: Column(
            children: <Widget>[
              Text(title),
              SizedBox(height: 5.0,),
              Icon(icon, size: 40.0, color: color,)
            ],
          ),
        ),
      );
  }


}

