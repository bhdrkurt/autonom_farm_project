import 'package:flutter/material.dart';
import 'package:untitled/myDrawer.dart';
class TarlaYonetim extends StatefulWidget {
  @override
  _TarlaYonetimState createState() => _TarlaYonetimState();
}


class _TarlaYonetimState extends State{
  bool ac = false;
  bool On1 = false;

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
          title: Text("Tarla Yönetimi"),
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

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(_sicaklikText,
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(_nemText + " %"), //water_damage
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ac ? Icon(
                    Icons.lightbulb,
                    size: 100,
                    color: Colors.amber,
                  ) : Icon(
                    Icons.lightbulb_outline,
                    size: 100,
                  ),

                ],

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  ElevatedButton(
                      style: TextButton.styleFrom(
                          backgroundColor: ac ? Colors.green : Colors.white10),
                      onPressed: () {
                        setState(() {
                          ac = !ac;
                        });
                      },
                      child: ac ? Text("Aydınlatma Açık",
                        style: TextStyle(color: Colors.black),
                      ) :
                      Text("Aydınlatma Kapalı",
                        style: TextStyle(color: Colors.black),
                      )),
                ],
              ),
            ],
          ),
        ),
      );
    }

}