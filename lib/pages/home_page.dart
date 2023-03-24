import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../constants.dart';

import '../widgets/button.dart';
import '../widgets/my_appbar.dart';
import '../widgets/app_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: const MyAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Button(
              pressed: () => context.go('/telehealth'),
              height: 0.19,
              width: 0.89,
              colour: Colors.white,
              //Color.fromARGB(255, 0, 74, 173),
              child:
                  const Center(child: Text('Telehealth', style: standardText)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(
                  height: 0.19,
                  width: 0.42,
                  colour: Colors.white,
                  pressed: () => context.go('/massdashboard'),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        'Body Mass',
                        style: standardText,
                      ),
                      Text(
                        '85.4 kg',
                        style: largeText,
                      ),
                    ],
                  ),
                ),
                Button(
                  height: 0.19,
                  width: 0.42,
                  colour: Colors.white,
                  pressed: () => context.go('/fluiddashboard'),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text('Fluid Intake', style: standardText),
                      Text(
                        '1345 ml',
                        style: largeText,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Button(
              pressed: () => context.go('/connect'),
              height: 0.19,
              width: 0.89,
              colour: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'Connect Device',
                    style: standardText,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(
                        Icons.watch,
                        color: Colors.red,
                        size: 40,
                      ),
                      Icon(
                        Icons.scale,
                        color: Colors.green,
                        size: 40,
                      ),
                      Icon(
                        Icons.local_drink,
                        color: Colors.blue,
                        size: 40,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(
                  pressed: () => context.go('/symptoms'),
                  height: 0.19,
                  width: 0.42,
                  colour: Colors.white,
                  child: const Center(
                    child: Text(
                      'Symptom\nTracker ',
                      style: standardText,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Button(
                  pressed: () => context.go('/obj'),
                  height: 0.19,
                  width: 0.42,
                  colour: Colors.white,
                  child: const Center(
                    child: Text(
                      'Cardiac\nMeasures',
                      style: standardText,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            TextButton(
              onPressed: () => context.go('/privacy'),
              child: const Text(
                'Privacy Policy',
                style: TextStyle(
                    color: Colors.black, decoration: TextDecoration.underline),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
