import 'package:flutter/material.dart';

class MyMenuButton extends StatefulWidget {
  final List<String> languages;
  const MyMenuButton({super.key, required this.languages});

  @override
  State<MyMenuButton> createState() => _MyMenuButtonState();
}

class _MyMenuButtonState extends State<MyMenuButton> {
  String? selectedLang;
  FocusNode? childFocusNode;
  FocusNode? focusNode;

  @override
  void initState() {
    selectedLang = widget.languages.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return MenuAnchor(
      childFocusNode: childFocusNode,
      menuChildren: widget.languages
          .map(
            (language) => MenuItemButton(
              onPressed: () {
                setState(() {
                  selectedLang = language;
                });
              },
              child: Text(language),
            ),
          )
          .toList(),

      builder:
          (BuildContext context, MenuController controller, Widget? child) {
            return TextButton(
              focusNode: focusNode,
              onPressed: () {
                if (controller.isOpen) {
                  controller.close();
                } else {
                  controller.open();
                }
              },
              child: Row(
                children: [
                  Text(selectedLang!, style: theme.textTheme.labelMedium),
                  Icon(
                    Icons.arrow_drop_down_rounded,
                    color: theme.textTheme.labelMedium!.color,
                  ),
                ],
              ),
            );
          },
    );
  }
}
