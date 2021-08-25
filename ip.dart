import 'package:flutter/material.dart';

import 'package:lapp/op.dart';

class Input extends StatelessWidget {
  final myController = TextEditingController();

  // Input(text);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input of Linux cmd terminal...'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 9, vertical: 17),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter the command',
                ),
                controller: myController,
              ),
            ),
            SizedBox(
              height: 100.0,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.amberAccent[300],
                  fixedSize: Size(200, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LinuxOut(myController.text)),
                  );
                },
                child: Text(
                  "Run Command",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 25),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
