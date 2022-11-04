import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  Post({super.key, required this.name});

  String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //user details
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey[300],
            ),
            const SizedBox(
              width: 10,
            ),
            Text(name),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        //Post
        Container(
          height: 350,
          color: Colors.grey[300],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
