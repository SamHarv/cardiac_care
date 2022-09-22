import 'package:flutter/material.dart';

import 'package:chf_app/home_page.dart';
import 'package:chf_app/my_appbar.dart';
import 'package:chf_app/rectangle_button.dart';
import 'package:chf_app/app_drawer.dart';

class PrivacyPolicy extends StatelessWidget {
  static const String id = 'privacy_policy';
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
              const SizedBox(
                child: Text(
                  'Privacy Policy',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                child: Text(
                  'Input privacy policy here...',
                ),
              ),
              RectangleButton(
                pressed: () {
                  Navigator.pop(context);
                },
                buttonText: 'Return',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
