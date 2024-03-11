import 'package:flutter/material.dart';

class alerts extends StatelessWidget {
  const alerts({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'RED ALERT RED ALERT RED ALERT',
          style: TextStyle(color: Colors.red),
        ),
        backgroundColor: Colors.lime,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              _showmyDialog(context);
            },
            child: Text(
              'Bhago Idhar Se!!',
              style: TextStyle(fontSize: 25),
            )),
      ),
    );
  }
}

Future<void> _showmyDialog(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          title: Text('This is an alert'),
          content: SingleChildScrollView(
            child: ListBody(children: [
              Text('My name is aryan'),
              Text('I am learning how to make alerts')
            ]),
          ),
          actions: [
            TextButton(onPressed: () {}, child: Text('Approve')),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancel')),
          ],
        );
      });
}
//          ]),
//         );
//       });
// }
// )
//     ]),
//   ),
//   );
//   });
// }
