import 'package:flutter/material.dart';
import 'package:telebirr/core/theme/theme.dart';
import 'package:telebirr/presentation/screens/main_page.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({super.key});

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(backgroundColor: theme.colorScheme.shadow),
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.2,
              decoration: BoxDecoration(color: theme.colorScheme.shadow),
              child: Column(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 32,
                    backgroundColor: theme.colorScheme.scrim,
                    child: Icon(Icons.person, size: 60),
                  ),
                  Text(
                    '+251****43',
                    style: theme.textTheme.labelMedium!.copyWith(fontSize: 18),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 80),
                    child: Column(
                      spacing: 8,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: theme.colorScheme.primary.withValues(
                            alpha: 0.1,
                          ),
                          child: Icon(
                            Icons.fingerprint_rounded,
                            color: theme.colorScheme.primary,
                            size: 40,
                          ),
                        ),
                        Text(
                          'Login with fingerprint',
                          style: theme.textTheme.headlineMedium,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MainPage()),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Login with another option',
                            style: theme.textTheme.labelMedium,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 14,
                            color: theme.textTheme.labelMedium!.color!
                                .withValues(alpha: 0.6),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
