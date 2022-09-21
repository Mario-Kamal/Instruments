import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';



class Xylifone extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Xylifone> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }
  Color w = Colors.black;
  AudioCache _audioCache = AudioCache(prefix: 'assets/xylifone/', fixedPlayer: AudioPlayer()..setReleaseMode(ReleaseMode.STOP));
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(appBar: AppBar(
          title: Text("Xylifone",style: TextStyle(fontSize:35,),),backgroundColor: w,centerTitle: true,),
        body : SingleChildScrollView(scrollDirection: Axis.vertical,
          child:
          Container(color: w,
            width: double.infinity,
            child: Row(
              children: [
                RaisedButton(color: Colors.deepPurple,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  onPressed: (){
                    _audioCache.play('note5.wav',);
                    setState(() {
                      w = Colors.deepPurple;
                    });
                  },
                  child: Container(height: 350,width: 50,decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround ,
                      children: [
                        Text("C" ,style: TextStyle(fontSize:35,),),
                        Text("Do" ,style: TextStyle(fontSize:35,),),
                        Text("1" ,style: TextStyle(fontSize:35,),),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10.0,),
                RaisedButton(color: Colors.indigo,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  onPressed: (){
                    _audioCache.play('note7.wav',);
                    setState(() {
                      w = Colors.indigo;
                    });
                  },
                  child: Container(decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(10.0)
                  ),height: 325,width: 50,
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround ,
                      children: [
                        Text("D" ,style: TextStyle(fontSize:35,),),
                        Text("RI" ,style: TextStyle(fontSize:35,),),
                        Text("2" ,style: TextStyle(fontSize:35,),),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10.0,),
                RaisedButton(color: Colors.cyan,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  onPressed: (){
                    _audioCache.play('note6.wav',);
                    setState(() {
                      w = Colors.cyan;
                    });
                  },
                  child: Container(decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(10.0)
                  ),height: 300,width: 50,
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround ,
                      children: [
                        Text("E" ,style: TextStyle(fontSize:35,),),
                        Text("MI" ,style: TextStyle(fontSize:35,),),
                        Text("3" ,style: TextStyle(fontSize:35,),),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10.0,),
                RaisedButton(color: Colors.lightGreen,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  onPressed: (){
                    _audioCache.play('note5.wav',);
                    setState(() {
                      w = Colors.lightGreen;
                    });
                  },
                  child: Container(decoration: BoxDecoration(
                      color: Colors.lightGreen,
                      borderRadius: BorderRadius.circular(10.0)
                  ),height: 275,width: 50,
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround ,
                      children: [
                        Text("F" ,style: TextStyle(fontSize:35,),),
                        Text("FA" ,style: TextStyle(fontSize:35,),),
                        Text("4" ,style: TextStyle(fontSize:35,),),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10.0,),
                RaisedButton(color: Colors.yellowAccent,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  onPressed: (){
                    _audioCache.play('note4.wav',);
                    setState(() {
                      w = Colors.yellowAccent;
                    });
                  },
                  child: Container(decoration: BoxDecoration(
                      color: Colors.yellowAccent,
                      borderRadius: BorderRadius.circular(10.0)
                  ),height: 250,width: 50,
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround ,
                      children: [
                        Text("G" ,style: TextStyle(fontSize:35,),),
                        Text("So" ,style: TextStyle(fontSize:35,),),
                        Text("5" ,style: TextStyle(fontSize:35,),),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10.0,),
                RaisedButton(color: Colors.redAccent,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  onPressed: (){
                    _audioCache.play('note3.wav',);
                    setState(() {
                      w = Colors.redAccent;
                    });
                  },
                  child: Container(decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(10.0)
                  ),height: 225,width: 50,
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround ,
                      children: [
                        Text("A" ,style: TextStyle(fontSize:35,),),
                        Text("LA" ,style: TextStyle(fontSize:35,),),
                        Text("6" ,style: TextStyle(fontSize:35,),),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10.0,),
                RaisedButton(color: Colors.brown,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  onPressed: (){
                    _audioCache.play('note2.wav',);
                    setState(() {
                      w = Colors.brown;
                    });
                  },
                  child: Container(decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(10.0)
                  ),height: 200,width: 50,
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround ,
                      children: [
                        Text("B" ,style: TextStyle(fontSize:35,),),
                        Text("SI" ,style: TextStyle(fontSize:35,),),
                        Text("7" ,style: TextStyle(fontSize:35,),),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10.0,),
                RaisedButton(color: Colors.pinkAccent,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  onPressed: (){
                    _audioCache.play('note7.wav',);
                    setState(() {
                      w = Colors.pinkAccent;
                    });
                  },
                  child: Container(decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(10.0)
                  ),height: 175,width: 50,
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround ,
                      children: [
                        Text("C" ,style: TextStyle(fontSize:35,),),
                        Text("Do" ,style: TextStyle(fontSize:35,),),
                        Text("8" ,style: TextStyle(fontSize:35,),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );


  }
}


