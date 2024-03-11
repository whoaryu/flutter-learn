import 'package:flutter/material.dart';

class draw extends StatelessWidget {
  const draw({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: ListView(
            children: [
              DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: Container(
                      //color: Colors.red,
                      padding: EdgeInsets.all(5),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 45,
                            backgroundImage: NetworkImage(
                                'https://i.pinimg.com/474x/0a/a8/58/0aa8581c2cb0aa948d63ce3ddad90c81.jpg'),
                          ),
                          SizedBox(width: 15),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Aryan Shah',
                                style: TextStyle(fontSize: 21),
                              ),
                              Text('aryanpshah1@gmail.com'),
                              Text('SAP - 4000220129')
                            ],
                          )
                        ],
                      ))),
              ListTile(leading: Icon(Icons.folder), title: Text('My Files')),
              ListTile(
                  leading: Icon(Icons.group), title: Text('Shared With Me')),
              ListTile(leading: Icon(Icons.delete), title: Text('Trash')),
              ListTile(leading: Icon(Icons.star), title: Text('Starred')),
              ListTile(leading: Icon(Icons.upload), title: Text('Upload')),
              ListTile(leading: Icon(Icons.logout), title: Text('Logout')),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text('Learning drawers'),
      ),
      body: Container(
        child: Center(child: Text('Hey there')),
      ),
    );
  }
}
