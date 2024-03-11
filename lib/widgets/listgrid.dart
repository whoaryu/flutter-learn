import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({super.key});
  _ListGridState createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {
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
  Map fruits_person = {
    'fruits': [
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
    ],
    'names': [
      'Karan',
      'Arjun',
      'Jaiwin',
      'Ram',
      'Laxman',
      'Dev',
      'Aryan',
      'Rohan',
      'Manas',
      'Purohit'
    ]
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gist and Lrid'),
        backgroundColor: Colors.pink,
        elevation: 0,
      ),
      body: Container(
          //     child: ListView.builder(
          //   itemCount: fruits.length,
          //   itemBuilder: (context, index) {
          //     return Card(
          //       child: ListTile(
          //           leading: Icon(Icons.person),
          //           title: Text(fruits_person['fruits'][index]),
          //           subtitle: Text(fruits_person['names'][index])),
          //     );
          //   },
          // )
          child: GridView.builder(
              itemCount: fruits.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (count, index) {
                return Card(
                  child: Center(child: Text(fruits[index])),
                );
              }
              )
              ),
    );
  }
}

/* 
Card(
              child: ListTile(title: Text('Orange'), subtitle: Text('Karan')),
            ),
            Card(
              child: ListTile(title: Text('Apple'), subtitle: Text('Arjun')),
            ),
            Card(
              child: ListTile(title: Text('Banana'), subtitle: Text('Jaiwin')),
            ),
            Card(
              child: ListTile(title: Text('Strawberry'), subtitle: Text('Ram')),
            ),
            Card(
              child: ListTile(title: Text('Grapes'), subtitle: Text('Laxman')),
            ),
            Card(
              child:
                  ListTile(title: Text('Pineapple'), subtitle: Text('Karan')),
            ),
            Card(
              child:
                  ListTile(title: Text('Sweet Lime'), subtitle: Text('Aryan')),
            ),
            Card(
              child: ListTile(title: Text('Cherry'), subtitle: Text('Rohan')),
            ),
            Card(
              child: ListTile(title: Text('Litchi'), subtitle: Text('Manas')),
            ),
            Card(
              child: ListTile(title: Text('Peach'), subtitle: Text('Purohit')),
            ),



            GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 20,
              childAspectRatio: 9 / 16),
          children: [
            Card(child: Center(child: Text('Orange'))),
            Card(child: Center(child: Text('Apple'))),
            Card(child: Center(child: Text('Banana'))),
            Card(child: Center(child: Text('Grapes'))),
            Card(child: Center(child: Text('Pineapple'))),
            Card(child: Center(child: Text('Strawberry'))),
            Card(child: Center(child: Text('Peach'))
            */
