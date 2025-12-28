import 'package:flutter/material.dart';
import 'package:telebirr/core/theme/theme.dart';
import 'package:telebirr/presentation/widgets/squarecard.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [Icon(Icons.search)],
      ),
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: ExpansionPanelList.radio(
                    materialGapSize: 20,
                    dividerColor: Colors.transparent,
                    children: List.generate(10, (index) {
                      return ExpansionPanelRadio(
                        value: index,
                        headerBuilder: (context, isExpanded) => ListTile(
                          title: Text('Tile $index'),
                          tileColor: theme.colorScheme.outline,
                        ),
                        body: Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: List.generate(4, (gridIndex) {
                            return SizedBox(
                              width: 100,
                              child: SquareCard(
                                image: Icon(
                                  Icons.monetization_on_outlined,
                                  color: theme.primaryColor,
                                ),
                                title: "Telebirr service",
                              ),
                            );
                          }),
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
