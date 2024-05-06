import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      debugShowCheckedModeBanner: false,
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        // useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Flutter Container'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    var appBar2 = AppBar(
      // The title text which will be shown on the action bar
      title: Text(title),
      titleTextStyle: TextStyle(color: Color(0xfff9f9f9), fontSize: 22),
      backgroundColor: Color(0xff5d619c),
    );
    return Scaffold(
        appBar: appBar2,
        body: Align(
            alignment: Alignment.center,
            child: Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(width: 5, color: Colors.red),
                  // shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xff3d2272),
                        offset: Offset(5.0, 5.0),
                        blurRadius: 20.0,
                        spreadRadius: 10.0),
                    BoxShadow(
                        color: Color(0xff6b4486),
                        offset: Offset(2.0, 2.0),
                        blurRadius: 2.0,
                        spreadRadius: 2.0)
                  ]),
              width: 245,
              height: 295,
              //color: Colors.red,
              child: Text("Contenedor",
                  style: TextStyle(color: Color(0xfff9f9f9), fontSize: 28)),
              constraints: BoxConstraints(
                  minHeight: 100,
                  minWidth: 100,
                  maxHeight: double.infinity,
                  maxWidth: double.infinity),
              transform: Matrix4.skew(0.2, -0.2)..rotateZ(0.9),
              transformAlignment: Alignment.center,
              foregroundDecoration: BoxDecoration(color: Colors.blue),
            )));
  }
}
