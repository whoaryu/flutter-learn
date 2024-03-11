import 'package:flutter/material.dart';

class pakau extends StatelessWidget {
  const pakau({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bhavya')),
      body: Center(
        child: Container(
          child: Text(
            'I am learning Flutter',
            style: TextStyle(color: Colors.pink, fontSize: 30),
          ),
        ),
      ),
    );
  }
}
