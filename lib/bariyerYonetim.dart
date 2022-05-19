import 'package:flutter/material.dart';
import 'package:untitled/myDrawer.dart';
import 'package:untitled/evYonetim.dart';

class BariyerYonetim extends StatefulWidget {
  @override
  _BariyerYonetimState createState() => _BariyerYonetimState();
}


class _BariyerYonetimState extends State{
  bool On = false;
  bool On1 = false;

  String _sicaklikText = 'Hırsız Alarm Sistemi     ';
  String _nemText = 'Nem =';
  String _havaText = 'Hava =';
  String _toprakText = 'Toprak =';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("Bariyer Yönetimi"),
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                On1 ? Image(
              image: AssetImage("resimler/ac_bariyer.png"),
              width: 160,
              height: 160,
                ) :
        Image(
        image: AssetImage("resimler/ac_bariyersistemi.png"),
    width: 160,
    height: 160,
    ) ,

              ],

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                ElevatedButton(
                    style: TextButton.styleFrom(
                        backgroundColor: On1 ? Colors.white10 : Colors.grey),
                    onPressed: () {
                      setState(() {
                        On1 = !On1;
                      });
                    },
                    child: On1 ? Text("Bariyer Sistemi Açık",
                      style: TextStyle(color: Colors.black),
                    ) :
                    Text("Bariyer Sistemi Kapalı",
                      style: TextStyle(color: Colors.black),
                    )),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                On ? Image(
            image: AssetImage("resimler/ac_kamerasistemi.png"),
        width: 160,
        height: 160,
      )  : Image(
                  image: AssetImage("resimler/kapa_kamerasistemi.png"),
                  width: 160,
                  height: 160,
                ) ,

              ],

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                ElevatedButton(
                    style: TextButton.styleFrom(
                        backgroundColor: On ? Colors.white10 : Colors.grey),
                    onPressed: () {
                      setState(() {
                        On = !On;
                      });
                    },
                    child: On ? Text("Kamera Sistemi Açık",
                      style: TextStyle(color: Colors.black),
                    ) :
                    Text("Kamera Sistemi Kapalı",
                      style: TextStyle(color: Colors.black),
                    )),


              ],
            ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {setState(() {
                  On = !On;
                });
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EvYonetim(),
                    ),);
                },
                child:  Text("Kamera Sistemini Aç",
                  style: TextStyle(color: Colors.black),
                )
            ),
          ],
        ),
          ],
        ),
      ),
    );
  }

}