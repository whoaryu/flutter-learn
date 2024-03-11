import 'package:flutter/material.dart';

class buttonwidget extends StatelessWidget {
  const buttonwidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learning buttons', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              child: Text(
                'Hey There :)',
                style: TextStyle(fontSize: 40, color: Colors.black),
              ),
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                  backgroundColor: MaterialStateProperty.all(Colors.lightGreen),
                  overlayColor: MaterialStateProperty.all(Colors.red),
                  elevation: MaterialStateProperty.all(10)),
              onPressed: () {},
            ),
            Container(
              height: 80,
              width: 300,
              child: ElevatedButton(
                child: Text(
                  'Hey There :)',
                  style: TextStyle(fontSize: 40, color: Colors.black),
                ),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
                    backgroundColor: MaterialStateProperty.all(Colors.cyan),
                    overlayColor: MaterialStateProperty.all(Colors.purple),
                    elevation: MaterialStateProperty.all(10)),
                onPressed: () {
                  print('How are you?');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
