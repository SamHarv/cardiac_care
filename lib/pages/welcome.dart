import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

import '/constants.dart';

import '/widgets/app_drawer.dart';
import '/widgets/button.dart';
import '/widgets/my_appbar.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: const AppDrawer(),
      appBar: const MyAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('HF App'),
            Hero(
              tag: 'logo',
              child: Image.asset(
                'images/1.png',
                height: MediaQuery.of(context).size.height * 0.3,
              ),
            ),
            Column(
              children: [
                const Text('New User?'),
                Button(
                  pressed: () =>
                      Beamer.of(context).beamToNamed('/registration'),
                  height: 0.09,
                  width: 0.42,
                  colour: Colors.white,
                  child: const Center(
                    child: Text(
                      'Register',
                      style: standardText,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                const Text('Already Registered?'),
                Button(
                  pressed: () => Beamer.of(context).beamToNamed('/signin'),
                  height: 0.09,
                  width: 0.42,
                  colour: Colors.white,
                  child: const Center(
                    child: Text(
                      'Sign In',
                      style: standardText,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
