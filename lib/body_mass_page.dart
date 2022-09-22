import 'package:flutter/material.dart';

import 'package:chf_app/my_appbar.dart';
import 'package:chf_app/rectangle_button.dart';
import 'package:chf_app/app_drawer.dart';

class BodyMassPage extends StatelessWidget {
  static const String id = 'body_mass_page';

  const BodyMassPage({super.key});

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
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(
                    width: 250.0,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        labelText: 'Enter Body Mass',
                        labelStyle: TextStyle(
                          fontSize: 23.0,
                        ),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    'kg',
                    style: TextStyle(
                      fontSize: 28.0,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  RectangleButton(
                    buttonText: 'Save',
                    pressed: () {
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
