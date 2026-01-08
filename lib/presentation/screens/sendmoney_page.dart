import 'package:flutter/material.dart';
import 'package:telebirr/core/theme/theme.dart';
import 'package:telebirr/presentation/widgets/my_carousel.dart';
import 'package:telebirr/presentation/widgets/mybutton.dart';
import 'package:telebirr/presentation/widgets/mytextfield.dart';

class SendMoneyWithTeleBirr extends StatefulWidget {
  const SendMoneyWithTeleBirr({super.key});

  @override
  State<SendMoneyWithTeleBirr> createState() => _SendMoneyWithTeleBirrState();
}

class _SendMoneyWithTeleBirrState extends State<SendMoneyWithTeleBirr> {
  TextEditingController controller = TextEditingController();
  bool isValidNumber = false;
  @override
  Widget build(BuildContext context) {
    setState(() {
      if ((controller.text.startsWith('9') ||
          controller.text.startsWith('9'))) {
        isValidNumber = true;
      }
    });

    return Scaffold(
      backgroundColor: theme.colorScheme.shadow,
      appBar: AppBar(
        title: Text("Send Money To individual"),
        backgroundColor: theme.colorScheme.shadow,
      ),
      body: Column(
        children: [
          MyCarousel(
            color: theme.colorScheme.shadow,
            viewportFraction: 1,
            indicatorRadius: 4,
          ),
          Container(
            decoration: BoxDecoration(
              color: theme.colorScheme.secondary,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.all(15),

            padding: EdgeInsets.all(15),
            child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Please Enter Mobile Number",
                  style: theme.textTheme.labelMedium,
                ),
                MyTextField(
                  // suffix: Row(
                  //   children: [
                  //     Icon(
                  //       Icons.qr_code_scanner_outlined,
                  //       color: theme.colorScheme.primary,
                  //     ),
                  //     Icon(
                  //       Icons.quick_contacts_dialer_outlined,
                  //       color: theme.colorScheme.primary,
                  //     ),
                  //   ],
                  // ),
                  borderColor: theme.colorScheme.primary,
                  label: '',
                  controller: controller,
                ),
                MyButton(
                  color: isValidNumber
                      ? theme.colorScheme.outline
                      : theme.colorScheme.outline.withAlpha(50),
                  onTap: () {},
                  child: Text('Next', style: theme.textTheme.displayMedium),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Recent"),
                Icon(Icons.delete_rounded, color: theme.colorScheme.tertiary),
              ],
            ),
          ),

          ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 1,
                ),
                child: ListTile(
                  tileColor: theme.colorScheme.secondary,
                  trailing: Icon(
                    Icons.chevron_right,
                    color: theme.colorScheme.tertiary,
                  ),
                  leading: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: theme.colorScheme.scrim,
                    ),

                    child: Icon(
                      Icons.person,
                      color: theme.colorScheme.secondary,
                      size: 30,
                    ),
                  ),
                  title: Text('Atinaf', style: theme.textTheme.labelMedium),
                ),
              );
            },
            shrinkWrap: true,
            itemCount: 5,
          ),
        ],
      ),
    );
  }
}
