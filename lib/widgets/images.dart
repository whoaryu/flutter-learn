import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class imagine extends StatelessWidget {
  const imagine({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Henry'),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 150,
          child: CachedNetworkImage(
            imageUrl:
                "https://play-lh.googleusercontent.com/aoZbNBnJec76jfnFqZDyG-is6wUfunryWRCM4AJ3_vvQ3KsFFi-2WfzsjMeSLKe0_g",
            placeholder: (context, url) =>
                Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}

// decoration: BoxDecoration(
//     boxShadow: [
//       BoxShadow(
//           blurRadius: 5, color: Colors.white38, spreadRadius: 10)
//     ],
//     image: DecorationImage(
//       image: NetworkImage(
//         'https://play-lh.googleusercontent.com/aoZbNBnJec76jfnFqZDyG-is6wUfunryWRCM4AJ3_vvQ3KsFFi-2WfzsjMeSLKe0_g',
//       ),
//       fit: BoxFit.cover,
//     ),
//     color: Colors.red,
//     borderRadius: BorderRadius.circular(20)),
