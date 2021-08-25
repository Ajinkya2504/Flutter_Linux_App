import 'package:flutter/material.dart';
import 'package:lapp/ip.dart';
import 'dart:ui';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lnx App',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: MyHome(title: 'Linux App'),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.indigoAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.limeAccent[400],
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Input()));
              },
              child: Text(
                "Command Terminal",
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
