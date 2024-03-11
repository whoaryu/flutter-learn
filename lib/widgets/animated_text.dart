import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
//import 'package:google_fonts/google_fonts.dart';

class animatedtxt extends StatelessWidget {
  const animatedtxt({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Learning cool things',
        style: TextStyle(fontFamily: 'Pacifico'),
      )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(width: 20.0, height: 100.0),
              const Text(
                'Be',
                style: TextStyle(fontSize: 43, fontFamily: 'Canterbury'),
              ),
              const SizedBox(width: 20.0, height: 100.0),
              DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 40.0,
                  //fontFamily: 'Schyler',
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    RotateAnimatedText('Awesome',
                        textStyle: TextStyle(
                            color: Colors.amber, fontFamily: 'Bobbers')),
                    RotateAnimatedText('Optimistic',
                        textStyle: TextStyle(
                            color: Colors.lightBlue, fontFamily: 'Bobbers')),
                    RotateAnimatedText('Different',
                        textStyle: TextStyle(
                            color: Colors.lightGreen, fontFamily: 'Bobbers')),
                  ],
                ),
              ),
            ],
          ),
          // SizedBox(
          //   width: 250.0,
          //   child: TextLiquidFill(
          //     text: 'LIQUIDY',
          //     waveColor: Colors.blue,
          //     boxBackgroundColor: Colors.red,
          //     textStyle: TextStyle(
          //       fontSize: 80.0,
          //       fontWeight: FontWeight.bold,
          //     ),
          //     boxHeight: 300.0,
          //   ),
          // )
        ],
      ),
    );
  }
}
