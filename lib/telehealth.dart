import 'package:flutter/material.dart';

import 'package:chf_app/my_appbar.dart';
import 'package:chf_app/rectangle_button.dart';
import 'package:chf_app/app_drawer.dart';

class Telehealth extends StatelessWidget {
  static const String id = 'telehealth';
  const Telehealth({super.key});

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
              const Icon(
                Icons.account_circle_rounded,
                size: 200.0,
                color: Colors.purple,
              ),
              const SizedBox(
                child: Text(
                  'Speak With Your Clinician',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              RectangleButton(
                pressed: () {
                  //Navigator.pop(context);
                },
                buttonText: 'Video Call',
              ),
              RectangleButton(
                pressed: () {
                  //Navigator.pop(context);
                },
                buttonText: 'Chat',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
