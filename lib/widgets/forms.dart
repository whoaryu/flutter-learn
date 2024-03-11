import 'package:flutter/material.dart';

class form extends StatefulWidget {
  const form({super.key});
  _formState createState() => _formState();
}

class _formState extends State<form> {
  String fname = '';
  String lname = '';
  String email = '';
  String password = '';
  final formkey = GlobalKey<FormState>();

  //---------------------Functions---------------
  trysubmit() {
    final isvalid = formkey.currentState!.validate();
    if (isvalid) {
      formkey.currentState!.save();
      submitform();
    } else {
      print('Error');
    }
  }

  submitform() {
    print(fname);
    print(lname);
    print(email);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Form List'),
        ),
        body: Center(
            child: Container(
          margin: EdgeInsets.all(10),
          child: Form(
              key: formkey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Enter first name'),
                    key: ValueKey('fname'),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return 'First name should not be empty';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      fname = value.toString();
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Enter last name'),
                    key: ValueKey('lname'),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return 'Last name should not be empty';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      lname = value.toString();
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Enter Email'),
                    key: ValueKey('email'),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return 'Email should not be empty';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      email = value.toString();
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(hintText: 'Enter password'),
                    key: ValueKey('password'),
                    validator: (value) {
                      if (value.toString().length <= 5) {
                        return 'Minimum length of password should be 6';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      password = value.toString();
                    },
                  ),
                  TextButton(
                      onPressed: () {
                        trysubmit();
                      },
                      child: Text('Submit')),
                ],
              )),
        )));
  }
}
