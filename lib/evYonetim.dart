import 'package:flutter/material.dart';
import 'package:untitled/myDrawer.dart';
class EvYonetim extends StatefulWidget {
  @override
  _EvYonetimState createState() => _EvYonetimState();
}


class _EvYonetimState extends State{

  bool On = false;
  bool On1 = false;
  bool On2 = false;
  bool On3 = false;
  bool On4 = false;
  bool On5 = false;
  //final dbR = FirebaseDatabase.instance.ref();
  //final _database = FirebaseDatabase.instance.reference();
  String _sicaklikText = 'Sicaklik =';
  String _nemText = 'Nem =';
  String _havaText = 'Hava =';
  String _toprakText = 'Toprak =';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("Akıllı Ev Kontrol"),
      ),
      drawer: MyDrawer(),

      body: SingleChildScrollView(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.device_thermostat,
                  size: 100,
                  color: Colors.redAccent,
                ),
                Icon(
                  Icons.water_damage,
                  size: 100,
                  color: Colors.blueAccent,
                ),
                Icon(
                  Icons.park,
                  size: 100,
                  color: Colors.lightGreen,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(_sicaklikText,
                    style: TextStyle(color: Colors.white),
      ),
                Text(_nemText + " %"),//water_damage
                Text(_havaText +" PPM"),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                On ? Icon(
                  Icons.lightbulb,
                  size: 100,
                  color: Colors.amber,
                ) : Icon(
                  Icons.lightbulb_outline,
                  size: 100,
                ),
                On1 ? Icon(
                  Icons.water,
                  size: 100,
                  color: Colors.blue,
                ) : Icon(
                  Icons.water_outlined,
                  size: 100,
                ),
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
                    child: On ? Text("Aydınlatma Açık",
                      style: TextStyle(color: Colors.black),
                    ) :
                    Text("Aydınlatma Kapalı",
                      style: TextStyle(color: Colors.black),
                    )),
                ElevatedButton(
                    style: TextButton.styleFrom(
                        backgroundColor: On1 ? Colors.white10 : Colors.grey),
                    onPressed: () {
                      setState(() {
                        On1 = !On1;
                      });
                    },
                    child: On1 ? Text("Havalandırma Açık") : Text("Havalandırma Kapalı")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                On2 ? Image(
                  image: AssetImage("resimler/hırsızalarmsistemi.png"),
                  width: 100,
                  height: 100,
                )
                    : Image(
                  image: AssetImage("resimler/kapa_hırsızalarmsistemi.png"),
                  width: 100,
                  height: 100,
                ),
                On3 ?  Image(
                  image: AssetImage("resimler/yangınalarm.png"),
                  width: 100,
                  height: 100,
                )
                    : Image(
                  image: AssetImage("resimler/kapa_yangınalarm.png"),
                  width: 100,
                  height: 100,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: TextButton.styleFrom(
                        backgroundColor: On2 ? Colors.white10 : Colors.grey),
                    onPressed: () {
                      setState(() {
                        On2 = !On2;
                      });
                    },
                    child: On2 ? Text("Hırsız Alarm Aktif") : Text("Hırsız Alarm Pasif")),
                ElevatedButton(
                    style: TextButton.styleFrom(
                        backgroundColor: On3 ? Colors.white10 : Colors.grey),
                    onPressed: () {
                      setState(() {
                        On3 = !On3;
                      });
                    },
                    child: On3 ? Text("Yangın Alarmı Aktif") : Text("Yangın Alarmı Pasif")),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                On4 ? Image(
                  image: AssetImage("resimler/sogutmasistemi.png"),
                  width: 100,
                  height: 100,
                )
                    : Image(
                  image: AssetImage("resimler/kapa_sogutmasistemi.png"),
                  width: 100,
                  height: 100,
                ),
                On5 ? Image(
                  image: AssetImage("resimler/ısıtmasistemi.png"),
                  width: 100,
                  height: 100,
                )
                 : Image(
                  image: AssetImage("resimler/kapa_ısıtmasistemi.png"),
                  width: 100,
                  height: 100,
                ),
              ],

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                ElevatedButton(
                    style: TextButton.styleFrom(
                        backgroundColor: On4 ? Colors.white10 : Colors.grey),
                    onPressed: () {
                      setState(() {
                        On4 = !On4;
                      });
                    },
                    child: On4 ? Text("Soğutma Sistemi Açık") : Text("Soğutma Sistemi Kapalı")),
                ElevatedButton(
                    style: TextButton.styleFrom(
                        backgroundColor: On5 ? Colors.white10 : Colors.grey),
                    onPressed: () {
                      setState(() {
                        On5 = !On5;
                      });
                    },
                    child: On5 ? Text("Isıtma Sistemi Açık") : Text("Isıtma Sistemi Kapalı")),
              ],
            ),
          ],
        ),
      ),
    );
  }

}