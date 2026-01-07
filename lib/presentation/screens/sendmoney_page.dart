import 'package:flutter/material.dart';
import 'package:telebirr/core/theme/theme.dart';
import 'package:telebirr/presentation/widgets/my_carousel.dart';
import 'package:telebirr/presentation/widgets/mybutton.dart';
import 'package:telebirr/presentation/widgets/mytextfield.dart';

class SendMoneyWithTeleBirr extends StatelessWidget {
  const SendMoneyWithTeleBirr({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController? controller;
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
            margin: EdgeInsets.all(15),
            color: theme.colorScheme.secondary,
            padding: EdgeInsets.all(15),
            child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Please Enter Mobile Number",
                  style: theme.textTheme.labelSmall,
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
                  onTap: () {},
                  child: Text('Next', style: theme.textTheme.displayMedium),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Recent"),
              Icon(Icons.delete_rounded, color: theme.colorScheme.tertiary),
            ],
          ),

          ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                trailing: Icon(Icons.chevron_right),
                leading: Container(
                  color: theme.colorScheme.scrim,
                  child: Icon(Icons.person, color: theme.colorScheme.secondary),
                ),
                title: Text('Atinaf', style: theme.textTheme.labelMedium),
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
