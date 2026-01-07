import 'package:flutter/material.dart';
import 'package:telebirr/core/theme/theme.dart';
import 'package:telebirr/presentation/widgets/squarecard.dart';

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
        actionsPadding: EdgeInsets.symmetric(horizontal: 15),
        foregroundColor: theme.colorScheme.secondary,
        backgroundColor: theme.colorScheme.primary,
        title: Text("Apps"),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [Icon(Icons.search)],
      ),
      backgroundColor: theme.colorScheme.shadow,
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(15.0),
            sliver: SliverGrid.builder(
              itemCount: 21,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 1,
              ),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3),
                  child: SquareCard(
                    image: Image.asset(
                      'assets/ethiotelecom logo.jpg',

                      cacheHeight: 45,
                    ),
                    title: "My ethiotel",
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
