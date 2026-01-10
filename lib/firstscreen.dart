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
              controller: mycontroller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Your Name",
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              child: Text('Next'),
              onPressed: (){
              Navigator.push(
                context, MaterialPageRoute(builder:(context)=>SecondScreen(
                text: mycontroller.text,
              ),
              ),
              );
            },
            ),
          ],
        ),
      ),
    );
  }
}
