import 'package:flutter/material.dart';
class MyCheckbox extends StatefulWidget {
  const MyCheckbox({super.key});

  @override
  State<MyCheckbox> createState() => _MyCheckboxState();
}

class _MyCheckboxState extends State<MyCheckbox> {
  List <String> checkboxoptions=["Najma","Siham","Xafsa"];
  List<String> Selctedcheckboxoptions=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("'Checkbox Example"),
      ),
      body: Column(
        children: [
          Column(
            children: checkboxoptions.map((option){
              return CheckboxListTile(
                title: Text(option),
                value: Selctedcheckboxoptions.contains(option),
                onChanged: (bool? value){
                  setState(() {
                    if(value==true){
                      Selctedcheckboxoptions.add(option);
                    }else{
                      Selctedcheckboxoptions.remove(option);
                    }
                  });
                },
              );
            }).toList()
          ),
          Text(' Selected Checkbox Options: ${Selctedcheckboxoptions.join(', ')}',
              style: TextStyle(fontSize: 16)),
        ],
      ),

      );
  }
}
