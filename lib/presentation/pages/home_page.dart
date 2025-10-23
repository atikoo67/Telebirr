import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              Row(),
              Row(children: [Text('Balance (ETB)'), Icon(Icons.visibility)]),
              Text("******"),
              Row(),
            ],
          ),
          CustomScrollView(slivers: [SliverToBoxAdapter(child: Column())]),
        ],
      ),
    );
  }
}
