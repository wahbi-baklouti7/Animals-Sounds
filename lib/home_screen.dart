import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber[400],
        appBar: AppBar(
          title: Text("Animals Sounds"),
          centerTitle: true,
          backgroundColor: Colors.amber[600],
        ),
        body: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          children: [
            Card(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              color: Colors.red,),
            Card(color: Colors.purple,)
          ],
        ));
  }
}
