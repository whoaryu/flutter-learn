import 'package:flutter/material.dart';

class dropdown extends StatefulWidget {
  const dropdown({super.key});
  _dropdownState createState() => _dropdownState();
}

class _dropdownState extends State<dropdown> {
  String selectedvalue = 'Orange';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown list seekhlo gaiz'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                margin: EdgeInsets.all(10),
                height: 70,
                //color: Colors.lightBlue,
                width: MediaQuery.of(context).size.width,
                child: DropdownButton<String>(
                  isExpanded: true,
                  dropdownColor: Colors.deepPurple,
                  //style: TextStyle(color: Colors.black),
                  value: selectedvalue,
                  icon: Icon(Icons.arrow_circle_down_rounded),
                  onChanged: (String? newvalue) {
                    setState(() {
                      selectedvalue = newvalue!;
                    });
                  },
                  items: <String>[
                    'Orange',
                    'Apple',
                    'Banana',
                    'Mango',
                    'Grapes'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                        value: value, child: Text(value));
                  }).toList(),
                ))
          ],
        ),
      ),
    );
  }
}
