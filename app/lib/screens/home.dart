import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/post.dart';
import 'package:instagram_clone/utils/stories.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> people = [
    'virat.kohli',
    'iamsrk',
    'kajol',
    'karanjohar',
    'katrinakaif',
    'aliaabhatt',
    'sonamkapoor',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Instagram'),
              Row(
                children: const [
                  Icon(Icons.add),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.favorite),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.share),
                ],
              )
            ],
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              //Stories
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    return Stories(name: people[index]);
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 500,
                child: ListView.builder(
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    return Post(name: people[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
