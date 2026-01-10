import 'package:flutter/material.dart';
import 'second_screen.dart';

class MysecondScreen extends StatelessWidget {
  TextEditingController mycontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("firstScreen")),
      body: Padding(
          padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(

            )
          ],
        ),
      ),
    );
  }
}
