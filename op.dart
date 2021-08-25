import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as hp;

// ignore: must_be_immutable
class LinuxOut extends StatelessWidget {
  String out = "", cmd = "";
  LinuxOut(this.cmd) {
    r1();
  }

  r1() async {
    var urlApp = Uri.http('192.168.1.20', '/cgi-bin/hello.py', {'e': '$cmd'});

    var resp = await hp.get(urlApp);
    this.out = resp.body;

    Fluttertoast.showToast(
      msg: resp.body,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 30,
    );
    Text(resp.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Linux Output"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Text(out),
      ),
    );
  }
}
