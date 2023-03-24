import 'package:flutter/material.dart';

import '../constants.dart';

import '../widgets/button.dart';
import '../widgets/my_appbar.dart';
import '../widgets/app_drawer.dart';

class ObjMeasures extends StatelessWidget {
  const ObjMeasures({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: const MyAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Hero(
              tag: 'logo',
              child: Image.asset(
                'images/1.png',
                height: MediaQuery.of(context).size.height * 0.2,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(
                  height: 0.19,
                  width: 0.42,
                  colour: Colors.white,
                  pressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text('Heart Rate', style: standardText),
                      Text('80 bpm', style: largeText),
                    ],
                  ),
                ),
                Button(
                  height: 0.19,
                  width: 0.42,
                  colour: Colors.white,
                  pressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text('Blood Pressure', style: standardText),
                      Text('120/80', style: largeText),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(
                  height: 0.19,
                  width: 0.42,
                  colour: Colors.white,
                  pressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text('Pulse Oximetry', style: standardText),
                      Text('98 %', style: largeText),
                    ],
                  ),
                ),
                Button(
                  height: 0.19,
                  width: 0.42,
                  colour: Colors.white,
                  pressed: () {},
                  child: const Center(child: Text('ECG', style: largeText)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
