import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

class RowsCols extends StatelessWidget {
  const RowsCols({super.key});
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Rows and Columns',
            style: TextStyle(
              color: Colors.yellow,
            )),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
          height: h,
          width: w,
          //height: 200,
          //width: 200,
          color: Colors.yellow,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(height: 60, width: 60, color: Colors.blue),
                Container(height: 60, width: 60, color: Colors.pink),
                Container(height: 60, width: 60, color: Colors.deepOrange),
                Container(height: 60, width: 60, color: Colors.lightGreen)
              ])),
    );
  }
}
/* 
Row(
          //direction: Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(height: 60, width: 60, color: Colors.blue),
            Container(height: 60, width: 60, color: Colors.pink),
            Container(height: 60, width: 60, color: Colors.deepOrange),
            Container(height: 60, width: 60, color: Colors.lightGreen)
          ],
        ),
*/
