import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/constants.dart';
import '/providers.dart';
import '/widgets/button.dart';
import '/widgets/my_appbar.dart';
import '/widgets/app_drawer.dart';

class Dashboard extends ConsumerWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double? dailyMass = ref.watch(bodyMass);
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: const MyAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(
                  height: 0.19,
                  width: 0.42,
                  colour: Colors.white,
                  pressed: () => Beamer.of(context).beamToNamed('/mass'),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Body Mass',
                        style: standardText,
                      ),
                      Text(
                        '$dailyMass kg',
                        style: largeText,
                      ),
                    ],
                  ),
                ),
                Button(
                  height: 0.19,
                  width: 0.42,
                  colour: Colors.white,
                  pressed: () {
                    //Show modal bottom sheet with input for fluid intake & restriction
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        'Fluid Intake',
                        style: standardText,
                      ),
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
              pressed: () => Beamer.of(context).beamToNamed('/chart'),
              height: 0.19,
              width: 0.89,
              colour: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    'Chart',
                    style: standardText,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(
                  pressed: () => Beamer.of(context).beamToNamed('/symptoms'),
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
                  pressed: () => Beamer.of(context).beamToNamed('/obj'),
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
          ],
        ),
      ),
    );
  }
}
