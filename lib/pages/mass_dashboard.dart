import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../constants.dart';

import '../widgets/button.dart';
import '../widgets/my_appbar.dart';
import '../widgets/app_drawer.dart';

class MassDashboard extends StatelessWidget {
  const MassDashboard({super.key});

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
                  pressed: () => context.go('/mass'),
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
                  pressed: () => context.go('/baselinemass'),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        'Baseline Mass',
                        style: standardText,
                      ),
                      Text(
                        '85 kg',
                        style: largeText,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Button(
              pressed: () {},
              height: 0.19,
              width: 0.89,
              colour: Colors.white,
              child: Image.asset(
                'images/demo.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
