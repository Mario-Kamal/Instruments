import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';
class Piano extends StatefulWidget {
  @override
  _PianoState createState() => _PianoState();
}

class _PianoState extends State<Piano> {
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

  AudioCache _audioCache = AudioCache(prefix: 'assets/piano/', fixedPlayer: AudioPlayer()..setReleaseMode(ReleaseMode.STOP));

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Piano Game"),backgroundColor: Colors.black,centerTitle: true,),
      body: SingleChildScrollView(scrollDirection: Axis.horizontal,
        child: Container(padding: EdgeInsets.all(10.0),
          child: Stack(
            children:[
              Row(
          children: [
            Container(width: 80,
            child: RaisedButton(shape: Border.all(color: Colors.black,width: 5),onPressed: (){_audioCache.play('a3.mp3',);},color: Colors.white,child: Container(height: 350,width: 20,decoration: BoxDecoration(
            color: Colors.white,
            ))),
          ),
            Container(width: 80,
              child: RaisedButton(shape: Border.all(color: Colors.black,width: 5),onPressed: (){_audioCache.play('b3.mp3',);},color: Colors.white,child: Container(height: 350,width: 20,decoration: BoxDecoration(
                color: Colors.white,
              ))),
            ),
            Container(width: 80,
              child: RaisedButton(shape: Border.all(color: Colors.black,width: 5),onPressed: (){_audioCache.play('c3.mp3',);},color: Colors.white,child: Container(height: 350,width: 20,decoration: BoxDecoration(
                color: Colors.white,
              ))),
            ),
            Container(width: 80,
              child: RaisedButton(shape: Border.all(color: Colors.black,width: 5),onPressed: (){_audioCache.play('a4.mp3',);},color: Colors.white,child: Container(height: 350,width: 20,decoration: BoxDecoration(
                color: Colors.white,
              ))),
            ),
            Container(width: 80,
              child: RaisedButton(shape: Border.all(color: Colors.black,width: 5),onPressed: (){_audioCache.play('b4.mp3',);},color: Colors.white,child: Container(height: 350,width: 20,decoration: BoxDecoration(
                color: Colors.white,
              ))),
            ),
            Container(width: 80,
              child: RaisedButton(shape: Border.all(color: Colors.black,width: 5),onPressed: (){_audioCache.play('c4.mp3',);},color: Colors.white,child: Container(height: 350,width: 20,decoration: BoxDecoration(
                color: Colors.white,
              ))),
            ),
            Container(width: 80,
              child: RaisedButton(shape: Border.all(color: Colors.black,width: 5),onPressed: (){_audioCache.play('d4.mp3',);},color: Colors.white,child: Container(height: 350,width: 20,decoration: BoxDecoration(
                color: Colors.white,
              ))),
            ),
            Container(width: 80,
              child: RaisedButton(shape: Border.all(color: Colors.black,width: 5),onPressed: (){_audioCache.play('a5.mp3',);},color: Colors.white,child: Container(height: 350,width: 20,decoration: BoxDecoration(
                color: Colors.white,
              ))),
            ),
            Container(width: 80,
              child: RaisedButton(shape: Border.all(color: Colors.black,width: 5),onPressed: (){_audioCache.play('b5.mp3',);},color: Colors.white,child: Container(height: 350,width: 20,decoration: BoxDecoration(
                color: Colors.white,
              ))),
            ),
            Container(width: 80,
              child: RaisedButton(shape: Border.all(color: Colors.black,width: 5),onPressed: (){_audioCache.play('c5.mp3',);},color: Colors.white,child: Container(height: 350,width: 20,decoration: BoxDecoration(
                color: Colors.white,
              ))),
            ),
          ],
    ),
              Positioned(top: 0,left: 55,
                child: Container(width: 50,
                  child: RaisedButton(shape: Border.all(color: Colors.black,),onPressed: (){_audioCache.play('a-3.mp3',);},color: Colors.black,child: Container(height: 200,width: 1,decoration: BoxDecoration(
                    color: Colors.black,
                  ))),
                ),
              ),
              Positioned(top: 0,left: 135,
                child: Container(width: 50,
                  child: RaisedButton(shape: Border.all(color: Colors.black,),onPressed: (){_audioCache.play('c-3.mp3',);},color: Colors.black,child: Container(height: 200,width: 1,decoration: BoxDecoration(
                    color: Colors.black,
                  ))),
                ),
              ),
              Positioned(top: 0,left: 295,
                child: Container(width: 50,
                  child: RaisedButton(shape: Border.all(color: Colors.black,),onPressed: (){_audioCache.play('a-4.mp3',);},color: Colors.black,child: Container(height: 200,width: 1,decoration: BoxDecoration(
                    color: Colors.black,
                  ))),
                ),
              ),
              Positioned(top: 0,left: 375,
                child: Container(width: 50,
                  child: RaisedButton(shape: Border.all(color: Colors.black,),onPressed: (){_audioCache.play('c-4.mp3',);},color: Colors.black,child: Container(height: 200,width: 1,decoration: BoxDecoration(
                    color: Colors.black,
                  ))),
                ),
              ),
              Positioned(top: 0,left: 455,
                child: Container(width: 50,
                  child: RaisedButton(shape: Border.all(color: Colors.black,),onPressed: (){_audioCache.play('c-4.mp3',);},color: Colors.black,child: Container(height: 200,width: 1,decoration: BoxDecoration(
                    color: Colors.black,
                  ))),
                ),
              ),
              Positioned(top: 0,right: 55,
                child: Container(width: 50,
                  child: RaisedButton(shape: Border.all(color: Colors.black,),onPressed: (){_audioCache.play('a-5.mp3',);},color: Colors.black,child: Container(height: 200,width: 1,decoration: BoxDecoration(
                    color: Colors.black,
                  ))),
                ),
              ),
              Positioned(top: 0,right: 135,
                child: Container(width: 50,
                  child: RaisedButton(shape: Border.all(color: Colors.black,),onPressed: (){_audioCache.play('c-5.mp3',);},color: Colors.black,child: Container(height: 200,width: 1,decoration: BoxDecoration(
                    color: Colors.black,
                  ))),
                ),
              ),

            ]
          ),
        ),
      ),
    );
  }
}
