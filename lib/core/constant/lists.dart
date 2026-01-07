import 'package:flutter/material.dart';
import 'package:telebirr/core/theme/theme.dart';

class AppLists {
  static final List<String> languages = ["English", "አማርኛ", "ትግርኛ", "Oromo"];
}

class ExampleServices {
  static final List services = [
    [
      "Send Money",
      Icon(Icons.payment_rounded, color: theme.colorScheme.primary),
    ],
    [
      "Cash In/Out",
      Icon(
        Icons.account_balance_wallet_outlined,
        color: theme.colorScheme.primary,
      ),
    ],
    [
      "Zemen Gebeya",
      Icon(Icons.receipt_long_sharp, color: theme.colorScheme.primary),
    ],
    [
      "Cash In/Out",
      Icon(
        Icons.account_balance_wallet_outlined,
        color: theme.colorScheme.primary,
      ),
    ],
    [
      "Airtime buy Package",
      Icon(Icons.payment_rounded, color: theme.colorScheme.primary),
    ],
    [
      "Zemen Gebeya",
      Icon(Icons.receipt_long_sharp, color: theme.colorScheme.primary),
    ],
    [
      "Financial service with dashen",
      Icon(Icons.account_balance_outlined, color: theme.colorScheme.primary),
    ],
    [
      "Financial service with CBE",
      Icon(Icons.home_mini_rounded, color: theme.colorScheme.primary),
    ],
  ];
}
