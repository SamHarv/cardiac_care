import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../constants.dart';

import '../widgets/button.dart';
import '../widgets/my_appbar.dart';
import '../widgets/app_drawer.dart';

class FluidRestriction extends StatelessWidget {
  const FluidRestriction({super.key});

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
            Hero(
              tag: 'logo',
              child: Image.asset(
                'images/1.png',
                height: MediaQuery.of(context).size.height * 0.3,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(
                  width: 250.0,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      labelText: 'Set Fluid Restriction',
                      labelStyle: TextStyle(
                        fontSize: 23.0,
                      ),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  'ml',
                  style: TextStyle(
                    fontSize: 28.0,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Button(
                  pressed: () => context.go('/fluiddashboard'),
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
                const SizedBox(
                  height: 30.0,
                ),
                Button(
                  pressed: () {
                    //clear input
                  },
                  height: 0.09,
                  width: 0.42,
                  colour: Colors.white,
                  child: const Center(
                    child: Text(
                      'Clear',
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
