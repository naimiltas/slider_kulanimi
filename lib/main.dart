// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

double ilerleme = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           Text("Sonuç : ${ilerleme.toInt()}"),
           Slider(
            max: 100.0,
            min: 0.0,
            value: ilerleme,
            activeColor: Colors.indigo,
            inactiveColor: Colors.red,
            onChanged: (double i){
              setState(() {
                ilerleme = i ;
              });
            },
           ),
           RaisedButton(
            child: Text("Göster"),
            onPressed: (){
              print("Slider ilerleme : ${ilerleme.toInt()}");
            },
           ),
          ],
        ),
      ),
    );
  }
}
