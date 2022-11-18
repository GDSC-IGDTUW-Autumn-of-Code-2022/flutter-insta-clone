import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.lock),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('abc_123'),
            Row(
              children: const [
                Icon(Icons.arrow_drop_down_rounded),
                SizedBox(
                  width: 110,
                ),
                Icon(Icons.add),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.table_rows_rounded),
                SizedBox(
                  width: 20,
                ),
              ],
            )
          ],
        ),
      ),
      body: Row(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.fromLTRB(20, 20, 20, 40),
            child: const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey,
            ),
          ),
          const Text(
            "Posts",
            style: TextStyle(fontSize: 15),
          ),
          const SizedBox(
            width: 15,
          ),
          const Text(
            "Followers",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          const Text(
            "Following",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
