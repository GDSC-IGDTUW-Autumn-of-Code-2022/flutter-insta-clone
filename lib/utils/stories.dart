import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  const Stories({super.key, required this.name});

  final name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            CircleAvatar(
              radius: 35,
              backgroundColor: Colors.grey[400],
            ),
            const SizedBox(
              height: 5,
            ),
            Text(name),
          ],
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
