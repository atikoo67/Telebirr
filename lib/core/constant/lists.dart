import 'package:flutter/material.dart';
import 'package:telebirr/core/theme/theme.dart';
import 'package:telebirr/presentation/screens/features/sendmoney_page.dart';

class AppLists {
  static final List<String> languages = ["English", "አማርኛ", "ትግርኛ", "Oromo"];
}

class ExampleServices {
  static final List services = [
    [
      "Send Money",
      Icon(Icons.payment_rounded, color: theme.colorScheme.primary),
      SendMoneyWithTeleBirr(),
    ],
    [
      "Cash In/Out",
      Icon(
        Icons.account_balance_wallet_outlined,
        color: theme.colorScheme.primary,
      ),
      SendMoneyWithTeleBirr(),
    ],
    [
      "Zemen Gebeya",
      Icon(Icons.receipt_long_sharp, color: theme.colorScheme.primary),
      SendMoneyWithTeleBirr(),
    ],
    [
      "Cash In/Out",
      Icon(
        Icons.account_balance_wallet_outlined,
        color: theme.colorScheme.primary,
      ),
      SendMoneyWithTeleBirr(),
    ],
    [
      "Airtime buy Package",
      Icon(Icons.payment_rounded, color: theme.colorScheme.primary),
      SendMoneyWithTeleBirr(),
    ],
    [
      "Zemen Gebeya",
      Icon(Icons.receipt_long_sharp, color: theme.colorScheme.primary),
      SendMoneyWithTeleBirr(),
    ],
    [
      "Financial service with dashen",
      Icon(Icons.account_balance_outlined, color: theme.colorScheme.primary),
      SendMoneyWithTeleBirr(),
    ],
    [
      "Financial service with CBE",
      Icon(Icons.home_mini_rounded, color: theme.colorScheme.primary),
      SendMoneyWithTeleBirr(),
    ],
  ];
}
