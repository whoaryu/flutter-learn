import 'package:flutter/material.dart';

class snacbar extends StatelessWidget {
  const snacbar({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scacc Barr', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Center(
            child: ElevatedButton(
                onPressed: () {
                  final snackie = SnackBar(
                      action: SnackBarAction(
                          label: 'Undo?',
                          textColor: Colors.amber,
                          onPressed: () {}),
                      behavior: SnackBarBehavior.floating,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      // padding: EdgeInsets.all(5),
                      duration: const Duration(milliseconds: 2500),
                      backgroundColor: Colors.deepPurple,
                      content: Text(
                          'This is a snackbar showing that you made an error and it sincerely hopes that you will not do it again'));
                  ScaffoldMessenger.of(context).showSnackBar(snackie);
                },
                child: Text(
                  'Show me the Snackbar',
                  style: TextStyle(fontSize: 25),
                ))),
      ),
    );
  }
}
