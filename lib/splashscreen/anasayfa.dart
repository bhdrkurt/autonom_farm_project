import 'package:flutter/material.dart';
import 'package:untitled/arabaYonetim.dart';
import 'package:untitled/bariyerYonetim.dart';
import 'package:untitled/evYonetim.dart';
import 'package:untitled/garajYonetim.dart';
import 'package:untitled/myDrawer.dart';
import 'package:untitled/tarlaYonetim.dart';

class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}


class _AnasayfaState extends State{
  bool On = false;
  bool On1 = false;
  bool On2 = false;
  bool On3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("Akıllı Çiftlik Kotrol"),
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Card(

                  child: Column(
                    children: <Widget>[

                      Text('Ev Yönetimi',style: TextStyle(fontSize: 25),),

                      Container(
                        //height: 500,
                        child: new InkWell(
                          onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EvYonetim(),
                            ),);
                          },
                        child: Card(

                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,

                          child: Image(
                            image: AssetImage("resimler/evyonetimilogo1.png"),width: 250,
                            height: 80, fit: BoxFit.fill,),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          margin: EdgeInsets.all(10),

                        ),

                      ),

                      ),
                      Text('Tarla Yönetimi',style: TextStyle(fontSize: 25),),
                      Container(
                        //height: 500,
                        child: new InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TarlaYonetim(),
                              ),);
                          },
                          child: Card(

                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,

                            child: Image(
                              image: AssetImage("resimler/tarlayonetimilogo.png"),width: 250,
                              height: 80, fit: BoxFit.fill,),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            elevation: 5,
                            margin: EdgeInsets.all(10),

                          ),


                        ),


                      ),
                      Text('Garaj Yönetimi',style: TextStyle(fontSize: 25),),
                      Container(
                        //height: 500,
                        child: new InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => GarajYonetim(),
                              ),);
                          },
                          child: Card(

                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,

                            child: Image(
                              image: AssetImage("resimler/garagelogo.png"),width: 250,
                              height: 80, fit: BoxFit.fill,),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            elevation: 5,
                            margin: EdgeInsets.all(10),

                          ),


                        ),


                      ),
                      Text('Ahır Bariyer Yönetimi',style: TextStyle(fontSize: 25),),
                      Container(
                        //height: 500,
                        child: new InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BariyerYonetim(),
                              ),);
                          },
                          child: Card(

                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,

                            child: Image(
                              image: AssetImage("resimler/barrierlogo.png"),width: 250,
                              height: 80, fit: BoxFit.fill,),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            elevation: 5,
                            margin: EdgeInsets.all(10),

                          ),


                        ),


                      ),
                      Text('Araba Yönetimi',style: TextStyle(fontSize: 25),),
                      Container(
                        //height: 500,
                        child: new InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ArabaYonetim(),
                              ),);
                          },
                          child: Card(

                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,

                            child: Image(
                              image: AssetImage("resimler/carlogo.png"),width: 250,
                              height: 80, fit: BoxFit.fill,),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            elevation: 5,
                            margin: EdgeInsets.all(10),

                          ),


                        ),


                      )],
                  ),

                  margin: EdgeInsets.only(left: 1.0, right: 1.0,top : 20.0),

                )
              ],

            ),

          ],
        ),
      ),
    );
  }

}