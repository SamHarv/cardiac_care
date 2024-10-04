import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../main.dart';
import '../models/entry.dart';
import '/constants.dart';
import '/providers.dart';
import '/widgets/button.dart';
import '/widgets/my_appbar.dart';
import '/widgets/app_drawer.dart';

//Restructure to display readings  but have buttons to either adjust baseline or
//record daily entries
//Display mass, fluid intake, baseline mass, fluid restriction

class Dashboard extends ConsumerStatefulWidget {
  const Dashboard({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DashboardState();
}

class _DashboardState extends ConsumerState<Dashboard> {
  late Stream<List<Entry>> streamEntries;

  @override
  void initState() {
    streamEntries = objectBox.getEntries();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                  pressed: () => Beamer.of(context).beamToNamed('/daily'),
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
                  pressed: () => Beamer.of(context).beamToNamed('/baseline'),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
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
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
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
