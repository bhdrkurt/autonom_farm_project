import 'package:flutter/material.dart';
import 'package:untitled/arabaYonetim.dart';
import 'package:untitled/bariyerYonetim.dart';
import 'package:untitled/evYonetim.dart';
import 'package:untitled/garajYonetim.dart';
import 'package:untitled/main.dart';
import 'package:untitled/splashscreen/anasayfa.dart';
import 'package:untitled/tarlaYonetim.dart';

class MyDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyDrawerState();
}

class _MyDrawerState extends State {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Align(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage("resimler/logo.png"),
                    width: 108,
                    height: 108,
                  ),
                  Text(
                    "Akıllı Çiftlik Kontrol",
                    style: TextStyle(color: Colors.white, fontSize: 25.0),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.lightGreen,
            ),
          ),

          ListTile(
            leading: Icon(Icons.home),
            title: Text('Anasayfa'),

            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Anasayfa(),
                ),
              );
            },
          ),

          ListTile(
            leading: Icon(Icons.perm_device_information),
            title: Text('Ev Yönetimi'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EvYonetim(),
                ),
              );
            },
          ),

          ListTile(
            leading: Icon(Icons.local_laundry_service),
            title: Text('Tarla Yönetimi'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TarlaYonetim(),
                ),
              );
            },
          ),

          ListTile(
            leading: Icon(Icons.image),
            title: Text('Garaj Sistemi'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GarajYonetim(),
                ),
              );
            },
          ),

          ListTile(
            leading: Icon(Icons.question_answer),
            title: Text('Bariyer Sistemi'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BariyerYonetim(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.question_answer),
            title: Text('Araba Yönetimi'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ArabaYonetim(),
                ),
              );
            },
          ),



        ],
      ),
    );
  }
}