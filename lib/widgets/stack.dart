import 'package:flutter/material.dart';

class stack extends StatelessWidget {
  const stack({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stack seekh lo guyzz',
              style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.white,
        ),
        body: Container(
          color: Colors.blue,
          child: Center(
            child: Stack(
              children: [
                // Positioned(
                //   bottom: 10,
                //   left: 20,
                //   right: 50,
                //   top: 30,
                //   child: Container(
                //     height: 400,
                //     width: 400,
                //     color: Colors.amber,
                //   ),
                Center(
                  child: Container(
                    height: 400,
                    width: 400,
                    color: Colors.amber,
                  ),
                ),
                Center(
                  child: Container(
                    height: 320,
                    width: 320,
                    color: Colors.deepOrange,
                  ),
                ),
                Center(
                  child: Container(
                    height: 230,
                    width: 230,
                    color: Colors.deepPurple,
                  ),
                ),
                Center(
                  child: Container(
                    height: 150,
                    width: 150,
                    color: Colors.black,
                  ),
                ),
                Center(
                    child: Text(
                  'Give me all \nyour money',
                  style: TextStyle(fontSize: 28, fontFamily: 'Pacifico'),
                ))
              ],
            ),
          ),
        ));
  }
}
