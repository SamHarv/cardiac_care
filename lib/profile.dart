import 'package:chf_app/home_page.dart';
import 'package:flutter/material.dart';

import 'package:chf_app/app_drawer.dart';
import 'package:chf_app/my_appbar.dart';
import 'package:chf_app/rectangle_button.dart';

class ProfilePage extends StatelessWidget {
  static const String id = 'profile';
  const ProfilePage({super.key});

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
                children: const [
                  SizedBox(
                    width: 250.0,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        labelText: 'Username',
                        labelStyle: TextStyle(
                          fontSize: 23.0,
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  SizedBox(
                    width: 250.0,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          fontSize: 23.0,
                        ),
                      ),
                      keyboardType: TextInputType.visiblePassword,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 20.0,
              ),
              Column(
                children: [
                  RectangleButton(
                    buttonText: 'Log In',
                    pressed: () {
                      Navigator.pushNamed(context, HomePage.id);
                      //Save input and link to graph and home page
                    },
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  RectangleButton(
                    buttonText: 'Clear',
                    pressed: () {
                      //clear input
                    },
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
