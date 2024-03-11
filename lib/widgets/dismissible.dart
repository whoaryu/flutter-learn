import 'package:flutter/material.dart';

class dismiss extends StatefulWidget {
  const dismiss({super.key});

  @override
  State<dismiss> createState() => _dismissState();
}

class _dismissState extends State<dismiss> {
  List<String> fruits = [
    'Orange',
    'Apple',
    'Banana',
    'Strawberry',
    'Grapes',
    'Pineapple',
    'Sweet Lime',
    'Cherry',
    'Litchi',
    'Peach'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Yeh hai dismissible'),
          backgroundColor: Colors.deepOrange,
        ),
        body: ListView.builder(
            itemCount: fruits.length,
            itemBuilder: (context, index) {
              final fruit = fruits[index];
              return Dismissible(
                  onDismissed: (direction) {
                    if (direction == DismissDirection.startToEnd) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        // padding: EdgeInsets.all(5),
                        duration: const Duration(milliseconds: 1000),
                        content: Text(
                          fruits[index],
                          style: TextStyle(color: Colors.white),
                        ),
                        backgroundColor: Colors.green,
                      ));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        // padding: EdgeInsets.all(5),
                        duration: const Duration(milliseconds: 1000),
                        content: Text(
                          fruits[index],
                          style: TextStyle(color: Colors.white),
                        ),
                        backgroundColor: Colors.red,
                      ));
                    }
                  },
                  key: Key(fruit),
                  background: Container(
                    color: Colors.green,
                  ),
                  secondaryBackground: Container(
                    color: Colors.red,
                  ),
                  child: Card(
                    child: ListTile(
                      title: Text(fruits[index]),
                    ),
                  ));
            }));
  }
}
