import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'xylifone.dart';
import 'piano.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp,DeviceOrientation.portraitDown])
  .then((value) => runApp(MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),);
  }
}
class MyHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("Instruments App",style: TextStyle(fontSize: 30),),centerTitle: true,
          ),
          body: Container(color: Colors.black,width:double.infinity,alignment: Alignment.center,
            child: SingleChildScrollView(scrollDirection: Axis.vertical,
              child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Xylifone())),child: Image.asset('assets/1.jpg',fit: BoxFit.cover,),color: Colors.black,),
                      FlatButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Xylifone())), child: Text("Press To Play",style: TextStyle(fontSize: 30,color: Colors.pinkAccent),))
                    ],
                  )
                    ,
                    SizedBox(height: 30,),

              Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Piano())),child: Image.asset('assets/2.jpg',fit: BoxFit.cover,),color: Colors.black),
                  FlatButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Piano())), child: Text("Press To Play",style: TextStyle(fontSize: 30,color: Colors.pinkAccent),))
                ],
              )
              ,]
              ),
            ),
          ),
        )

    );
  }
}

