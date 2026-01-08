import 'package:accordion/accordion.dart';
import 'package:flutter/material.dart';
import 'package:telebirr/core/theme/theme.dart';
import 'package:telebirr/presentation/widgets/squarecard.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  int? expandedIndex;
  final categories = [
    "Utility",
    "Transport Service",
    "Entertainment Service",
    "E-commerce",
    "Event and Ticketing",
    "Education fee",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.shadow,
      appBar: AppBar(
        actionsPadding: EdgeInsets.symmetric(horizontal: 15),
        foregroundColor: theme.colorScheme.secondary,
        backgroundColor: theme.colorScheme.primary,
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
                  child: Accordion(
                    headerBackgroundColorOpened: theme.colorScheme.outline,
                    headerBackgroundColor: theme.colorScheme.secondary,

                    contentBorderColor: Colors.transparent,
                    openAndCloseAnimation: false,
                    children: [
                      for (int i = 0; i < categories.length; i++)
                        AccordionSection(
                          rightIcon: Icon(
                            Icons.keyboard_arrow_down,
                            color: expandedIndex == i
                                ? theme.colorScheme.secondary
                                : theme.colorScheme.tertiary,
                          ),
                          headerPadding: EdgeInsets.only(
                            left: 40,
                            top: 15,
                            bottom: 15,
                            right: 10,
                          ),
                          isOpen: expandedIndex == i,
                          header: Text(
                            categories[i],
                            style: expandedIndex == i
                                ? theme.textTheme.displayMedium
                                : theme.textTheme.labelMedium,
                          ),
                          content: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GridView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4,
                                  ),
                              itemCount: 9,
                              itemBuilder: (context, index) {
                                return SquareCard(
                                  title: 'Service ${index + 1}',
                                  image: Icon(
                                    Icons.payment,
                                    color: theme.colorScheme.primary,
                                  ),
                                );
                              },
                            ),
                          ),
                          onOpenSection: () {
                            setState(() {
                              expandedIndex = i;
                            });
                          },
                          onCloseSection: () {
                            setState(() {
                              expandedIndex = null;
                            });
                          },
                        ),
                    ],
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
