import 'package:chf_app/home_page.dart';
import 'package:chf_app/profile.dart';
import 'package:flutter/material.dart';

import 'package:chf_app/app_drawer.dart';
import 'package:chf_app/my_appbar.dart';
import 'package:chf_app/rectangle_button.dart';
import 'package:chf_app/privacy_policy.dart';

class Welcome extends StatelessWidget {
  static const String id = 'welcome';
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        drawer: const AppDrawer(),
        appBar: const MyAppBar(id: id),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Hero(
                tag: 'logo',
                child: Image.asset(
                  'images/cardiac.png',
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
              ),
              Column(
                children: [
                  RectangleButton(
                    buttonText: 'Create User',
                    pressed: () {
                      Navigator.pushNamed(context, ProfilePage.id);
                    },
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  RectangleButton(
                    buttonText: 'Log In',
                    pressed: () {
                      Navigator.pushNamed(context, ProfilePage.id);
                    },
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, HomePage.id);
                    },
                    child: const Text(
                      'Skip for now',
                      style: TextStyle(
                          color: Colors.black,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, PrivacyPolicy.id);
                    },
                    child: const Text(
                      'Privacy Policy',
                      style: TextStyle(
                          color: Colors.black,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
