import 'package:flutter/material.dart';

import '../constants.dart';

import '../widgets/my_appbar.dart';
import '../widgets/app_drawer.dart';

// Set up Bluetooth plugin

class Connect extends StatelessWidget {
  const Connect({super.key});

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
            const Text(
              'Connect via Bluetooth:',
              style: standardText,
            ),
          ],
        ),
      ),
    );
  }
}
