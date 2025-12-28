import 'package:flutter/material.dart';
import 'package:telebirr/core/theme/theme.dart';

class AppsPage extends StatefulWidget {
  const AppsPage({super.key});

  @override
  State<AppsPage> createState() => _AppsPageState();
}

class _AppsPageState extends State<AppsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.primary,
        title: Text("Apps"),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [Icon(Icons.search)],
      ),
    );
  }
}
