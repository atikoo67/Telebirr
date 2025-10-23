import 'package:flutter/material.dart';
import 'package:telebirr/presentation/components/mybutton.dart';
import 'package:telebirr/presentation/components/mymenubutton.dart';
import 'package:telebirr/presentation/components/mytextfield.dart';
import 'package:telebirr/presentation/components/textbutton.dart';
import 'package:telebirr/presentation/pages/authentication_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  List<String> languages = ["English", "አማርኛ", "ትግርኛ", "Oromo"];

  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/ethiotelecom.png', height: 30),
              Image.asset('assets/telebirr full.jpg', height: 30),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [MyMenuButton(languages: languages)],
              ),
              Column(
                spacing: 15,
                children: [
                  Text(
                    "Welcome to telebirr SuperApp!",
                    style: theme.textTheme.headlineLarge!.copyWith(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "All-in-One",
                    style: theme.textTheme.headlineLarge!.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "Login",
                        style: theme.textTheme.labelMedium!.copyWith(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 3,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                        ),
                        child: Container(),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 10,
                    children: [
                      Text("Mobile Number", style: theme.textTheme.labelSmall),
                      MyTextField(
                        label: 'Enter Mobile Number',
                        controller: controller,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  MyButton(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => AuthenticationPage(),
                        ),
                      );
                    },
                    child: Text(
                      "Next",
                      style: theme.textTheme.displayMedium!.copyWith(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Row(
                    spacing: 20,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: theme.textTheme.labelMedium,
                      ),
                      MyTextButton(
                        text: "Create New Account",
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MyTextButton(text: "teleHub", onPressed: () {}),
                      MyTextButton(text: "Help", onPressed: () {}),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  MyTextButton(text: 'Terms and Conditions', onPressed: () {}),
                  Text(
                    '@2023 Ethio telecom.all rights reserved 1.0.0 version',
                    style: theme.textTheme.labelSmall,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
