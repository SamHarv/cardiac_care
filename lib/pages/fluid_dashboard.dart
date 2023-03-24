import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../constants.dart';

import '../widgets/button.dart';
import '../widgets/my_appbar.dart';
import '../widgets/app_drawer.dart';

class FluidDashboard extends StatelessWidget {
  const FluidDashboard({super.key});

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
                  pressed: () => context.go('/fluid'),
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
                Button(
                  height: 0.19,
                  width: 0.42,
                  colour: Colors.white,
                  pressed: () => context.go('/fluidrestriction'),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        'Fluid Restriction',
                        style: standardText,
                      ),
                      Text(
                        '1500 ml',
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
