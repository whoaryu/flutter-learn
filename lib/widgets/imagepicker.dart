import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class imagepick extends StatefulWidget {
  const imagepick({super.key});
  _imagepickState createState() => _imagepickState();
}

class _imagepickState extends State<imagepick> {
  XFile? file;
  ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('picking images'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 0.5 * (MediaQuery.of(context).size.height),
              width: MediaQuery.of(context).size.width,
              color: Colors.amber,
              child: Center(
                  child: file == null
                      ? Text('Image not picked')
                      : Image.file(
                          File(file!.path),
                          fit: BoxFit.cover,
                        )),
            ),
            ElevatedButton(
                onPressed: () async {
                  final XFile? photo =
                      await _picker.pickImage(source: ImageSource.gallery);
                  setState(() {
                    file = photo;
                  });
                  print('Image Picked');
                },
                child: Text('Press me'))
          ],
        ),
      ),
    );
  }
}
