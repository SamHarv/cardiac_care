import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../constants.dart';

import '../widgets/button.dart';
import '../widgets/my_appbar.dart';
import '../widgets/app_drawer.dart';

class SymptomTracker extends StatefulWidget {
  const SymptomTracker({super.key});

  @override
  State<SymptomTracker> createState() => _SymptomTrackerState();
}

class _SymptomTrackerState extends State<SymptomTracker> {
  bool switchedSOB = false;
  bool switchedOedema = false;
  bool switchedChest = false;
  bool switchedPalpitations = false;
  bool switchedFatigue = false;
  bool switchedDizziness = false;
  bool switchedStress = false;
  bool switchedCoughing = false;
  bool switchedAppetite = false;
  bool switchedConstipation = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: const MyAppBar(),
      body: ListView(
        children: [
          Card(
            shadowColor: Colors.grey,
            elevation: 3.0,
            child: SwitchListTile(
              title: const Text(
                'Shortness of Breath',
                style: TextStyle(fontSize: 22.0),
              ),
              value: switchedSOB,
              onChanged: (bool value) {
                setState(() {
                  switchedSOB = value;
                });
              },
            ),
          ),
          Card(
            shadowColor: Colors.grey,
            elevation: 3.0,
            child: SwitchListTile(
              title: const Text(
                'Oedema',
                style: TextStyle(fontSize: 22.0),
              ),
              value: switchedOedema,
              onChanged: (bool value) {
                setState(() {
                  switchedOedema = value;
                });
              },
            ),
          ),
          Card(
            shadowColor: Colors.grey,
            elevation: 3.0,
            child: SwitchListTile(
              title: const Text(
                'Chest Pain',
                style: TextStyle(fontSize: 22.0),
              ),
              value: switchedChest,
              onChanged: (bool value) {
                setState(() {
                  switchedChest = value;
                });
              },
            ),
          ),
          Card(
            shadowColor: Colors.grey,
            elevation: 3.0,
            child: SwitchListTile(
              title: const Text(
                'Palpitations',
                style: TextStyle(fontSize: 22.0),
              ),
              value: switchedPalpitations,
              onChanged: (bool value) {
                setState(() {
                  switchedPalpitations = value;
                });
              },
            ),
          ),
          Card(
            shadowColor: Colors.grey,
            elevation: 3.0,
            child: SwitchListTile(
              title: const Text(
                'Fatigue',
                style: TextStyle(fontSize: 22.0),
              ),
              value: switchedFatigue,
              onChanged: (bool value) {
                setState(() {
                  switchedFatigue = value;
                });
              },
            ),
          ),
          Card(
            shadowColor: Colors.grey,
            elevation: 3.0,
            child: SwitchListTile(
              title: const Text(
                'Dizziness',
                style: TextStyle(fontSize: 22.0),
              ),
              value: switchedDizziness,
              onChanged: (bool value) {
                setState(() {
                  switchedDizziness = value;
                });
              },
            ),
          ),
          Card(
            shadowColor: Colors.grey,
            elevation: 3.0,
            child: SwitchListTile(
              title: const Text(
                'Stress',
                style: TextStyle(fontSize: 22.0),
              ),
              value: switchedStress,
              onChanged: (bool value) {
                setState(() {
                  switchedStress = value;
                });
              },
            ),
          ),
          Card(
            shadowColor: Colors.grey,
            elevation: 3.0,
            child: SwitchListTile(
              title: const Text(
                'Coughing',
                style: TextStyle(fontSize: 22.0),
              ),
              value: switchedCoughing,
              onChanged: (bool value) {
                setState(() {
                  switchedCoughing = value;
                });
              },
            ),
          ),
          Card(
            shadowColor: Colors.grey,
            elevation: 3.0,
            child: SwitchListTile(
              title: const Text(
                'Loss of Appetite',
                style: TextStyle(fontSize: 22.0),
              ),
              value: switchedAppetite,
              onChanged: (bool value) {
                setState(() {
                  switchedAppetite = value;
                });
              },
            ),
          ),
          Card(
            shadowColor: Colors.grey,
            elevation: 3.0,
            child: SwitchListTile(
              title: const Text(
                'Constipation',
                style: TextStyle(fontSize: 22.0),
              ),
              value: switchedConstipation,
              onChanged: (bool value) {
                setState(() {
                  switchedConstipation = value;
                });
              },
            ),
          ),
          Button(
            pressed: () {
              context.go('/home');
            },
            height: 0.09,
            width: 0.42,
            colour: Colors.white,
            child: const Center(
              child: Text(
                'Save',
                style: standardText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
