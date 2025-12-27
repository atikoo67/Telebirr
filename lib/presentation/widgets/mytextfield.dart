import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String label;
  final TextEditingController? controller;

  const MyTextField({super.key, required this.label, required this.controller});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextField(
      controller: controller,

      style: theme.textTheme.titleSmall,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: theme.colorScheme.tertiary),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text('+251', style: theme.textTheme.titleSmall),
        ),
        prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
        // hintText: hintText,
        contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 13),
        filled: true,
        fillColor: theme.colorScheme.secondary,
        hintText: label,
      ),
      onChanged: (value) {},
    );
  }
}
