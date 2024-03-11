import 'package:flutter/material.dart';

class Container_sized extends StatelessWidget {
  const Container_sized({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container and Sizedbox'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Container(
            padding: EdgeInsets.all(10),
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                color: Colors.blue,
                //shape: BoxShape.circle,
                //borderRadius: BorderRadius.circular(20),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 20, spreadRadius: 5, color: Colors.black)
                ]),
            child:
                Center(child: Text('Hello', style: TextStyle(fontSize: 20)))),
      ),
    );
  }
}
