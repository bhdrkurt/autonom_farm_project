import 'package:flutter/material.dart';
import 'package:untitled/myDrawer.dart';
class ArabaYonetim extends StatefulWidget {
  @override
  _ArabaYonetimState createState() => _ArabaYonetimState();
}


class _ArabaYonetimState extends State{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("Araba Kontrol"),
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Column(

        ),
      ),
    );
  }

}