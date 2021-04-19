import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Card animalCard(String animalName) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Colors.white,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        FlatButton(
          onPressed: () {
            animalSound(animalName);
          },
          child: Image.asset(
            "assets/images/$animalName.png",
            height: 110,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          animalName,
          style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2),
        )
      ]),
    );
  }

  void animalSound(String animalName) {
    final player = AssetsAudioPlayer();
    player.open(
      Audio("assets/sounds/$animalName.mp3"),
    );
  }

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
          primary: true,
          crossAxisCount: 2,
          crossAxisSpacing: 1,
          mainAxisSpacing: 1,
          padding: EdgeInsets.all(10),
          children: [
            animalCard("Elephant"),
            animalCard("Hyena"),
            animalCard("Monkey"),
            animalCard("Pig"),
            animalCard("Penguin"),
            animalCard("Whale"),
            animalCard("Wolf"),
            animalCard("Panther"),
            animalCard("Cow"),
            animalCard("Zebra"),
          ],
        ));
  }
}
