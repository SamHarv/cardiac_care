import 'package:flutter/material.dart';

import '../constants.dart';

import '../widgets/button.dart';
import '../widgets/my_appbar.dart';
import '../widgets/app_drawer.dart';

class Telehealth extends StatelessWidget {
  const Telehealth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: const MyAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(
              Icons.account_circle_rounded,
              size: 200.0,
              color: Color.fromARGB(255, 0, 74, 173),
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
            Button(
              pressed: () {},
              height: 0.09,
              width: 0.42,
              colour: Colors.white,
              child: const Center(
                child: Text(
                  'Video Call',
                  style: standardText,
                ),
              ),
            ),
            Button(
              pressed: () {},
              height: 0.09,
              width: 0.42,
              colour: Colors.white,
              child: const Center(
                child: Text(
                  'Chat',
                  style: standardText,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
